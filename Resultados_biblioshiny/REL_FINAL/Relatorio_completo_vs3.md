# Relatório Bibliométrico - Estágios 1 e 2 da Metodologia TEMAC

---

## Introdução

O presente relatório constitui a documentação sistemática da revisão bibliográfica realizada no âmbito do projeto de mestrado intulado **"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres"**. Este estudo visa propor e implementar uma Arquitetura de Referência de Data Lake que automatize a ingestão e tratamento de dados operacionais, servindo como infraestrutura habilitadora para o uso de Inteligência Artificial no apoio ao Processo de Planejamento Militar (PPM).

A relevância desta investigação justifica-se pela necessidade de modernização do Comando e Controle (C2), conforme destacado no manual EB70-MC-10.211, que reconhece que "a quantidade de informações disponíveis no ambiente operacional moderno excede a capacidade humana de processamento sem auxílio tecnológico". A introdução de um Data Lake operacional ataca diretamente três pontos nevrálgicos: a gestão da informação e do conhecimento, a agilidade e sincronização no planejamento detalhado, e o apoio à decisão por meio de Intelligence Artificial.

Este relatório está organizado em conformidade com a metodologia TEMAC (Technique for Electronic Document Analysis and Classification), estruturando-se em dois estágios complementares: o Estágio 1, que apresenta a estratégia de busca e seleção do corpus documental; e o Estágio 2, que oferece a síntese comparativa das análises bibliométricas realizadas nas bases de dados Scopus e Web of Science. A abordagem metodológica adotada permite não apenas identificar as tendências emergentes no campo de Data Lakes e arquiteturas de dados para Comando e Controle, mas também validar cientificamente os fundamentos teóricos que embasam a proposta de arquitetura do presente projeto de pesquisa.

---

## Estágio 1: Estratégia de Busca e Seleção do Corpus

## 1.1. Justificativa da Escolha das Bases de Dados

A seleção das fontes de dados para a revisão sistemática da literatura fundamentou-se em critérios de abrangência, qualidade e adequação temática. Foram escolhidas duas bases de dados consolidadas no cenário acadêmico internacional: **Scopus** e **Web of Science (WoS)**. Esta escolha justifica-se por múltiplos fatores que garantem a robustez e a credibilidade dos resultados obtidos. Cabe observar que houve uma entativa inicial de se usar a base de dados **IEEE Xplore**, porém, como ela não disponibilizava a lista de referências, sua análise foi cancelada.

O **Scopus**, mantido pela Elsevier, constitui a maior base de dados de citações e resumos de literatura revisada por pares, abrangendo mais de 24.000 títulos de periódicos científicos, milhões de artigos de conferências e milhões de patentes. A plataforma oferece cobertura multidisciplinar e permite acesso a métricas de citação detalhadas, sendo reconhecida como referência global para avaliação de produção científica.

O **Web of Science**, gerenciado pela Clarivate Analytics, representa outra fonte primordial de metadados bibliográficos, com cobertura que abrange as coleções mais prestigiadas de periódicos científicos, incluindo o Science Citation Index Expanded (SCIE), o Social Sciences Citation Index (SSCI) e o Arts & Humanities Citation Index (AHCI). A plataforma é amplamente utilizada em estudos bibliométricos devido à qualidade de seus registros e à profundidade histórica de sua indexação.

Ambas as bases foram selecionadas por sua capacidade de retornar resultados relevantes para a pesquisa proposta, que situa-se na interseção entre arquiteturas de dados (Data Lake, Data Warehouse, Big Data), aplicações de Inteligência Artificial e contextos de Comando e Controle militar. A utilização conjugada dessas duas fontes permite uma triangulação metodológica que fortalece a validade dos achados e minimiza vieses de cobertura.

### 1.1.1. Filtros Temporais Aplicados

Para garantir a relevância e a atualidade dos dados analisados, foram aplicados filtros temporais que restringiram os resultados ao período de **2016 a 2026**. Esta delimitação temporal justifica-se pela evolução acelerada das tecnologias de Big Data e Data Lake nos últimos anos, com especial destaque para o paradigma de Data Lakehouse que emergiu a partir de 2019-2020. Estudos anteriores a 2016, embora relevantes para a compreensão histórica do tema, frequentemente não contemplam as abordagens mais recentes e as tecnologias que representam o estado da arte atual.

A Tabela 1 apresenta a síntese dos resultados obtidos nas consultas iniciais às bases de dados.

**Tabela 1 - Resultados Iniciais das Consultas por Base de Dados**

| Base de Dados | Total de Registros Retornados | Período |
| ------------- | ----------------------------- | ------- |
| Scopus        | 2.902                         | 2016-2026 |
| Web of Science| 1.166                         | 2016-2026 |

A diferença quantitativa entre as bases de dados reflete, provavelmente, as distintas políticas de indexação e cobertura de cada plataforma. Cabe destacar que a base SCOPUS tinha mais *Conference Papers* do que artigos, diferente da *Web of Science* que tinha uma base mais balanceada.

## 1.2. Fontes Alternativas Estudadas

É importante registrar que, além das bases de dados Scopus e WoS, o presente estudo contemplou a análise de outras fontes de informação relevantes para o tema de pesquisa, embora estas não tenham sido processadas por meio da metodologia TEMAC devido à ausência de metadados estruturados compatíveis com as ferramentas de análise bibliométrica.

### 1.2.1. Bases de Dados de Defesa e Comando e Controle

 foram identificadas e estudadas as seguintes fontes alternativas:

**NATO C2COE Library**: A biblioteca do NATO Command and Control Centre of Excellence (C2COE) constitui fonte primordial de documentos técnicos e doutrinários sobre Comando e Controle. Os documentos desta fonte, embora não possuam metadados estruturados em formato compatível com o Biblioshiny, foram analisados manualmente e incorporados à fundamentação teórica do projeto.

**ICCRTS (International Command and Control Research and Technology Symposium)**: Os anais do ICCRTS representam uma fonte significativa de pesquisas no domínio de C2, com publicações que abordam diretamente a interseção entre tecnologia da informação e operações militares. Os metadados foram processados parcialmente, tendo em vista algunas inconsistências no formato de exportação.

**MORS (Military Operations Research Society)**: A sociedade americana de pesquisa operacional militar publica estudos relevantes para o planejamento militar assistido por computador, embora a indexação seja limitada.

**Journal of Strategic Studies**: Periódico especializado em estudos estratégicos que publica artigos relevantes para o contexto de Comando e Controle, embora a temática de Data Lake seja marginal nesta publicação.

**IEEE Xplore**: A base de dados IEEE Xplore foi consultada paralelamente, retornando um volume expressivo de artigos técnicos. No entanto, os metadados desta base apresentaram limitações para a análise bibliométrica completa, particularmente no que se refere às referências cited by.

A não inclusão dessas fontes na análise bibliométrica quantitativa não invalida sua importância para o presente estudo. Elas servem como referência qualitativa e contextual, fortalecendo a fundamentação teórica e garantindo que a revisão sistemática considere também a literatura técnico-militar que, por suas características editoriais, não está presente nas bases de dados acadêmicas tradicionais.

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

### 1.3.3. Critérios de Exclusão

Como critério de exclusão, decidiu-se por trabalhos a partir de 2016. Para a base de dados *SCOPUS*, também retirou-se os livros, pois após uma avaliação prévia utilizando as ferramentas do Bibliometrix, percebeu-se que, nesta base de dados, tinha livros sem o devido referenciamento dos autores e que atrapalhava os resultados das análises.


## 1.4. Síntese do Estágio 1

O Estágio 1 da metodologia TEMAC estabeleceu as bases para a análise bibliométrica sistemática. A escolha do Scopus e do Web of Science como fontes primárias justifica-se pela credibilidade, abrangência e qualidade dos metadados disponibilizados, essenciais para a realização de análises quantitativas robustas.

A aplicação de filtros temporais (2016-2026) garantiu a focalização em literatura contemporânea, enquanto as strings de consulta foram desenhadas para capturar a interseção entre arquiteturas de dados, suporte a decisão e contextos de Comando e Controle militar.

A identificação de fontes alternativas de defesa (NATO C2COE, ICCRTS, MORS) demonstra a amplitude da pesquisa e reconhece que a literatura técnico-militar, embora não passível de processamento bibliométrico estruturado, constitui componente fundamental para a compreensão do problema de pesquisa.

---

## Estágio 2: Síntese Comparativa da Análise Bibliométrica

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

A análise temporal da produção científica revela um crescimento sustentado e consistente no interesse pelo tema de Data Lakes ao longo do período analisado. O Gráfico 1 ilustra a evolução da produção científica anual.


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

A análise historiográfica detalhada, que confirma e aprofunda estes três períodos evolutivos, é apresentada na Seção 2.6.2.

### 2.2.3. Impacto das Citações

A análise de *Citations* (citações) revela o impacto científico dos trabalhos publicados. A diferença fundamental entre as métricas reside no escopo da base de dados considerada para a contagem: enquanto as citações globais representam o impacto total de um artigo em toda a plataforma de origem (como Web of Science ou Scopus), as citações locais contabilizam apenas as referências feitas por outros documentos que pertencem estritamente à sua amostra de pesquisa. Assim, as citações globais indicam o prestígio de uma obra na ciência em geral, enquanto as locais revelam quais trabalhos são as verdadeiras referências centrais e influentes dentro do nicho específico que você está analisando.

O Gráfico 2 apresenta a distribuição de citações por ano.

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
    <figcaption>Gráfico 2. Quantidade média de citações por ano </figcaption>
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

A Lei de Bradford[^1] descreve a distribuição desigual de artigos científicos entre as fontes de publicação, identificando um "núcleo" de periódicos altamente produtivos. A aplicação desta lei aos dados coletados permite identificar as fontes mais relevantes para o campo de pesquisa.

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

[^1]: BRADFORD, S. C. Sources of information on specific subjects. Engineering, v. 137, n. 3550, p. 85-86, 1934

### 2.3.2. Fontes Mais Relevantes com Maior Impacto

A análise das fontes mais relevantes revela os principais veículos de publicação no campo de Data Lakes e arquiteturas de dados. Os Gráficos 3, 4, 5 e 6 apresentam as fontes mais produtivas e mais impactantes.


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig3_fontes_mais_relevantes.png" width="450">
    <figcaption>Gráfico 3. Fontes mais relevantes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig3_fontes_mais_relevantes.png" width="450">
    <figcaption>Gráfico 4. Fontes mais relevantes - base WoS</figcaption>
  </figure>
</div>

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig16_impacto_fontes.png" width="450">
    <figcaption>Gráfico 5. Fontes mais impactantes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig16_impacto_fontes.png" width="450">
    <figcaption>Gráfico 6. Fontes mais impactantes - base WoS</figcaption>
  </figure>
</div>


A avaliação da relevância (medida pelo volume de publicações) e do impacto (medido pelo índice *h* local) das fontes de informação é uma etapa fundamental na condução da revisão sistemática da literatura com a metodologia TEMAC. A análise comparativa entre as bases Scopus e *Web of Science* (WoS) revela perfis distintos e complementares na disseminação do conhecimento científico, essenciais para mapear o estado da arte em infraestruturas de dados e tecnologias de suporte à decisão.

A base Scopus apresenta um perfil fortemente orientado para a agilidade na disseminação tecnológica. Os dados extraídos demonstram uma dominância de anais de conferências e séries de anotações, com a *Lecture Notes in Computer Science* a liderar tanto em impacto local (índice *h* = 14) quanto em volume de publicações (103 artigos). O destaque de fontes como *CEUR Workshop Proceedings* e *ACM International Conference Proceeding Series* indica que as inovações mais recentes e as provas de conceito em arquiteturas de dados são primeiramente submetidas a eventos científicos. Esta característica torna a base Scopus valiosa para capturar o dinamismo e as tecnologias emergentes no campo de estudo.

Em contrapartida, a base *Web of Science* (WoS) demonstra um perfil mais conservador, focado em periódicos tradicionais e consolidados, o que reflete os seus rigorosos critérios de indexação. O impacto local nesta base é liderado pelas revistas *Sensors* (índice *h* = 9) e *IEEE Access* (índice *h* = 8). Observa-se a presença de periódicos de elevado rigor académico no topo do índice *h*, como o *Future Generation Computer Systems*. O volume de artigos por fonte é menor e mais distribuído se comparado à Scopus, evidenciando que a WoS concentra a literatura que já passou por um ciclo mais longo de maturação, revisão por pares e validação empírica.

A tabela abaixo, apresenta a comparação entre as fontes de maiores impactos e as de maiores citações para cada base de dados.


Tabela 7 - Comparação entre as fontes por quantidade de publicações, total de citações e impacto - Scopus.

| Fonte | Artigos | Total Citações | h-index | Critérios de Impacto |
| :---- | :---- | :---- | :---- | :---- |
| Lecture Notes in Computer Science | 103 | 21 | 14 | Maior volume e Maior impacto |
| Lecture Notes in Networks and Systems | 72 | 54 | 4 | Alto volume |
| IEEE Access | 41 | 767 | 13 | Alto impacto |
| Procedia Computer Science | 33 | 818 | 12 | Alto impacto |
| Sensors | 24 | 273 | 9 | Alto impacto |
| Sustainability | 16 | 391 | 9 | Alto impacto |

Tabela 8 - Comparação entre as fontes por quantidade de publicações, total de citações e impacto - WoS.

| Fonte | Artigos | Total Citações | h-index | Critérios de Impacto |
| :---- | :---- | :---- | :---- | :---- |
| IEEE Access | 35 | 308 | 8 | Maior volume |
| Sensors | 21 | 424 | 9 | Maior impacto |
| Journal of Building Engineering | 9 | 356 | 6 | Alto impacto |
| Sustainability | 12 | 200 | 7 | Alto impacto |

Ao contrastar as duas bases de dados, constata-se uma complementaridade para a fundamentação teórica desta pesquisa. A divergência na natureza das fontes — com a Scopus a fornecer um volume massivo de trabalhos em conferências e a WoS a atuar como um filtro para artigos extensos em periódicos — favorece que a revisão englobe tanto as arquiteturas inovadoras em desenvolvimento quanto os modelos já validados pela comunidade científica.

Apesar destas diferenças na dispersão e no volume, a análise revela um núcleo de consenso composto por periódicos que transitam no topo de ambas as bases. Fontes de acesso aberto (*Open Access*), notadamente a *IEEE Access* e a *Sensors*, configuram-se como os veículos mais críticos para a pesquisa. A *IEEE Access*, em particular, atua como um elo: possui o rigor de um periódico tradicional exigido pela WoS, aliado à agilidade de publicação e ao escopo abrangente que a coloca em destaque na Scopus.


## 2.4. Análise de Autores e Padrões de Colaboração

### 2.4.1. Produtividade versus Impacto vesus Citação

A análise de relevância e impacto focada nos autores revela a dinâmica de autoria e a consolidação de lideranças intelectuais no campo de estudo. A avaliação das bases Scopus e *Web of Science* (WoS) demonstra uma dicotomia importante entre a hiperprodutividade e a real influência científica, exigindo um olhar crítico sobre os dados extraídos.


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 10px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig4_autores_mais_relevantes.png" width="450">
    <figcaption>Gráfico 7. Autores mais produtivos - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig4_autores_mais_relevantes.png" width="450">
    <figcaption>Gráfico 8. Autores mais produtivos - base WoS</figcaption>
  </figure>
</div>

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig5_autores_mais_citados.png" width="450">
    <figcaption>Gráfico 9. Autores mais citados localmente - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig5_autores_mais_citados.png" width="450">
    <figcaption>Gráfico 10. Autores mais citados localmente - base WoS</figcaption>
  </figure>
</div>


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig6_impacto_local_autores.png" width="450">
    <figcaption>Gráfico 11. Autores mais impactantes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig6_impacto_local_autores.png" width="450">
    <figcaption>Gráfico 12. Autores mais impactantes - base WoS</figcaption>
  </figure>
</div>

Ao observar a relevância medida pela quantidade absoluta de artigos (produtividade), a base Scopus apresenta um comportamento inflado. O topo da produção é liderado por pesquisadores com elevado volume de publicações (como ZHANG Y, com 44 artigos, e LI X, com 35). Essa grande produtividade reflete a natureza da base Scopus, orientada à rápida disseminação em conferências. Na base WoS, que aparenta ter uma seleção mais criteriosa, esse volume cai: o autor mais produtivo (ZHANG Y) concentra apenas 10 artigos, evidenciando uma distribuição mais equilibrada.

O achado mais interessante desta análise, no entanto, reside na **convergência do impacto local**. Ao analisar as Citações Locais (quantas vezes um autor foi citado pelos demais documentos presentes no portfólio da revisão sistemática), fica evidente que os autores mais produtivos não são os mais influentes. Pelo contrário, existe uma concordância intelectual entre a Scopus e a WoS sobre quem detém a autoridade teórica do tema.

Autores como **C. Quix** (60 citações na Scopus; 63 na WoS), **R. Hai** (59 na Scopus; 62 na WoS) e **J. Darmont** (29 na Scopus; 60 na WoS) formam o núcleo de convergência desta revisão. Independentemente de publicarem em conferências ágeis (Scopus) ou periódicos de alto impacto (WoS), estes investigadores são os pilares sobre os quais a comunidade científica global constrói as arquiteturas de dados modernas (como *data lakes* e *lakehouses*).

Destaca-se, em especial, o pesquisador **J. Darmont**, que na base WoS figura simultaneamente no topo da produtividade (7 artigos), no topo de citações (60) e do índice *h* local (4). Tal desempenho atesta uma contribuição que não é apenas influente, mas também contínua e metodologicamente rigorosa.

Para a condução do presente trabalho, esta convergência entre as bases atua como um validador de qualidade metodológica da pesquisa TEMAC. Recomenda-se que as obras destes autores centrais (Quix, Hai e Darmont) sejam consideradas leitura obrigatória e leitura basilar (*seminal papers*) para a construção do referencial teórico desta dissertação.

Para finalizar, cabe destacar uma anomalia identificada na base de dados WoS: a presença de **CHONG AYL** com 321 citações e h-index local igual a 4. Suas áreas de atuação — "Quality and Supply Management", "Sustainable Supply Chain Management", "Technology adoption and user behaviour", "Digital Marketing and Social Media" e "Customer Service Quality and Loyalty" — não possuem relação direta com o tema central de Data Lakes. Sua presença na rede é provavelmente um artefato da metodologia de busca: a string de consulta capturou artigos de coautores brasileiros que, por sua vez, citaram obras de CHONG AYL em contextos de gestão e adoção de tecnologia. Recomenda-se interpretar sua posição na rede com ressalva metodológica, uma vez que não constitui referência central para a fundamentação teórica desta dissertação.


### 2.4.2. Lei de Lotka: Distribuição da Produtividade dos Autores

A Lei de Lotka descreve a relação inversa entre produtividade e quantidade de autores: poucos autores publicam muitos trabalhos, enquanto a maioria publica poucos. A lei original prediz que o número de autores com *n* publicações é proporcional a 1/*n*², de modo que aproximadamente 6% dos autores respondem por metade da produção de um campo.

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig13_lei_lotka.png" width="450">
    <figcaption>Gráfico 27. Lei de Lotka - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig13_lei_lotka.png" width="450">
    <figcaption>Gráfico 28. Lei de Lotka - base WoS</figcaption>
  </figure>
</div>

Em ambas as bases, a distribuição da produtividade dos autores segue o padrão previsto pela lei. A grande maioria dos pesquisadores (superior a 80%) contribuiu com apenas 1 ou 2 publicações no período analisado, enquanto um grupo restrito de autores altamente produtivos (como ZHANG Y e QUIX C) concentram dezenas de trabalhos. Esta assimetria confirma a existência de uma elite científica reduzida que ancora o campo — achado coerente com os resultados da seção 2.4.1, onde os autores de alto impacto local se concentram em poucos nomes convergentes entre as duas bases.

### 2.4.3. Redes de Colaboração

A visualização das redes de coautoria foi estruturada com base na Teoria dos Grafos e na extração de matrizes de coocorrência a partir dos metadados bibliográficos. Nestas representações, os autores (pesquisadores) são modelados como vértices (nós) de um grafo não direcionado. A dimensão de cada nó é diretamente proporcional à produtividade absoluta do autor, refletindo o número total de artigos de sua autoria presentes no portfólio de análise.

As relações de colaboração científica são representadas pelas arestas (linhas) que conectam os vértices. Uma aresta é estabelecida sempre que dois autores assinam um documento em conjunto. O peso desta aresta — representado visualmente pela sua espessura geométrica no grafo — é determinado pela frequência de coocorrência, ou seja, pelo número de trabalhos desenvolvidos em parceria. Por conseguinte, arestas mais espessas evidenciam laços de pesquisa consolidados e parcerias interinstitucionais de longo prazo, enquanto a ausência de arestas caracteriza isolamento e a formação de silos acadêmicos fechados.



Os Gráficos 13 e 14 apresentam as redes de colaboração para as bases Scopus e WoS, respectivamente.

<div align="center">
  <figure>
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig19_CollabNet_scopus.png" width="500">
    <figcaption>Gráfico 13. Rede de colaboração - base Scopus</figcaption>
  </figure>
</div>

<div align="center">
  <figure>
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig23_colab_network_wos.png" width="500">
    <figcaption>Gráfico 14. Rede de colaboração - base WoS</figcaption>
  </figure>
</div>

A análise visual dos grafos revela uma divergência topológica entre elas. Na Scopus, observa-se uma rede densa e altamente interconectada. Esta conectividade maciça é explicada, provavelmente, pela forte presença de conference papers, que capturam dinâmicas de colaboração ágeis, projetos interinstitucionais e consórcios de pesquisa inerentes aos eventos de tecnologia. Nesse cenário, autores hiperprodutivos provavelmente atuam como nós centrais (hubs), conectando diversos subgrupos.

Em contrapartida, a rede gerada a partir da Web of Science (WoS) apresenta-se altamente fragmentada. Ao priorizar periódicos tradicionais de alto rigor e filtrar a maior parte dos anais de eventos, a WoS pode estar removendo as "pontes" colaborativas temporárias. Esse fenômeno evidencia que a pesquisa consolidada e de longa maturação na área de estudo ainda ocorre de forma compartimentada.

Longe de ser uma mera inferência visual, este comportamento de fragmentação em silos isolados (Gráfico 14) é comprovado matematicamente pela análise estrutural da rede (Tabela 9). A métrica de centralidade de intermediação (Betweenness), que indica o grau em que um pesquisador atua como ponte entre diferentes grupos, é igual a zero para 94,7% dos nós principais (36 de 38 autores). Os únicos nós com Betweenness maior que zero (Zhao Y e Wang S) atuam como pontes exclusivamente dentro do seu próprio agrupamento (Cluster 4). A ausência total de pontes inter-clusters comprova que não há coautoria cruzando as diferentes comunidades.

Tabela 9 - Estatísticas de rede para WoS.

| Node | Cluster | Betweenness | Closeness | PageRank |
| :---- | :---- | :---- | :---- | :---- |
| zhang y | 1 | 0 | 0.25 | 0.03123 |
| liu xy | 1 | 0 | 0.25 | 0.01494 |
| sheng m | 1 | 0 | 0.25 | 0.03123 |
| li x | 1 | 0 | 0.25 | 0.02454 |
| ren p | 1 | 0 | 0.25 | 0.02961 |
| santos my | 2 | 0 | 1 | 0.02631 |
| costa c | 2 | 0 | 1 | 0.02631 |
| darmont j | 3 | 0 | 0.5 | 0.03378 |
| sawadogo pn | 3 | 0 | 0.5 | 0.02470 |
| loudcher s | 3 | 0 | 0.5 | 0.02045 |
| zhao y | 4 | 5 | 0.2 | 0.05023 |
| zhang xy | 4 | 0 | 0.11111 | 0.01448 |
| chen x | 4 | 0 | 0.125 | 0.01248 |
| ravat f | 4 | 0 | 0.125 | 0.02956 |
| wang s | 4 | 3 | 0.16667 | 0.02480 |
| belangour a | 5 | 0 | 1 | 0.02631 |
| kachaoui j | 5 | 0 | 1 | 0.02631 |
| ciampi m | 6 | 0 | 0.33333 | 0.02931 |
| silvestri s | 6 | 0 | 0.33333 | 0.02931 |
| de pietro g | 6 | 0 | 0.33333 | 0.02532 |
| masciari e | 6 | 0 | 0.33333 | 0.02131 |
| el haddadi a | 7 | 0 | 1 | 0.02631 |
| cherradi m | 7 | 0 | 1 | 0.02631 |
| garda m | 8 | 0 | 0.5 | 0.02846 |
| bianchini d | 8 | 0 | 0.5 | 0.02524 |
| de antonellis v | 8 | 0 | 0.5 | 0.02524 |
| sandhu r | 9 | 0 | 0.5 | 0.02631 |
| gupta m | 9 | 0 | 0.5 | 0.02631 |
| patwa f | 9 | 0 | 0.5 | 0.02631 |
| wang h | 10 | 0 | 1 | 0.02631 |
| xiao h | 10 | 0 | 1 | 0.02631 |
| badir h | 11 | 0 | 0.5 | 0.02631 |
| errami sa | 11 | 0 | 0.5 | 0.02631 |
| hajji h | 11 | 0 | 0.5 | 0.02631 |
| chong ayl | 12 | 0 | 1 | 0.02631 |
| li by | 12 | 0 | 1 | 0.02631 |
| kim j | 13 | 0 | 1 | 0.02631 |
| park s | 13 | 0 | 1 | 0.02631 |

Para compreender a origem dessa ausência de colaboração global, procedeu-se com a validação da hipótese temática por meio da análise de conteúdo (abstracts e títulos) dos autores âncoras de cada cluster. A análise confirmou que o isolamento estrutural é derivado de uma forte especialização temática, orientada a aplicações em nichos distintos:

Cluster 1 (Sheng M., Ren P., Liu X., Zhang Y.): Foca estritamente na aplicação de Data Lakes no domínio da saúde e medicina (ex.: fusão de dados médicos heterogêneos e imagens médicas).

Cluster 3 (Darmont J., Sawadogo P.N., Loudcher S.): Dedica-se à fundação arquitetural, especificamente na governança e modelagem de metadados para documentos textuais e estruturados em Data Lakes.

Cluster 8 (Bianchini D., Garda M., De Antonellis V.): Concentra-se na aplicação de Data Lakes orientados à semântica e personalização de exploração em ambientes de Smart Cities.

Por fim, vale ressaltar que, apesar do isolamento em relação ao panorama global, a formação dessas comunidades fechadas apresenta uma forte coesão interna. Esta força colaborativa intra-cluster é evidenciada pela métrica de PageRank [^2], que destaca a presença de autores âncora responsáveis por aglutinar a pesquisa local. Destacam-se as lideranças de Zhao Y no Cluster 4 (PageRank de 0.0502, o mais alto da amostra), Darmont J no Cluster 3 (PageRank de 0.0337) e Zhang Y / Sheng M no Cluster 1 (PageRank de 0.0312).

[^2]: PAGE, Lawrence; BRIN, Sergey; MOTWANI, Rajeev; WINOGRAD, Terry. The pagerank citation ranking: Bringing order to the web. Technical Report, Stanford University, 1999.

## 2.5. Distribuição Geográfica e Institucional

### 2.5.1. Países Dominantes

A distribuição geográfica da produção científica revela a liderança de determinados países no campo de estudo. Os Gráficos 15 e 16 apresentam os países mais produtivos.

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig8_paises_mais_produtivos.png" width="450">
    <figcaption>Gráfico 15. Produção por país - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig8_paises_mais_produtivos.png" width="450">
    <figcaption>Gráfico 16. Produção por país - base WoS</figcaption>
  </figure>
</div>

É possivel observar, pelos dois gráficos que a China permanece em primeiro lugar em produção científica. Por outro lado, os países, Estados Unidos, Itália e India, além de serem grandes produtores, trocam de posição quando comparamos as duas bases bibliográficas.

A presença do **Brasil** entre os treze primeiros países, em ambas as bases, parece indicar a crescente relevância da pesquisa brasileira no contexto internacional, embora o país ainda represente uma parcela modesta comparada às potências asiáticas, norte-americanas e européias.

### 2.5.2. Países Mais Citados

A análise do impacto científico distribuído geograficamente permite compreender a geopolítica do desenvolvimento do assunto em estudo. A avaliação das bases Scopus e *Web of Science* (WoS) evidencia uma clara convergência no que tange aos polos de liderança mundial em pesquisa, ao mesmo tempo que reforça o paradoxo entre volume produtivo e efetividade científica.

A Tabela 10 consolida os indicadores de impacto geográfico, contrastando o Total de Citações (TC) acumuladas pelo país e a Média de Citações por Artigo, métrica que revela o impacto real (qualitativo) da produção de cada nação.


**Tabela 10 – Impacto Científico por País: Scopus *vs.* Web of Science**

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

Por fim, destaca-se o fenômeno bibliométrico da base WoS no tocante ao **Catar**. A presença deste país com uma média anômala de 203,0 citações por artigo é indicativa da presença de *seminal papers* ou macro-colaborações internacionais, na qual a publicação de um conjunto muito reduzido de trabalhos de altíssimo impacto distorce a média estatística nacional, evidenciando como publicações isoladas podem influenciar a percepção de impacto geográfico numa revisão sistemática. A identificação precisa deste(s) documento(s) constitui uma limitação dos dados exportados; recomenda-se consulta direta à base WoS com filtro de afiliação "Qatar" ordenado por citações decrescentes para identificação futura.

### 2.5.3. Panorama das Contribuições Brasileiras

A análise da base de dados (Scopus) revela o perfil da contribuição de pesquisadores e instituições brasileiras para o campo de estudo, destacando-se a produtividade, o impacto acadêmico e as temáticas centrais abordadas.

#### a. Perfil dos Pesquisadores e Instituições

**Pesquisadores mais produtivos e de maior impacto:**
 
Os autores que lideram o volume de publicações são também os de maior impacto na amostra brasileira, ambos com **h-index = 3**:
* **Paulo E. Cruvinel (CRUVINEL PE)** – Universidade Federal de São Carlos (UFSCar): 3 publicações.
* **Duncan D. Ruiz (RUIZ D)** – Pontifícia Universidade Católica do Rio Grande do Sul (PUCRS): 3 publicações.

**Pesquisadores mais citados:**

Destaca-se a forte coesão e predominância da **PUCRS** entre os autores brasileiros que receberam o maior número de citações locais (2 citações cada):
* Olimar Teixeira Borges (BORGES O)
* Júlia Couto (COLLEONI COUTO J)
* Sabrina Marczak (MARCZAK S)
* Rafael Prikladnicki (PRIKLADNICKI R)
* Duncan D. Ruiz (RUIZ D)

**Instituições com maior volume de publicações:**

* **1º** Universidade de São Paulo (USP): 7 trabalhos
* **2º** Universidade Estadual de Campinas (Unicamp): 4 trabalhos
* **3º** Universidade Federal do Espírito Santo (UFES): 3 trabalhos

---

#### b. Impacto das Publicações (Globais e Locais)

**Documentos Mais Citados Globalmente**

> **Nota metodológica**: A listagem abaixo representa os documentos mais citados globalmente dentre aqueles cujos autores possuem afiliação brasileira na amostra coletada. Alguns registros (ex: SIDHU N e BRITO-ZERÓN P) pertencem a domínios não relacionados ao tema central — sensoriamento remoto e reumatologia, respectivamente — o que indica que a busca por afiliação capturou co-autores brasileiros em artigos multidisciplinares. Esses registros não devem ser incorporados ao referencial teórico da dissertação.

| Referência (Paper) | DOI | Total Citações (TC) | TC por Ano | TC Norm. |
| :--- | :--- | :---: | :---: | :---: |
| SIDHU N, 2018, EUROPEAN J REMOTE SENS | `10.1080/22797254.2018.1451782` | 187 | 20.78 | 2.06 |
| BRITO-ZERÓN P, 2018, CLIN EXP RHEUMATOL | - | 164 | 18.22 | 1.81 |
| OLIVEIRA MPVD, 2019, INT J PROD RES | `10.1080/00207543.2018.1493240` | 109 | 13.63 | 2.19 |
| MENEZES BC, 2019, IFAC-PAPERSONLINE | `10.1016/j.ifacol.2019.06.123` | 60 | 7.50 | 1.21 |
| COLLEONI COUTO J, 2019, PROC INT CONF SOFTW ENG... | `10.18293/SEKE2019-129` | 26 | 3.25 | 0.52 |
| UD DIN I, 2024, IEEE INTERNET THINGS J | `10.1109/JIOT.2024.3387927` | 25 | 8.33 | 3.57 |
| FIGUEIREDO K, 2024, J BUILD ENG | `10.1016/j.jobe.2024.111018` | 21 | 7.00 | 3.00 |

**Documentos Mais Citados Localmente**

| Referência (Paper) | Ano | DOI | Cit. Local (LC) | Cit. Global (GC) | LC/GC (%) | LC Norm. | GC Norm. |
| :--- | :---: | :--- | :---: | :---: | :---: | :---: | :---: |
| COLLEONI COUTO J, 2019, PROC INT CONF... | 2019 | `10.18293/SEKE2019-129` | **2** | 26 | 7.69 | 4.00 | 0.52 |
| NEVES RA, 2020, PROC - IEEE INT CONF... | 2020 | `10.1109/ICSC.2020.00067` | **1** | 7 | 14.29 | 6.00 | 2.80 |

---

#### c. Focos Temáticos 

A análise das palavras-chave mais frequentes revela que as pesquisas estão fortemente ancoradas em gestão e estruturação de dados para negócios e sistemas:

1. **Big Data:** 24 ocorrências
2. **Decision making** *(Tomada de decisão)*: 23 ocorrências
3. **Data integration** *(Integração de dados)*: 15 ocorrências

### 2.5.4. Instituições e Casos de Uso

A análise das afiliações institucionais permite rastrear os principais centros de desenvolvimento e aplicação prática das arquiteturas de dados a nível global. O cruzamento dos dados provenientes da Scopus e da *Web of Science* (WoS) evidencia a transição entre ambientes universitários de experimentação e grandes consórcios nacionais de investigação validada.

A Tabela 11 apresenta as dez instituições mais produtivas em cada base de dados, expurgando ruídos de extração metodológica (como registos "Not Reported" ou nomes de departamentos genéricos).

**Tabela 11 – Instituições mais produtivas: Scopus *vs.* Web of Science**

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

As Tabelas 12 e 13 apresentam os documentos com maior impacto local. Estes são os trabalhos que os próprios autores do portfólio desta revisão mais leram e referenciaram, constituindo o alicerce metodológico do tema.

**Tabela 12 – Top 5 Documentos com Maior Impacto Local (Scopus)**

| Ranking | Título | Autores | Ano | Citações Locais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | On data lake architectures and metadata management | Sawadogo, P.; Darmont, J. | 2020 | 20 |
| 2 | An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management | Nambiar, A.; Mundra, D. | 2022 | 7 |
| 3 | Data Lakehouse - a Novel Step in Analytics Architecture | Oreščanin, D.; Hlupić, T. | 2021 | 7 |
| 4 | From Data Warehouse to Lakehouse: A Comparative Review | Harby, A. A.; Zulkernine, F. | 2022 | 6 |
| 5 | IoT in smart farming analytics, big data based architecture | Ouafiq et al. | 2021 | 5 |


**Tabela 13 – Top 5 Documentos com Maior Impacto Local (Web of Science)**

| Ranking | Título | Autores | Ano | Citações Locais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | On data lake architectures and metadata management | Sawadogo, P.; Darmont, J. | 2020 | 41 |
| 2 | An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management | Nambiar, A.; Mundra, D. | 2022 | 12 |
| 3 | CEBA: A Data Lake for Data Sharing and Environmental Monitoring | Sarramia et al. | 2022 | 8 |
| 4 | A Lakehouse Architecture for the Management and Analysis of Heterogeneous Data for Biomedical Research... | Begoli, E. et al. | 2021 | 5 |
| 5 | Big Data Lakes: Models, Frameworks, and Techniques | Cuzzocrea, A. | 2021 | 5 |


Os Gráficos 29 e 30 complementam as tabelas ao visualizar a distribuição completa das referências locais mais citadas, permitindo identificar a "cauda longa" dos documentos de suporte ao campo.

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig24_Referencias_Locais_Citadas_Importantes.png" width="450">
    <figcaption>Gráfico 29. Referências locais mais citadas - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig24_Referencias_Locais_Citadas_Importantes.png" width="450">
    <figcaption>Gráfico 30. Referências locais mais citadas - base WoS</figcaption>
  </figure>
</div>

As tabelas e gráficos demonstram uma convergência metodológica entre as duas bases de dados. O trabalho seminal de Sawadogo e Darmont (2020) lidera o impacto local em ambas as bases, comprovando a consistência dos autores que efetivamente contribuíram para o avanço da governança e dos metadados. Além disso, a presença recorrente de estudos sobre o paradigma de *Data Lakehouse* evidencia a transição do conceito (*Data Lake*) na literatura recente.

Em contrapartida à coesão teórica local, as Tabelas 14 e 15 apresentam os documentos com maior impacto global. Estes artigos superam o nicho específico do assunto pesquisado e geralmente tornaram-se referências adotadas por outras áreas do conhecimento.

**Tabela 14 – Top 5 Documentos com Maior Impacto Global (Scopus)**

| Ranking | Título | Autores | Ano | Citações Globais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | Making data platforms smarter with MOSES | Francia et al. | 2021 | 839 |
| 2 | Monitoring inland water quality using remote sensing: potential and limitations of spectral indices... | Sagan et al. | 2020 | 562 |
| 3 | A BIM-data mining integrated digital twin framework for advanced project management | Pan, Y.; Zhang, L. | 2021 | 437 |
| 4 | Big data and IoT-based applications in smart environments: A systematic review | Hajjaji et al. | 2021 | 363 |
| 5 | An Overview of IoT Sensor Data Processing, Fusion, and Analysis Techniques | Krishnamurthi et al. | 2020 | 350 |

**Tabela 15 – Top 5 Documentos com Maior Impacto Global (Web of Science)**

| Ranking | Título | Autores | Ano | Citações Globais |
| :---: | :--- | :--- | :---: | :---: |
| 1 | Monitoring inland water quality using remote sensing: potential and limitations of spectral indices... | Sagan et al. | 2020 | 470 |
| 2 | Artificial intelligence based anomaly detection of energy consumption in buildings... | Himeur et al. | 2021 | 400 |
| 3 | Robust Target Recognition and Tracking of Self-Driving Cars With Radar and Camera Information Fusion... | Liu et al. | 2022 | 246 |
| 4 | An Overview of IoT Sensor Data Processing, Fusion, and Analysis Techniques | Krishnamurthi et al. | 2020 | 225 |
| 5 | A Big Data Architecture Design for Smart Grids Based on Random Matrix Theory | He et al. | 2017 | 222 |

A análise conjunta entre os índices locais (Fundação Teórica) e globais (Aplicação Prática) evidencia um fenômeno convergente em ambas as bases. O impacto local está estritamente concentrado no desenvolvimento infraestrutural (como a transição de *Data Warehouses* para *Data Lakehouses*). Contudo, o impacto global é dominado pela aplicação destas arquiteturas como motores de inovação em outros setores.


A convergência observada entre as duas bases — com estudos aplicados de alta citação global, como os de monitoramento ambiental (Sagan et al.) e processamento de dados de sensores IoT (Krishnamurthi et al.) — evidencia que arquiteturas de dados são valorizadas pela comunidade científica não apenas como abstração infraestrutural, mas como habilitadoras de tecnologias emergentes, incluindo Cidades Inteligentes e Gêmeos Digitais.

### 2.6.2. Historiografia e Fluxo do Conhecimento

A análise historiográfica gerada pela técnica de mapeamento científico (Historiographic Citation Network), executada no pacote bibliometrix, permite reconstituir a linha do tempo e a evolução dos paradigmas intelectuais que formam o campo de pesquisa. Ao invés de analisar publicações isoladas, esta métrica identifica os "caminhos evolutivos", mapeando os artigos que serviram de alicerce teórico sequencial uns para os outros.

O grafo histórico foi construído utilizando exclusivamente os dados de citações locais diretas. Isso significa que uma aresta (linha) só é traçada se um documento da nossa amostra cita diretamente outro documento também presente na amostra. A topologia do grafo baseia-se na precedência de ano, estruturando os nós (artigos) em um eixo horizontal cronológico da esquerda para a direita. A intensidade e a relevância de cada trabalho são representadas graficamente pelo tamanho dos nós: vértices maiores possuem um maior Local Citation Score (LCS), indicando que são os trabalhos mais lidos e referenciados pela própria comunidade que pesquisa o tema.

Os Gráficos 17 e 18 mostram como o grafo foi montado para cada uma das bases de dados de estudo:

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig22_Historiograph_scopus.png" width="450">
    <figcaption>Gráfico 17. Grafo historiográfico - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig21_historiograph_wos.png" width="450">
    <figcaption>Gráfico 18. Grafo historiográfico - base WoS</figcaption>
  </figure>
</div>

**I. A Gênese e o Pivô de Governança (2015 - 2016)**: A rede de cocitação mostra que o campo se apoia inicialmente em trabalhos de conceituação do repositório, destacando-se "Managing data lakes in big data era" (Fang, 2015). No entanto, o verdadeiro divisor de águas e "funil" intelectual da área ocorre em 2016. Em ambas as bases, o artigo seminal de R. Hai (Constance: An Intelligent Data Lake System) atua como o nó central do período. A evidência de sua importância é absoluta: o documento atinge 49 citações locais diretas na base WoS e 141 globais.

Sua relevância qualitativa explica esse fenômeno numérico: trabalhos pioneiros na Scopus (Alserafi) e na WoS (Miloslavskaya) alertavam que o armazenamento massivo geraria "pântanos de dados" (data swamps). O trabalho de Hai reuniu o conhecimento disperso sobre armazenamento bruto e padronizou a área ao introduzir um sistema de extração e gestão de metadados. É por isso que praticamente todas as ramificações futuras do grafo partem deste nó.

**II. A Fase Estrutural e a Adoção pela Indústria (2017 - 2019)**: No período seguinte, o caminho evolutivo afasta-se da experimentação abstrata e concentra-se no delineamento de arquiteturas operacionais. A historiografia capta a transição do conceito para a indústria de larga escala, evidenciada pela documentação de plataformas hiperescaláveis globais, como o Azure Data Lake (Ramakrishnan et al., 2017). A literatura reflete um esforço massivo na modelagem estrutural: autores como Beheshti (2018) introduzem o conceito de Knowledge Lakes integrando grafos de conhecimento, enquanto pesquisadores como C. Giebler e F. Ravat (2019) mapeiam o estado da arte das camadas de gestão (como Data Vaults e modelos de ingestion).

**III. A Maturidade Arquitetural e a Era do Lakehouse (2021 - Atualidade)**: A trajetória histórica atinge o seu clímax metodológico atual a partir de 2021. Em ambas as bases, o fluxo histórico converge de forma unânime para o trabalho de Sawadogo e Darmont (On data lake architectures and metadata management), um nó de altíssima relevância no extremo direito dos grafos. Este trabalho consolida a arquitetura proposta por Hai (2016), validando o papel imprescindível dos metadados como o núcleo operacional da infraestrutura. Simultaneamente, a literatura de maturidade marca uma ruptura evolutiva definitiva: a transição conceitual dos Data Lakes puros para os Data Lakehouses (registrado na Scopus pelo trabalho de D. Oreščanin), inaugurando um paradigma que alia a flexibilidade e escalabilidade dos lakes ao desempenho transacional e à governança dos armazéns de dados tradicionais.

## 2.7. Temática, Evolução de Palavras-chave e Tendências

### 2.7.1. Estruturação Temática pelos Clusters

### Estruturação Temática: Análise de Redes de Coocorrência de Palavras

A análise de coocorrência de palavras-chave (keyword co-occurrence) revela a estrutura conceitual do campo de pesquisa, evidenciando que a área não é homogênea, mas organiza-se em grandes agrupamentos (clusters) temáticos interdependentes. Através de algoritmos de centralidade, as palavras são divididas em comunidades que representam as frentes de investigação consolidadas na literatura.

A Tabela 16 apresenta os clusters temáticos gerados a partir da base Scopus, evidenciando as palavras-chave com maior centralidade na rede.

**Tabela 16 – Estruturação Temática por *Clusters* (Scopus)**

| Cluster | Foco Temático | Principais Palavras-chave |
| :---: | :--- | :--- |
| **1** | Aplicação Analítica e Decisão | *Decision making, Data integration, Machine learning, Artificial intelligence, Learning systems, Internet of things, Deep learning, Data fusion.* |
| **2** | Infraestrutura e Gestão | *Big data, Information management, Digital storage, Data architectures, Data analytics, Lakes, Data handling, Data lake, Metadata, Data mining.* |

A Tabela 17 detalha a topologia conceitual da base Web of Science (WoS), demonstrando uma maior granularidade nas frentes de pesquisa dentro de periódicos tradicionais.

**Tabela 17 – Estruturação Temática por *Clusters* (Web of Science)**

| Cluster | Foco Temático | Principais Palavras-chave |
| :---: | :--- | :--- |
| **1** | Núcleo Arquitetural | *Big data, Data lake, Analytics, Data warehouse, Data management, Data architecture, Hadoop, Metadata, Big data analytics.* |
| **2** | Modelação e Sensores | *Machine learning, Artificial intelligence, Data fusion, Deep learning, Digital twins, Sensors, Data models, Prediction.* |
| **3** | Integração Industrial | *Management, Challenges, Framework, Digital twin, Architecture, Data integration, Industry 4.0, Systems.* |
| **4** | Nuvem e Tempo Real | *Internet, Internet of things, Cloud computing, Real-time systems, Data analytics, Blockchain, Cloud.* |

A partir dos resultados, percebe-se uma clara convergência arquitetural entre ambas as bases de dados. Na Scopus, a rede organiza-se de forma assumidamente bimodal, evidenciando a relação de causa e efeito da engenharia de dados: a Infraestrutura (Cluster 2) é construída para sustentar a Inteligência (Cluster 1).

A base WoS confirma exatamente este mesmo paradigma, mas desdobra a camada de decisão em nichos especializados, refletindo a maturação empírica dos estudos. O núcleo do Data Lake permanece isolado como a fonte primária e fundacional (Cluster 1 da WoS), enquanto a camada de tomada de decisão é destrinchada nas suas frentes de aplicação tática (Clusters 2, 3 e 4). 

Para aprofundar a compreensão dessa estrutura, o cruzamento destes agrupamentos conceituais com a análise de citação local permite identificar os autores âncoras responsáveis por conduzir a pesquisa em cada macro-frente específica:

**Frente 1: Infraestrutura Fundacional e Armazenamento Bruto**: Engloba o núcleo arquitetural (termos como Big Data, Hadoop e o próprio conceito original de Data Lake).

 - Autores Principais: R. Hai (2016) e H. Fang (2015). Foram os pioneiros em conceituar e desenhar as primeiras plataformas de retenção de dados em larga escala.

**Frente 2: Engenharia de Sistemas, Metadados e Governança**: Focada em evitar que o lago de dados se torne um pântano (data swamp), reunindo termos como Data Architecture e Metadata.

- Autores Principais: J. Darmont, P. Sawadogo e C. Quix. Representam a "escola" de governança de dados, estabelecendo as regras para que os dados armazenados sejam rastreáveis e úteis.

**Frente 3: Inteligência Artificial e Modelagem Avançada**: Concentra o maquinário algorítmico da camada de decisão (termos como Machine Learning, Artificial Intelligence e Data Fusion).

- Autores Principais: A. Cuzzocrea e V. Sagan. Representam a transição do armazenamento para a predição, focando em como aplicar algoritmos complexos sobre os repositórios.

**Frente 4: Ecossistemas Conectados e Vanguarda Arquitetural**: Engloba o cenário de aplicação moderna (IoT, Cloud Computing, Smart Cities) e a transição para o Data Lakehouse.

- Autores Principais: M. Armbrust e D. Oreščanin. Lideram a literatura mais recente propondo o Lakehouse como a evolução natural para suportar demandas de telemetria e tempo real.

Em suma, ambas as bases e frentes de pesquisa provam que a literatura trata a arquitetura de dados (Frentes 1 e 2) estritamente como a base sustentadora — o combustível — para as operações inteligentes e conectadas (Frentes 3 e 4).

### 2.7.2. Mapa Temático Estratégico

A análise do Mapa Temático permite extrapolar a simples frequência de palavras e categorizar as frentes de pesquisa consoante a sua maturidade e relevância. A métrica divide o campo conceitual em quatro quadrantes: Temas Motores (Q1 - topo direito), Temas de Nicho (Q2 - topo esquerdo), Temas Emergentes ou em Declínio (Q3 - base esquerda) e Temas Básicos ou Transversais (Q4 - base direita).

O mapa gerado pela base Scopus divide a literatura em 4 clusters que se distribuem perfeitamente pelos quatro quadrantes do plano:

<div align="center">
  <figure>
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig23_thematicmap_scopus.png" width="500">
    <figcaption>Gráfico 19. Mapa Temático - base Scopus</figcaption>
  </figure>
</div>


* **Temas Motores (Q1 - Alta Centralidade e Alta Densidade):** O *cluster* formado por *decision making*, *machine learning* e *learning systems* posiciona-se no núcleo de maior desenvolvimento. Isto comprova que a pesquisa de ponta já não se concentra apenas na ingestão de dados, mas sim no desenho de arquiteturas que acelerem ativamente os sistemas de recomendação.
* **Temas de Nicho (Q2 - Baixa Centralidade e Alta Densidade):** O agrupamento focado em *artificial intelligence*, *human* e *decision support systems*. Por estar neste quadrante, conclui-se que o estudo do fator humano integrado à IA possui um altíssimo nível de desenvolvimento interno, mas opera num "silo" (nicho) isolado do resto da arquitetura geral de dados.
* **Temas Emergentes (Q3 - Baixa Centralidade e Baixa Densidade):** O *cluster* que contém *data integration* e *digital twin* surge com indicadores mais brandos, evidenciando os primeiros sinais (ainda pouco densos na Scopus) de uma transição para, talvez, simulações cibernéticas.
* **Temas Básicos/Transversais (Q4 - Alta Centralidade e Baixa Densidade):** O núcleo estrutural de *big data* e *information management*. São temas incontornáveis. Já não constituem uma novidade a ser desbravada, representando a tecnologia de base estabelecida.

A base WoS captura um cenário com 5 *clusters*, refletindo uma especialização mais profunda da literatura:

<div align="center">
  <figure>
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig22_mapa_tematico_wos.png" width="500">
    <figcaption>Gráfico 20. Mapa Temático - base WoS</figcaption>
  </figure>
</div>


* **Temas Motores (Q1):** Os Gêmeos Digitais (*digital twin*, *data integration*) e a Modelação Algorítmica (*machine learning*, *artificial intelligence*). O conceito de Gêmeo Digital, que na Scopus era emergente, assumiu plenamente aqui o papel de motor primário das publicações.
* **Temas de Nicho (Q2):** O 5º cluster identificado — caracterizado pelas palavras-chave impact, neural network e behavior — atinge a densidade máxima da base (23.57), mas a menor centralidade (0.21). Isto atesta a existência de pesquisas altamente especializadas que correlacionam redes neurais a análises de comportamento e impacto. Contudo, devido à sua baixíssima centralidade, as descobertas deste nicho metodológico operam à margem da literatura core de infraestruturas, não influenciando o desenho estrutural dos Data Lakes e Lakehouses.
* **Temas Emergentes/Declínio (Q3):** Termos fundacionais como *big data*, *data lake* e *big data architecture* transitaram para o quadrante de baixa centralidade e densidade. Esta queda topológica evidencia o "efeito de saturação metodológica": a comunidade científica validou e estabilizou a construção do *Data Lake*, redirecionando o foco de inovação.
* **Temas Básicos (Q4):** O cluster de *internet* e conectividade *IoT* consolida-se como o elemento transversal obrigatório que garante a captação ininterrupta de telemetria.

O cruzamento das topologias temáticas nas duas bases de dados parece atestar o amadurecimento das infraestruturas analíticas. Verifica-se uma dupla convergência estrutural:

Primeiro, a retenção isolada de dados puros (*Big Data* / *Data Lakes*) deslocou-se para os quadrantes inferiores (Básicos e em Declínio), cristalizando-se como "tecnologia resolvida". A comunidade parou de discutir *como armazenar* de forma genérica.

Segundo, o centro de gravidade da inovação deslocou-se integralmente para a camada superior da infraestrutura. A presença dominante de sistemas focados na Tomada de Decisão e nos Gêmeos Digitais nos quadrantes Motores (Q1) — enquanto a IA puramente humana e comportamental se isolou nos Nichos (Q2) — indica que a eficácia de uma arquitetura atual é avaliada pela sua capacidade de suportar sistemas avançados de apoio à decisão

### 2.7.3. Tendências de Palavras-chave

A análise de Trend Topics expande o mapeamento temático ao introduzir a dimensão cronológica. O algoritmo posiciona os temas de maior relevância de acordo com o seu "Ano Mediano" (Year Median), indicando o ponto de saturação ou o momento de maior discussão de um conceito na comunidade científica. O cruzamento cronológico das bases Scopus e Web of Science (WoS) evidencia uma convergência histórica, impulsionada por marcos tecnológicos, amadurecimento do mercado e o avanço da capacidade computacional.

As Tabelas 18 e 19, assim como os Gráficos 21 e 22, apresentam a evolução cronológica dos principais termos na literatura, categorizados pelo seu momento de pico investigativo.


<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig15_topicos_tendencia.png" width="450">
    <figcaption>Gráfico 21. Evolução dos temas de pesquisa - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig15_topicos_tendencia.png" width="450">
    <figcaption>Gráfico 22. Evolução dos temas de pesquisa - base WoS</figcaption>
  </figure>
</div>


**Tabela 18 – Evolução Cronológica dos Temas de Pesquisa (Scopus)**

| Ciclo Evolutivo | Período (Mediana) | Principais Tópicos de Tendência |
| :--- | :---: | :--- |
| **I. Infraestrutura Primária** | 2016 – 2019 | *Fast data, Map-reduce, Hadoop, Semantic web.* |
| **II. Maturação Arquitetural** | 2020 – 2022 | *Data architectures, Big data, Lakes, Digital storage, Data lake.* |
| **III. Era do Apoio à Decisão** | 2023 – 2026 | *Metadata, Internet of things, Decision making, Data fusion, Artificial intelligence, Explainable AI (XAI).* |



**Tabela 19 – Evolução Cronológica dos Temas de Pesquisa (Web of Science)**

| Ciclo Evolutivo | Período (Mediana) | Principais Tópicos de Tendência |
| :--- | :---: | :--- |
| **I. Infraestrutura Primária** | 2016 – 2018 | *Fast data, Hadoop, Access control, Mapreduce.* |
| **II. Maturação Arquitetural** | 2019 – 2022 | *Business intelligence, Big data architecture, Data lake, Data warehouse, Cloud computing.* |
| **III. Era da Simulação Tática** | 2023 – 2025 | *Data integration, Machine learning, Data fusion, Artificial intelligence, Digital twin, Deep learning.* |

A análise conjunta destas linhas temporais comprova um salto estrutural na área de engenharia e ciência de dados, pautado por três ciclos evolutivos demarcados:

**1º Ciclo: Sobrevivência ao Volume e Infraestrutura (2016 – 2019)**: Liderado por termos como Hadoop, MapReduce e Fast Data, este primeiro ciclo refletiu uma era onde a comunidade científica focava estritamente no "como processar". Historicamente, o período foi marcado pela explosão da Web 2.0 e dos primeiros dispositivos IoT. A infraestrutura relacional tradicional colapsou frente aos "3 Vs" (Volume, Velocidade e Variedade) do Big Data. A motivação da academia e da indústria era de pura "sobrevivência": necessitava-se de meios distribuídos e baratos (armazenamento commodity) apenas para conseguir capturar e reter os dados massivos.

**2º Ciclo: Governança e o Paradoxo do "Pântano de Dados" (2019 – 2022)**: Liderado por Data Warehouse, Business Intelligence, Cloud Computing e pela consolidação do Data Lake. Após os anos iniciais acumulando dados de forma indiscriminada sob o paradigma "guarde tudo, analise depois", as organizações enfrentaram um gargalo prático: o Data Swamp (Pântano de Dados). A literatura mudou o seu foco porque a falta de padronização impedia a extração de valor. A arquitetura de retenção atingiu a sua maturidade e estabilização metodológica para suprir a necessidade iminente de criar esquemas de governança, integração e catalogação, garantindo que os dados pudessem ser efetivamente consumidos pelas áreas de negócio.

**3º Ciclo: A Era Cognitiva e a Busca por Valor (2023 – Atualidade)**: A descoberta mais contundente reside no ciclo atual. Ambas as bases registram o total desaparecimento de ferramentas de armazenamento na vanguarda das tendências, sendo categoricamente substituídas por tecnologias aplicadas: Decision Making, Machine Learning, Data Fusion, Artificial Intelligence (AI/XAI) e Digital Twins. Esta disrupção foi provocada pelo avanço das unidades de processamento gráfico (GPUs), pela democratização da Ciência de Dados e pela maturidade da computação em nuvem. O foco deixou de ser "como armazenar" e passou a ser "como prever e automatizar decisões". Para treinar modelos preditivos avançados e criar simulações em tempo real, as empresas passaram a exigir o desempenho de um Warehouse operando diretamente sobre a escala de um Lake, culminando na consolidação das arquiteturas unificadas de Data Lakehouse.

Este comportamento cronológico endossa a premissa de que a engenharia de dados consolidou o Data Lake como uma tecnologia transversal estabilizada. O esforço intelectual da vanguarda atual não reside em aperfeiçoar o "repositório", mas sim em transformar essas infraestruturas governadas em verdadeiros motores de Inteligência Artificial para alimentar modelos de predição, simulação e apoio à decisão de alto desempenho.

### 2.7.4. Palavras-chave Mais Frequentes

A contagem de frequência absoluta das palavras-chave constitui a métrica mais direta para identificar a essência temática de um campo de pesquisa. A análise das palavras mais frequentes nas bases Scopus e *Web of Science* (WoS) parece confirmar quantitativamente a natureza quase inseparável entre a engenharia de dados e os ecossistemas de inteligência aplicada.

A Tabela 20 e os Gráficos 23 e 24 apresentam as 10 palavras mais frequentes de cada base de dados, expurgando ruídos de indexação, revelando os pilares de discussão da literatura.

**Tabela 20 – Palavras-chave Mais Frequentes: Scopus *vs.* Web of Science**

| Posição | Palavra-chave (Scopus) | Ocorrências | | Palavra-chave (WoS) | Ocorrências |
| :---: | :--- | :---: | :---: | :--- | :---: |
| **1º** | Decision making | 986 | | Big data | 323 |
| **2º** | Big data | 949 | | Data lake | 139 |
| **3º** | Data integration | 806 | | Machine learning | 84 |
| **4º** | Information management | 534 | | Artificial intelligence | 74 |
| **5º** | Artificial intelligence | 350 | | Data fusion | 74 |
| **6º** | Machine learning | 333 | | Digital twin | 64 |
| **7º** | Digital storage | 322 | | Internet | 63 |
| **8º** | Data architectures | 316 | | Management | 61 |
| **9º** | Data handling | 276 | | Challenges | 51 |
| **10º** | Learning systems | 265 | | Deep learning | 51 |

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/fig12_palavras_mais_frequentes.png" width="450">
    <figcaption>Gráfico 23. Palavras mais frequentes - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig12_palavras_mais_frequentes.png" width="450">
    <figcaption>Gráfico 24. Palavras mais frequentes - base WoS</figcaption>
  </figure>
</div>

A avaliação comparativa atesta uma convergência metodológica. Em ambas as bases, o vocabulário fundacional (como *Big Data*, *Data architectures*, *Digital storage* e *Data Lake*) divide equitativamente o topo da tabela com o vocabulário de aplicação avançada (como *Artificial intelligence*, *Machine learning*, *Deep learning* e *Digital twin*).

O aspeto mais revelador desta extração reside na coabitação direta entre o vocabulário fundacional e o de aplicação analítica. O termo *Big data* consolida-se como o denominador comum transversal à área, liderando as ocorrências na base WoS (323) e ocupando a segunda posição na Scopus (949). Contudo, a presença simultânea e volumosa de *Decision making* (que atinge o topo na Scopus com 986 ocorrências), em conjunto com a elevada frequência de *Data integration* e *Data fusion* em ambas as bases, reflete a dupla prioridade dos investigadores.

Esta dinâmica lexical consolida a conclusão de que o amadurecimento das arquiteturas de dados contemporâneas não se esgota na modernização do armazenamento. Pelo contrário, o esforço da literatura evidencia uma transição clara: estruturar o grande volume de informação (*Big Data* / *Data Lake*) com o propósito específico de fundir dados heterogéneos em tempo real, fornecendo os alicerces necessários para modelação preditiva, simulação de Gêmeos Digitais e apoio avançado à tomada de decisão.

## 2.8. Análise de Acoplamento e Cocitação

### 2.8.1. Acoplamento Bibliográfico: Mapeamento das Frentes de Investigação

A técnica de Acoplamento Bibliográfico (*Bibliographic Coupling*) agrupa publicações recentes com base na sobreposição das suas listas de referências, permitindo identificar os "colégios invisíveis" ou as frentes de pesquisa mais ativas na atualidade. A métrica avalia cada *cluster* pela sua Frequência (volume de artigos), Centralidade (grau de interligação com outras subáreas) e Impacto (influência das publicações no ecossistema de citações).

As Tabelas 21 e 22 e os Gráficos 25 e 26 sumarizam as principais frentes de pesquisa identificadas na base Scopus e Web of Science, respectivamente.

**Tabela 21 – Frentes de Pesquisa por Acoplamento Bibliográfico (Scopus)**

| Frente de Pesquisa (*Cluster*) | Foco Temático Principal | Artigos | Centralidade | Impacto |
| :--- | :--- | :---: | :---: | :---: |
| **Cluster 8** | *Data Lake, Big Data* | 64 | 0.47 | 5.37 |
| **Cluster 2** | *Data Lakehouse, Big Data* | 33 | 0.46 | 2.42 |
| **Cluster 3** | *Data Lake, Big Data* | 35 | 0.42 | 2.35 |
| **Cluster 12** | *Data Lake, Metadata, Big Data* | 17 | 0.38 | 1.62 |
| **Cluster 1** | *Big Data Architecture, Analytics* | 24 | 0.30 | 1.46 |
| **Cluster 9** | *Deep Learning, Artificial Intelligence* | 15 | 0.35 | 1.00 |

**Tabela 22 – Frentes de Pesquisa por Acoplamento Bibliográfico (WoS)**

| Frente de Pesquisa (*Cluster*) | Foco Temático Principal | Artigos | Centralidade | Impacto |
| :--- | :--- | :---: | :---: | :---: |
| **Cluster 4** | *Data Lake, Big Data* | 124 | 0.49 | 4.64 |
| **Cluster 2** | *Big Data, Analytics, Data Lake* | 75 | 0.26 | 3.38 |
| **Cluster 1** | *Digital Twin, Industry 4.0* | 42 | 0.39 | 1.45 |
| **Cluster 3** | *Deep Learning, Agricultural Automation* | 9 | 0.19 | 1.00 |

<div style="display: flex; justify-content: center; align-items: flex-start; gap: 20px;">
  <figure style="text-align: center; margin: 0;">
    <img src="../SCOPUS/analise_vs2/graficos_scopus_vs2/Fig17_mapa_coupling_scopus.png" width="450">
    <figcaption>Gráfico 25. Análise de acoplamento - base Scopus</figcaption>
  </figure>
  <figure style="text-align: center; margin: 0;">
    <img src="../WoS/analise_vs1/graficos_wos_vs1/fig17_mapa_coupling_wos.png" width="450">
    <figcaption>Gráfico 26. Análise de acoplamento - base WoS</figcaption>
  </figure>
</div>

O cruzamento do Acoplamento Bibliográfico das duas bases evidencia que o núcleo formador da comunidade permanece inabalável: o *cluster* fundacional (*Data Lake* e *Big Data*) lidera em volume, centralidade e impacto tanto na Scopus (Impacto: 5.37) quanto na WoS (Impacto: 4.64). Contudo, a periferia destas redes releva a bifurcação dos esforços de inovação.

Na Scopus, a frente de pesquisa evolui numa vertente **arquitetural e de governança**. Destaca-se o surgimento de um *cluster* maduro focado na transição para o modelo de *Data Lakehouse* (Cluster 2) e um agrupamento dedicado exclusivamente ao tratamento de *Metadata* (Cluster 12), confirmando que a eliminação de *data swamps* permanece como um desafio ativo de engenharia de dados.

Por outro lado, a WoS destaca uma vertente de pesquisa focada na aplicação prática na indústria. Observa-se que os autores utilizam a literatura base de arquitetura de dados para desenvolver soluções voltadas para a Indústria 4.0 e Gêmeos Digitais (Digital Twins, Cluster 1), o que lhes confere uma alta centralidade (0.39) nas discussões da rede.

Esta análise atesta uma dupla convergência sistémica na literatura atual: enquanto um grupo de pesquisadores se especializa no refinamento tecnológico e estrutural do repositório (a mudança entre *Lake* e *Lakehouse*), outro grupo apropria-se destas infraestruturas para viabilizar simulações complexas de inteligência artificial em ambientes do mundo real, o que vai ao encontro das demandas atuais por arquiteturas de dados de alto desempenho.

Ademais, a topologia gerada pelo Acoplamento Bibliográfico permite identificar quais são os autores e publicações que exercem maior influência sobre as frentes de pesquisa atuais. Através da métrica de Impacto Local Normalizado (*Normalized Local Citation Score* - NLCS), o algoritmo destaca os artigos com maior centralidade na formação dos "colégios invisíveis" do presente.

A Tabela 23 apresenta os documentos de maior impacto global nas redes de acoplamento de ambas as bases de dados.

**Tabela 23 – Autores com Maior Impacto na Rede de Acoplamento Bibliográfico (NLCS)**

| Base de Dados | Documento (Autor, Ano, Periódico) | NLCS Global | Perfil de Atuação na Rede |
| :--- | :--- | :---: | :--- |
| **Scopus** | HAI, R. (2016). *Proc. ACM SIGMOD* | 21.10 | Fundação (Arquitetura Inteligente) |
| **Scopus** | SAWADOGO, P. (2021). *J. Intell. Inform. Syst.* | 16.56 | Maturação (Metadados) |
| **Scopus** | HAI, R. (2023). *IEEE Trans. Knowl. Data Eng.* | 15.01 | Vanguarda (*Lakehouse*) |
| **Scopus** | ALSERAFI, A. (2016). *IEEE Int. Conf. Data Mining* | 10.26 | Fundação (Perfilamento de Dados) |
| | | | |
| **Web of Science**| SAWADOGO, P. (2021). *J. Intell. Inf. Syst.* | 24.50 | Maturação (Metadados) |
| **Web of Science**| RAVAT, F. (2019). *Lect. Notes Comput. Sc.* | 12.05 | Fundação (Perspetivas de *Lakes*) |
| **Web of Science**| GIEBLER, C. (2019). *Lect. Notes Comput. Sc.* | 10.12 | Fundação (Desafios do *Data Lake*) |
| **Web of Science**| HAI, R. (2023). *IEEE Trans. Knowl. Data Eng.* | 9.81 | Vanguarda (*Lakehouse*) |


A análise dos líderes de impacto no acoplamento bibliográfico revela um ecossistema de pesquisa guiado por uma dualidade temporal. Por um lado, as redes atuais ainda orbitam fortemente em torno dos trabalhos fundacionais. O artigo seminal de R. Hai (2016) na Scopus e o trabalho de consolidação de Sawadogo e Darmont (2021) — que atinge o topo na base WoS com um NLCS de 24.50 — provam que a estruturação de metadados e a governação de *Data Lakes* continuam a ser o referencial teórico obrigatório para os novos pesquisadores da área.

Contudo, o aspeto mais promissor desta extração é a ascensão da publicação relativamente recente de R. Hai (2023). Apresentando um impacto normalizado de 15.01 na Scopus e 9.81 na WoS, este estudo focado nas novas funções dos sistemas de *Data Lakes* (e na transição para os *Lakehouses*) já se estabeleceu como o principal motor da vanguarda tecnológica. A presença de um artigo tão recente no topo geral da rede atesta que a literatura está adotando rapidamente novos paradigmas de infraestrutura, indicando o pesquisador R. Hai aparenta como um dos principais na área de arquiteturas de dados de alto desempenho desta década.

### 2.8.2. Rede de Co-citação: As Raízes Intelectuais e Fundacionais

Diferente do Acoplamento Bibliográfico — que mapeia a vanguarda e as tendências futuras —, a análise de Co-citação (*Co-citation Network*) atua numa perspetiva retrospetiva. O seu objetivo é identificar quais publicações clássicas do passado são frequentemente citadas em conjunto pela literatura atual. Este método permite reconstituir as "raízes intelectuais" ou a matriz teórica sobre a qual o campo de pesquisa contemporâneo está alicerçado.

A avaliação das redes de co-citação nas bases Scopus e *Web of Science* (WoS) revela uma convergência interessante. Ambas as bases demonstram que a área não deriva de uma única linha de pensamento, mas sim da fusão de três grandes "escolas" teóricas distintas, conforme resumido na Tabela 24.

**Tabela 24 – Matriz Teórica da Literatura (Análise de Co-citação Scopus e WoS)**

| Escola Teórica / Foco | Autores Fundacionais Principais | Impacto e Significado |
| :--- | :--- | :--- |
| **I. Paradigmas de *Big Data* e Processamento** | Dean (2004), Gandomi (2015), Chen (2014), Marz (2015). | Representam os clássicos de processamento paralelo e armazenamento massivo. Forneceram a teoria matemática e estrutural (como o *MapReduce*) necessária para lidar com volume e variedade. |
| **II. Definição e Governança de *Data Lakes*** | Dixon (2010), Fang (2015), Hai (2016), Sawadogo (2021). | A base estrutural específica deste estudo. Agrupa desde a primeira menção comercial do conceito (*Pentaho*/Dixon) até às propostas maduras de arquitetura inteligente e governação de metadados. |
| **III. Simulação Cibernética e Indústria 4.0** | Grieves (2014), Kritzinger (2018), Tao (2019), Fuller (2020). | A raiz aplicada. Demonstra que a literatura de infraestrutura procura na engenharia de produção (Indústria 4.0) a sua base teórica para viabilizar os Gêmeos Digitais. |

A análise conjunta destas raízes comprova que a base teórica das arquiteturas modernas é multidisciplinar. Fica evidente que as soluções atuais de dados não foram desenvolvidas exclusivamente por cientistas da computação focados apenas em armazenamento. Pelo contrário, a arquitetura atual nasceu da fusão entre o alto poder de processamento (Big Data, Escola I) e a necessidade das engenharias aplicadas de simular o mundo físico (Digital Twins, Escola III).

## 2.9. Comparação Final entre as Bases de Dados

### 2.9.1. Análise Comparativa Scopus versus Web of Science

A síntese comparativa das análises bibliométricas revela alto grau de convergência entre os resultados obtidos nas bases Scopus e Web of Science. A Tabela 25 apresenta a comparação sistemática dos principais achados.

**Tabela 25 - Convergência entre Resultados**

| Dimensão | Scopus | WoS | Convergência |
|----------|--------|-----|--------------|
| Total de Documentos | 2.902 | 1.166 | Diferença esperada (políticas de indexação) |
| Período Mais Produtivo | 2022-2025 | 2022-2025 | **Alta** |
| Autores de Maior Impacto Local | QUIX C, HAI RH | QUIX C, HAI RH | **Alta** |
| País Líder em Volume | China | China | **Alta** |
| Fonte de Maior Volume | Lecture Notes in Computer Science | IEEE Access | Moderada |
| Fonte de Maior Impacto (h local) | Lecture Notes in Computer Science (h=14) | Sensors (h=9) | Moderada |
| Tendência Principal | Data Lakehouse | Data Lakehouse | **Alta** |
| Documento Local Mais Citado | Sawadogo & Darmont (2020) | Sawadogo & Darmont (2020) | **Alta** |
| Escolas Teóricas Identificadas | Big Data + Data Lakes + Ind. 4.0 | Big Data + Data Lakes + Ind. 4.0 | **Alta** |

### 2.9.2. Pontos de Convergência

Os principais pontos de convergência entre as bases de dados são:

**1. Autores de Referência:**
Os mesmos autores emergem como referências fundamentais em ambas as bases. QUIX C, HAI RH e DARMONT J aparecem consistentemente entre os mais impactantes localmente. Esta concordância fortalece a validade dos achados e identifica claramente os pilares intelectuais do campo — cujas obras constituem leitura obrigatória para o Estágio 3.

**2. Tendências Tecnológicas:**
O paradigma de *Data Lakehouse* é identificado como a tendência predominante em ambas as bases, com alta centralidade nos mapas de acoplamento bibliográfico. Esta convergência indica que a evolução do campo aponta claramente para a arquitetura unificada que combina a flexibilidade dos Data Lakes com a governança dos Data Warehouses.

**3. Países Líderes:**
China e Estados Unidos lideram a produção científica em ambas as bases, embora com variações percentuais decorrentes das diferentes políticas de indexação. O impacto qualitativo (citações por artigo) concentra-se nos EUA, Europa e Oceania.

**4. Documento Seminal:**
O artigo de Sawadogo e Darmont (2020) — *On data lake architectures and metadata management* — lidera o impacto local em ambas as bases (20 citações na Scopus e 41 na WoS), consolidando-se como o texto pivô da área.

### 2.9.3. Divergências Identificadas

Apesar da alta convergência, algumas divergências devem ser registradas:

**1. Volume e Tipo de Documento:**
O Scopus apresenta volume significativamente maior (2.902 vs. 1.166), refletindo sua política de indexação mais abrangente, especialmente para *conference papers* (1.548 na Scopus contra 452 na WoS). Isso confere ao Scopus um perfil mais dinâmico e orientado à inovação recente, enquanto a WoS é mais conservadora e focada em periódicos tradicionais.

**2. Rede de Colaboração:**
A Scopus revela uma rede de coautoria densa e interconectada, com pontes entre clusters. A WoS, ao filtrar conferências, apresenta uma rede fragmentada em silos isolados — com Betweenness igual a zero para 94,7% dos autores. Esta divergência reflete a natureza diferente dos documentos em cada base, não necessariamente um isolamento real entre os pesquisadores.

**3. Mapa Temático:**
Na Scopus, o *cluster* de *Decision Making* e *Machine Learning* posiciona-se como Tema Motor (Q1). Na WoS, os *Digital Twins* assumem esse papel, refletindo a especialização mais profunda dos periódicos tradicionais em aplicações industriais e de simulação.

**4. Presença Brasileira:**
O Brasil aparece em posição de maior destaque na Scopus, possivelmente devido à maior indexação de conferências latino-americanas nesta base. Em ambas, a PUCRS e a USP figuram como as instituições brasileiras mais relevantes.

### 2.9.4. Implicações para o Projeto

A convergência dos resultados bibliométricos oferece forte validação científica para a proposta de arquitetura de Data Lake do presente projeto de mestrado. Os achados confirmam que:

1. **O paradigma de Data Lakehouse representa o estado da arte**, constituindo a evolução natural dos Data Lakes tradicionais. A arquitetura proposta deve incorporar os princípios de governança e transacionalidade do modelo *Lakehouse* (ACID, schema enforcement, catálogo de metadados).

2. **A integração com Inteligência Artificial é o principal vetor de valor**, sendo o tema de maior crescimento na literatura recente. O Data Lake proposto deve ser projetado como infraestrutura habilitadora para aplicações de IA no apoio ao Processo de Planejamento Militar.

3. **A governança de metadados é o desafio central**, conforme demonstrado pela centralidade do trabalho de Sawadogo e Darmont (2020). A arquitetura deve contemplar mecanismos robustos de catalogação, qualidade e rastreabilidade dos dados para evitar o fenômeno de *data swamp*.

4. **Autores como HAI RH, QUIX C e DARMONT J constituem referências teóricas essenciais** para a fundamentação do projeto, devendo compor o núcleo do referencial teórico da dissertação.

---

## 2.10. Funil de Seleção PRISMA para o Estágio 3

O funil PRISMA (*Preferred Reporting Items for Systematic Reviews and Meta-Analyses*) documenta o processo de redução progressiva do corpus para a leitura integral do Estágio 3. Diferente da coleta do Estágio 1 (que retorna todos os documentos indexados), o funil do Estágio 3 visa selecionar um portfólio de **10 a 20 artigos** para análise de conteúdo aprofundada — conforme preconizado pela metodologia TEMAC (MARIANO; ROCHA SANTOS, 2017) —, com base nos critérios derivados dos achados bibliométricos do Estágio 2.

### 2.10.1. Critérios de Inclusão e Exclusão Derivados da Bibliometria

Os critérios abaixo foram definidos a partir dos achados quantitativos do Estágio 2, garantindo que a seleção seja baseada em evidência, não em conveniência do pesquisador.

**Critérios de Inclusão (CI):**

| Código | Critério | Evidência Bibliométrica de Origem |
| :--- | :--- | :--- |
| **CI-1** | Documentos com alto impacto local (≥ 5 citações locais em qualquer das bases) | Tabelas 12 e 13 — identificam os textos pivô que a própria comunidade referencia como fundação |
| **CI-2** | Trabalhos de autores âncora (QUIX C, HAI RH, DARMONT J, SAWADOGO P) | Seção 2.4.1 — autores com maior convergência de impacto entre Scopus e WoS |
| **CI-3** | Estudos focados em arquitetura de *Data Lakehouse* ou governança de metadados | Seção 2.8.1 — cluster de maior centralidade e impacto no acoplamento bibliográfico |
| **CI-4** | Trabalhos que integrem infraestrutura de dados com *Decision Making* ou *Machine Learning* | Seção 2.7.2 — identificados como Temas Motores (Q1) nos mapas temáticos de ambas as bases |
| **CI-5** | Artigos completos e *conference papers* (artigos, proceedings) com texto integral acessível | Seção 2.2.1 — representam 89% do corpus e são o principal veículo da área |

**Critérios de Exclusão (CE):**

| Código | Critério | Evidência Bibliométrica de Origem |
| :--- | :--- | :--- |
| **CE-1** | Estudos de *Big Data* ou *Cloud Computing* sem foco em arquiteturas de *Data Lake/Lakehouse* | Seção 2.7.3 — *Big Data* genérico foi classificado como Tema Básico/em Declínio (Q3/Q4) na WoS |
| **CE-2** | Documentos sem texto integral acessível | Requisito metodológico do Estágio 3 — a análise de conteúdo exige leitura integral |
| **CE-3** | Estudos em domínios de aplicação sem potencial de transferência para o contexto de C2 (ex.: reumatologia, sensoriamento ambiental remoto, agricultura de precisão sem arquitetura de dados) | Seção 2.5.3 — documentação dos artefatos de captura identificados na amostra brasileira |

### 2.10.2. Funil de Seleção

O processo de filtragem ocorre em cinco fases sequenciais, conforme ilustrado abaixo:

```
┌─────────────────────────────────────────────────────────────────┐
│  FASE 1 — IDENTIFICAÇÃO                                         │
│  Scopus: 2.902 documentos  |  WoS: 1.166 documentos            │
│  Total bruto: 4.976 registros (base consolidada Scopus + WoS)  │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Deduplicação: 1.144 registros removidos  →  3.832 únicos
                           │ Triagem computacional por score de relevância ≥ 5
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 2 — TRIAGEM POR IMPACTO LOCAL (CI-1 e CI-2)              │
│  Score ≥ 5: autores âncora + "data lake/lakehouse" no título    │
│  Resultado: 215 documentos                                      │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Refinamento por score ≥ 7 (CI-3, CI-4 + penalidades CE-1/CE-3)
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 3 — TRIAGEM POR TEMA (CI-3, CI-4, CE-1, CE-3)           │
│  Filtrar por relevância temática para Data Lake/C2/IA          │
│  Resultado: 52 documentos (disponíveis para download)          │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Verificação manual de acesso + revisão pelo pesquisador
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 4 — ELEGIBILIDADE (CI-5 e CE-2)                          │
│  Verificar acesso ao texto integral + revisão manual           │
│  Resultado: a definir pelo pesquisador                         │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Leitura integral e análise de conteúdo
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 5 — INCLUSÃO FINAL                                        │
│  Corpus qualitativo para análise de conteúdo do Estágio 3      │
│  Resultado esperado: 10-20 documentos (conforme TEMAC)         │
└─────────────────────────────────────────────────────────────────┘
```

### 2.10.3. Implementação Computacional da Triagem

#### Por que um *score* e não as citações locais?

O critério CI-1, conforme originalmente definido, utilizaria a contagem de citações locais (≥ 5) como proxy de impacto. Entretanto, a aplicação direta desse critério encontrou duas limitações metodológicas importantes:

1. **Heterogeneidade das bases de dados**: Scopus e Web of Science possuem políticas de indexação distintas — o Scopus indexa um conjunto mais amplo de periódicos e *conference papers*, o que faz com que a contagem de citações locais de um mesmo artigo possa variar significativamente entre as bases. Utilizar o número bruto de citações como critério de corte único favoreceria artificialmente os artigos com maior cobertura em uma das plataformas, introduzindo um viés de origem. O *score* composto, ao ser calculado de forma idêntica sobre ambas as bases, elimina essa assimetria.

2. **Ausência das citações locais no arquivo exportado**: Os arquivos de exportação gerados pelo Scopus e pelo WoS para a base consolidada de triagem não incluíam o campo de contagem de citações locais — disponível apenas na interface analítica do Biblioshiny, após o processamento interno da ferramenta. Sem esse campo, o critério CI-1 não poderia ser aplicado diretamente.

Além das limitações práticas, há ainda uma vantagem conceitual: citações locais medem *impacto retrospectivo* — o quanto um trabalho foi referenciado pelo próprio corpus analisado —, enquanto o *score* captura também a **relevância temática prospectiva**, isto é, o grau de alinhamento do conteúdo do artigo com o objeto de pesquisa (arquitetura de Data Lake para Comando e Controle). Para os fins do Estágio 3, esta segunda dimensão é igualmente essencial.

Por essas razões, o critério CI-1 foi operacionalizado como um **sistema de pontuação (*score*) de relevância**, implementado via script Python com correspondência lexical por palavras-chave. O critério CI-2 (autores âncora) foi mantido como fator de pontuação de maior peso.

#### Método de Cálculo do *Score*

A pontuação é calculada por **correspondência de substrings** (*keyword matching*) sobre os campos de título e resumo de cada registro, após normalização textual prévia: conversão para minúsculas, remoção de acentos via decomposição Unicode (NFKD → ASCII), remoção de pontuação e colapso de espaços múltiplos. Para os autores, foi utilizada expressão regular com verificação de fronteira de palavra (`\b`).

Não foram utilizadas técnicas de representação semântica como *embeddings* vetoriais, TF-IDF ou similaridade de cosseno. A opção pelo método lexical se justifica por dois motivos:

- **Vocabulário do domínio é altamente discriminativo**: termos como "data lake", "lakehouse" e "metadata management" raramente ocorrem fora do contexto de interesse, tornando a correspondência textual simples tão eficaz quanto métodos semânticos mais custosos;
- **Transparência e reprodutibilidade**: revisões sistemáticas exigem critérios de seleção auditáveis — um *score* baseado em regras explícitas é facilmente verificável, o que não ocorreria com um *embedding* cujos pesos são opacos.

A pontuação de cada registro foi calculada pela soma ponderada dos seguintes indicadores:

| Indicador | Critério PRISMA | Pontos |
| :--- | :--- | :---: |
| Autor âncora identificado (Hai R, Quix C, Darmont J, Sawadogo P, Ravat F, Giebler C) | CI-2 | +6 |
| Paper seminal citado nominalmente no relatório bibliométrico (proxy CI-1) | CI-1 | +5 |
| "data lake" ou "lakehouse" no **título** | CI-3 | +4 |
| "data lake" ou "lakehouse" apenas no **abstract** | CI-3 | +2 |
| "warehouse" + "lake" no mesmo título (evolução arquitetural) | CI-3 | +2 |
| Termos de metadados/governança no **título** (ex.: *metadata management*, *data governance*, *data catalog*) | CI-3 | +2 |
| Termos de metadados/governança no **abstract** | CI-3 | +1 |
| Termos de arquitetura de dados no título (ex.: *data architecture*, *ETL*, *data pipeline*, *data vault*) | CI-3 | +1 |
| Termos de C2/militar no título ou abstract (ex.: *command and control*, *battlefield*, *situation awareness*) | CI-4 | +3 |
| Termos de tomada de decisão no **título** (ex.: *decision support*, *decision making*) | CI-4 | +2 |
| Termos de tomada de decisão no **abstract** | CI-4 | +1 |
| Termos de IA/ML no **título** (ex.: *machine learning*, *artificial intelligence*, *deep learning*) | CI-4 | +1 |
| Termos de IA/ML no **abstract** | CI-4 | +0,5 |
| Termos de IoT/Digital Twin no título ou abstract | CI-4 | +1 |
| Domínio irrelevante para C2 sem contexto de arquitetura de dados (ex.: reumatologia, agricultura de precisão, sensoriamento remoto) | CE-3 | −4 |
| *Big Data* genérico no título sem nenhum termo de *Data Lake* | CE-1 | −2 |

#### Limiares de Corte por Fase

| Fase | Score mínimo | Lógica |
| :--- | :---: | :--- |
| Fase 2 — Triagem por Impacto | ≥ 5 | Garante ao menos um dos critérios CI-1 ou CI-2, ou presença de "data lake/lakehouse" no abstract |
| Fase 3 — Triagem Temática | ≥ 7 | Exige combinação de pelo menos dois indicadores de relevância (ex.: autor âncora + "data lake" no título, ou "data lake" + metadados) |

#### Resultado da Triagem PRISMA (Fases 1–3)

| Fase | Critério aplicado | Resultado |
| :--- | :--- | :--- |
| **Fase 1 — Identificação** | Deduplicação por título normalizado (normalização Unicode, remoção de pontuação) | 4.976 brutos → **3.832 únicos** (1.144 duplicatas marcadas) |

> **Nota sobre o total bruto**: A base consolidada para triagem contém 4.976 registros, enquanto o bibliométrico do Estágio 2 contabilizou 4.068 (2.902 Scopus + 1.166 WoS). A diferença decorre dos filtros aplicados no Biblioshiny antes da análise bibliométrica: (a) restrição ao período 2016-2026 e (b) exclusão dos livros (*books*) da base Scopus — conforme descrito na Seção 1.3.3. A base de triagem foi exportada em etapa anterior à aplicação desses filtros finos, resultando num volume ligeiramente maior. Os filtros do Biblioshiny devem ser considerados como uma pré-triagem implícita do Estágio 1.
| **Fase 2 — Triagem por Impacto** | Score ≥ 5: autores âncora (CI-2) + *data lake/lakehouse* no título/abstract (proxy CI-1) | **215 documentos** |
| **Fase 3 — Triagem Temática** | Score ≥ 7: combinação CI-3 (arquitetura/metadados) + CI-4 (C2/IA/decisão), com penalidades CE-1 e CE-3 | **52 documentos** (disponíveis para download e revisão na Fase 4) |

### 2.10.4. Artigos Selecionados na Fase 3

A Tabela abaixo apresenta os 52 artigos selecionados na Fase 3, ordenados por pontuação decrescente. Os artigos marcados com asterisco (★) correspondem a papers explicitamente citados nas tabelas de maior impacto local do Estágio 2 (Tabelas 12, 13 e 23).

| # | Score | Título | Autores |
| :---: | :---: | :--- | :--- |
| 1 | 18,0 | ★ On data lake architectures and metadata management | Sawadogo, P.; Darmont, J. |
| 2 | 15,0 | ★ The Data Lake Architecture Framework: A Foundation for Building a Comprehensive Data Lake Architecture | Giebler, C. et al. |
| 3 | 12,5 | A Zone-Based Data Lake Architecture for IoT, Small and Big Data | Zhao, Y.; Megdiche, I.; Ravat, F.; Dang, V.-N. |
| 4 | 12,0 | Textual Data Analysis from Data Lakes | Sawadogo, P.N. |
| 5 | 12,0 | A use case of data lake metadata management | Megdiche, I.; Ravat, F.; Zhao, Y. |
| 6 | 12,0 | Metadata management for textual documents in data lakes | Sawadogo, P.N.; Kibata, T.; Darmont, J. |
| 7 | 12,0 | GEMMS: A Generic and Extensible Metadata Management System for data lakes | Quix, C.; Hai, R.; Vatov, I. |
| 8 | 12,0 | Metadata Management on Data Processing in Data Lakes | Megdiche, I.; Ravat, F.; Zhao, Y. |
| 9 | 12,0 | ★ An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management | Nambiar, A.; Mundra, D. |
| 10 | 11,0 | Relaxed functional dependency discovery in heterogeneous data lakes | Hai, R.; Quix, C.; Wang, D. |
| 11 | 11,0 | Handle - a generic metadata model for data lakes | Eichler, R.; Giebler, C. et al. |
| 12 | 11,0 | Modeling data lakes with data vault: Practical experiences, assessment, and lessons learned | Giebler, C. et al. |
| 13 | 11,0 | ★ Constance: An intelligent data lake system | Hai, R.; Geisler, S.; Quix, C. |
| 14 | 11,0 | Modeling data lake metadata with a data vault | Nogueira, I.D.; Romdhane, M.; Darmont, J. |
| 15 | 11,0 | ArchaeoDAL: A Data Lake for Archaeological Data Management and Analytics | Liu, P.; Loudcher, S.; Darmont, J.; Noûs, C. |
| 16 | 11,0 | Architecture of data lakes | Chihoub, H.; Madera, C.; Quix, C.; Hai, R. |
| 17 | 11,0 | Metadata Systems for Data Lakes: Models and Features | Sawadogo, P.N. et al. |
| 18 | 11,0 | About Relationships in Data Lakes | Diouan, A.; Ferey, E.; Darmont, J.; Loudcher, S. |
| 19 | 11,0 | Modeling data lake metadata with a data vault *(versão FR/EN)* | Nogueira, I.D.; Romdhane, M.; Darmont, J. |
| 20 | 10,5 | A Zone Reference Model for Enterprise-Grade Data Lake Management | Giebler, C. et al. |
| 21 | 10,0 | A survey on semantic data management as intersection of ontology-based data access, semantic modeling and data lakes | Hoseini, S.; Lipp, J.; Quix, C. |
| 22 | 10,0 | Benchmarking Data Lakes Featuring Structured and Unstructured Data with DLBench | Sawadogo, P.N.; Darmont, J. |
| 23 | 10,0 | ★ Data Lakes: A Survey of Functions and Systems | Hai, R.; Koutras, C.; Quix, C.; Jarke, M. |
| 24 | 10,0 | Demand-Driven Data Provisioning in Data Lakes | Stach, C.; Bräcker, J.; Eichler, R.; Giebler, C.; Mitschang, B. |
| 25 | 10,0 | Leveraging the Data Lake: Current State and Challenges | Giebler, C. et al. |
| 26 | 10,0 | Joint Management and Analysis of Textual Documents and Tabular Data Within the AUDAL Data Lake | Sawadogo, P.; Darmont, J.; Noûs, C. |
| 27 | 10,0 | Data lakes for digital humanities | Darmont, J.; Favre, C.; Loudcher, S.; Noûs, C. |
| 28 | 10,0 | Coining goldMEDAL: A new contribution to data lake generic metadata modeling | Scholly, E.; Sawadogo, P. et al. |
| 29 | 10,0 | Query Rewriting for Heterogeneous Data Lakes | Hai, R.; Quix, C.; Zhou, C. |
| 30 | 10,0 | Data Lakes: A Survey of Functions and Systems *(extended abstract)* | Hai, R.; Koutras, C.; Quix, C.; Jarke, M. |
| 31 | 10,0 | Energy Measurement System for Data Lake: An Initial Approach | Alvarez-Valera, H.H.; Ravat, F. et al. |
| 32 | 9,5 | Leveraging Scalable Cloud Infrastructure for Autonomous Driving Data Lakes and Real-Time Decision Making | Chen, J. |
| 33 | 9,0 | ★ Managing data lakes in big data era | Fang, H. |
| 34 | 9,0 | A Lakehouse Architecture for the Management and Analysis of Heterogeneous Data for Biomedical Research | Begoli, E.; Goethert, I.; Knight, K. |
| 35 | 8,0 | Spatial big data architecture: From Data Warehouses and Data Lakes to the LakeHouse | Ait Errami, S. et al. |
| 36 | 8,0 | LLM-PQA: LLM-enhanced Prediction Query Answering | Li, Z.; Zhao, W.; Katsifodimos, A.; Hai, R. |
| 37 | 8,0 | Active XML-based Web data integration | Salem, R.; Boussaïd, O.; Darmont, J. |
| 38 | 8,0 | Maritime information sharing environment deployment using the advanced multilayered Data Lake | Paladin, Z. et al. |
| 39 | 7,5 | Battlefield situation recognition technology and application trend based on data lake | Guo, L.; Tu, W.; Chen, F.; Xiao, L. |
| 40 | 7,5 | Data Lakes vs. Data Warehouses in Library Analytics: A Strategic Comparison | Alimardanova, R. et al. |
| 41 | 7,5 | Building a Data Lake for Smart Building Data: Architecture for Data Quality and Interoperability | Hernández, J.L. et al. |
| 42 | 7,0 | STORAGE STRUCTURES IN THE ERA OF BIG DATA: FROM DATA WAREHOUSE TO LAKEHOUSE | Bentaib, M. et al. |
| 43 | 7,0 | Combining Data Lake and Data Wrangling for Ensuring Data Quality in CRIS | Azeroual, O. et al. |
| 44 | 7,0 | DLMF: An Integrated Architecture for Healthcare Data Management and Analysis Using Data Lake | Oukhouya, L. et al. |
| 45 | 7,0 | Machine learning in data lake for combining data silos | Wibowo, M.; Sulaiman, S.; Shamsuddin, S.M. |
| 46 | 7,0 | Data Ingestions as a Service (DIaaS): A Unified Interface for Heterogeneous Data Ingestion | Sreepathy, H.V. et al. |
| 47 | 7,0 | Seamless Decision-Making in the Big Data Era: A Modular Approach to Integrating IoT, Cloud and Data Lake | Zemmouri, M. et al. |
| 48 | 7,0 | Research on development and application of data governance tools in exploration and production | Chen, S. et al. |
| 49 | 7,0 | Journey from data warehouse to data lake | Rani, G.; Kaur, P.; Sharma, A. |
| 50 | 7,0 | Generic model of metadata management system for data lakes | Elkina, H.; Sahib, M.R.; Zaki, T. |
| 51 | 7,0 | Still Open Problems in Data Warehouse and Data Lake Research *(extended abstract)* | Wrembel, R. |
| 52 | 7,0 | Data Integration Revitalized: From Data Warehouse Through Data Lake to Data Mesh | Wrembel, R. |

### 2.10.5. Pontos de Atenção para a Fase 4

A revisão manual da Fase 4 deverá observar os seguintes casos que requerem atenção especial antes da decisão final de inclusão:

**1. Duplicata de título bilingue (registros 14 e 19)**
Os artigos de número 14 ("*Modeling data lake metadata with a data vault*") e 19 ("*Modeling data lake metadata with a data vault; Modélisation des métadonnées d'un data lake en data vault*") correspondem ao mesmo trabalho de Nogueira, Romdhane e Darmont. A deduplicação automática não os capturou porque o título no segundo registro acompanha a tradução em francês. Recomenda-se excluir o registro 19 (versão duplicada) na Fase 4.

**2. Artigos 23 e 30 — Mesmo paper, versão estendida e resumo**
Os registros 23 e 30 ("*Data Lakes: A Survey of Functions and Systems*" de Hai, Koutras, Quix e Jarke) correspondem à versão completa e ao *extended abstract* do mesmo trabalho. A versão completa (registro 23) deve ser priorizada; o *extended abstract* (registro 30) pode ser excluído na Fase 4.

**3. Artigo 36 — Relevância periférica ao tema central**
"*LLM-PQA: LLM-enhanced Prediction Query Answering*" (Hai R. et al.) ingressou na seleção exclusivamente pelo critério CI-2 (Hai R. como autor âncora). O tema central do artigo é *query answering* com LLMs sobre dados estruturados, sem foco em arquitetura de Data Lake. Recomenda-se avaliação cuidadosa na Fase 4 antes da inclusão.

**4. Artigo 37 — Paper anterior à temática de Data Lake**
"*Active XML-based Web data integration*" (Salem, Boussaïd, Darmont) é um trabalho de integração de dados baseado em XML, anterior à consolidação do paradigma de Data Lake. Entrou por CI-2 (Darmont como coautor), mas não aborda arquitetura de *lake* diretamente. Recomenda-se exclusão na Fase 4 salvo se o conteúdo apresentar contribuição arquitetural transferível.

**5. Artigo 44 — Domínio médico com arquitetura transferível**
"*DLMF: An Integrated Architecture for Healthcare Data Management and Analysis Using Data Lake*" aborda domínio médico (CE-3 parcial), mas propõe uma arquitetura de Data Lake completa. Diferentemente dos artefatos de captura descritos na Seção 2.5.3, este artigo apresenta **contribuição arquitetural potencialmente transferível** para o contexto de C2. Recomenda-se revisão do abstract na Fase 4 para confirmar a pertinência.

> **Nota metodológica**: O *score* computacional implementado opera como um filtro de relevância baseado em evidência textual, substituindo a leitura manual de quase 4.000 títulos e resumos. A decisão final de inclusão ou exclusão permanece com o pesquisador na Fase 4, após leitura dos textos integrais disponíveis.

### 2.10.6. Resultado da Fase 4 — Verificação de Acesso ao Texto Integral

A Fase 4 consistiu na tentativa de obtenção dos textos integrais dos 52 artigos selecionados na Fase 3. O pesquisador realizou a busca dos documentos listados na Tabela da Seção 2.10.4 e registrou os seguintes resultados para os casos que demandaram atenção especial, seja por indisponibilidade de acesso, seja por questões de integridade do documento obtido:

**1. Artigo #48 — "Research on development and application of data governance tools in exploration and production field based on data lake platform"** (Chen, S. et al.)
O texto integral deste artigo não pôde ser acessado. O documento foi, portanto, excluído do corpus qualitativo por não atender ao Critério de Inclusão CI-5, que exige disponibilidade do texto integral para análise de conteúdo no Estágio 3.

**2. Artigo #49 — "Journey from data warehouse to data lake"** (Rani, G.; Kaur, P.; Sharma, A.)
O texto integral deste artigo não pôde ser acessado. O documento foi excluído do corpus qualitativo pelo mesmo motivo, em conformidade com o Critério de Exclusão CE-2.

**3. Artigos #23 e #30 — "Data Lakes: A Survey of Functions and Systems"** (Hai, R.; Koutras, C.; Quix, C.; Jarke, M.)
Conforme antecipado na Seção 2.10.5, os registros 23 e 30 correspondem, respectivamente, à versão completa e ao *extended abstract* do mesmo trabalho. O *extended abstract* (registro #30) apresentou-se incompleto na versão obtida. Em consonância com a recomendação metodológica já registrada, o registro #30 foi excluído e o registro #23 (versão completa) foi retido no corpus.

**4. Artigo #52 — "Data Integration Revitalized: From Data Warehouse Through Data Lake to Data Mesh"** (Wrembel, R.)
O texto integral deste artigo não pôde ser acessado. O documento foi excluído do corpus qualitativo em aplicação do Critério de Exclusão CE-2.

**5. Artigo #10 — "Relaxed functional dependency discovery in heterogeneous data lakes"** (Hai, R.; Quix, C.; Wang, D.)
O texto integral deste artigo não pôde ser acessado. O documento foi excluído do corpus qualitativo em aplicação do Critério de Exclusão CE-2.

**6. Artigos #14 e #19 — "Modeling data lake metadata with a data vault"** (Nogueira, I.D.; Romdhane, M.; Darmont, J.)
Conforme recomendado na Seção 2.10.5, apenas o registro #14 (versão sem título bilíngue) foi obtido e retido. O registro #19, que corresponde à duplicata com título em francês, não foi buscado nem incorporado ao corpus, eliminando a redundância identificada na triagem automatizada.

**7. Artigo #51 — "Still Open Problems in Data Warehouse and Data Lake Research"** (Wrembel, R.) *(extended abstract)*
O documento foi obtido, porém sua versão disponível mostrou-se incompleta. Em virtude da impossibilidade de acesso ao texto integral e da consequente inviabilidade de análise de conteúdo aprofundada, o artigo foi excluído do corpus qualitativo, em conformidade com o Critério de Exclusão CE-2.

---

**Síntese da Fase 4:**

| Situação | Quantidade |
| :--- | :---: |
| Artigos com texto integral obtido e retidos no corpus | a confirmar |
| Artigos excluídos por inacessibilidade do texto integral (CE-2) | 5 (#10, #48, #49, #51, #52) |
| Artigos excluídos por duplicidade (*extended abstract* / versão bilíngue) | 2 (#19, #30) |

---

## 2.11. Próximos Passos — Leitura de Seleção para o Estágio 3

Com a conclusão da Fase 4, o corpus qualitativo encontra-se delimitado ao conjunto de artigos com texto integral acessível. A etapa subsequente consiste na realização de uma **leitura de seleção** — também denominada *leitura rápida* ou triagem qualitativa —, cujo objetivo é identificar, dentre os documentos disponíveis, os **15 trabalhos de maior relevância** para a análise de conteúdo aprofundada do Estágio 3 da metodologia TEMAC.

Essa leitura de seleção não constitui ainda a leitura integral preconizada pelo Estágio 3, mas sim uma avaliação expedita — baseada na leitura de resumos, introduções e conclusões — orientada pelos seguintes critérios de priorização, derivados dos achados bibliométricos:

1. **Contribuição arquitetural direta**: artigos que proponham, descrevam ou avaliem arquiteturas de *Data Lake* ou *Lakehouse*, com foco em componentes transferíveis para o contexto operacional de Comando e Controle;
2. **Gestão de metadados e governança**: artigos alinhados ao Cluster 1 identificado na análise de acoplamento bibliográfico (Seção 2.8.1), que concentra os trabalhos de maior centralidade no campo;
3. **Integração com Inteligência Artificial e Suporte à Decisão**: artigos que articulem infraestrutura de dados com mecanismos de aprendizado de máquina, análise preditiva ou apoio à decisão;
4. **Impacto local e autoria**: preferência por trabalhos dos autores âncora identificados no Estágio 2 (Sawadogo P., Darmont J., Quix C., Hai R., Giebler C., Ravat F.) e pelos documentos seminais referenciados com maior frequência no corpus.

O resultado desta leitura de seleção será o **portfólio final de 15 artigos** que comporão o objeto de análise do Estágio 3, consolidando a transição da revisão bibliométrica quantitativa para a análise de conteúdo qualitativa, conforme previsto pela metodologia TEMAC (MARIANO; ROCHA SANTOS, 2017).

---

## 2.12. Portfólio Final — Resultado da Leitura de Seleção

### 2.12.1. Processo de Leitura de Seleção

Com o corpus de 44 artigos obtidos na Fase 4, procedeu-se à **leitura de seleção**: uma leitura rápida e diagonal de resumos, introduções e conclusões de cada documento, sem aprofundamento no corpo do texto. O objetivo desta etapa não é analisar o conteúdo, mas sim identificar quais trabalhos oferecem contribuições mais diretamente aplicáveis ao objeto de pesquisa — a proposta de arquitetura de *Data Lake* para o Processo de Planejamento Militar (PPM). A seleção priorizou os critérios enunciados na Seção 2.11, com especial atenção a: (1) contribuição arquitetural transferível para o contexto de C2; (2) profundidade no tratamento de metadados e governança; e (3) articulação explícita entre infraestrutura de dados e suporte à decisão ou contexto operacional/militar.

### 2.12.2. Artigos Selecionados para o Estágio 3

A Tabela abaixo apresenta os **15 artigos selecionados** para leitura integral no Estágio 3, com a justificativa sucinta de inclusão derivada da leitura de seleção.

| # | Artigo | Justificativa de Inclusão |
| :---: | :--- | :--- |
| 1 | SAWADOGO, P.; DARMONT, J. On data lake architectures and metadata management. *Journal of Intelligent Information Systems*, 2021. ★ | Survey mais abrangente sobre arquiteturas e gestão de metadados em *Data Lakes*. Referência central do campo — propõe nova tipologia arquitetural e classifica sistemas de metadados. Leitura obrigatória para fundamentar o Capítulo de Fundamentação Teórica. |
| 2 | HAI, R. et al. Data lakes: A survey of functions and systems. *IEEE Transactions on Knowledge and Data Engineering*, 2023. ★ | Survey mais recente e completo sobre funções e sistemas de *Data Lakes*. Classifica as soluções por camadas funcionais (ingestão, manutenção, exploração) — estrutura diretamente utilizável para mapear os requisitos do PPM. |
| 3 | GIEBLER, C. et al. The data lake architecture framework: A foundation for building a comprehensive data lake architecture. *Datenbank-Spektrum*, 2021. ★ | Propõe o DLAF (*Data Lake Architecture Framework*), com nove aspectos arquiteturais e metodologia de instanciação. Principal referência normativa para a proposta arquitetural do presente projeto. |
| 4 | HAI, R.; GEISLER, S.; QUIX, C. Constance: An intelligent data lake system. *SIGMOD*, 2016. ★ | Sistema seminal de *Data Lake* com gerenciamento sofisticado de metadados estruturais e semânticos. Introduz o conceito de *data swamp* e a solução via metadados — fundamento conceitual essencial. |
| 5 | FANG, H. Managing data lakes in big data era. *IEEE CYBER*, 2015. ★ | Paper fundador do conceito de *Data Lake* no ecossistema de gerenciamento de dados. Contexto histórico e motivação do paradigma *schema-on-read*. Referência obrigatória na introdução. |
| 6 | NAMBIAR, A.; MUNDRA, D. An overview of data warehouse and data lake in modern enterprise data management. *Big Data and Cognitive Computing*, 2022. ★ | Visão geral comparativa entre *Data Warehouse* e *Data Lake*, com análise de arquiteturas e desafios atuais. Útil para fundamentar a transição DW→DL no contexto do PPM. |
| 7 | GIEBLER, C. et al. A zone reference model for enterprise-grade data lake management. *IEEE BigData*, 2021. | Desenvolve um modelo de referência por zonas para gerenciamento de *Data Lake* em escala industrial, validado em caso real na Robert Bosch. Diretamente aplicável à estrutura zonal da arquitetura proposta. |
| 8 | EICHLER, R. et al. HANDLE — A generic metadata model for data lakes. *DaWaK*, 2020. | Apresenta o HANDLE, modelo de metadados genérico capaz de representar qualquer caso de uso de gestão de metadados em *Data Lakes*, incluindo versionamento e *data lineage*. Mais abrangente que GEMMS e MEDAL. |
| 9 | QUIX, C.; HAI, R.; VATOV, I. GEMMS: A generic and extensible metadata management system for data lakes. *CAiSE Forum*, 2016. | Sistema de gerenciamento de metadados extensível para *Data Lakes*. Precursor do HANDLE — apresenta o metamodelo estrutural e semântico que influenciou os trabalhos subsequentes. |
| 10 | SAWADOGO, P. N. et al. Metadata systems for data lakes: Models and features. *ADBIS Workshops*, 2019. | Propõe o modelo MEDAL e um conjunto de critérios de avaliação para sistemas de metadados em *Data Lakes*. Referência para a camada de governança de metadados da arquitetura proposta. |
| 11 | GIEBLER, C. et al. Leveraging the data lake: Current state and challenges. *DaWaK*, 2019. | Sistematiza o estado da arte e identifica lacunas de pesquisa em três eixos: arquitetura, governança e estratégia de realização. Útil para posicionar a contribuição do presente projeto no campo. |
| 12 | GIEBLER, C. et al. Modeling data lakes with data vault: Practical experiences, assessment, and lessons learned. *ER*, 2019. | Avalia o *Data Vault* como técnica de modelagem em *Data Lakes* com base em experiência industrial real. Relevante para a camada de modelagem de dados da arquitetura proposta. |
| 13 | PALADIN, Z. et al. Maritime information sharing environment deployment using the advanced multilayered data lake capabilities: EFFECTOR project case study. *Pomorstvo*, 2022. | Único artigo do corpus que descreve uma arquitetura de *Data Lake* multicamadas implantada em ambiente operacional de vigilância marítima com Comando, Controle e Coordenação (C3i). Prova de conceito mais próxima do contexto do presente projeto. |
| 14 | GUO, L. et al. Battlefield situation recognition technology and application trend based on data lake. *IOP Conference Series*, 2021. | Propõe uma arquitetura de reconhecimento de situação de campo de batalha baseada em *Data Lake* com *Machine Learning*. Artigo de menor maturidade metodológica, mas com relevância temática direta ao domínio do PPM. |
| 15 | ZEMMOURI, M. et al. Seamless decision-making in the big data era: A modular approach to integrating IoT, cloud computing, and data lakes. *IEEE Access*, 2024. | Propõe uma camada de decisão modular sobre fontes heterogêneas tratadas como *Data Lake*, sem necessidade de alteração do ambiente existente. Abordagem transferível para o contexto do PPM, onde sistemas legados militares não podem ser modificados. |

### 2.12.3. Artigos Não Selecionados — Justificativas Sucintas

Os 29 artigos obtidos na Fase 4 que não integraram o portfólio final foram excluídos pela leitura de seleção pelos motivos indicados a seguir. As exclusões refletem o juízo de relevância temática para o objeto específico da pesquisa, não um julgamento de qualidade dos trabalhos.

| Artigo | Motivo da Não Seleção |
| :--- | :--- |
| HAI, R. et al. *Data Lakes: A Survey... (Extended abstract)*. 2023. | Versão resumida do artigo #2 (selecionado). Redundante. |
| DIOUAN, A. et al. *About Relationships in Data Lakes*. IDEAS 2024. | Extensão muito específica do goldMEDAL para tipologia de relacionamentos. Contribuição coberta pelos artigos #8 e #10. |
| SCHOLLY, É. et al. *Coining goldMEDAL*. BDA, 2021. | Generalização do modelo MEDAL. Contribuição de metadados coberta pelo artigo #10 (MEDAL original) e #8 (HANDLE). |
| MEGDICHE, I.; RAVAT, F.; ZHAO, Y. *A use case of data lake metadata management*. 2019. | Caso de uso em ambiente hospitalar (CHU de Toulouse). Domínio médico sem contribuição arquitetural transferível. |
| NOGUEIRA, I. D. et al. *Modeling data lake metadata with a data vault*. 2021. | Contribuição de modelagem de metadados com *Data Vault*. Tema coberto pelo artigo #12 (Giebler, com experiência industrial mais ampla). |
| STACH, C. et al. *Demand-Driven Data Provisioning in Data Lakes (BARENTS)*. iiWAS, 2021. | Sistema de provisionamento sob demanda para zonas de preparação de dados, com estudo de caso em análise de alimentos. Muito específico. |
| OUKHOUYA, L. et al. *DLMF: Healthcare Data Management Using Data Lake, Data Mesh, and Data Fabric*. 2024. | Arquitetura integrada para saúde. O domínio médico e a ênfase em *Data Mesh/Fabric* (não *Data Lake* puro) tornam a transferência parcial para C2 pouco direta. |
| AIT ERRAMI, S. et al. *Spatial big data architecture: From DW to LakeHouse*. 2023. | Foco em dados espaciais e GIS. Arquitetura de *Lakehouse* para dados geoespaciais; domínio de aplicação sem alinhamento direto ao PPM. |
| WIBOWO, M. et al. *Machine learning in data lake for combining data silos*. 2021. | Abordagem de ML para consolidar silos de dados em *Data Lake*. Contribuição técnica pontual, sem profundidade arquitetural para fundamentar a proposta. |
| SREEPATHY, H. V. et al. *Data Ingestions as a Service (DIaaS)*. 2023. | Interface unificada de ingestão de dados heterogêneos. Contribuição operacional de ingestão coberta de forma mais ampla pelos artigos de arquitetura selecionados. |
| BEGOLI, E. et al. *A Lakehouse Architecture for Heterogeneous Data for Biomedical Research*. 2021. | Arquitetura *Lakehouse* para pesquisa biomédica e biobanco. Domínio médico sem contribuição arquitetural direta para C2. |
| AZEROUAL, O. et al. *Combining Data Lake and Data Wrangling for Ensuring Data Quality in CRIS*. 2022. | Integração de *Data Lake* com *data wrangling* em sistemas CRIS (pesquisa bibliográfica). Domínio específico sem transferibilidade. |
| ALIMARDANOVA, R. et al. *Data Lakes vs. Data Warehouses in Library Analytics*. 2024. | Comparação DW/DL no domínio de bibliotecas. Sem contribuição arquitetural relevante para o presente projeto. |
| HERNÁNDEZ, J. L. et al. *Building a Data Lake for Smart Building Data*. 2023. | *Data Lake* para *smart buildings* com foco em qualidade e interoperabilidade. Domínio de automação predial sem transferência para C2. |
| LIU, P. et al. *ArchaeoDAL: A Data Lake for Archaeological Data Management*. 2022. | *Data Lake* para dados arqueológicos. Domínio sem relação com o presente projeto. |
| DARMONT, J. et al. *Data lakes for digital humanities*. 2021. | *Data Lake* para humanidades digitais. Domínio sem relevância para o presente projeto. |
| SAWADOGO, P. N. *Textual Data Analysis from Data Lakes*. 2020. | Análise de dados textuais em *Data Lakes*. Contribuição muito específica para um tipo de dado; não aborda arquitetura. |
| SAWADOGO, P. N. et al. *Metadata management for textual documents in data lakes*. 2021. | Extensão do MEDAL para documentos textuais. Muito específico; coberto pelo artigo #10 em nível conceitual. |
| SAWADOGO, P. et al. *Joint Management of Textual Docs and Tabular Data: AUDAL*. 2021. | Sistema AUDAL para gestão conjunta de dados textuais e tabulares. Muito específico para um tipo de *Data Lake*. |
| SAWADOGO, P.; DARMONT, J. *Benchmarking Data Lakes: DLBench*. 2021. | *Benchmark* para *Data Lakes* com dados estruturados e não estruturados. Contribuição de avaliação de desempenho, não arquitetural. |
| HAI, R. et al. *Relaxed functional dependency discovery in heterogeneous data lakes*. 2023. | Descoberta de dependências funcionais relaxadas. Contribuição de manutenção/descoberta de dados, não de arquitetura. |
| HAI, R. et al. *LLM-PQA: LLM-enhanced Prediction Query Answering*. CIKM, 2024. | Resposta a consultas de predição com LLMs integrados a *Data Lakes* e repositórios de modelos. Periférico ao tema arquitetural. |
| HAI, R.; QUIX, C.; ZHOU, C. *Query Rewriting for Heterogeneous Data Lakes*. 2023. | *Query rewriting* sobre *Data Lakes* heterogêneos. Contribuição de consulta, não de arquitetura de ingestão ou organização. |
| SALEM, R.; BOUSSAÏD, O.; DARMONT, J. *Active XML-based Web data integration*. 2013. | Integração de dados Web baseada em XML e regras ativas. Trabalho anterior ao paradigma de *Data Lake*, sem contribuição direta ao tema. |
| CHEN, J. *Leveraging Scalable Cloud Infrastructure for Autonomous Driving Data Lakes*. 2024. | *Data Lake* em nuvem para veículos autônomos. Domínio de mobilidade sem alinhamento ao contexto de C2. |
| LI, Z. et al. *LLM-PQA* (duplicate entry) | Já listado acima. |
| WREMBEL, R. *Still Open Problems in Data Warehouse and Data Lake Research*. 2023. | Artigo de posicionamento sobre problemas em aberto. Muito curto e genérico para compor o portfólio do Estágio 3. |
| WREMBEL, R. *Data Integration Revitalized: From DW Through DL to Data Mesh*. 2023. | Visão geral da evolução DW→DL→Data Mesh. Artigo de posicionamento sem profundidade técnica suficiente. |
| ZHAO, Y. et al. *A Zone-Based Data Lake Architecture for IoT, Small and Big Data*. 2022. | Arquitetura zonal para IoT. Contribuição coberta de forma mais completa e referenciada pelo artigo #7 (Zone Reference Model de Giebler). |
| MEGDICHE, I. et al. *Metadata Management on Data Processing in Data Lakes*. 2019. | Gestão de metadados no processamento de dados. Contribuição coberta de forma mais ampla pelos artigos #8, #9 e o survey #1. |

> **Nota**: Os artigos #16 e #17 da listagem da Fase 3 do relatório bibliométrico — "*Architecture of data lakes*" (Chihoub et al.), "*A survey on semantic data management...*" (Hoseini, Lipp, Quix) — não foram obtidos na Fase 4 (indisponíveis para acesso), conforme registrado na Seção 2.10.6, e portanto não integraram a presente leitura de seleção.
