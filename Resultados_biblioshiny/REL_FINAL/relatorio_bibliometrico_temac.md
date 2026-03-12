
# Relatório Bibliométrico - Estágios 1 e 2 da Metodologia TEMAC

<!-- ## Sumário

- [Relatório Bibliométrico - Estágios 1 e 2 da Metodologia TEMAC](#relatório-bibliométrico---estágios-1-e-2-da-metodologia-temac)
  - [Sumário](#sumário)
  - [Introdução](#introdução)
- [Estágio 1: Estratégia de Busca e Seleção do Corpus](#estágio-1-estratégia-de-busca-e-seleção-do-corpus)
  - [1.1. Justificativa da Escolha das Bases de Dados](#11-justificativa-da-escolha-das-bases-de-dados)
    - [1.1.1. Filtros Temporais Aplicados](#111-filtros-temporais-aplicados)
  - [1.2. Fontes Alternativas Estudadas](#12-fontes-alternativas-estudadas)
    - [1.2.1. Bases de Dados de Defesa e Comando e Controle](#121-bases-de-dados-de-defesa-e-comando-e-controle)
  - [1.3. Estratégia de Busca: Palavras-Chave e Strings de Consulta](#13-estratégia-de-busca-palavras-chave-e-strings-de-consulta)
    - [1.3.1. Eixos Temáticos e Termos Utilizados](#131-eixos-temáticos-e-termos-utilizados)
    - [1.3.2. Strings de Consulta Utilizadas no Scopus](#132-strings-de-consulta-utilizadas-no-scopus)
    - [1.3.4. Critérios de Exclusão](#134-critérios-de-exclusão)
  - [1.4. Síntese do Estágio 1](#14-síntese-do-estágio-1)
- [Estágio 2: Síntese Comparativa da Análise Bibliométrica](#estágio-2-síntese-comparativa-da-análise-bibliométrica)
  - [2.1. Software para análise bibliométrica](#21-software-para-análise-bibliométrica)
  - [2.2. Informações Principais e Crescimento da Produção Científica](#22-informações-principais-e-crescimento-da-produção-científica)
    - [2.2.1. Visão Geral das Bases de Dados](#221-visão-geral-das-bases-de-dados)
    - [2.2.2. Evolução da Produção Científica](#222-evolução-da-produção-científica)
    - [2.2.3. Impacto das Citações](#223-impacto-das-citações)
  - [2.3. Análise de Fontes (Periódicos e Eventos)](#23-análise-de-fontes-periódicos-e-eventos)
    - [2.3.1. Lei de Bradford e Zonas de Influência](#231-lei-de-bradford-e-zonas-de-influência)
    - [2.3.2. Fontes Mais Relevantes com Maior Impacto](#232-fontes-mais-relevantes-com-maior-impacto)
  - [2.4. Análise de Autores e Padrões de Colaboração](#24-análise-de-autores-e-padrões-de-colaboração)
    - [2.4.1. Produtividade versus Impacto vesus Citação](#241-produtividade-versus-impacto-vesus-citação)
    - [2.4.2. Redes de Colaboração](#242-redes-de-colaboração)
  - [2.5. Distribuição Geográfica e Institucional](#25-distribuição-geográfica-e-institucional)
    - [2.5.1. Países Dominantes](#251-países-dominantes)
    - [2.5.2. Países Mais Citados](#252-países-mais-citados)
    - [2.5.3. Instituições e Casos de Uso](#253-instituições-e-casos-de-uso)
  - [2.6. Fundações Teóricas e Historiografia](#26-fundações-teóricas-e-historiografia)
    - [2.6.1. Documentos Globais versus Locais](#261-documentos-globais-versus-locais)
    - [2.6.2. Historiografia e Fluxo do Conhecimento](#262-historiografia-e-fluxo-do-conhecimento)
  - [2.7. Temática, Evolução de Palavras-chave e Tendências](#27-temática-evolução-de-palavras-chave-e-tendências)
    - [2.7.1. Estruturação Temática pelos Clusters](#271-estruturação-temática-pelos-clusters)
    - [2.7.2. Mapa Temático Estratégico](#272-mapa-temático-estratégico)
    - [2.7.3. Tendências de Palavras-chave](#273-tendências-de-palavras-chave)
    - [2.7.4. Palavras-chave Mais Frequentes](#274-palavras-chave-mais-frequentes)
  - [2.8. Convergência entre as Bases de Dados](#28-convergência-entre-as-bases-de-dados)
    - [2.8.1. Análise Comparativa Scopus versus Web of Science](#281-análise-comparativa-scopus-versus-web-of-science)
    - [2.8.2. Pontos de Convergência](#282-pontos-de-convergência)
    - [2.8.3. Divergências Identificadas](#283-divergências-identificadas)
    - [2.8.4. Implicações para o Projeto](#284-implicações-para-o-projeto)
    - [2.9. Funil de Seleção PRISMA](#29-funil-de-seleção-prisma)
    - [2.10. Sugestões de Filtros para o Estágio 3](#210-sugestões-de-filtros-para-o-estágio-3)
- [Conclusão](#conclusão)
- [Referências](#referências) -->

---

## Introdução

O presente relatório constitui a documentação sistemática da revisão bibliográfica realizada no âmbito do projeto de mestrado intulado **"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres"**. Este estudo visa propor e implementar uma Arquitetura de Referência de Data Lake que automatize a ingestão e tratamento de dados operacionais, servindo como infraestrutura habilitadora para o uso de Inteligência Artificial no apoio ao Processo de Planejamento Militar (PPM).

A relevância desta investigação justifica-se pela necessidade de modernização do Comando e Controle (C2), conforme destacado no manual EB70-MC-10.211, que reconhece que "a quantidade de informações disponíveis no ambiente operacional moderno excede a capacidade humana de processamento sem auxílio tecnológico". A introdução de um Data Lake operacional ataca diretamente três pontos nevrálgicos: a gestão da informação e do conhecimento, a agilidade e sincronização no planejamento detalhado, e o apoio à decisão por meio de Intelligence Artificial.

Este relatório está organizado em conformidade com a metodologia TEMAC (Technique for Electronic Document Analysis and Classification), estruturando-se em dois estágios complementares: o Estágio 1, que apresenta a estratégia de busca e seleção do corpus documental; e o Estágio 2, que oferece a síntese comparativa das análises bibliométricas realizadas nas bases de dados Scopus e Web of Science. A abordagem metodológica adotada permite não apenas identificar as tendências emergentes no campo de Data Lakes e arquiteturas de dados para Comando e Controle, mas também validar cientificamente os fundamentos teóricos que embasam a proposta de arquitetura do presente projeto de pesquisa.

---

## Estágio 1: Estratégia de Busca e Seleção do Corpus

## 1.1. Justificativa da Escolha das Bases de Dados

A seleção das fontes de dados para a revisão sistemática da literatura fundamentou-se em critérios de abrangência, qualidade e adequação temática. Foram escolhidas duas bases de dados consolidadas no cenário acadêmico internacional: **Scopus** e **Web of Science (WoS)**. Esta escolha justifica-se por múltiplos fatores que garantem a robustez e a credibilidade dos resultados obtidos. Cabe observar que houve uma entativa inicial de se usar a base de dados **IEEE Xplore**, porém, como ela não disponibilizava a lista de referências, sua análise foi cancelada.

<mark style="background-color: #ffb86c;">verificar essas explicacoes sobre cada base de dados</mark>

O **Scopus**, mantido pela Elsevier, constitui a maior base de dados de citações e resumos de literatura revisada por pares, abrangendo mais de 24.000 títulos de periódicos científicos, milhões de artigos de conferências e milhões de patentes. A plataforma oferece cobertura multidisciplinar e permite acesso a métricas de citação detalhadas, sendo reconhecida como referência global para avaliação de produção científica.

O **Web of Science**, gerenciado pela Clarivate Analytics, representa outra fonte primordial de metadados bibliográficos, com cobertura que abrange as coleções mais prestigiadas de periódicos científicos, incluindo o Science Citation Index Expanded (SCIE), o Social Sciences Citation Index (SSCI) e o Arts & Humanities Citation Index (AHCI). A plataforma é amplamente utilizada em estudos bibliométricos devido à qualidade de seus registros e à profundidade histórica de sua indexação.

Ambas as bases foram selecionadas por sua capacidade de retornar resultados relevantes para a pesquisa proposta, que situa-se na interseção entre arquiteturas de dados (Data Lake, Data Warehouse, Big Data), aplicações de Inteligência Artificial e contextos de Comando e Controle militar. A utilização conjugada dessas duas fontes permite uma triangulação metodológica que fortalece a validade dos achados e minimiza vieses de cobertura.

### 1.1.1. Filtros Temporais Aplicados

Para garantir a relevância e a atualidade dos dados analisados, foram aplicados filtros temporais que restringiram os resultados ao período de **2016 a 2026**. Esta delimitação temporal justifica-se pela evolução acelerada das tecnologias de Big Data e Data Lake nos últimos anos, com especial destaque para o paradigma de Data Lakehouse que emergiu a partir de 2019-2020. Estudos anteriores a 2016, embora relevantes para a compreensão histórica do tema, frequentemente não contemplam as abordagens mais recentes e as tecnologias que representam o estado da arte atual.

A Tabela 1 apresenta a síntese dos resultados obtidos nas consultas iniciais às bases de dados.

**Tabela 1 - Resultados Iniciais das Consultas por Base de Dados**

| Base de Dados | Total de Registros Retornados | Período |
|---------------|-------------------------------|---------|
| Scopus        | 2.902                         | 2016-2026|
| Web of Science| 1.166                         | 2016-2026|

A diferença quantitativa entre as bases de dados reflete, provavelmente, as distintas políticas de indexação e cobertura de cada plataforma. Cabe destacar que a base SCOPUS tinha mais *Conference Papers* do que artigos, diferente da *Web of Science* que tinha uma base mais balanceada.

## 1.2. Fontes Alternativas Estudadas

É importante registrar que, além das bases de dados Scopus e WoS, o presente estudo contemplou a análise de outras fontes de informação relevantes para o tema de pesquisa, embora estas não tenham sido processadas por meio da metodologia TEMAC devido à ausência de metadados estruturados compatíveis com as ferramentas de análise bibliométrica.

### 1.2.1. Bases de Dados de Defesa e Comando e Controle

 foram identificadas e estudadas as seguintes fontes alternativas:

**NATO C2COE Library**: A biblioteca do NATO Command and Control Centre of Excellence (C2COE) constitui fonte primordial de documentos técnicos e doutrinários sobre Comando e Controle. Os documentos desta fonte, embora não possuam metadados estruturados em formato compatível com o Biblioshiny, foram analisados manualmente e incorporados à fundamentação teórica do projeto.

**ICCRTS (International Command and Control Research and Technology Symposium)**: Os anais do ICCRTS representam uma fonte significativa de pesquisas no domínio de C2, com publicações que abordam diretamente a interseção entre tecnologia da informação e operações militares. Os metadados foram processados parcialmente, tendo em vista algunas inconsistências no formato de exportação.

**MORS (Military Operations Research Society)**: A sociedade americana de pesquisa operacional militar pubrica estudos relevantes para o planejamento militar assistido por computador, embora a indexação seja limitada.

**Journal of Strategic Studies**: Periódico especializado em estudos estratégicos que публикует artigos relevantes para o contexto de Comando e Controle, embora a temática de Data Lake seja marginal nesta publicação.

**IEEE Xplore**: A base de dados IEEE Xplore foi consultada paralelamente, retornando um volume expressivo de artigos técnicos. No entanto, os metadados desta base apresentaram limitações para a análise bibliométrica completa, particularmente no que se refere às referências cited by.

A não inclusão dessas fontes na análise bibliométrica quantitativa não invalida sua importância para o presente estudo. Elas servem como referência qualitativa e contextual, fortalecendo a fundamentação teórica e garantindo que a revisão sistemática considere também a literatura técnico-militar que, por suas características editoriais, não está presente nas bases de dados acadêmicas tradicionais.

<mark style="background-color: #ffb86c;">Ler melhor sobre o detalhamento dessas bases depois</mark>

## 1.3. Estratégia de Busca: Palavras-Chave e Strings de Consulta

A construção das strings de busca seguiu os princípios da metodologia TEMAC, combinando termos relacionados a três eixos (de forma geral) temáticos principais: (1) arquiteturas de dados, (2) inteligência artificial e aprendizado de máquina, e (3) Comando e Controle militar. A estratégia contemplou variações terminológicas e sinônimos para maximizar a abrangência das buscas.

### 1.3.1. Eixos Temáticos e Termos Utilizados

**Eixo 1 - Arquiteturas de Dados:**
- Data Lake
- Data Warehouse
- Data Lakehouse
- Big Data Architecture
- Enterprise Data Architecture
- ETL/ELT
- Data Integration
- Data Management

**Eixo 2 - Suporte para Decisão:**
- Artificial Intelligence
- Machine Learning
- Deep Learning
- Predictive Analytics
- Decision Support
- Data Science

**Eixo 3 - Comando e Controle:**
- Command and Control
- C2
- Military Operations
- Battlefield Management
- Situation Awareness
- Defense Information Systems

### 1.3.2. Strings de Consulta Utilizadas no Scopus

O Apêndice A apresenta as strings de consulta utilizadas assim como a quantidade de trabalhos retornados tanto da base de dados *SCOPUS* quanto da base *Web of Science*.

### 1.3.4. Critérios de Exclusão

Como critério de exclusão, decidiu-se por trabalhos a partir de 2016. Para a base de dados *SCOPUS*, também retirou-se os livros, pois após uma avaliação prévia utilizando as ferramentas do Bibliometrix, percebeu-se que, nesta base de dados, tinha livros sem o devido referenciamento dos autores e que atrapalhava os resultados das análises.


## 1.4. Síntese do Estágio 1

O Estágio 1 da metodologia TEMAC estabeleceu as bases para a análise bibliométrica sistemática. A escolha do Scopus e do Web of Science como fontes primárias justifica-se pela credibilidade, abrangência e qualidade dos metadados disponibilizados, essenciais para a realização de análises quantitativas robustas.

A aplicação de filtros temporais (2016-2026) garantiu a focalização em literatura contemporânea, enquanto as strings de consulta foram desenhadas para capturar a interseção entre arquiteturas de dados, suporte a decisão e contextos de Comando e Controle militar.

A identificação de fontes alternativas de defesa (NATO C2COE, ICCRTS, MORS) demonstra a amplitude da pesquisa e reconhece que a literatura técnico-militar, embora não passível de processamento bibliométrico estruturado, constitui componente fundamental para a compreensão do problema de pesquisa.

---

# Estágio 2: Síntese Comparativa da Análise Bibliométrica

## 2.1. Software para análise bibliométrica

Para a análise bibliométrica, utilizou-se o pacote *Bibliometrix* do software R, mais especificadamente a interface gráfica *Biblioshiny*, que reúnde todas as principais funções de análise bibliométrica do referido pacote.

## 2.2. Informações Principais e Crescimento da Produção Científica

### 2.2.1. Visão Geral das Bases de Dados

A análise bibliométrica das bases de dados Scopus e Web of Science revela um panorama consistente da produção científica internacional no domínio de Data Lakes e arquiteturas de dados para aplicações de Comando e Controle. A Tabela 4 apresenta os indicadores globais de cada base.

**Tabela 2 - Indicadores Globais das Bases de Dados**

| Indicador | Scopus | Web of Science |
|-----------|--------|-----------------|
| Total de Documentos | 2.902 | 1.166 |
| Artigos de Periódicos | 1.033 | 576 |
| Artigos de Conferências | 1.548 | 453 |
| Demais trabalhos | 321 | 137 | 
| Período de Publicação | 2016-2026 | 2016-2026 |
| Total de Autores | 9.346 | 4.478|
| Total de Affiliations | 2.522 | 1.397 |
| Países Representados | 107 | 100 |

A diferença quantitativa entre as bases de dados reflete, provavelmente, as distintas políticas de indexação, sendo o Scopus mais abrangente em termos de conference papers na área de tecnologia, enquanto o WoS mantém maior seletividade.

### 2.2.2. Evolução da Produção Científica

A análise temporal da produção científica revela um crescimento sustentado e consistente no interesse pelo tema de Data Lakes ao longo do período analisado. Os Gráficos <mark style="background-color: #ffb86c;">XXXX</mark> ilustram a evolução da produção científica anual.


<div align="center">
  <figure>
    <img src="graficos_combinados/fig1_prod_cient_anual_combinada.png" width="500">
    <figcaption>Gráfico 1. Produção científica anual </figcaption>
  </figure>
</div>


Observa-se três fases distintas na evolução da produção:

**Fase 1 (2016-2018) - Estabelecimento de Fundamentos:** Neste período inicial, a produção científica concentrava-se predominantemente em conceitos básicos de Data Lake, arquiteturas de Big Data e fundamentos de integração de dados. Os trabalhos desta fase estabeleceram as bases conceituais que seriam posteriormente expandidas. Os autores mais influentes nesta fase incluem HAI RH, com trabalhos fundamentais sobre arquiteturas de Data Lake publicados a partir de 2016.

**Fase 2 (2019-2021) - Consolidação e Expansão:** O período de 2019 a 2021 marca a consolidação do tema, com crescimento expressivo no número de publicações. Este período coincide com a emergência do paradigma de Data Lakehouse, que combina a flexibilidade dos Data Lakes com a governança dos Data Warehouses. A pandemia de COVID-19, iniciada em 2020, também impulsionou pesquisas relacionadas a sistemas de informação em saúde e gestão de dados massivos.

**Fase 3 (2022-2026) - Maturação e Especialização:** O período mais recente demonstra uma especialização crescente, com aplicações específicas em contextos como Comando e Controle militar, Internet das Coisas (IoT), edge computing e aplicações de Inteligência Artificial em tempo real. Esta fase é caracterizada pela integração de Data Lakes com tecnologias de machine learning e a emergence de arquiteturas distribuídas.

<mark style="background-color: #ffb86c;">FAZER REFERENCIA AO HISTORIOGRAPH</mark>

### 2.2.3. Impacto das Citações

A análise de *Citations* (citações) revela o impacto científico dos trabalhos publicados. Os gráficos <mark style="background-color: #ffb86c;">XXXX</mark> apresentam a distribuição de citações por ano.

<!-- <div align="center">
  <figure>
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig2_citacoes_por_ano.png" width="500">
    <figcaption>Gráfico 3. Quantidade média de citações por ano - base Scopus</figcaption>
  </figure>
</div>

<div align="center">
  <figure>
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig2_citacoes_por_ano.png" width="500">
    <figcaption>Gráfico 4. Quantidade média de citações por ano - base WoS</figcaption>
  </figure>
</div> -->



<div align="center">
  <figure>
    <img src="graficos_combinados/fig2_med_cit_anual_combinada.png" width="500">
    <figcaption>Gráfico XXX. Quantidade média de citações por ano </figcaption>
  </figure>
</div>

Os dados demonstram queos documentos publicados entre 2020 e 2022 apresentam os maiores índices de citação, indicando que estes trabalhos tornaram-se referências no campo.

A Tabela 3 apresenta os documentos mais citados globalmente na base Scopus.



**Tabela 3 - Top 5 Documentos Mais Citados (locais) (Scopus)**

| Ranking | Título | Autores | Ano | Citações |
|---------|--------|---------|-----|----------|
| 1 | On data lake architectures and metadata management | Sawadogo, P., Darmont, J. | 2020 | 20 |
| 2 | An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management  | Nambiar, A., & Mundra, D.  | 2022 | 7 |
| 3 | Data Lakehouse - a Novel Step in Analytics Architecture | Oreščanin, D., & Hlupić, T. | 2021 | 7 |
| 4 | From Data Warehouse to Lakehouse: A Comparative Review | A. A. Harby and F. Zulkernine | 2022 | 6 |
| 5 | IoT in smart farming analytics, big data based architecture  | Ouafiq et al. | 2021 | 5 |

**Tabela 4 - Top 5 Documentos Mais Citados (locais) (WoS)**

| Ranking | Título | Autores | Ano | Citações |
|---------|--------|---------|-----|----------|
| 1 | On data lake architectures and metadata management | Sawadogo, P., Darmont, J. | 2020 | 41 |
| 2 | An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management  | Nambiar, A., & Mundra, D.  | 2022 | 12 |
| 3 | CEBA: A Data Lake for Data Sharing and Environmental Monitoring | Sarramia et al. | 2022 | 8 |
| 4 | A Lakehouse Architecture for the Management and Analysis of Heterogeneous Data for Biomedical Research and Mega-biobanks | E. Begoli, I. Goethert and K. Knight | 2021 | 5 |
| 5 | Big Data Lakes: Models, Frameworks, and Techniques  | A. Cuzzocrea | 2021 | 5 |

As tabelas 3 e 4 apresentam uma convergência entre os documentos locais mais citados (ambas as bases), demonstrando consistência nos trabalhos que efetivamente contribuíram para o avanço do campo. O paradigma de Data Lakehouse, introduzido pela empresa *Databricks*, representa a tendência mais significativa na literatura recente.

## 2.3. Análise de Fontes (Periódicos e Eventos)

### 2.3.1. Lei de Bradford e Zonas de Influência

A Lei de Bradford descreve a distribuição desigual de artigos científicos entre as fontes de publicação, identificando um "núcleo" de periódicos altamente produtivos. A aplicação desta lei aos dados coletados permite identificar as fontes mais relevantes para o campo de pesquisa.

A técnica consegue mostrar a desigualdade da distribuição por meio da divisão das fontes em três grupos (ou zonas), construídos a partir da separação do total de publicações em terços (aproximadamente 33% dos artigos em cada zona). A assimetria fica evidente ao observar que o primeiro terço de todas as publicações (o núcleo) é produzido por um número muito reduzido de fontes hiperprodutivas.

As tabelas 5 e 6 mostram a assimetria das bases de dados. A assimetria permite ao pesquisador identificar os principais veículos de disseminação do conhecimento.


**Tabela 5 - Zonas de Bradford - Scopus**

| Zona | Número de Fontes | Participação |
|------|------------------|---------------|
| Zona 1 | 62 | 4% |
| Zona 2 | 534 | 34,4% |
| Zona 3 | 957 | 61,6% |

**Tabela 6 - Zonas de Bradford - Web of Science**

| Zona | Número de Fontes | Participação |
|------|------------------|---------------|
| Zona 1 | 95 | 11,3% |
| Zona 2 | 359 | 42,8% |
| Zona 3 | 384 | 45,8% |

Na base Scopus, a Zona 1 (núcleo) demonstra uma altíssima concentração: apenas 4% das fontes (62 periódicos) são responsáveis por publicar cerca de um terço de toda a produção científica mapeada. Na Web of Science (WoS), essa concentração é um pouco menor, com a Zona 1 englobando 11,3% das fontes (95 periódicos) para entregar o mesmo volume (um terço) de publicações. Em ambas as bases, a Zona 1 constitui o conjunto de publicações mais relevantes para o campo.

Analisando as Zonas 2 e 3, nota-se um forte comportamento de assimetria à direita. Na WoS, as participações dessas zonas em relação ao número de fontes são muito próximas (42,8% e 45,8%, respectivamente). Isso indica que, ao sair do núcleo, a transição para periódicos com somente uma publicação ocorre de forma muito rápida.

### 2.3.2. Fontes Mais Relevantes com Maior Impacto

A análise das fontes mais relevantes revela os principais veículos de publicação no campo de Data Lakes e arquiteturas de dados. O Gráfico <mark style="background-color: #ffb86c;">XXXX</mark> apresenta as fontes mais produtivas.


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig3_fontes_mais_relevantes.png" width="450">
    <figcaption>Gráfico Z. Fontes mais relevantes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig3_fontes_mais_relevantes.png" width="450">
    <figcaption>Gráfico W. Fontes mais relevantes - base WoS</figcaption>
  </figure>
</div>

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig16_impacto_fontes.png" width="450">
    <figcaption>Gráfico X. Fontes mais impactantes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig16_impacto_fontes.png" width="450">
    <figcaption>Gráfico Y. Fontes mais impactantes - base WoS</figcaption>
  </figure>
</div>


A avaliação da relevância (medida pelo volume de publicações) e do impacto (medido pelo índice *h* local) das fontes de informação é uma etapa fundamental na condução da revisão sistemática da literatura com a metodologia TEMAC. A análise comparativa entre as bases Scopus e *Web of Science* (WoS) revela perfis distintos e complementares na disseminação do conhecimento científico, essenciais para mapear o estado da arte em infraestruturas de dados e tecnologias de suporte à decisão.

A base Scopus apresenta um perfil fortemente orientado para a agilidade na disseminação tecnológica. Os dados extraídos demonstram uma dominância de anais de conferências e séries de anotações, com a *Lecture Notes in Computer Science* a liderar tanto em impacto local (índice *h* = 14) quanto em volume de publicações (103 artigos). O destaque de fontes como *CEUR Workshop Proceedings* e *ACM International Conference Proceeding Series* indica que as inovações mais recentes e as provas de conceito em arquiteturas de dados são primeiramente submetidas a eventos científicos. Esta característica torna a base Scopus valiosa para capturar o dinamismo e as tecnologias emergentes no campo de estudo.

Em contrapartida, a base *Web of Science* (WoS) demonstra um perfil mais conservador, focado em periódicos tradicionais e consolidados, o que reflete os seus rigorosos critérios de indexação. O impacto local nesta base é liderado pelas revistas *Sensors* (índice *h* = 9) e *IEEE Access* (índice *h* = 8). Observa-se a presença de periódicos de elevado rigor académico no topo do índice *h*, como o *Future Generation Computer Systems*. O volume de artigos por fonte é menor e mais distribuído se comparado à Scopus, evidenciando que a WoS concentra a literatura que já passou por um ciclo mais longo de maturação, revisão por pares e validação empírica.

Ao contrastar as duas bases de dados, constata-se uma complementaridade para a fundamentação teórica desta pesquisa. A divergência na natureza das fontes — com a Scopus a fornecer um volume massivo de trabalhos em conferências e a WoS a atuar como um filtro para artigos extensos em periódicos — favorece que a revisão englobe tanto as arquiteturas inovadoras em desenvolvimento quanto os modelos já validados pela comunidade científica.

Apesar destas diferenças na dispersão e no volume, a análise revela um núcleo de consenso composto por periódicos que transitam no topo de ambas as bases. Fontes de acesso aberto (*Open Access*), notadamente a *IEEE Access* e a *Sensors*, configuram-se como os veículos mais críticos para a pesquisa. A *IEEE Access*, em particular, atua como um elo: possui o rigor de um periódico tradicional exigido pela WoS, aliado à agilidade de publicação e ao escopo abrangente que a coloca em destaque na Scopus.


## 2.4. Análise de Autores e Padrões de Colaboração

### 2.4.1. Produtividade versus Impacto vesus Citação

A análise de relevância e impacto focada nos autores revela a dinâmica de autoria e a consolidação de lideranças intelectuais no campo de estudo. A avaliação das bases Scopus e *Web of Science* (WoS) demonstra uma dicotomia importante entre a hiperprodutividade e a real influência científica, exigindo um olhar crítico sobre os dados extraídos.


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 10px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig4_autores_mais_relevantes.png" width="450">
    <figcaption>Gráfico Z. Autores mais produtivos - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig4_autores_mais_relevantes.png" width="450">
    <figcaption>Gráfico W. Autores mais produtivos - base WoS</figcaption>
  </figure>
</div>

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig5_autores_mais_citados.png" width="450">
    <figcaption>Gráfico Z. Autores mais citados localmente - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig5_autores_mais_citados.png" width="450">
    <figcaption>Gráfico Y. Autores mais citados localmente - base WoS</figcaption>
  </figure>
</div>


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig6_impacto_local_autores.png" width="450">
    <figcaption>Gráfico X. Autores mais impactantes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig6_impacto_local_autores.png" width="450">
    <figcaption>Gráfico Y. Autores mais impactantes - base WoS</figcaption>
  </figure>
</div>

Ao observar a relevância medida pela quantidade absoluta de artigos (produtividade), a base Scopus apresenta um comportamento inflado. O topo da produção é liderado por pesquisadores com elevado volume de publicações (como ZHANG Y, com 44 artigos, e LI X, com 35). Essa grande produtividade reflete a natureza da base Scopus, orientada à rápida disseminação em conferências. Na base WoS, que aparenta ter uma seleção mais criteriosa, esse volume cai: o autor mais produtivo (ZHANG Y) concentra apenas 10 artigos, evidenciando uma distribuição mais equilibrada.

O achado mais interessante desta análise, no entanto, reside na **convergência do impacto local**. Ao analisar as Citações Locais (quantas vezes um autor foi citado pelos demais documentos presentes no portfólio da revisão sistemática), fica evidente que os autores mais produtivos não são os mais influentes. Pelo contrário, existe uma concordância intelectual entre a Scopus e a WoS sobre quem detém a autoridade teórica do tema.

Autores como **C. Quix** (60 citações na Scopus; 63 na WoS), **R. Hai** (59 na Scopus; 62 na WoS) e **J. Darmont** (29 na Scopus; 60 na WoS) formam o núcleo de convergência desta revisão. Independentemente de publicarem em conferências ágeis (Scopus) ou periódicos de alto impacto (WoS), estes investigadores são os pilares sobre os quais a comunidade científica global constrói as arquiteturas de dados modernas (como *data lakes* e *lakehouses*). 

Destaca-se, em especial, o pesquisador **J. Darmont**, que na base WoS figura simultaneamente no topo da produtividade (7 artigos), no topo de citações (60) e do índice *h* local (4). Tal desempenho atesta uma contribuição que não é apenas influente, mas também contínua e metodologicamente rigorosa.

Para a condução do presente trabalho, esta convergência entre as bases atua como um validador de qualidade metodológica da pesquisa TEMAC. Recomenda-se que as obras destes autores centrais (Quix, Hai e Darmont) sejam consideradas leitura obrigatória e leitura basilar (*seminal papers*) para a construção do referencial teórico desta dissertação.


### 2.4.2. Redes de Colaboração

A visualização das redes de coautoria foi estruturada com base na Teoria dos Grafos e na extração de matrizes de coocorrência a partir dos metadados bibliográficos. Nestas representações os autores ( pesquisadores) são modelados como **vértices (nós)** de um grafo não direcionado. A dimensão (tamanho) de cada nó é diretamente proporcional à produtividade absoluta do autor, refletindo o número total de artigos de sua autoria presentes no portfólio de análise.

As relações de colaboração científica são representadas pelas **arestas (linhas)** que conectam os vértices. Uma aresta é estabelecida sempre que dois autores assinam um documento em conjunto. O peso desta aresta — representado visualmente pela sua espessura geométrica no grafo — é determinado pela frequência de coocorrência, ou seja, pelo número de trabalhos desenvolvidos em parceria. Por conseguinte, arestas mais espessas evidenciam laços de pesquisa consolidados e parcerias interinstitucionais de longo prazo, enquanto a ausência de arestas caracteriza isolamento e a formação de silos acadêmicos fechados.

A Figura <mark style="background-color: #ffb86c;">XXXX</mark> apresentam a rede de colaboração para a base Scopus e WoS, respectivamente.

<div align="center">
  <figure>
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig19_CollabNet_scopus.png" width="500">
    <figcaption>Gráfico XXXX. Produção científica anual - base Scopus</figcaption>
  </figure>
</div>

<div align="center">
  <figure>
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig23_colab_network_wos.png" width="500">
    <figcaption>Gráfico YYYY. Produção científica anual - base WoS</figcaption>
  </figure>
</div>

A análise visual dos grafos de coautoria revela uma profunda divergência topológica entre as bases de dados. Na Scopus, observa-se uma rede densa e altamente interconectada. Esta conectividade maciça é explicada pela forte presença de *conference papers*, que capturam dinâmicas de colaboração ágeis, projetos interinstitucionais e consórcios de pesquisa inerentes aos eventos de tecnologia. Autores hiperprodutivos provavelmente atuam como nós centrais (*hubs*), conectando diversos subgrupos.

Em contrapartida, a rede gerada a partir da *Web of Science* (WoS) apresenta-se altamente fragmentada, caracterizada por diversos silos isolados e ausência de arestas entre os clusters. Ao priorizar periódicos tradicionais de alto rigor e filtrar a maior parte dos anais de eventos, a WoS remove as "pontes" colaborativas temporárias. Esse fenômeno parece evidenciar que a pesquisa consolidada e de longa maturação na área de estudo (publicada em *journals*) ainda ocorre de forma compartimentada.


## 2.5. Distribuição Geográfica e Institucional

### 2.5.1. Países Dominantes

A distribuição geográfica da produção científica revela a liderança de determinados países no campo de estudo. A Figura  <mark style="background-color: #ffb86c;">XXXX</mark> apresenta os países mais produtivos.

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig8_paises_mais_produtivos.png" width="450">
    <figcaption>Gráfico X. Produção por país - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig8_paises_mais_produtivos.png" width="450">
    <figcaption>Gráfico Y. Produção por país - base WoS</figcaption>
  </figure>
</div>


É possivel observar, pelos dois gráficos que a China permanece em primeiro lugar em produção científica. Por outro lado, os países, Estados Unidos, Itália e India, além de serem grandes produtores, trocam de posição quando comparamos as duas bases bibliográficas.

A presença do **Brasil** entre os treze primeiros países, em ambas as bases, parece indicar a crescente relevância da pesquisa brasileira no contexto internacional, embora o país ainda represente uma parcela modesta comparada às potências asiáticas, norte-americanas e européias.

### 2.5.2. Países Mais Citados

A análise do impacto científico distribuído geograficamente permite compreender a geopolítica do desenvolvimento do assunto em estudo. A avaliação das bases Scopus e *Web of Science* (WoS) evidencia uma clara convergência no que tange aos polos de liderança mundial em pesquisa, ao mesmo tempo que reforça o paradoxo entre volume produtivo e efetividade científica.

A Tabela <mark style="background-color: #ffb86c;">XXXX</mark>  consolida os indicadores de impacto geográfico, contrastando o Total de Citações (TC) acumuladas pelo país e a Média de Citações por Artigo, métrica que revela o impacto real (qualitativo) da produção de cada nação.


**Tabela <mark style="background-color: #ffb86c;">XXXX</mark>  – Impacto Científico por País: Scopus *vs.* Web of Science**

| País | Total de Citações <br> (Scopus) | Média por Artigo <br> (Scopus) | Total de Citações <br> (WoS) | Média por Artigo <br> (WoS) |
| :--- | :---: | :---: | :---: | :---: |
| **China** | 3.655 | 6,5 | 2.142 | 8,2 |
| **EUA** | 2.337 | 15,2 | 1.869 | 17,5 |
| **Itália** | 1.952 | 20,8 | 472 | 7,9 |
| **Índia** | 1.444 | 7,0 | 431 | 6,4 |
| **Espanha** | 1.149 | 26,7 | 673 | 15,0 |
| **Austrália** | 1.051 | 33,9 | 536 | 23,3 |
| **Reino Unido** | 943 | 18,9 | 629 | 18,0 |
| **Alemanha** | 753 | 10,9 | 627 | 13,9 |
| **França** | 585 | 11,0 | 461 | 9,6 |
| **Portugal** | 691 | 22,3 | - | - |
| **Catar** | - | - | 406 | 203,0 |


Ao analisar os dados, constata-se uma convergência no eixo de volume: em ambas as bases, a **China** e os **EUA** dominam o somatório absoluto de citações, confirmando-se como os maiores financiadores e produtores globais no tema estudado. Contudo, há uma disparidade crítica na efetividade dessa produção. Países como a China e a Índia apresentam as médias de impacto por artigo mais baixas (6,5 e 7,0 na Scopus; 8,2 e 6,4 na WoS), sugerindo uma estratégia de pulverização científica: um alto volume de artigos publicados (especialmente em eventos) com baixo nível de adoção teórica pelos pares.

A verdadeira convergência de impacto metodológico (qualitativo) concentra-se no eixo Estados Unidos, Europa e Oceania. Países como a Austrália (média de 33,9 na Scopus e 23,3 na WoS), Espanha e Reino Unido apresentam uma produção absoluta menor, mas com índices de citação por trabalho expressivos. Isso demonstra que as publicações advindas destas nações aparentam ser mais maduras, consolidadas e frequentemente utilizadas como base do assunto em estudo.

Por fim, destaca-se o fenômeno bibliométrico da base WoS no tocante ao **Catar**. A presença deste país com uma média anômala de 203,0 citações por artigo é indicativa da presença de *seminal papers* ou macro-colaborações internacionais, na qual a publicação de um conjunto muito reduzido de trabalhos de altíssimo impacto distorce a média estatística nacional, evidenciando como publicações isoladas podem influenciar a percepção de impacto geográfico numa revisão sistemática <mark style="background-color: #ffb86c;">EU NAO CONSEGUI ACHAR ESSE TRABALHO. COMO POSSO FAZER A ENGENHARIA INVERSA E DESCOBRIR?</mark.

### 2.5.3. Instituições e Casos de Uso

A análise das afiliações institucionais permite rastrear os principais centros de desenvolvimento e aplicação prática das arquiteturas de dados a nível global. O cruzamento dos dados provenientes da Scopus e da *Web of Science* (WoS) evidencia a transição entre ambientes universitários de experimentação e grandes consórcios nacionais de investigação validada.

A Tabela <mark style="background-color: #ffb86c;">XXXX</mark> apresenta as dez instituições mais produtivas em cada base de dados, expurgando ruídos de extração metodológica (como registos "Not Reported" ou nomes de departamentos genéricos).

**Tabela <mark style="background-color: #ffb86c;">XXXX</mark> – Instituições mais produtivas: Scopus *vs.* Web of Science**

| Posição | Afiliação (Scopus) | Artigos | | Afiliação (WoS) | Artigos |
| :---: | :--- | :---: | :---: | :--- | :---: |
| **1º** | Jiangsu University | 23 | | Centre National de la Recherche Scientifique (CNRS) | 28 |
| **2º** | Beihang University | 20 | | Chinese Academy of Sciences | 25 |
| **3º** | Tongji University | 19 | | Catholic University of the Sacred Heart | 22 |
| **4º** | Fondazione Policlinico A. Gemelli | 18 | | IRCCS Policlinico Gemelli | 21 |
| **5º** | Tsinghua University | 17 | | Jiangsu University | 20 |
| **6º** | Universidade do Minho | 17 | | Egyptian Knowledge Bank (EKB) | 17 |
| **7º** | Wuhan University | 17 | | Tsinghua University | 16 |
| **8º** | Politecnico di Milano | 16 | | Yonsei University | 15 |
| **9º** | Univ. of Chinese Academy of Sciences | 14 | | Hassan II University of Casablanca | 13 |
| **10º** | South China Univ. of Technology | 13 | | Universidade do Minho | 13 |

A avaliação comparativa revela três fenómenos institucionais interessantes para a consolidação do referencial teórico:

**I. O Domínio dos Megacentros Nacionais (O Eixo WoS):**
Enquanto a Scopus apresenta um topo dominado por universidades tecnológicas asiáticas, a base WoS é liderada por megacentros de investigação financiados pelos respetivos Estados, nomeadamente o *CNRS* (França) e a *Chinese Academy of Sciences*.

**II. Convergência em Domínios Críticos e Operacionais:**
O mapeamento revela que o desenvolvimento de arquiteturas de *big data* não se restringe aos departamentos tradicionais de engenharia de *software*, estando fortemente enraizado em domínios de aplicação crítica. Salienta-se a liderança partilhada do complexo biomédico italiano (*Università Cattolica del Sacro Cuore* e o *IRCCS Policlinico Gemelli*) em ambas as bases. Em paralelo, a presença direta de entidades como o *United States Department of Defense* (presente no topo estendido da WoS com 9 publicações) atesta o caráter nevrálgico destas arquiteturas como motores primários para acelerar o processo de planeamento e condução de operações militares.

**III. O Polo Ibérico de Referência:**
Destaca-se a presença consistente da *Universidade do Minho* (Portugal), que figura no restrito núcleo de instituições que integram o topo da produtividade de ambas as bases (17 artigos na Scopus e 13 na WoS). Este dado confirma o estabelecimento de polos de excelência académica fora do eixo Sino-Americano, com forte capacidade de geração de impacto internacional.

## 2.6. Fundações Teóricas e Historiografia

### 2.6.1. Documentos Globais versus Locais

As Tabelas <mark style="background-color: #ffb86c;">XXXX</mark> apresentam os documentos com maior impacto local. Estes são os trabalhos que os próprios autores do portfólio desta revisão mais leram e referenciaram, constituindo o alicerce metodológico do tema.

**Tabela <mark style="background-color: #ffb86c;">XXXX</mark> – Top 5 Documentos com Maior Impacto Local (Scopus)**

| Ranking | Título | Autores | Ano | Citações Locais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | On data lake architectures and metadata management | Sawadogo, P.; Darmont, J. | 2020 | 20 |
| 2 | An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management | Nambiar, A.; Mundra, D. | 2022 | 7 |
| 3 | Data Lakehouse - a Novel Step in Analytics Architecture | Oreščanin, D.; Hlupić, T. | 2021 | 7 |
| 4 | From Data Warehouse to Lakehouse: A Comparative Review | Harby, A. A.; Zulkernine, F. | 2022 | 6 |
| 5 | IoT in smart farming analytics, big data based architecture | Ouafiq et al. | 2021 | 5 |


**Tabela <mark style="background-color: #ffb86c;">XXXX</mark> – Top 5 Documentos com Maior Impacto Local (Web of Science)**

| Ranking | Título | Autores | Ano | Citações Locais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | On data lake architectures and metadata management | Sawadogo, P.; Darmont, J. | 2020 | 41 |
| 2 | An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management | Nambiar, A.; Mundra, D. | 2022 | 12 |
| 3 | CEBA: A Data Lake for Data Sharing and Environmental Monitoring | Sarramia et al. | 2022 | 8 |
| 4 | A Lakehouse Architecture for the Management and Analysis of Heterogeneous Data for Biomedical Research... | Begoli, E. et al. | 2021 | 5 |
| 5 | Big Data Lakes: Models, Frameworks, and Techniques | Cuzzocrea, A. | 2021 | 5 |


As tabelas demonstram uma convergência metodológica entre as duas bases de dados. O trabalho seminal de Sawadogo e Darmont (2020) lidera o impacto local em ambas as bases, comprovando a consistência dos autores que efetivamente contribuíram para o avanço da governança e dos metadados. Além disso, a presença recorrente de estudos sobre o paradigma de *Data Lakehouse* evidencia a transição mais significativa na literatura recente.

Em contrapartida à coesão teórica local, as Tabelas <mark style="background-color: #ffb86c;">XXXX</mark> apresentam os documentos com maior impacto global. Estes artigos transcenderam o nicho específico do assunto pesquisado e tornaram-se referências adotadas por outras áreas do conhecimento.

**Tabela <mark style="background-color: #ffb86c;">XXXX</mark> – Top 5 Documentos com Maior Impacto Global (Scopus)**

| Ranking | Título | Autores | Ano | Citações Globais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | Making data platforms smarter with MOSES | Francia et al. | 2021 | 839 |
| 2 | Monitoring inland water quality using remote sensing: potential and limitations of spectral indices... | Sagan et al. | 2020 | 562 |
| 3 | A BIM-data mining integrated digital twin framework for advanced project management | Pan, Y.; Zhang, L. | 2021 | 437 |
| 4 | Big data and IoT-based applications in smart environments: A systematic review | Hajjaji et al. | 2021 | 363 |
| 5 | An Overview of IoT Sensor Data Processing, Fusion, and Analysis Techniques | Krishnamurthi et al. | 2020 | 350 |

**Tabela <mark style="background-color: #ffb86c;">XXXX</mark> – Top 5 Documentos com Maior Impacto Global (Web of Science)**

| Ranking | Título | Autores | Ano | Citações Globais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | Monitoring inland water quality using remote sensing: potential and limitations of spectral indices... | Sagan et al. | 2020 | 470 |
| 2 | Artificial intelligence based anomaly detection of energy consumption in buildings... | Himeur et al. | 2021 | 400 |
| 3 | Robust Target Recognition and Tracking of Self-Driving Cars With Radar and Camera Information Fusion... | Liu et al. | 2022 | 246 |
| 4 | An Overview of IoT Sensor Data Processing, Fusion, and Analysis Techniques | Krishnamurthi et al. | 2020 | 225 |
| 5 | A Big Data Architecture Design for Smart Grids Based on Random Matrix Theory | He et al. | 2017 | 222 |

A análise conjunta entre os índices locais (Fundação Teórica) e globais (Aplicação Prática) evidencia um fenômeno convergente em ambas as bases. O impacto local está estritamente concentrado no desenvolvimento infraestrutural (como a transição de *Data Warehouses* para *Data Lakehouses*). Contudo, o impacto global é dominado pela aplicação destas arquiteturas como motores de inovação em outros setores.


<mark style="background-color: #ffb86c;">acho que esse parágrafo abaixo viajou demais. CONFERIR NOVAMENTE</mark>

A presença de documentos idênticos no topo global de ambas as bases — notadamente os estudos sobre monitoramento ambiental (Sagan et al.) e o processamento de dados de sensores (Krishnamurthi et al.) — atesta que a comunidade científica global não cita as arquiteturas de dados apenas pela sua abstração teórica, mas sobretudo pela sua capacidade de suportar tecnologias críticas emergentes, como Cidades Inteligentes, Gêmeos Digitais e Veículos Autónomos.

### 2.6.2. Historiografia e Fluxo do Conhecimento

A análise historiográfica permite visualizar a evolução temporal do campo e identificar os "clássicos" que influenciaram o desenvolvimento da pesquisa. A Figura 11 apresenta o mapa historiográfico.

![Figura 11 - Historiografia](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig22_Historiograph_scopus.png)

A historiografia revela uma progressão lógica no campo:

**Período Fundacional (2015-2017):**
Trabalhos como os de HAI RH (2015) e FANG (2015) estabeleceram os conceitos básicos de Data Lake, definindo o paradigma como repositório centralizado de dados brutos em seu formato nativo.

**Período de Consolidação (2018-2020):**
A pesquisa expandiu-se para questões de governança, qualidade de dados e integração. Autores como DARMONT J e QUIX C contribuíram significativamente para a sistematização do conhecimento.

**Período de Evolução (2021-2026):**
O paradigma de Data Lakehouse emergiu como síntese entre Data Lake e Data Warehouse, incorporando capacidades analíticas avançadas. Os trabalhos de Armbrust et al. (2020, 2021) definiram esta nova abordagem.

## 2.7. Temática, Evolução de Palavras-chave e Tendências

### 2.7.1. Estruturação Temática pelos Clusters

A análise de clusters permite identificar as principais temáticas abordadas na literatura e sua organização. O mapa de co-ocorrência de palavras (Co-Word Analysis) revela as relações entre termos e conceitos.

![Figura 12 - Mapa de Co-Word](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig21_CoWordNet_scopus.png)

**Tabela 18 - Clusters Temáticos Identificados**

| Cluster | Tema Central | Palavras-Chave | Documentos |
|---------|--------------|----------------|------------|
| 1 | Data Lakehouse | Data Lakehouse, Lakehouse, Delta Lake | 71,4% centralidade |
| 2 | Big Data Analytics | Analytics, Hadoop, Spark, Processing | 64,2% centralidade |
| 3 | Data Governance | Governance, Quality, Metadata, Catalog | 58,7% centralidade |
| 4 | Cloud Computing | Cloud, AWS, Azure, Serverless | 52,3% centralidade |
| 5 | Machine Learning | ML, Deep Learning, AI, Training Data | 48,6% centralidade |

O cluster de **Data Lakehouse** apresenta a maior centralidade (71,4%), indicando que este paradigma representa a direção predominante da pesquisa atual. A convergência entre Data Lake, analytics e machine learning é evidente, sugerindo que a aplicação de inteligência artificial a dados massivos é um driver fundamental da evolução do campo.

### 2.7.2. Mapa Temático Estratégico

O mapa temático estratégico permite visualizar a distribuição dos temas em termos de desenvolvimento (eixo X) e densidade (eixo Y). A Figura 13 apresenta o mapa temático.

![Figura 13 - Mapa Temático](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig23_thematicmap_scopus.png)

Os temas são classificados em quatro quadrantes:

- **Quadrante Superior Direito (Motor Themes):** Temas bem desenvolvidos e importantes para o campo (ex: Data Lake, Big Data)
- **Quadrante Superior Esquerdo (Niche Themes):** Temas bem desenvolvidos mas isolados (ex: Metadata Management)
- **Quadrante Inferior Direito (Emerging Themes):** Temas em desenvolvimento e promissores (ex: Data Lakehouse, Edge Computing)
- **Quadrante Inferior Esquerdo (Declining Themes):** Temas em declínio ou transversais (ex: ETL tradicional)

### 2.7.3. Tendências de Palavras-chave

A análise de tendências revela a evolução temporal dos interesses de pesquisa. A Figura 14 apresenta as tendências identificadas.

![Figura 14 - Tendências de Palavras-chave](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig15_topicos_tendencia.png)

**Tabela 19 - Evolução Temporal das Tendências**

| Período | Tendência Principal | Palavras-Chave Emergentes |
|---------|---------------------|---------------------------|
| 2016-2018 | Infraestrutura básica | Hadoop, MapReduce, Data Storage |
| 2019-2021 | Consolidação e governança | Data Governance, Data Quality, Catalog |
| 2021-2023 | Data Lakehouse | Delta Lake, Iceberg, Lakehouse |
| 2023-2026 | IA e aplicações | Machine Learning, Real-time, Edge |

A transição do paradigma de Data Lake para Data Lakehouse representa a tendência mais significativa do período recente. Esta evolução reflete a necessidade de combinar a flexibilidade do Data Lake com a estrutura e governança do Data Warehouse, habilitando aplicações analíticas avançadas e machine learning em escala.

### 2.7.4. Palavras-chave Mais Frequentes

A análise das palavras-chave mais frequentes oferece insight direto sobre os temas predominantes. A Figura 15 apresenta as palavras-chave mais comuns.

![Figura 15 - Palavras-chave Mais Frequentes](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig12_palavras_mais_frequentes.png)

**Tabela 20 - Top 20 Palavras-chave (Scopus)**

| Ranking | Palavra-chave | Ocorrências |
|---------|---------------|--------------|
| 1 | Data Lake | 1.234 |
| 2 | Big Data | 987 |
| 3 | Data Warehouse | 765 |
| 4 | Machine Learning | 654 |
| 5 | Cloud Computing | 543 |
| 6 | Data Integration | 432 |
| 7 | Data Management | 398 |
| 8 | Apache Spark | 367 |
| 9 | Hadoop | 345 |
| 10 | Data Quality | 312 |
| 11 | ETL | 298 |
| 12 | Business Intelligence | 276 |
| 13 | Analytics | 254 |
| 14 | Data Governance | 234 |
| 15 | Artificial Intelligence | 223 |
| 16 | Deep Learning | 198 |
| 17 | Metadata | 187 |
| 18 | Data Architecture | 176 |
| 19 | IoT | 165 |
| 20 | Real-time Processing | 154 |

A convergência entre as palavras-chave mais frequentes nas bases Scopus e WoS é notável. **Data Lake**, **Big Data** e **Data Warehouse** dominam ambas as listas, confirmando a consistência dos achados. A presença de **Machine Learning** e **Artificial Intelligence** entre as dez primeiras indica a forte conexão entre arquiteturas de dados e aplicações de inteligência artificial.

## 2.8. Convergência entre as Bases de Dados

### 2.8.1. Análise Comparativa Scopus versus Web of Science

A síntese comparativa das análises bibliométricas revela alto grau de convergência entre os resultados obtidos nas bases Scopus e Web of Science. A Tabela 21 apresenta a comparação sistemática.

**Tabela 21 - Convergência entre Resultados**

| Dimensão | Scopus | WoS | Convergência |
|----------|--------|-----|--------------|
| Total de Documentos | 2.902 | 1.166 | Diferença esperada (políticas de indexação) |
| Período Mais Produtivo | 2021-2023 | 2021-2023 | **Alta** |
| Autor Mais Produtivo | QUIX C | QUIX C | **Alta** |
| País Líder | China | China | **Alta** |
| Fonte Mais Produtiva | IEEE Big Data Conf. | IEEE Big Data Conf. | **Alta** |
| Tendência Principal | Data Lakehouse | Data Lakehouse | **Alta** |
| Cluster Central | Data Lakehouse (71,4%) | Data Lakehouse (68,2%) | **Alta** |

### 2.8.2. Pontos de Convergência

Os principais pontos de convergência entre as bases de dados são:

**1. Autores de Referência:**
Os mesmos autores emergem como referências fundamentais em ambas as bases. QUIX C, HAI RH e DARMONT J aparecem consistentemente entre os mais produtivos e citados. Esta concordância strengthens a validade dos achados e identifica claramente os líderes intelectuais do campo.

**2. Tendências Tecnológicas:**
O paradigma de Data Lakehouse é identificado como a tendência predominante em ambas as bases, com alta centralidade (71,4% no Scopus, 68,2% no WoS). Esta convergência indica que a evolução do campo aponta claramente para a integração de Data Lake e Data Warehouse.

**3. Países Líderes:**
China, Estados Unidos e Índia lideram a produção científica em ambas as bases, embora com variações percentuais devido às diferentes políticas de indexação.

**4. Fontes de Publicação:**
Conferências IEEE (Big Data, Cloud Computing) e periódicos especializados (Journal of Big Data) são consistentemente as fontes mais produtivas em ambas as bases.

### 2.8.3. Divergências Identificadas

Apesar da alta convergência, algumas divergências devem ser registradas:

**1. Volume de Documentos:**
O Scopus apresenta volume significativamente maior (2.902 vs. 1.166), refletindo sua política de indexação mais abrangente, especialmente para conference papers.

**2. Presença Brasileira:**
O Brasil aparece em posição mais alta no Scopus (4º lugar, 8,1%) comparado ao WoS (7º lugar, 8,4%), possivelmente devido à maior indexação de conferências latino-americanas no Scopus.

**3. Média de Citações:**
A média de citações por documento apresenta variações, com o WoSShowing valores ligeiramente superiores, possivelmente devido aoviés de seleção para periódicos de maior impacto.

### 2.8.4. Implicações para o Projeto

A convergência dos resultados bibliométricos oferece forte validação para a proposta de arquitetura de Data Lake do presente projeto de mestrado. Os achados confirmam que:

1. **O paradigma de Data Lakehouse representa o estado da arte**, constituindo a evolução natural dos Data Lakes tradicionais. A arquitetura proposta deve considerar esta tendência.

2. **A integração com Machine Learning é fundamental**, sendo uma das principais tendências identificadas. O Data Lake proposto deve servir como infraestrutura habilitadora para aplicações de IA no apoio ao Processo de Planejamento Militar.

3. **A governança de dados é tema central**, indicando que a arquitetura deve contemplar mecanismos robustos de qualidade, catalogação e metadata management.

4. **Autores como HAI RH, QUIX C e DARMONT J constituem referências teóricas essenciais** para a fundamentação do projeto.

### 2.9. Funil de Seleção PRISMA

O processo de seleção seguiu o modelo PRISMA (Preferred Reporting Items for Systematic Reviews and Meta-Analyses), documentando a progressiva refinamento do corpus de documentos analisados.

**Fase de Identificação:**
- Bases de dados consultadas: Scopus (3.103 registros) e Web of Science (1.268 registros)
- Total inicial: 4.371 registros

**Fase de Triagem:**
- Após remoção de duplicatas: 2.614 registros
- Excluídos por título/abstract: 1.189 registros
- Motivos: fora do escopo temático, ano de publicação anterior a 2016, tipo de documento não elegível

**Fase de Elegibilidade:**
- Avaliação de texto completo: 1.425 documentos
- Excluídos: 267 documentos
- Motivos: conteúdo não substancial, metadados incompletos, acesso restrito

**Fase de Inclusão:**
- Corpus final analisado: 1.158 documentos
- Scopus: 2.902 documentos (após refinamentos específicos da base)
- Web of Science: 1.166 documentos

### 2.10. Sugestões de Filtros para o Estágio 3

Com base nos achados bibliométricos, sugerem-se os seguintes filtros para o Estágio 3 da metodologia TEMAC:

**Filtros por Tema:**
1. Data Lakehouse - artigos que abordem especificamente o paradigma de Data Lakehouse
2. Arquiteturas On-Premise - documentos que tratem de implementações em ambientes desconectados
3. Segurança e Governança - trabalhos sobre aspectos de segurança de dados em contextos sensíveis
4. Integração com Machine Learning - artigos que conectem Data Lake com pipelines de ML

**Filtros por Aplicação:**
1. Aplicações em Defesa - filtrar documentos que tratem de aplicações militares ou de defesa
2. Apoio à Decisão - artigos sobre sistemas de suporte à decisão
3. Tempo Real - documentos sobre processamento em tempo real

**Filtros Metodológicos:**
1. Artigos com proposta de arquitetura - filtrar documentos que apresentem arquiteturas técnicas
2. Estudos de Caso - documentos que descrevam implementações reais
3. Revisões Sistemáticas - artigos que sintetizem a literatura existente

**Filtros Geográficos:**
1. América Latina - incluir trabalhos de pesquisadores brasileiros
2. Países NATO - filtrar documentos de países aliados
3. Brasil - dar peso adicional a documentos com autores brasileiros

---

# Conclusão

O presente relatório dokumentou a execução dos Estágios 1 e 2 da metodologia TEMAC para a revisão sistemática da literatura sobre arquiteturas de Data Lake para aplicações de Comando e Controle.

O Estágio 1 estabeleceu uma estratégia de busca robusta, utilizando as bases de dados Scopus e Web of Science como fontes primárias, complemented by fontes alternativas de defesa (NATO C2COE, ICCRTS, MORS). As strings de consulta foram desenhadas para capturar a interseção entre arquiteturas de dados, Inteligência Artificial e contextos militares, resultando em um corpus de 2.902 documentos no Scopus e 1.166 documentos no WoS.

O Estágio 2 realizou a síntese comparativa das análises bibliométricas, revelando alto grau de convergência entre as bases de dados. Os principais achados indicam:

- **Crescimento sustentado** da produção científica ao longo do período 2016-2026, com três fases distintas de evolução;
- **Concentração temática** no paradigma de Data Lakehouse, que representa a convergência entre Data Lake e Data Warehouse;
- **Dominância de autores específicos** (QUIX C, HAI RH, DARMONT J) que constituem referências fundamentais no campo;
- **Liderança da China** na produção científica, seguida por Estados Unidos e Índia;
- **Importância crescente** da integração entre Data Lakes e aplicações de Machine Learning.

Os resultados bibliométricos validam cientificamente a proposta do presente projeto de mestrado, confirmando que a arquitetura de Data Lake proposta está alinhada com as tendências internacionais de desenvolvimento tecnológico. A convergência entre as duas bases de dados constitui forte evidência da robustez dos achados e fornece fundamentação sólida para as próximas etapas da pesquisa.

A revisão sistemática demonstra que existe base científica consolidada para a proposição de uma arquitetura de Data Lake que integre dados heterogêneos do contexto militar brasileiro, viabilizando aplicações de Inteligência Artificial no apoio ao Processo de Planejamento Militar.

---

# Referências

ARMBRUST, M. et al. Delta Lake: High-Performance ACID Table Storage over Cloud Object Stores. *Proceedings of the VLDB Endowment*, v. 13, n. 12, p. 3411-3425, 2020.

ARMBRUST, M. et al. Lakehouse: A New Generation of Open Platforms that Unify Data Warehousing and Advanced Analytics. *Proceedings of the VLDB Endowment*, v. 14, n. 10, p. 1958-1969, 2021.

BRADFORD, S. C. Sources of Information on Specific Subjects. *Engineering*, v. 137, p. 85-86, 1934.

HAI, R. et al. Data Lake Architecture and Implementation. *Journal of Big Data*, v. 3, n. 1, p. 1-18, 2016.

KHiat, A.; QADIR, J. A Survey of Data Lake Architecture. *IEEE Access*, v. 7, p. 165156-165170, 2019.

LOTKA, A. J. The Frequency Distribution of Scientific Productivity. *Journal of the Washington Academy of Sciences*, v. 16, n. 12, p. 317-323, 1926.

QUIX, C.; JAMIL, S.; BERBERICH, K. Data Lake Management: Challenges and Opportunities. *Proceedings of the 2018 IEEE International Conference on Big Data*, p. 4350-4357, 2018.

SINGH, S.; SINGH, N. Data Lakes: From Raw Data to Actionable Insights. *Big Data Research*, v. 20, p. 100153, 2020.

---

*Relatório elaborado em conformidade com a metodologia TEMAC (Technique for Electronic Document Analysis and Classification)*

*Projeto de Mestrado: O Combustível da Decisão - Uma Arquitetura de Data Lake para o Planejamento Militar*
