#!/usr/bin/env python3
"""
Script para gerar gráficos de linha e barras (horizontal) usando Seaborn
a partir dos dados do arquivo Excel do Bibliometrix.
"""

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os

# Configurar estilo dos gráficos
sns.set_style("whitegrid")
plt.rcParams['figure.figsize'] = (12, 6)
plt.rcParams['font.size'] = 10

# Caminho do arquivo Excel
excel_path = 'bibliometrix_scopus_vs2.xlsx'
output_dir = 'graficos_scopus_vs2'

# Criar diretório para salvar gráficos
os.makedirs(output_dir, exist_ok=True)
print(f"Diretório criado: {output_dir}")

# Ler arquivo Excel
xl = pd.ExcelFile(excel_path)
print(f"Arquivo Excel carregado: {excel_path}")
print(f"Total de abas: {len(xl.sheet_names)}")
print("=" * 50)

# ============================================================
# 1. AnnualSciProd - Produção Científica Anual (Gráfico de linha)
# ============================================================
print("Gerando gráfico 1: Produção Científica Anual...")
df = pd.read_excel(xl, sheet_name='AnnualSciProd')

plt.figure(figsize=(12, 6))
sns.lineplot(data=df, x='Year', y='Articles', marker='o', linewidth=2, color='#2E86AB')
plt.title('Produção Científica Anual - Scopus (2016-2026)', fontsize=14, fontweight='bold')
plt.xlabel('Ano', fontsize=12)
plt.ylabel('Número de Artigos', fontsize=12)
plt.xticks(df['Year'])
plt.tight_layout()
plt.savefig(f'{output_dir}/fig1_prod_cient_anual.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig1_prod_cient_anual.png")

# ============================================================
# 2. AnnualCitPerYear - Citações por Ano (Gráfico de linha)
# ============================================================
print("Gerando gráfico 2: Citações por Ano...")
df = pd.read_excel(xl, sheet_name='AnnualCitPerYear')

plt.figure(figsize=(12, 6))
sns.lineplot(data=df, x='Year', y='MeanTCperYear', marker='o', linewidth=2, color='#A23B72')
plt.title('Média de Citações por Artigo por Ano - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Ano', fontsize=12)
plt.ylabel('Média de Citações por Ano', fontsize=12)
plt.xticks(df['Year'])
plt.tight_layout()
plt.savefig(f'{output_dir}/fig2_citacoes_por_ano.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig2_citacoes_por_ano.png")

# ============================================================
# 3. MostRelSources - Fontes Mais Relevantes (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 3: Fontes Mais Relevantes...")
df = pd.read_excel(xl, sheet_name='MostRelSources').head(15)
df['Sources'] = df['Sources'].apply(lambda x: x[:50] + '...' if len(str(x)) > 50 else x)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='Articles', y='Sources', palette='viridis', orient='h')
plt.title('Fontes Mais Relevantes - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Número de Artigos', fontsize=12)
plt.ylabel('Fonte', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig3_fontes_mais_relevantes.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig3_fontes_mais_relevantes.png")

# ============================================================
# 4. MostRelAuthors - Autores Mais Relevantes (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 4: Autores Mais Relevantes...")
df = pd.read_excel(xl, sheet_name='MostRelAuthors').head(15)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='Articles', y='Authors', palette='coolwarm', orient='h')
plt.title('Autores Mais Relevantes por Número de Artigos - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Número de Artigos', fontsize=12)
plt.ylabel('Autor', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig4_autores_mais_relevantes.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig4_autores_mais_relevantes.png")

# ============================================================
# 5. MostLocCitAuthors - Autores Mais Citados Localmente (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 5: Autores Mais Citados Localmente...")
df = pd.read_excel(xl, sheet_name='MostLocCitAuthors').head(15)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='LocalCitations', y='Author', palette='magma', orient='h')
plt.title('Autores Mais Citados Localmente - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Citações Locais', fontsize=12)
plt.ylabel('Autor', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig5_autores_mais_citados.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig5_autores_mais_citados.png")

# ============================================================
# 6. AuthorLocImpact - Impacto Local dos Autores (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 6: Impacto Local dos Autores...")
df = pd.read_excel(xl, sheet_name='AuthorLocImpact').head(15)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='TC', y='Author', palette='plasma', orient='h')
plt.title('Impacto Local dos Autores (Total de Citações) - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Total de Citações', fontsize=12)
plt.ylabel('Autor', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig6_impacto_local_autores.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig6_impacto_local_autores.png")

# ============================================================
# 7. MostRelAffiliations - Afiliações Mais Relevantes (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 7: Afiliações Mais Relevantes...")
df = pd.read_excel(xl, sheet_name='MostRelAffiliations').head(15)
df['Affiliation'] = df['Affiliation'].apply(lambda x: x[:40] + '...' if len(str(x)) > 40 else x)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='Articles', y='Affiliation', palette='cubehelix', orient='h')
plt.title('Afiliações Mais Relevantes - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Número de Artigos', fontsize=12)
plt.ylabel('Afiliação', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig7_afiliacoes_mais_relevantes.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig7_afiliacoes_mais_relevantes.png")

# ============================================================
# 8. CountrySciProd - Produção por País (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 8: Países Mais Produtivos...")
df = pd.read_excel(xl, sheet_name='CountrySciProd').head(15)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='Freq', y='region', palette='Spectral', orient='h')
plt.title('Países Mais Produtivos - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Número de Artigos', fontsize=12)
plt.ylabel('País', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig8_paises_mais_produtivos.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig8_paises_mais_produtivos.png")

# ============================================================
# 9. MostCitCountries - Países Mais Citados (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 9: Países Mais Citados...")
df = pd.read_excel(xl, sheet_name='MostCitCountries').head(15)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='TC', y='Country', palette='rocket', orient='h')
plt.title('Países Mais Citados - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Total de Citações', fontsize=12)
plt.ylabel('País', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig9_paises_mais_citados.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig9_paises_mais_citados.png")

# ============================================================
# 10. MostGlobCitDocs - Documentos Mais Citados Globalmente (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 10: Documentos Mais Citados Globalmente...")
df = pd.read_excel(xl, sheet_name='MostGlobCitDocs').head(10)
df['Paper'] = df['Paper'].apply(lambda x: x[:60] + '...' if len(str(x)) > 60 else x)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='Total Citations', y='Paper', palette='flare', orient='h')
plt.title('Documentos Mais Citados Globalmente - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Total de Citações', fontsize=12)
plt.ylabel('Documento', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig10_docs_mais_citados_global.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig10_docs_mais_citados_global.png")

# ============================================================
# 11. MostLocCitDocs - Documentos Mais Citados Localmente (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 11: Documentos Mais Citados Localmente...")
df = pd.read_excel(xl, sheet_name='MostLocCitDocs').head(10)
df['Document'] = df['Document'].apply(lambda x: x[:60] + '...' if len(str(x)) > 60 else x)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='Local.Citations', y='Document', palette='crest', orient='h')
plt.title('Documentos Mais Citados Localmente - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Citações Locais', fontsize=12)
plt.ylabel('Documento', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig11_docs_mais_citados_local.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig11_docs_mais_citados_local.png")

# ============================================================
# 12. MostFreqWords - Palavras Mais Frequentes (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 12: Palavras Mais Frequentes...")
df = pd.read_excel(xl, sheet_name='MostFreqWords').head(20)

plt.figure(figsize=(12, 10))
sns.barplot(data=df, x='Occurrences', y='Words', palette='viridis', orient='h')
plt.title('Palavras Mais Frequentes - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Ocorrências', fontsize=12)
plt.ylabel('Palavra-chave', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig12_palavras_mais_frequentes.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig12_palavras_mais_frequentes.png")

# ============================================================
# 13. LotkaLaw - Lei de Lotka (Gráfico de linha)
# ============================================================
print("Gerando gráfico 13: Lei de Lotka...")
df = pd.read_excel(xl, sheet_name='LotkaLaw')

plt.figure(figsize=(12, 6))
sns.lineplot(data=df, x='Documents written', y='N. of Authors', marker='o', linewidth=2, color='#E74C3C')
plt.title('Lei de Lotka - Distribuição de Produtividade dos Autores - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Número de Documentos Escritos', fontsize=12)
plt.ylabel('Número de Autores', fontsize=12)
plt.xscale('log')
plt.yscale('log')
plt.tight_layout()
plt.savefig(f'{output_dir}/fig13_lei_lotka.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig13_lei_lotka.png")

# ============================================================
# 14. BradfordLaw - Lei de Bradford (Gráfico de linha)
# ============================================================
print("Gerando gráfico 14: Lei de Bradford...")
df = pd.read_excel(xl, sheet_name='BradfordLaw').head(30)

plt.figure(figsize=(12, 6))
sns.lineplot(data=df, x='Rank', y='cumFreq', hue='Zone', marker='o', linewidth=2, palette='Set2')
plt.title('Lei de Bradford - Zonas de Produtividade - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Ranking das Fontes', fontsize=12)
plt.ylabel('Frequência Acumulada', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig14_lei_bradford.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig14_lei_bradford.png")

# ============================================================
# 15. TrendTopics - Tópicos de Tendência (Gráfico de linha)
# ============================================================
print("Gerando gráfico 15: Tópicos de Tendência...")
df = pd.read_excel(xl, sheet_name='TrendTopics')

plt.figure(figsize=(14, 8))
sns.lineplot(data=df, x='Year (Median)', y='Frequency', hue='Term', marker='o', linewidth=2, palette='tab20')
plt.title('Tópicos de Tendência ao Longo do Tempo - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Ano (Mediana)', fontsize=12)
plt.ylabel('Frequência', fontsize=12)
plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', fontsize=8)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig15_topicos_tendencia.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig15_topicos_tendencia.png")

# ============================================================
# 16. SourceLocImpact - Impacto das Fontes (Gráfico de barras horizontal)
# ============================================================
print("Gerando gráfico 16: Impacto das Fontes...")
df = pd.read_excel(xl, sheet_name='SourceLocImpact').head(15)
df['Source'] = df['Source'].apply(lambda x: x[:40] + '...' if len(str(x)) > 40 else x)

plt.figure(figsize=(12, 8))
sns.barplot(data=df, x='TC', y='Source', palette='ch:s=-.2,r=.6', orient='h')
plt.title('Impacto das Fontes (Total de Citações) - Scopus', fontsize=14, fontweight='bold')
plt.xlabel('Total de Citações', fontsize=12)
plt.ylabel('Fonte', fontsize=12)
plt.tight_layout()
plt.savefig(f'{output_dir}/fig16_impacto_fontes.png', dpi=300, bbox_inches='tight')
plt.close()
print(f"  -> Salvo: {output_dir}/fig16_impacto_fontes.png")

# ============================================================
# RESUMO
# ============================================================
print("=" * 50)
print("GRÁFICOS GERADOS COM SUCESSO!")
print("=" * 50)

files = sorted(os.listdir(output_dir))
for f in files:
    print(f"  - {f}")

print(f"\nTotal: {len(files)} gráficos salvos em: {output_dir}/")
