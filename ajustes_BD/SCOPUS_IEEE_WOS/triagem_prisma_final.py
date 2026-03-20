"""
Triagem PRISMA — Fases 1 a 3
Projeto: Data Lake para C2/PPM (Mestrado)
Relatório base: Relatorio_completo_vs1

Critérios derivados da bibliometria (Seção 2.10):
  CI-1: impacto local >= 5 citações
  CI-2: autores âncora (Hai R, Quix C, Darmont J, Sawadogo P, Ravat F, Giebler C)
  CI-3: arquitetura Data Lakehouse / governança de metadados
  CI-4: infraestrutura de dados + Decision Making / ML / C2
  CE-1: Big Data/Cloud genérico sem foco em Data Lake/Lakehouse
  CE-2: sem texto integral acessível (não verificado — marcado como Dúvida)
  CE-3: domínio sem potencial de transferência para C2
"""

import pandas as pd
import re
import unicodedata

INPUT_FILE  = 'base_consolidada_para_triagem.xlsx'
OUTPUT_FILE = 'base_consolidada_para_triagem.xlsx'

# ──────────────────────────────────────────────────────────────────────────────
# Utilitários
# ──────────────────────────────────────────────────────────────────────────────

def norm(texto):
    if pd.isna(texto): return ''
    t = str(texto).lower().strip()
    t = unicodedata.normalize('NFKD', t).encode('ascii', 'ignore').decode()
    t = re.sub(r'[^a-z0-9 ]', ' ', t)
    return re.sub(r'\s+', ' ', t).strip()

ANCHOR_RE = re.compile(
    r'\b(Hai,?\s*R|Quix,?\s*C|Darmont,?\s*J|Sawadogo,?\s*P|Ravat,?\s*F|Giebler,?\s*C)\b',
    re.IGNORECASE
)

HIGH_IMPACT = [
    'on data lake architectures and metadata management',
    'an overview of data warehouse and data lake in modern enterprise data management',
    'data lakehouse - a novel step in analytics',
    'from data warehouse to lakehouse: a comparative review',
    'iot in smart farming analytics, big data based architecture',
    'ceba: a data lake for data sharing and environmental monitoring',
    'a lakehouse architecture for the management and analysis of heterogeneous data',
    'big data lakes: models, frameworks, and techniques',
    'big data lakes: models, frameworks, and technique',
    'constance: an intelligent data lake system',
    'data lakes: a survey of functions and systems',
    'managing data lakes in big data era',
    'azure data lake store: a hyperscale',
    'data lake architecture framework',
    'gemms: a generic and extensible metadata management system',
]

CORE_LAKE     = ['data lake', 'datalake', 'data lakehouse', 'lakehouse']
CORE_META     = ['metadata management', 'metadata governance', 'data governance',
                 'data catalog', 'data catalogue', 'data quality']
CORE_ARCH     = ['data architecture', 'big data architecture', 'enterprise data',
                 'data integration', 'etl ', 'elt ', 'data ingestion',
                 'data pipeline', 'data mesh', 'data vault', 'data platform']
DOMAIN_C2     = ['command and control', 'c2 system', 'military operation', 'battlefield',
                 'situational awareness', 'situation awareness', 'defense information',
                 'tactical decision', 'military data']
DOMAIN_DECIS  = ['decision support', 'decision-making', 'decision making']
DOMAIN_AI     = ['machine learning', 'artificial intelligence', 'deep learning',
                 'predictive analytics', 'neural network', 'explainable ai', 'xai ']
DOMAIN_IOT    = ['internet of things', ' iot ', 'edge computing', 'digital twin',
                 'industry 4.0']
EXCL_CE3      = ['rheumatology', 'cardiology', 'oncology', 'cancer treatment',
                 'drug discovery', 'medical imaging', 'histopath',
                 'ophthalmol', 'dermatolog', 'psychiatr', 'neurodegen',
                 'genomics', 'proteomics', 'bioinformatics', 'dna sequenc',
                 'crop yield', 'precision agriculture', 'soil moisture', 'irrigation system',
                 'water quality monitor', 'remote sensing satellite', 'spectral index',
                 'ndvi ', 'lidar survey', 'flood detect']

def score_and_classify(row):
    titulo  = str(row.get('titulo', '')) if pd.notna(row.get('titulo')) else ''
    abstract= str(row.get('abstract', '')) if pd.notna(row.get('abstract')) else ''
    autores = str(row.get('autores', '')) if pd.notna(row.get('autores')) else ''
    tn  = norm(titulo)
    an  = norm(abstract)
    tudo= tn + ' ' + an

    score = 0
    criterios = []

    # CI-2 autor âncora
    if ANCHOR_RE.search(autores):
        score += 6
        criterios.append('CI-2')

    # CI-1 proxy: papers seminais mencionados no relatório
    if any(hi in tn for hi in HIGH_IMPACT):
        score += 5
        criterios.append('CI-1')

    # Core topic no título / abstract
    if any(t in tn for t in CORE_LAKE):
        score += 4
        criterios.append('lake-titulo')
    elif any(t in an for t in CORE_LAKE):
        score += 2
        criterios.append('lake-abstract')

    # Evolução Warehouse → Lake
    if 'warehouse' in tn and 'lake' in tn:
        score += 2
        criterios.append('wh-to-lake')

    # Metadados / Governança
    if any(t in tn for t in CORE_META):
        score += 2
        criterios.append('CI-3:meta-titulo')
    elif any(t in an for t in CORE_META):
        score += 1
        criterios.append('CI-3:meta-abs')

    # Arquitetura de dados
    if any(t in tn for t in CORE_ARCH):
        score += 1
        criterios.append('CI-3:arch')

    # C2 / Militar
    if any(t in tudo for t in DOMAIN_C2):
        score += 3
        criterios.append('CI-4:C2')

    # Decision Making
    if any(t in tn for t in DOMAIN_DECIS):
        score += 2
        criterios.append('CI-4:decision-titulo')
    elif any(t in an for t in DOMAIN_DECIS):
        score += 1
        criterios.append('CI-4:decision-abs')

    # IA / ML
    if any(t in tn for t in DOMAIN_AI):
        score += 1
        criterios.append('CI-4:AI-titulo')
    elif any(t in an for t in DOMAIN_AI):
        score += 0.5
        criterios.append('CI-4:AI-abs')

    # IoT / Digital Twin
    if any(t in tudo for t in DOMAIN_IOT):
        score += 1
        criterios.append('CI-4:IoT')

    # Penalidades CE-3 / CE-1
    has_lake = any(t in tudo for t in CORE_LAKE + CORE_ARCH)
    if not has_lake:
        if any(t in tudo for t in EXCL_CE3):
            score -= 4
            criterios.append('CE-3')
        if 'big data' in tn and 'lake' not in tn:
            score -= 2
            criterios.append('CE-1')

    return score, criterios

def obs_from(score, criterios, is_dup):
    if is_dup:
        return 'Duplicata — registro anterior mantido'
    motivos_ci = [c for c in criterios if c.startswith('CI')]
    motivos_ce = [c for c in criterios if c.startswith('CE')]

    if score >= 7:
        razoes = []
        if 'CI-2' in criterios: razoes.append('autor âncora')
        if 'CI-1' in criterios: razoes.append('alto impacto local (relatório)')
        if 'CI-4:C2' in criterios: razoes.append('relevância C2/militar')
        if 'CI-3:meta-titulo' in criterios: razoes.append('metadados/governança')
        if 'lake-titulo' in criterios: razoes.append('Data Lake no título')
        return 'Incluído Fase 3: ' + ('; '.join(razoes) if razoes else 'alta pontuação temática')
    elif score >= 5:
        razoes = []
        if 'lake-titulo' in criterios: razoes.append('Data Lake no título')
        if 'lake-abstract' in criterios: razoes.append('Data Lake no abstract')
        if 'CI-2' in criterios: razoes.append('autor âncora')
        return 'Excluído Fase 3 (relevância temática insuficiente): ' + '; '.join(razoes)
    elif score >= 3:
        return 'Excluído Fase 2 (baixo impacto/relevância temática)'
    else:
        if 'CE-3' in criterios:
            return 'Excluído Fase 1: domínio sem transferência para C2 (CE-3)'
        if 'CE-1' in criterios:
            return 'Excluído Fase 1: Big Data genérico sem foco em Data Lake (CE-1)'
        return 'Excluído Fase 1: sem relevância para Data Lake/Lakehouse'

def criterio_exclusao_str(score, criterios, is_dup):
    if is_dup:
        return 'Duplicata'
    if score >= 7:
        return ''
    ces = [c for c in criterios if c.startswith('CE')]
    if ces: return '; '.join(ces)
    if score < 3: return 'Baixa relevância'
    if score < 5: return 'Relevância insuficiente (Fase 2)'
    return 'Relevância insuficiente (Fase 3)'

def relevancia(score, is_dup):
    if is_dup: return 'Baixa'
    if score >= 7: return 'Alta'
    if score >= 5: return 'Média'
    return 'Baixa'

def status_triagem(score, is_dup):
    if is_dup: return 'Excluído'
    if score >= 7: return 'Incluído'
    if score >= 5: return 'Dúvida/Pendente'
    return 'Excluído'

def decisao_final(score, is_dup):
    if is_dup: return 'Excluído'
    if score >= 7: return 'Incluído'
    return 'Excluído'

# ──────────────────────────────────────────────────────────────────────────────
# Carregar e processar
# ──────────────────────────────────────────────────────────────────────────────
df = pd.read_excel(INPUT_FILE)
print(f'Total bruto: {len(df)} registros')

# ── FASE 1: Deduplicação por título normalizado ────────────────────────────────
df['_titulo_norm'] = df['titulo'].apply(norm)
seen = {}
dup_flags = []
for idx, row in df.iterrows():
    tnorm = row['_titulo_norm']
    if tnorm in seen:
        dup_flags.append(1)
    else:
        seen[tnorm] = idx
        dup_flags.append(0)

df['IDENTIFICADOR_DUPLICADO'] = dup_flags
n_dup = sum(dup_flags)
print(f'Fase 1 — duplicatas marcadas: {n_dup}  |  únicos: {len(df) - n_dup}')

# ── Scoring de todos os registros ─────────────────────────────────────────────
scores_list   = []
criterios_all = []
for _, row in df.iterrows():
    s, c = score_and_classify(dict(row))
    scores_list.append(s)
    criterios_all.append(c)

df['_score']    = scores_list
df['_criterios']= criterios_all

# ── Preencher colunas principais ───────────────────────────────────────────────
def apply_row(row):
    is_dup = int(row['IDENTIFICADOR_DUPLICADO']) == 1
    sc     = row['_score']
    crit   = row['_criterios']
    return pd.Series({
        'STATUS_TRIAGEM'         : status_triagem(sc, is_dup),
        'CRITERIO_EXCLUSAO'      : criterio_exclusao_str(sc, crit, is_dup),
        'RELEVANCIA'             : relevancia(sc, is_dup),
        'DECISAO_FINAL'          : decisao_final(sc, is_dup),
        'OBS'                    : obs_from(sc, crit, is_dup),
        # Colunas extras por fase
        'escolhido_fase2'        : 0 if is_dup else (1 if sc >= 5 else 0),
        'obs_fase2'              : ('' if is_dup else
                                   ('Incluso: relevância temática ≥ 5' if sc >= 5 else
                                    ('CE-3: domínio irrelevante para C2' if 'CE-3' in crit else
                                     ('CE-1: Big Data genérico' if 'CE-1' in crit else
                                      'Baixo score de relevância')))),
        'escolhido_fase3'        : 0 if is_dup else (1 if sc >= 7 else 0),
        'obs_fase3'              : ('' if is_dup else
                                   (obs_from(sc, crit, is_dup) if sc >= 7 else
                                    ('Não atingiu threshold temático (score=' + str(round(sc,1)) + ')'))),
    })

resultado = df.apply(apply_row, axis=1)
for col in resultado.columns:
    df[col] = resultado[col]

# ── Estatísticas ───────────────────────────────────────────────────────────────
n_uniq     = len(df) - n_dup
n_fase2    = df['escolhido_fase2'].sum()
n_fase3    = df['escolhido_fase3'].sum()
print(f'Fase 2 — selecionados (score>=5, sem dup): {int(n_fase2)}')
print(f'Fase 3 — selecionados (score>=7, sem dup): {int(n_fase3)}')

# ── Lista dos artigos incluídos na Fase 3 ─────────────────────────────────────
f3 = df[df['escolhido_fase3'] == 1].sort_values('_score', ascending=False)
print(f'\n=== ARTIGOS SELECIONADOS NA FASE 3 ({len(f3)}) ===')
for i, (_, row) in enumerate(f3.iterrows(), 1):
    print(f'{i:02d}. [{row["_score"]:.1f}] {row["titulo"][:90]}')
    print(f'    Autores: {str(row["autores"])[:70]}')
    print(f'    OBS: {row["OBS"]}')
    print()

# ── Salvar ─────────────────────────────────────────────────────────────────────
cols_finais = [
    'titulo','autores','abstract',
    'STATUS_TRIAGEM','IDENTIFICADOR_DUPLICADO','CRITERIO_EXCLUSAO',
    'RELEVANCIA','DECISAO_FINAL','OBS',
    'escolhido_fase2','obs_fase2','escolhido_fase3','obs_fase3'
]
df[cols_finais].to_excel(OUTPUT_FILE, index=False)
print(f'\nArquivo salvo: {OUTPUT_FILE}')
print(f'Resumo PRISMA:')
print(f'  Identificação bruta:       {len(df)} registros (Scopus + WoS)')
print(f'  Após deduplicação (Fase 1): {n_uniq} registros únicos')
print(f'  Fase 2 (impacto/âncoras):  {int(n_fase2)} registros')
print(f'  Fase 3 (triagem temática): {int(n_fase3)} registros para download')

