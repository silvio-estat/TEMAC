# Plano de Análise Bibliométrica com Bibliometrix + ggplot2

## Objetivos
- Realizar todas as análises disponíveis no biblioshiny utilizando o pacote `bibliometrix` do R
- Filtrar dados a partir de 2016
- Excluir publicações do tipo "book"
- Criar todos os gráficos utilizando `ggplot2`
- Executar análises para SCOPUS, IEEE e WoS separadamente

## Fontes de Dados (APENAS .rdata)
- **SCOPUS**: `M_scopus.rdata` (pasta raiz)
- **IEEE**: `M_ieee.rdata` (pasta raiz) - ATENÇÃO: Não possui metadados completos (ex: referências)
- **WoS**: `M_wos.rdata` (pasta raiz)

## Limitações
- **M_ieee.rdata**: Base incompleta - não possui campo de referências (CR), o que limita algumas análises como:
  - Reference Publication Year Spectroscopy (RPYS)
  - Documentos mais citados localmente
  - Análise de citations
  - Coupling analysis

## Filtros Aplicados
```r
# Filtrar a partir de 2016
M <- M[M$PY >= 2016, ]

# Excluir publicações do tipo book
M <- M[!(M$DT %in% c("book", "Book")), ]
```

## Filtros Aplicados
```r
# Filtrar a partir de 2016
M <- M[M$PY >= 2016, ]

# Excluir publicações do tipo book
M <- M[M$DT != "book" & M$DT != "Book", ]
```

## Análises a Implementar

### 1. Informações Gerais (Main Information)
- `summary()` - Estatísticas gerais da base de dados
- Produção científica por ano
- Total de documentos, citações, autores, palavras-chave

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 2. Análise de Crescimento Científico
- **Annual Scientific Production**: Evolução da produção por ano
- **Average Citations per Year**: Média de citações por ano
- **Articles per Author**: Artigos por autor
- **Authors per Article**: Autores por artigo

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 3. Análise de Fontes (Sources)
- **Most Relevant Sources**: Fontes mais relevantes (periódicos/conferências)
- **Source Impact**: Impacto das fontes (citações)
- **Bradford's Law**: Lei de Bradford - núcleo de fontes

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 4. Análise de Autores
- **Most Productive Authors**: Autores mais produtivos
- **Most Cited Authors**: Autores mais citados
- **Author Impact**: Impacto de autores (h-index, m-index)
- **Lotka's Law**: Lei de Lotka - produtividade de autores

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 5. Redes de Colaboração
- **Collaboration Network**: Rede de colaboração entre autores
- **Country Collaboration**: Colaboração entre países
- **Institutional Collaboration**: Colaboração institucional

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓ (limitado - sem CR)

### 6. Análise de Países
- **Most Productive Countries**: Países mais produtivos
- **Most Cited Countries**: Países mais citados

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 7. Análise de Documentos
- **Most Cited Documents (Global)**: Documentos mais citados globalmente
- **Most Cited Documents (Local)**: Documentos mais citados localmente
- **References**: Análise de referências

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✗ (sem campo CR)

### 8. Análise de Palavras-chave
- **Most Frequent Keywords**: Palavras-chave mais frequentes
- **Keywords Plus**: Keywords Plus mais relevantes
- **Author Keywords**: Palavras-chave dos autores

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 9. Análise Temática
- **Thematic Map**: Mapa temático
- **Topic Dendrogram**: Dendrograma de tópicos
- **Thematic Evolution**: Evolução temática ao longo do tempo

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

### 10. RPYS (Reference Publication Year Spectroscopy)
- Espectroscopia de ano de publicação de referências
- Identificação de documentos seminais

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✗ (sem campo CR)

### 11. Análise de Conceitos (Conceptional Structure)
- **Co-occurrence Network**: Rede de co-ocorrência
- **Word Dynamics**: Dinâmica de palavras ao longo do tempo
- **Correspondence Analysis**: Análise de correspondência
- **Multiple Correspondence Analysis**: Análise de múltiplas correspondências

**Disponível para:** SCOPUS ✓ | WoS ✓ | IEEE ✓

## Estrutura de Diretórios de Saída
```
Resultados_biblioshiny/
├── SCOPUS/
│   ├── fig1_*.png (gráficos ggplot2)
│   ├── fig2_*.png
│   └── relatorio_SCOPUS.md
├── IEEE/
│   ├── fig1_*.png
│   └── relatorio_IEEE.md
└── WoS/
    ├── fig1_*.png
    └── relatorio_WoS.md
```

## Pacotes R Necessários
```r
install.packages("bibliometrix")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("igraph")
install.packages("gridExtra")
```

## Gráficos a Serem Gerados (para cada base)

### Fundamentais
1. fig1_prod_cient_anual - Produção científica anual
2. fig2_qtd_media_cit - Quantidade e média de citações por ano
3. fig3_qtd_artg_autor - Quantidade de artigos por autor
4. fig4_qtd_cit_autor - Quantidade de citações por autor
5. fig5_rede_autores_colab - Rede de colaboração entre autores
6. fig6_paises_mais_produtivos - Países mais produtivos
7. fig7_paises_mais_citados - Países mais citados
8. fig8_docs_mais_cit_glob - Documentos mais citados globalmente
9. fig9_docs_mais_cit_loc - Documentos mais citados localmente
10. fig10_palavras_mais_freq - Palavras mais frequentes
11. fig11_topicos_mais_relev - Tópicos mais relevantes
12. fig12_mapa_tematico - Mapa temático
13. fig13_fontes_mais_relevantes - Fontes mais relevantes
14. fig14_ley_lotka - Lei de Lotka (visualização)
15. fig15_ley_bradford - Lei de Bradford (visualização)
16. fig16_colaboracao_paises - Rede de colaboração entre países

## Próximos Passos
1. Criar script R master que execute todas as análises
2. Executar para cada base de dados (SCOPUS, IEEE, WoS)
3. Salvar todos os gráficos em formato PNG
4. Gerar relatórios markdown para cada base
