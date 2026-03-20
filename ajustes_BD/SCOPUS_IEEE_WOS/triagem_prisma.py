import pandas as pd
import re
import unicodedata

# ─── Carregar dados ────────────────────────────────────────────────────────────
df = pd.read_excel('base_consolidada_para_triagem.xlsx')
print(f"Total de registros: {len(df)}")

# ─── Funções auxiliares ────────────────────────────────────────────────────────
def normalizar(texto):
    if pd.isna(texto):
        return ''
    texto = str(texto).lower().strip()
    texto = unicodedata.normalize('NFKD', texto).encode('ascii', 'ignore').decode()
    texto = re.sub(r'[^a-z0-9 ]', ' ', texto)
    return re.sub(r'\s+', ' ', texto).strip()

def contem(campo, termos, texto_completo=False):
    """Verifica se qualquer termo está no campo (título ou abstract)."""
    t = normalizar(campo)
    return any(term in t for term in termos)

# ─── AUTORES ÂNCORA (CI-2) ────────────────────────────────────────────────────
ANCHOR_RE = re.compile(
    r'\b(Hai,?\s*R|Quix,?\s*C|Darmont,?\s*J|Sawadogo,?\s*P|Ravat,?\s*F|Giebler,?\s*C)\b',
    re.IGNORECASE
)

def is_anchor_author(autores):
    if pd.isna(autores):
        return False
    return bool(ANCHOR_RE.search(str(autores)))

# ─── PAPERS DE ALTO IMPACTO CITADOS NO RELATÓRIO (CI-1 proxy) ─────────────────
HIGH_IMPACT_TITLES = [
    'on data lake architectures and metadata management',
    'an overview of data warehouse and data lake in modern enterprise data management',
    'data lakehouse - a novel step in analytics architecture',
    'data lakehouse - a novel step in analytics',
    'from data warehouse to lakehouse: a comparative review',
    'iot in smart farming analytics, big data based architecture',
    'ceba: a data lake for data sharing and environmental monitoring',
    'a lakehouse architecture for the management and analysis of heterogeneous data',
    'big data lakes: models, frameworks, and techniques',
    'big data lakes: models, frameworks, and techniques',
    'constance: an intelligent data lake system',
    'data lakes: a survey of functions and systems',
    'managing data lakes in big data era',
    'azure data lake',
    'knowledge lake',
]

def is_high_impact(titulo):
    t = normalizar(titulo)
    return any(hi in t for hi in HIGH_IMPACT_TITLES)

# ─── TERMOS TEMÁTICOS ─────────────────────────────────────────────────────────

# Núcleo: Data Lake / Lakehouse
CORE_LAKE = ['data lake', 'datalake', 'data lakehouse', 'lakehouse']
CORE_WAREHOUSE = ['data warehouse']
CORE_METADATA = ['metadata management', 'metadata governance', 'data governance',
                 'data catalog', 'data catalogue', 'data quality']
CORE_ARCHITECTURE = ['data architecture', 'big data architecture', 'enterprise data',
                     'data integration', 'etl ', 'elt ', 'data ingestion',
                     'data pipeline', 'data mesh', 'data vault', 'data platform']

# Aplicação: C2 / Decisão / IA
DOMAIN_C2 = ['command and control', 'c2 system', 'military operation', 'battlefield',
              'situational awareness', 'situation awareness', 'defense information',
              'tactical decision', 'military data', 'command control']
DOMAIN_DECISION = ['decision support', 'decision making', 'decision-making',
                   'planning process', 'operational planning']
DOMAIN_AI = ['machine learning', 'artificial intelligence', 'deep learning',
             'predictive analytics', 'neural network', 'llm ', 'generative ai',
             'explainable ai', 'xai']
DOMAIN_IOT = ['internet of things', 'iot', 'edge computing', 'digital twin',
              'smart city', 'industry 4.0']

# Domínios de exclusão CE-3 (sem arquitetura de dados transferível para C2)
EXCLUSAO_CE3 = ['rheumatology', 'cardiology', 'oncology', 'cancer treatment',
                'drug discovery', 'medical imaging', 'histopath', 'patholog',
                'ophthalmol', 'dermatolog', 'psychiatr', 'neurodegen',
                'genomics', 'proteomics', 'bioinformatics', 'dna sequenc',
                'crop yield', 'precision agriculture', 'soil moisture', 'irrigation system',
                'water quality monitor', 'remote sensing satellite', 'spectral index',
                'ndvi ', 'lidar survey', 'flood detect']

def score_artigo(row):
    titulo = str(row['titulo']) if pd.notna(row['titulo']) else ''
    abstract = str(row['abstract']) if pd.notna(row['abstract']) else ''
    autores = str(row['autores']) if pd.notna(row['autores']) else ''
    titulo_n = normalizar(titulo)
    abstract_n = normalizar(abstract)
    tudo_n = titulo_n + ' ' + abstract_n

    score = 0
    criterios = []

    # CI-2: Autor âncora
    if is_anchor_author(autores):
        score += 6
        criterios.append('CI-2:autor-ancora')

    # CI-1 proxy: Paper de alto impacto citado no relatório
    if is_high_impact(titulo):
        score += 5
        criterios.append('CI-1:alto-impacto')

    # Data Lake / Lakehouse no título
    if any(t in titulo_n for t in CORE_LAKE):
        score += 4
        criterios.append('lake-titulo')
    # Data Lake só no abstract
    elif any(t in abstract_n for t in CORE_LAKE):
        score += 2
        criterios.append('lake-abstract')

    # Data Warehouse → Lake (evoluçao)
    if 'warehouse' in titulo_n and 'lake' in titulo_n:
        score += 2
        criterios.append('warehouse-to-lake')

    # Metadata / Governance
    if any(t in titulo_n for t in CORE_METADATA):
        score += 2
        criterios.append('metadata-titulo')
    elif any(t in abstract_n for t in CORE_METADATA):
        score += 1
        criterios.append('metadata-abstract')

    # Arquitetura de dados
    if any(t in titulo_n for t in CORE_ARCHITECTURE):
        score += 1
        criterios.append('arquitetura-dados')

    # C2 / Militar
    if any(t in tudo_n for t in DOMAIN_C2):
        score += 3
        criterios.append('CI-4:C2-militar')

    # Decision making
    if any(t in titulo_n for t in DOMAIN_DECISION):
        score += 2
        criterios.append('decision-titulo')
    elif any(t in abstract_n for t in DOMAIN_DECISION):
        score += 1
        criterios.append('decision-abstract')

    # IA / ML
    if any(t in titulo_n for t in DOMAIN_AI):
        score += 1
        criterios.append('AI-ML-titulo')
    elif any(t in abstract_n for t in DOMAIN_AI):
        score += 0.5
        criterios.append('AI-ML-abstract')

    # IoT / Digital Twin
    if any(t in titulo_n for t in DOMAIN_IOT):
        score += 1
        criterios.append('IoT-DigitalTwin')

    # CE-3: domínio irrelevante sem arquitetura de dados
    has_lake_context = any(t in tudo_n for t in CORE_LAKE + CORE_ARCHITECTURE)
    if not has_lake_context:
        if any(t in tudo_n for t in EXCLUSAO_CE3):
            score -= 4
            criterios.append('CE-3:dominio-irrelevante')
        # CE-1: Big Data genérico sem foco em Data Lake
        if 'big data' in titulo_n and not any(t in titulo_n for t in CORE_LAKE + ['lake']):
            score -= 2
            criterios.append('CE-1:bigdata-generico')

    return score, criterios

# ─── FASE 1: Identificar duplicatas ───────────────────────────────────────────
df['_titulo_norm'] = df['titulo'].apply(normalizar)
# Marcar duplicata se titulo normalizado já apareceu antes
seen = {}
dup_flags = []
for idx, row in df.iterrows():
    tnorm = row['_titulo_norm']
    has_author = pd.notna(row['autores'])
    if tnorm in seen:
        # Se o original tinha autores, este é duplicata; senão verificamos
        dup_flags.append(1)  # duplicata
    else:
        seen[tnorm] = idx
        dup_flags.append(0)  # primeira ocorrência

df['IDENTIFICADOR_DUPLICADO'] = dup_flags
n_dup = sum(dup_flags)
print(f"Fase 1 — Duplicatas identificadas: {n_dup}")
print(f"Fase 1 — Únicos: {len(df) - n_dup}")

# ─── Trabalhar apenas com únicos ──────────────────────────────────────────────
df_uniq = df[df['IDENTIFICADOR_DUPLICADO'] == 0].copy()
print(f"\nCorpus único para triagem: {len(df_uniq)} registros")

# ─── CALCULAR SCORE ────────────────────────────────────────────────────────────
scores = []
criterios_list = []
for _, row in df_uniq.iterrows():
    s, c = score_artigo(row)
    scores.append(s)
    criterios_list.append(c)

df_uniq['_score'] = scores
df_uniq['_criterios'] = criterios_list

# ─── FASE 2: Triagem por Impacto (CI-1, CI-2) ─────────────────────────────────
# Incluir se score >= 3 (tem "data lake" no título OU é autor âncora)
THRESHOLD_F2 = 3
df_f2 = df_uniq[df_uniq['_score'] >= THRESHOLD_F2].copy()
print(f"\nFase 2 — Selecionados (score >= {THRESHOLD_F2}): {len(df_f2)}")

# ─── FASE 3: Triagem Temática (CI-3, CI-4, CE-1, CE-3) ────────────────────────
# Incluir se score >= 5 (mais específico para o tema)
THRESHOLD_F3 = 5
df_f3 = df_uniq[df_uniq['_score'] >= THRESHOLD_F3].copy()
print(f"Fase 3 — Selecionados (score >= {THRESHOLD_F3}): {len(df_f3)}")
print(f"\nTop 40 papers por score:")
print(df_f3.sort_values('_score', ascending=False)[['titulo','autores','_score','_criterios']].head(40).to_string())

