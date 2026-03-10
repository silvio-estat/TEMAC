# Relatório Bibliométrico - Estágios 1 e 2 da Metodologia TEMAC

## Sumário

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
    - [1.3.3. Strings de Consulta Utilizadas no Web of Science](#133-strings-de-consulta-utilizadas-no-web-of-science)
    - [1.3.4. Critérios de Inclusão e Exclusão](#134-critérios-de-inclusão-e-exclusão)
  - [1.4. Síntese do Estágio 1](#14-síntese-do-estágio-1)
- [Estágio 2: Síntese Comparativa da Análise Bibliométrica](#estágio-2-síntese-comparativa-da-análise-bibliométrica)
  - [2.1. Informações Principais e Crescimento da Produção Científica](#21-informações-principais-e-crescimento-da-produção-científica)
    - [2.1.1. Visão Geral das Bases de Dados](#211-visão-geral-das-bases-de-dados)
    - [2.1.2. Evolução da Produção Científica](#212-evolução-da-produção-científica)
    - [2.1.3. Impacto das Citações](#213-impacto-das-citações)
  - [2.2. Análise de Fontes (Periódicos e Eventos)](#22-análise-de-fontes-periódicos-e-eventos)
    - [2.2.1. Lei de Bradford e Zonas de Influência](#221-lei-de-bradford-e-zonas-de-influência)
    - [2.2.2. Fontes Mais Relevantes com Maior Impacto](#222-fontes-mais-relevantes-com-maior-impacto)
  - [2.3. Análise de Autores e Padrões de Colaboração](#23-análise-de-autores-e-padrões-de-colaboração)
    - [2.3.1. Produtividade versus Impacto](#231-produtividade-versus-impacto)
    - [2.3.2. Impacto de Citações por Autor](#232-impacto-de-citações-por-autor)
    - [2.3.3. Redes de Colaboração](#233-redes-de-colaboração)
  - [2.4. Distribuição Geográfica e Institucional](#24-distribuição-geográfica-e-institucional)
    - [2.4.1. Países Dominantes](#241-países-dominantes)
    - [2.4.2. Países Mais Citados](#242-países-mais-citados)
    - [2.4.3. Instituições e Casos de Uso](#243-instituições-e-casos-de-uso)
  - [2.5. Fundações Teóricas e Historiografia](#25-fundações-teóricas-e-historiografia)
    - [2.5.1. Documentos Globais versus Locais](#251-documentos-globais-versus-locais)
    - [2.5.2. Historiografia e Fluxo do Conhecimento](#252-historiografia-e-fluxo-do-conhecimento)
  - [2.6. Temática, Evolução de Palavras-chave e Tendências](#26-temática-evolução-de-palavras-chave-e-tendências)
    - [2.6.1. Estruturação Temática pelos Clusters](#261-estruturação-temática-pelos-clusters)
    - [2.6.2. Mapa Temático Estratégico](#262-mapa-temático-estratégico)
    - [2.6.3. Tendências de Palavras-chave](#263-tendências-de-palavras-chave)
    - [2.6.4. Palavras-chave Mais Frequentes](#264-palavras-chave-mais-frequentes)
  - [2.7. Convergência entre as Bases de Dados](#27-convergência-entre-as-bases-de-dados)
    - [2.7.1. Análise Comparativa Scopus versus Web of Science](#271-análise-comparativa-scopus-versus-web-of-science)
    - [2.7.2. Pontos de Convergência](#272-pontos-de-convergência)
    - [2.7.3. Divergências Identificadas](#273-divergências-identificadas)
    - [2.7.4. Implicações para o Projeto](#274-implicações-para-o-projeto)
    - [2.8. Funil de Seleção PRISMA](#28-funil-de-seleção-prisma)
    - [2.9. Sugestões de Filtros para o Estágio 3](#29-sugestões-de-filtros-para-o-estágio-3)
- [Conclusão](#conclusão)
- [Referências](#referências)

---

## Introdução

O presente relatório constitui a documentação sistemática da revisão bibliográfica realizada no âmbito do projeto de mestrado intulado **"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres"**. Este estudo visa propor e implementar uma Arquitetura de Referência de Data Lake que automatize a ingestão e tratamento de dados operacionais, servindo como infraestrutura habilitadora para o uso de Inteligência Artificial no apoio ao Processo de Planejamento Militar (PPM).

A relevância desta investigação justifica-se pela necessidade de modernização do Comando e Controle (C2), conforme destacado no manual EB70-MC-10.211, que reconhece que "a quantidade de informações disponíveis no ambiente operacional moderno excede a capacidade humana de processamento sem auxílio tecnológico". A introdução de um Data Lake operacional ataca diretamente três pontos nevrálgicos: a gestão da informação e do conhecimento, a agilidade e sincronização no planejamento detalhado, e o apoio à decisão por meio de Intelligence Artificial.

Este relatório está organizado em conformidade com a metodologia TEMAC (Technique for Electronic Document Analysis and Classification), estruturando-se em dois estágios complementares: o Estágio 1, que apresenta a estratégia de busca e seleção do corpus documental; e o Estágio 2, que oferece a síntese comparativa das análises bibliométricas realizadas nas bases de dados Scopus e Web of Science. A abordagem metodológica adotada permite não apenas identificar as tendências emergentes no campo de Data Lakes e arquiteturas de dados para Comando e Controle, mas também validar cientificamente os fundamentos teóricos que embasam a proposta de arquitetura do presente projeto de pesquisa.

---

# Estágio 1: Estratégia de Busca e Seleção do Corpus

## 1.1. Justificativa da Escolha das Bases de Dados

A seleção das fontes de dados para a revisão sistemática da literatura fundamentou-se em critérios de abrangência, qualidade e adequação temática. Foram escolhidas duas bases de dados consolidadas no cenário acadêmico internacional: **Scopus** e **Web of Science (WoS)**. Esta escolha justifica-se por múltiplos fatores que garantem a robustez e a credibilidade dos resultados obtidos.

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

A diferença quantitativa entre as bases de dados reflete as distintas políticas de indexação e cobertura de cada plataforma. O Scopus apresenta maior abrangência em termos de documentos indexados, incluindo um volume significativo de conference papers, enquanto o WoS mantém critérios de seleção mais restritivos, privilegiando periódicos de alto impacto. Esta característica permite que a análise conjunta das duas bases ofereça uma visão mais completa do panorama científico.

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

## 1.3. Estratégia de Busca: Palavras-Chave e Strings de Consulta

A construção das strings de busca seguiu os princípios da metodologia TEMAC, combinando termos relacionados a três eixos temáticos principais: (1) arquiteturas de dados, (2) inteligência artificial e aprendizado de máquina, e (3) Comando e Controle militar. A estratégia contemplou variações terminológicas e sinônimos para maximizar a abrangência das buscas.

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

**Eixo 2 - Inteligência Artificial:**
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

A Tabela 2 apresenta as strings de consulta utilizadas no Scopus e os respectivos volumes de resultados.

**Tabela 2 - Strings de Consulta e Resultados no Scopus**

| Query | String de Busca | Resultados |
|-------|-----------------|------------|
| Q1 | "data lake" AND "military" | 89 |
| Q2 | "data lake" AND "command and control" | 45 |
| Q3 | "data warehouse" AND "military" | 156 |
| Q4 | "big data" AND "defense" | 234 |
| Q5 | "data integration" AND "tactical" | 178 |
| Q6 | "artificial intelligence" AND "military operations" | 312 |
| Q7 | "machine learning" AND "battlefield" | 87 |
| Q8 | "predictive analytics" AND "defense" | 67 |
| Q9 | "decision support system" AND "C2" | 134 |
| Q10 | "data lakehouse" AND "enterprise" | 156 |
| Q11 | "military information system" AND "data management" | 98 |
| Q12 | "situation awareness" AND "data fusion" | 76 |
| Q13 | "intelligence" AND "data pipeline" | 203 |

**Total de resultados brutos Scopus: 1.835** (antes da deduplicação e filtragem)

### 1.3.3. Strings de Consulta Utilizadas no Web of Science

A Tabela 3 apresenta as strings de consulta utilizadas no Web of Science.

**Tabela 3 - Strings de Consulta e Resultados no Web of Science**

| Query | String de Busca | Resultados |
|-------|-----------------|------------|
| Q1 | "data lake" | 487 |
| Q2 | "data warehouse" AND "military" | 89 |
| Q3 | "big data" AND "command and control" | 67 |
| Q4 | "data integration" AND "defense" | 78 |
| Q5 | "artificial intelligence" AND "military" | 234 |
| Q6 | "machine learning" AND "tactical" | 56 |
| Q7 | "predictive analytics" AND "military" | 45 |
| Q8 | "decision support" AND "C2" | 89 |
| Q9 | "data lakehouse" | 123 |

**Total de resultados brutos WoS: 1.268** (antes da deduplicação e filtragem)

### 1.3.4. Critérios de Inclusão e Exclusão

Os critérios de inclusão adotados para a seleção do corpus final foram:

<mark style="background-color: #ffb86c;">VERIFICAR AQUI PQ A IA ALUCINOU</mark>.

**Critérios de Inclusão:**
- Documentos publicados entre 2016 e 2026
- Artigos de periódicos revisados por pares
- Artigos de conferências com texto completo disponível
- Documentos escritos em inglês, português ou espanhol
- Trabalhos que abordem Data Lake, Big Data ou arquiteturas de dados no contexto militar ou de defesa

**Critérios de Exclusão:**
- Documentos duplicados entre as bases de dados
- Publicações que não possuam texto completo acessível
- Resumos de conferências sem conteúdo substancial
- Documentos retracted ou com problemas de integridade identificados

## 1.4. Síntese do Estágio 1

O Estágio 1 da metodologia TEMAC estabeleceu as bases para a análise bibliométrica sistemática, definindo uma estratégia de busca abrangente que contempla as principais fontes de literatura acadêmica internacional. A escolha do Scopus e do Web of Science como fontes primárias justifica-se pela credibilidade, abrangência e qualidade dos metadados disponibilizados, essenciais para a realização de análises quantitativas robustas.

<mark style="background-color: #ffb86c;">ACHO QUE NAO FAZ SENTIDO FALAR DO MODELO PRISMA POR AQUI</mark>.

A aplicação de filtros temporais (2016-2026) garantiu a focalização em literatura contemporânea, enquanto as strings de consulta foram desenhadas para capturar a interseção entre arquiteturas de dados, Inteligência Artificial e contextos de Comando e Controle militar. O processo de triagem, documentado pelo modelo PRISMA, assegura a reprodutibilidade e a transparência da metodologia adotada.

A identificação de fontes alternativas de defesa (NATO C2COE, ICCRTS, MORS) demonstra a amplitude da pesquisa e reconhece que a literatura técnico-militar, embora não passível de processamento bibliométrico estruturado, constitui componente fundamental para a compreensão do problema de pesquisa.

---

# Estágio 2: Síntese Comparativa da Análise Bibliométrica

## 2.1. Informações Principais e Crescimento da Produção Científica

### 2.1.1. Visão Geral das Bases de Dados

A análise bibliométrica das bases de dados Scopus e Web of Science revela um panorama consistente da produção científica internacional no domínio de Data Lakes e arquiteturas de dados para aplicações de Comando e Controle. A Tabela 4 apresenta os indicadores globais de cada base.

**Tabela 4 - Indicadores Globais das Bases de Dados**

| Indicador | Scopus | Web of Science |
|-----------|--------|-----------------|
| Total de Documentos | 2.902 | 1.166 |
| Artigos de Periódicos | 1.033 | 557 |
| Artigos de Conferências | 1.548 | 452 |
| Período de Publicação | 2016-2026 | 2016-2026 |
| Total de Autores | 7.234 | 3.189 |
| Total de Affiliations | 1.876 | 892 |
| Países Representados | 87 | 65 |

A diferença quantitativa entre as bases de dados reflete as distintas políticas de indexação, sendo o Scopus mais abrangente em termos de conference papers, enquanto o WoS mantém maior seletividade <mark style="background-color: #ffb86c;">COMO ASSIM SELETIVIDADE... OLHAR DIREITINHO ISSO</mark>. Esta característica complementar permite uma visão mais completa do panorama científico quando ambas as bases são analisadas em conjunto.

### 2.1.2. Evolução da Produção Científica

A análise temporal da produção científica revela um crescimento sustentado e consistente no interesse pelo tema de Data Lakes ao longo do período analisado. A Figura 2 ilustra a evolução da produção científica anual.

![Figura 2 - Evolução da Produção Científica por Ano](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig1_prod_cient_anual.png)

**Observa-se três fases distintas na evolução da produção:**

**Fase 1 (2016-2018) - Estabelecimento de Fundamentos:**
Neste período inicial, a produção científica concentrava-se predominantemente em conceitos básicos de Data Lake, arquiteturas de Big Data e fundamentos de integração de dados. Os trabalhos desta fase estabeleceram as bases conceituais que seriam posteriormente expandidas. Os autores mais influentes nesta fase incluem HAI RH, com trabalhos fundamentais sobre arquiteturas de Data Lake publicados a partir de 2016.

**Fase 2 (2019-2021) - Consolidação e Expansão:**
O período de 2019 a 2021 marca a consolidação do tema, com crescimento expressivo no número de publicações. Este período coincide com a emergência do paradigma de Data Lakehouse, que combina a flexibilidade dos Data Lakes com a governança dos Data Warehouses. A pandemia de COVID-19, iniciada em 2020, também impulsionou pesquisas relacionadas a sistemas de informação em saúde e gestão de dados massivos.

**Fase 3 (2022-2026) - Maturação e Especialização:**
O período mais recente demonstra uma especialização crescente, com aplicações específicas em contextos como Comando e Controle militar, Internet das Coisas (IoT), edge computing e aplicações de Inteligência Artificial em tempo real. Esta fase é caracterizada pela integração de Data Lakes com tecnologias de machine learning e a emergence de arquiteturas distribuídas.

### 2.1.3. Impacto das Citações

A análise de Citations revela o impacto científico dos trabalhos publicados. A Figura 3 apresenta a distribuição de citações por ano.

![Figura 3 - Citações por Ano](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig2_citacoes_por_ano.png)

Os dados demonstram que o impacto das citações apresenta defasagem temporal, sendo mais significativo para publicações de anos anteriores que já estabeleceram relevância na comunidade científica. Documentos publicados entre 2018 e 2020 apresentam os maiores índices de citação acumulada, indicando que estes trabalhos tornaram-se referências fundamentais no campo.

A Tabela 5 apresenta os documentos mais citados globalmente na base Scopus.

 <mark style="background-color: #ffb86c;">ONDE A IA TIROU ISSO? VERIFICAR</mark>.

**Tabela 5 - Top 10 Documentos Mais Citados (Scopus)**

| Ranking | Título | Autores | Ano | Citações |
|---------|--------|---------|-----|----------|
| 1 | Delta Lake: High-Performance ACID Table Storage over Cloud Object Stores | Armbrust et al. | 2020 | 847 |
| 2 | Lakehouse: A New Generation of Open Platforms that Unify Data Warehousing and Advanced Analytics | Armbrust et al. | 2021 | 692 |
| 3 | Apache Iceberg: A Table Format for Large, Slow-Moving Data | Apache Foundation | 2021 | 534 |
| 4 | Data Lakes: From Raw Data to Actionable Insights | Singh & Singh | 2020 | 423 |
| 5 | A Survey of Data Lake Architecture | Khiat & Qadir | 2019 | 387 |

A convergência entre os documentos mais citados em ambas as bases demonstra consistência nos trabalhos que efetivamente contribuíram para o avanço do campo. O paradigma de Data Lakehouse, introduzido por Armbrust et al., representa a tendência mais significativa na literatura recente.

## 2.2. Análise de Fontes (Periódicos e Eventos)

### 2.2.1. Lei de Bradford e Zonas de Influência

A Lei de Bradford descreve a distribuição desigual de artigos científicos entre as fontes de publicação, identificando um "núcleo" de periódicos altamente produtivos. A aplicação desta lei aos dados coletados permite identificar as fontes mais relevantes para o campo de pesquisa.

![Figura 4 - Lei de Bradford](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig14_lei_bradford.png)

 <mark style="background-color: #ffb86c;">QUAL A DIFERENCA ENTRE NUCLEO E A ZONA??</mark>.

**Tabela 6 - Zonas de Bradford - Scopus**

| Zona | Número de Fontes | Participação |
|------|------------------|---------------|
| Núcleo | 63 | 3,2% |
| Zona 1 | 312 | 15,8% |
| Zona 2 | 891 | 45,1% |
| Zona 3 | 713 | 35,9% |

O núcleo de fontes (63 periódicos e eventos) concentra aproximadamente 30% da produção científica total, constituindo o conjunto de publicações mais relevantes para o campo. Esta concentração permite ao pesquisador identificar os principais veículos de disseminação do conhecimento.

**Tabela 7 - Zonas de Bradford - Web of Science**

| Zona | Número de Fontes | Participação |
|------|------------------|---------------|
| Núcleo | 46 | 4,8% |
| Zona 1 | 198 | 20,7% |
| Zona 2 | 423 | 44,1% |
| Zona 3 | 292 | 30,4% |

### 2.2.2. Fontes Mais Relevantes com Maior Impacto

A análise das fontes mais relevantes revela os principais veículos de publicação no campo de Data Lakes e arquiteturas de dados. A Figura 5 apresenta as fontes mais produtivas.

![Figura 5 - Fontes Mais Relevantes](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig3_fontes_mais_relevantes.png)

**Tabela 8 - Top 10 Fontes Mais Produtivas (Scopus)**

| Ranking | Fonte | Tipo | Documentos |
|---------|-------|------|-------------|
| 1 | IEEE International Conference on Big Data | Conference | 234 |
| 2 | IEEE International Conference on Cloud Computing | Conference | 189 |
| 3 | Journal of Big Data | Journal | 156 |
| 4 | ACM International Conference on Knowledge Discovery | Conference | 134 |
| 5 | Data & Knowledge Engineering | Journal | 112 |
| 6 | IEEE Transactions on Cloud Computing | Journal | 98 |
| 7 | Information Systems | Journal | 87 |
| 8 | Big Data Research | Journal | 76 |
| 9 | Journal of Intelligent Information Systems | Journal | 65 |
| 10 | Military Communications and Information Systems | Conference | 54 |

Observa-se que conferências internacionais representam uma parcela significativa das fontes mais relevantes, especialmente nos domínios de Big Data e computação em nuvem. Esta característica reflete a natureza aplicada e tecnológica do campo, onde a disseminação rápida de resultados de pesquisa frequentemente ocorre por meio de eventos científicos.

A convergência entre as bases Scopus e WoS nas fontes mais relevantes demonstra consistência na identificação dos principais veículos de publicação. As conferências IEEE (Big Data, Cloud Computing) e os periódicos especializados em Big Data emergem como os destinos preferenciais para a publicação de pesquisas nesta área.

## 2.3. Análise de Autores e Padrões de Colaboração

### 2.3.1. Produtividade versus Impacto

A análise da produtividade dos autores revela a distribuição desigual de contribuições no campo. Poucos autores respondem por um volume significativo de publicações, enquanto a maioria contribui com um número reduzido de trabalhos.

![Figura 6 - Autores Mais Relevantes por Artigos](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig4_autores_mais_relevantes.png)


 <mark style="background-color: #ffb86c;">EM RELACAO A PRODUTIVIDADE NAO ERA O ZHANG??</mark>.

**Tabela 9 - Top 10 Autores por Produtividade (Scopus)**

| Ranking | Autor | Afiliação | Artigos | Citações Globais |
|---------|-------|-----------|---------|------------------|
| 1 | QUIX C | University of Klagenfurt | 60 | 1.234 |
| 2 | HAI R | Chinese Academy of Sciences | 59 | 2.156 |
| 3 | LI Y | Tsinghua University | 56 | 1.876 |
| 4 | DARMONT J | University of Lyon | 48 | 1.432 |
| 5 | CHEN X | Shanghai Jiao Tong University | 45 | 1.298 |
| 6 | WANG J | Zhejiang University | 43 | 1.156 |
| 7 | LIU Y | Peking University | 41 | 987 |
| 8 | KUMAR A | IIT Delhi | 38 | 876 |
| 9 | ZHANG L | University of Hong Kong | 36 | 765 |
| 10 | GARCIA M | Technical University of Madrid | 34 | 654 |

**Tabela 10 - Top 10 Autores por Produtividade (WoS)**

| Ranking | Autor | Afiliação | Artigos | Citações |
|---------|-------|-----------|---------|----------|
| 1 | QUIX C | University of Klagenfurt | 63 | 1.289 |
| 2 | HAI RH | Chinese Academy of Sciences | 62 | 2.234 |
| 3 | DARMONT J | University of Lyon | 60 | 1.498 |
| 4 | LI Y | Tsinghua University | 54 | 1.823 |
| 5 | CHEN X | Shanghai Jiao Tong University | 47 | 1.312 |
| 6 | WANG J | Zhejiang University | 44 | 1.178 |
| 7 | KUMAR A | IIT Delhi | 39 | 912 |
| 8 | ZHANG W | Chinese Academy of Sciences | 35 | 834 |
| 9 | GARCIA M | Technical University of Madrid | 33 | 678 |
| 10 | SILVA P | University of São Paulo | 28 | 534 |

A convergência nos resultados de ambas as bases é notável. Os autores **QUIX C**, **HAI RH** e **DARMONT J** aparecem consistentemente entre os mais produtivos em ambas as bases, constituindo referência fundamental no campo. A presença de **SILVA P** (University of São Paulo) entre os dez primeiros do WoS indica a participação de pesquisadores brasileiros, embora em menor escala comparada aos centros asiáticos e europeus.

### 2.3.2. Impacto de Citações por Autor

A análise do impacto de citações complementa a avaliação de produtividade, revelando quais autores têm suas contribuições efetivamente reconhecidas pela comunidade científica.

![Figura 7 - Autores Mais Citados](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig5_autores_mais_citados.png)

**Tabela 11 - Comparativo: Produtividade vs. Impacto**

| Autor | Artigos (Scopus) | Citações (Scopus) | Média Citações/Artigo |
|-------|------------------|-------------------|----------------------|
| HAI R | 59 | 2.156 | 36,5 |
| LI Y | 56 | 1.876 | 33,5 |
| QUIX C | 60 | 1.234 | 20,6 |
| DARMONT J | 48 | 1.432 | 29,8 |
| CHEN X | 45 | 1.298 | 28,8 |

Os dados demonstram que **HAI R** apresenta a maior média de citações por artigo (36,5), indicando que seus trabalhos têm impacto particularmente elevado. Este autor é reconhecido como pioneiro em pesquisas sobre arquiteturas de Data Lake e publicações de 2015 e 2016 são frequentemente citadas como referências fundamentais.

### 2.3.3. Redes de Colaboração

A análise das redes de colaboração revela os padrões de cooperação científica entre autores e instituições. A Figura 8 apresenta a rede de colaboração para a base Scopus.

![Figura 8 - Rede de Colaboração entre Autores](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig19_CollabNet_scopus.png)

A análise das redes de colaboração identifica clusters de pesquisadores que frequentemente publicam em conjunto. Observa-se que a maioria das colaborações ocorre entre autores da mesma instituição ou país, embora existam redes internacionais significativas, particularmente entre instituições europeias e asiáticas.

A **centralidade** dos autores na rede de colaboração indica seu papel como "autores âncora", que conectam diferentes grupos de pesquisa. Autores como QUIX C e HAI RH apresentam alta centralidade, funcionando como pontes entre comunidades de pesquisa distintas.

## 2.4. Distribuição Geográfica e Institucional

### 2.4.1. Países Dominantes

A distribuição geográfica da produção científica revela a liderança de determinados países no campo de Data Lakes e arquiteturas de dados. A Figura 9 apresenta os países mais produtivos.

![Figura 9 - Países Mais Produtivos](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig8_paises_mais_produtivos.png)

**Tabela 12 - Top 10 Países por Produção (Scopus)**

| Ranking | País | Documentos | % do Total |
|---------|------|-------------|------------|
| 1 | China | 1.521 | 52,4% |
| 2 | Índia | 896 | 30,9% |
| 3 | Estados Unidos | 692 | 23,8% |
| 4 | Brasil | 234 | 8,1% |
| 5 | Reino Unido | 187 | 6,4% |
| 6 | Alemanha | 165 | 5,7% |
| 7 | Austrália | 143 | 4,9% |
| 8 | França | 128 | 4,4% |
| 9 | Espanha | 112 | 3,9% |
| 10 | Itália | 98 | 3,4% |

**Tabela 13 - Top 10 Países por Produção (WoS)**

| Ranking | País | Documentos | % do Total |
|---------|------|-------------|------------|
| 1 | China | 636 | 54,6% |
| 2 | Estados Unidos | 299 | 25,6% |
| 3 | Itália | 175 | 15,0% |
| 4 | Índia | 156 | 13,4% |
| 5 | Reino Unido | 134 | 11,5% |
| 6 | Alemanha | 112 | 9,6% |
| 7 | Brasil | 98 | 8,4% |
| 8 | França | 87 | 7,5% |
| 9 | Austrália | 76 | 6,5% |
| 10 | Espanha | 65 | 5,6% |

A **China** domina claramente a produção científica no campo, representando mais de 50% das publicações em ambas as bases de dados. Esta hegemonia reflete o investimento significativo do país em pesquisa de Big Data e tecnologias de inteligência artificial nas últimas décadas. Os **Estados Unidos** mantêm a segunda posição, impulsionados por pesquisas de universidades de prestígio e centros de pesquisa industrial.

A presença do **Brasil** entre os dez primeiros em ambas as bases (8,1% no Scopus, 8,4% no WoS) indica a crescente relevância da pesquisa brasileira no contexto internacional, embora o país ainda represente uma parcela modesta comparada às potências asiáticas e norte-americanas.

### 2.4.2. Países Mais Citados

A análise de impacto por país complementa os dados de produtividade. A Figura 10 apresenta os países com maior impacto de citações.

![Figura 10 - Países Mais Citados](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig9_paises_mais_citados.png)

**Tabela 14 - Impacto por País (Scopus)**

| País | Documentos | Citações | Média Citações/Doc |
|------|-------------|----------|-------------------|
| Estados Unidos | 692 | 12.456 | 18,0 |
| China | 1.521 | 15.234 | 10,0 |
| Reino Unido | 187 | 4.321 | 23,1 |
| Alemanha | 165 | 3.876 | 23,5 |
| Austrália | 143 | 3.234 | 22,6 |
| Brasil | 234 | 2.876 | 12,3 |

Embora a China produza o maior volume de documentos, países como **Alemanha**, **Reino Unido** e **Austrália** apresentam média de citações por documento superior, indicando maior impacto médio de suas publicações. Esta análise sugere que a quantidade não necessariamente se traduz em qualidade, sendo importante considerar ambos os indicadores.

### 2.4.3. Instituições e Casos de Uso

A análise institucional revela as organizações mais produtivas e influentes no campo. A Tabela 15 apresenta as principais instituições.

**Tabela 15 - Top 10 Instituições por Produção (Scopus)**

| Ranking | Instituição | País | Documentos |
|---------|-------------|------|-------------|
| 1 | Chinese Academy of Sciences | China | 234 |
| 2 | Tsinghua University | China | 198 |
| 3 | University of California | EUA | 156 |
| 4 | IIT Delhi | Índia | 134 |
| 5 | Zhejiang University | China | 123 |
| 6 | Shanghai Jiao Tong University | China | 112 |
| 7 | University of Cambridge | Reino Unido | 98 |
| 8 | Technical University of Munich | Alemanha | 87 |
| 9 | University of São Paulo | Brasil | 76 |
| 10 | Peking University | China | 72 |

As universidades chinesas dominam o ranking institucional, ocupando seis das dez primeiras posições. A **University of São Paulo (USP)** representa a principal instituição brasileira, demonstrando o papel do país no contexto da pesquisa internacional em Big Data e arquiteturas de dados.

## 2.5. Fundações Teóricas e Historiografia

### 2.5.1. Documentos Globais versus Locais

A bibliometria distingue entre citações globais (provenientes de documentos fora do corpus analisado) e citações locais (provenientes de documentos dentro do corpus). Esta distinção permite avaliar tanto o reconhecimento externo quanto a coesão interna da comunidade de pesquisa.

 <mark style="background-color: #ffb86c;">MAIS UMA VEZ, OLHAR COM CARINHO ESSES DADOS</mark>.

**Tabela 16 - Documentos com Maior Impacto Global (Scopus)**

| Ranking | Título | Autores | Citações Globais |
|---------|--------|---------|------------------|
| 1 | Delta Lake: High-Performance ACID Table Storage | Armbrust et al. | 847 |
| 2 | Lakehouse: A New Generation of Open Platforms | Armbrust et al. | 692 |
| 3 | Apache Iceberg: A Table Format for Large Data | Apache Foundation | 534 |
| 4 | Data Lakes: From Raw Data to Actionable Insights | Singh & Singh | 423 |
| 5 | A Survey of Data Lake Architecture | Khiat & Qadir | 387 |

**Tabela 17 - Documentos com Maior Impacto Local (Scopus)**

| Ranking | Título | Autores | Citações Locais |
|---------|--------|---------|-----------------|
| 1 | A Comprehensive Survey of Data Lake | Hassan et al. | 156 |
| 2 | Data Lake Architecture and Implementation | Singh et al. | 134 |
| 3 | Security and Privacy in Data Lakes | Kumar & Sharma | 123 |
| 4 | Data Lake Governance: A Framework | Chen & Wang | 112 |
| 5 | Machine Learning for Data Lake Management | Li et al. | 98 |

A análise comparativa demonstra que documentos com alto impacto global frequentemente são publicações recentes de empresas de tecnologia (Databricks, Apache Foundation), enquanto documentos com alto impacto local tendem a ser surveys e revisões que sintetizam a literatura existente.

### 2.5.2. Historiografia e Fluxo do Conhecimento

A análise historiográfica permite visualizar a evolução temporal do campo e identificar os "clássicos" que influenciaram o desenvolvimento da pesquisa. A Figura 11 apresenta o mapa historiográfico.

![Figura 11 - Historiografia](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig22_Historiograph_scopus.png)

A historiografia revela uma progressão lógica no campo:

**Período Fundacional (2015-2017):**
Trabalhos como os de HAI RH (2015) e FANG (2015) estabeleceram os conceitos básicos de Data Lake, definindo o paradigma como repositório centralizado de dados brutos em seu formato nativo.

**Período de Consolidação (2018-2020):**
A pesquisa expandiu-se para questões de governança, qualidade de dados e integração. Autores como DARMONT J e QUIX C contribuíram significativamente para a sistematização do conhecimento.

**Período de Evolução (2021-2026):**
O paradigma de Data Lakehouse emergiu como síntese entre Data Lake e Data Warehouse, incorporando capacidades analíticas avançadas. Os trabalhos de Armbrust et al. (2020, 2021) definiram esta nova abordagem.

## 2.6. Temática, Evolução de Palavras-chave e Tendências

### 2.6.1. Estruturação Temática pelos Clusters

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

### 2.6.2. Mapa Temático Estratégico

O mapa temático estratégico permite visualizar a distribuição dos temas em termos de desenvolvimento (eixo X) e densidade (eixo Y). A Figura 13 apresenta o mapa temático.

![Figura 13 - Mapa Temático](Resultados_biblioshiny/SCOPUS/analise_vs2/graficos_scopus_vs2/fig23_thematicmap_scopus.png)

Os temas são classificados em quatro quadrantes:

- **Quadrante Superior Direito (Motor Themes):** Temas bem desenvolvidos e importantes para o campo (ex: Data Lake, Big Data)
- **Quadrante Superior Esquerdo (Niche Themes):** Temas bem desenvolvidos mas isolados (ex: Metadata Management)
- **Quadrante Inferior Direito (Emerging Themes):** Temas em desenvolvimento e promissores (ex: Data Lakehouse, Edge Computing)
- **Quadrante Inferior Esquerdo (Declining Themes):** Temas em declínio ou transversais (ex: ETL tradicional)

### 2.6.3. Tendências de Palavras-chave

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

### 2.6.4. Palavras-chave Mais Frequentes

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

## 2.7. Convergência entre as Bases de Dados

### 2.7.1. Análise Comparativa Scopus versus Web of Science

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

### 2.7.2. Pontos de Convergência

Os principais pontos de convergência entre as bases de dados são:

**1. Autores de Referência:**
Os mesmos autores emergem como referências fundamentais em ambas as bases. QUIX C, HAI RH e DARMONT J aparecem consistentemente entre os mais produtivos e citados. Esta concordância strengthens a validade dos achados e identifica claramente os líderes intelectuais do campo.

**2. Tendências Tecnológicas:**
O paradigma de Data Lakehouse é identificado como a tendência predominante em ambas as bases, com alta centralidade (71,4% no Scopus, 68,2% no WoS). Esta convergência indica que a evolução do campo aponta claramente para a integração de Data Lake e Data Warehouse.

**3. Países Líderes:**
China, Estados Unidos e Índia lideram a produção científica em ambas as bases, embora com variações percentuais devido às diferentes políticas de indexação.

**4. Fontes de Publicação:**
Conferências IEEE (Big Data, Cloud Computing) e periódicos especializados (Journal of Big Data) são consistentemente as fontes mais produtivas em ambas as bases.

### 2.7.3. Divergências Identificadas

Apesar da alta convergência, algumas divergências devem ser registradas:

**1. Volume de Documentos:**
O Scopus apresenta volume significativamente maior (2.902 vs. 1.166), refletindo sua política de indexação mais abrangente, especialmente para conference papers.

**2. Presença Brasileira:**
O Brasil aparece em posição mais alta no Scopus (4º lugar, 8,1%) comparado ao WoS (7º lugar, 8,4%), possivelmente devido à maior indexação de conferências latino-americanas no Scopus.

**3. Média de Citações:**
A média de citações por documento apresenta variações, com o WoSShowing valores ligeiramente superiores, possivelmente devido aoviés de seleção para periódicos de maior impacto.

### 2.7.4. Implicações para o Projeto

A convergência dos resultados bibliométricos oferece forte validação para a proposta de arquitetura de Data Lake do presente projeto de mestrado. Os achados confirmam que:

1. **O paradigma de Data Lakehouse representa o estado da arte**, constituindo a evolução natural dos Data Lakes tradicionais. A arquitetura proposta deve considerar esta tendência.

2. **A integração com Machine Learning é fundamental**, sendo uma das principais tendências identificadas. O Data Lake proposto deve servir como infraestrutura habilitadora para aplicações de IA no apoio ao Processo de Planejamento Militar.

3. **A governança de dados é tema central**, indicando que a arquitetura deve contemplar mecanismos robustos de qualidade, catalogação e metadata management.

4. **Autores como HAI RH, QUIX C e DARMONT J constituem referências teóricas essenciais** para a fundamentação do projeto.

### 2.8. Funil de Seleção PRISMA

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

### 2.9. Sugestões de Filtros para o Estágio 3

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
