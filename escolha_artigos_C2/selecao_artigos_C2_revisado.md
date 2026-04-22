# Seleção dos Artigos Seminais sobre Comando e Controle (C2)
## Fundamentos para a Pesquisa sobre Arquitetura de Dados no Suporte ao PPCOT
### Versão Revisada — Metodologia de Triagem Corrigida

---

## 1. Contextualização e Escopo

Este documento registra o processo de seleção bibliográfica conduzido para identificar os trabalhos mais relevantes no domínio de Comando e Controle (C2) que subsidiam a proposta de pesquisa *"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres (PPCOT)"*. A revisão partiu de uma base de dados consolidada composta por **586 trabalhos** oriundos de múltiplas fontes bibliográficas especializadas no domínio de Comando e Controle, reunidas em um único arquivo de metadados para fins desta pesquisa. As fontes que compõem essa base são: (a) os anais do *International Command and Control Research and Technology Symposium* (ICCRTS), abrangendo todas as edições de 2016 a 2026 — fonte predominante, com cobertura da principal conferência acadêmica mundial da área; (b) os periódicos do *NATO Command and Control Centre of Excellence* (C2COE), disponibilizados em <https://c2coe.org/annals/>; e (c) trabalhos selecionados do periódico *Military Operations Research* (MOR).

O recorte temático é delimitado pelo problema central da pesquisa: **a ausência de uma infraestrutura de dados unificada que conecte a coleta de informações operacionais (PITCIC) aos sistemas de C2**, inibindo a aplicação de algoritmos de Inteligência Artificial no apoio ao ciclo de decisão do Exame de Situação (PPM). A seleção priorizou trabalhos que abordassem a interseção entre:

- Arquiteturas de dados para operações militares;
- Integração de dados heterogêneos no contexto operacional;
- Governança e qualidade de dados para IA militar;
- Inteligência Artificial aplicada a sistemas de C2;
- Apoio à decisão e ao planejamento militar por IA.

**Limitação reconhecida e justificativa da seleção:** a literatura de C2 não produz, até o momento, trabalhos que proponham diretamente uma arquitetura de Data Lake ou Data Lakehouse para ambientes operacionais militares. A fundamentação arquitetural do instrumento tecnológico proposto — ingestão em camadas (*Bronze/Silver/Gold* ou equivalente), catálogo de metadados, esquema sob demanda (*schema-on-read*), padrões de governança e qualidade de dados — é construída a partir da literatura própria de engenharia de dados, coberta em seção distinta desta pesquisa.

**Diferença em relação às versões anteriores:** as versões 1, 2 e 3 deste documento utilizaram um protocolo de triagem cujos pesos terminológicos privilegiavam os termos de ML/IA e C2/decisão, sub-representando os critérios de **arquitetura de dados** e **integração heterogênea** — justamente os eixos mais relevantes para a dissertação. Essa limitação foi identificada após análise sistemática dos 586 artigos do corpus, que revelou trabalhos relevantes para o tema de arquitetura de dados em C2 fora dos 30 candidatos originalmente selecionados. Esta versão revisada corrige esse viés por meio de um protocolo de triagem rebalanceado, descrito na Seção 2.2, e apresenta os **33 candidatos resultantes** para leitura diagonal e seleção final.

---

## 2. Protocolo de Seleção (adaptado do PRISMA)

O processo seguiu as quatro etapas da metodologia **PRISMA** (*Preferred Reporting Items for Systematic Reviews and Meta-Analyses*), adaptadas ao contexto de uma dissertação em Design Science Research (DSR).

---

### 2.1 Etapa 1 — Identificação

A base consolidada foi integralmente considerada como corpus de partida. Os campos analisados em cada registro foram: `TITLE`, `ABSTRACT`, `YEAR`, `AUTHORS_APA` e `CONFERENCE/JOURNAL`. A janela temporal abrangeu publicações de **2016 a 2025**.

**Total de registros identificados: 586**

---

### 2.2 Etapa 2 — Triagem por Análise de Título e Abstract (*Screening*)

#### 2.2.1 Motivação para a revisão do protocolo

O protocolo de triagem das versões anteriores atribuía pesos iguais ou superiores às categorias de *C2/decisão* e *ML/IA* em relação às categorias de arquitetura e integração de dados. Como o corpus inteiro é composto por artigos de C2, os termos dessa categoria ocorrem em praticamente todos os documentos, inflacionando o score de artigos genéricos e deslocando para posições inferiores artigos com contribuição arquitetural direta. A revisão foi motivada pela seguinte constatação: ao inspecionar manualmente os artigos de baixo score na triagem original, identificaram-se trabalhos que descrevem explicitamente componentes análogos ao Data Lake proposto (ex.: Peerdeman et al., 2024, que descreve o *NCDF Data Lake* da NATO; Lee et al., 2017, que propõe arquitetura *datastore-agnóstica*), mas que não utilizavam os termos ML/IA com densidade suficiente para alcançar o limiar de seleção.

#### 2.2.2 Corte mínimo — Categoria C

Antes da pontuação, aplicou-se um **filtro de relevância para C2** (Categoria C): somente artigos com ao menos uma ocorrência dos termos da Categoria C em título ou abstract foram admitidos no pool de candidatos. Esse filtro opera como portão de entrada, não como critério de pontuação — sua função é excluir documentos institucionais, relatórios administrativos e textos sem conexão com operações militares que compõem a base consolidada.

**Tabela 1a — Categoria C: corte mínimo (não pontua)**

| Termos | Função |
| --- | --- |
| *command and control*, *C2*, *decision support*, *situational awareness*, *operational planning*, *battle management*, *military*, *operational* | Portão de entrada — artigo deve conter ao menos um desses termos em título ou abstract |

**Resultado do corte C: 491 artigos admitidos ao pool de candidatos**

#### 2.2.3 Pontuação de pertinência — Categorias A, B, D e E

Cada artigo admitido recebeu uma **pontuação de pertinência** calculada automaticamente a partir da frequência ponderada de termos-chave em quatro categorias temáticas. A hierarquia de pesos reflete a importância relativa de cada dimensão para o problema de pesquisa: arquitetura de dados e integração heterogênea recebem pesos maiores que ML/IA, pois o problema central da dissertação é de infraestrutura de dados, não de algoritmos.

**Tabela 1b — Categorias de pontuação e pesos**

| Cat. | Dimensão | Sub-categoria | Termos | Peso Título | Peso Abstract |
| --- | --- | --- | --- | --- | --- |
| **A** | Arquitetura de dados | A_HIGH — termos específicos | *data lake*, *lakehouse*, *data warehouse*, *data architecture*, *data infrastructure*, *data platform*, *data repository*, *data store*, *big data*, *data pipeline*, *data management*, *information architecture*, *data science*, *ETL* | **6** | **3** |
| **A** | Arquitetura de dados | A_LOW — termos genéricos | *architecture*, *architectural*, *information system*, *knowledge base*, *service-oriented* | 3 | 1 |
| **B** | Integração heterogênea | B_HIGH — termos específicos | *heterogeneous data*, *data fusion*, *data integration*, *information fusion*, *information integration*, *multi-source*, *multi-int*, *sensor fusion*, *data aggregation* | **5** | **3** |
| **B** | Integração heterogênea | B_LOW — termos genéricos | *heterogeneous*, *federated*, *distributed sources* | 3 | 1 |
| **D** | ML / IA em C2 | — | *machine learning*, *artificial intelligence*, *deep learning*, *neural network*, *autonomous*, *reinforcement learning*, *natural language processing*, *large language model*, *LLM*, *AI* | 3 | 2 |
| **E** | Governança e qualidade | — | *data quality*, *data provenance*, *metadata*, *data governance*, *FAIR*, *VAULTIS*, *trustworthy*, *data reliability*, *ontology*, *data catalog* | **5** | **2** |

> **Nota — divisão A_HIGH / A_LOW e B_HIGH / B_LOW:** termos como *architecture* e *heterogeneous* sozinhos capturam artigos de arquitetura de comunicações e de sistemas que não tratam de dados. A divisão em sub-categorias HIGH (termos compostos e específicos, peso maior) e LOW (termos isolados e genéricos, peso menor) permite capturar artigos relevantes que usam vocabulário mais genérico sem equipará-los a artigos que empregam terminologia específica de dados.

> **Nota — cap da Categoria D (máximo 6 pontos por artigo):** sem limitação, artigos sobre AI genérica (realidade aumentada, detecção de influência em redes sociais, controle de UxVs) acumulam scores mais altos do que artigos sobre arquitetura de dados para C2, distorcendo o ranking. O valor de 6 equivale a dois termos D no título — presença substantiva de AI sem inflação por repetição.

#### 2.2.4 Score composto e bônus arquitetural

O score final de cada artigo foi calculado como:

> **Score\_comp = A + B + D(com cap) + E + bônus(3) se (A + B) ≥ 3**

O **bônus arquitetural de 3 pontos** é concedido quando a soma das categorias de dados (A + B) atinge ou supera 3 pontos. A lógica é a seguinte: artigos que combinam relevância de dados com qualquer outro critério são precisamente os mais valiosos para a dissertação; o bônus eleva esses artigos acima dos que pontuam exclusivamente em D (AI genérica), sem introduzir novos termos de busca.

O **threshold de 3** foi escolhido porque corresponde ao peso mínimo que indica presença real do conceito: um único termo A_HIGH no abstract (peso 3) ou um único termo A_LOW no título (peso 3) já qualificam o artigo para o bônus.

#### 2.2.5 Regra de corte automático

Foram admitidos automaticamente na etapa de elegibilidade os artigos que satisfizeram simultaneamente:

> **Score\_comp ≥ 7**  
> **E**  
> **(A + B ≥ 3  OU  E ≥ 5)**

**Justificativa da Condição 1 (Score\_comp ≥ 7):** abaixo de 7, os artigos atingem o score exclusivamente via D = 6 (cap), sem qualquer contribuição de A, B ou E. Esses artigos tratam de AI/ML em C2 de forma genérica, sem abordar infraestrutura ou qualidade de dados — fora do escopo da dissertação.

**Justificativa da Condição 2 [(A + B ≥ 3) OU (E ≥ 5)]:** o score\_comp ≥ 7 não é suficiente por si só. Artigos com score\_comp = 7 via D = 6 + 1 ponto de A_LOW acidentalmente (ex.: menção isolada de *architecture* ou *information system*) ainda são artigos de AI genérica. A condição adicional garante profundidade mínima verificável: A + B ≥ 3 indica que pelo menos um termo de arquitetura de dados ou integração está presente no título ou abstract com peso suficiente; E ≥ 5 equivale a um termo de governança no título do artigo. A conjunção com a Condição 1 (E não simples OR entre as duas condições) evita que o limiar seja atingido por acúmulo de termos genéricos sem relevância real.

**Resultado do corte automático: 29 artigos**

#### 2.2.6 Adições por elegibilidade (julgamento do pesquisador)

O PRISMA prevê que a triagem automática seja complementada pelo julgamento do pesquisador na etapa de elegibilidade. Quatro artigos foram adicionados manualmente por relevância temática justificada, mesmo não satisfazendo o corte automático. Todos têm score\_comp = 6 (D = 6 cap, A = B = E = 0): não abordam infraestrutura de dados diretamente, mas definem o que essa infraestrutura deve habilitar.

| ID Físico | Autores | Ano | Justificativa |
| --- | --- | --- | --- |
| `23rd_ICCRTS_paper_30` | Schubert et al. | 2018 | Único artigo com dados empíricos de workshop com militares sobre o que a IA deve fazer com os dados (funções S2/S3, COP, análise de ameaças, avaliação de COAs) — define os **requisitos funcionais** que o Data Lake deve atender |
| `28th_ICCRTS_paper_12` | Abdelazez, Garber, Ghanmi | 2023 | Único artigo do corpus que cita o **Ministério da Defesa do Brasil** como planejando incorporar IA ao wargaming de COAs; discute o Jogo da Guerra (Step 4 do PPM) — ancora o projeto no contexto nacional |
| `29th_ICCRTS_paper_43` | Firth, Poole, Turner | 2024 | Do projeto MSC2/Dstl (UK): argumenta empiricamente que a IA no planejamento operacional requer *data analytics* como condição necessária — **validação empírica do problema de pesquisa** desta dissertação |
| `29th_ICCRTS_paper_50` | Turner, Leggatt et al. | 2024 | Mesmo projeto MSC2: documenta que planejadores militares reais identificaram a **indisponibilidade de dados** como principal barreira à IA no planejamento operacional — evidência empírica direta do problema que o Data Lake resolve |

**Total de candidatos para leitura diagonal: 33**

#### 2.2.7 Identificador físico dos artigos

Para facilitar a localização dos arquivos originais, cada artigo recebeu um **identificador físico** construído a partir dos campos `CONFERENCE/JOURNAL` e `YEAR`, com numeração sequencial dentro de cada conferência. Exemplos: `29th_ICCRTS_paper_21` (9º artigo da 29ª edição do ICCRTS), `C2COE_2017_02` (2º artigo C2COE de 2017).

#### 2.2.8 Corpus de triagem: os 33 candidatos

**Tabela 2 — Os 33 candidatos para leitura diagonal**

*Legenda — Seleção:* **Auto** = corte automático (score\_comp ≥ 7 e A+B ≥ 3 ou E ≥ 5); **Manual** = adição por julgamento do pesquisador. *Cores no xlsx de auditoria:* verde = score\_comp ≥ 12; amarelo = ≥ 8; vermelho claro = ≥ 7; azul = adição manual.

| Rank | Sel. | ID Físico | Ano | Autores (APA resumido) | Título | Comp. | A | B | D | E |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Auto | `28th_ICCRTS_paper_60` | 2023 | Bjurström, E. et al. | Data quality and analysts' role in AI enhanced C2 | 17 | 3 | 0 | 6 | 5 |
| 2 | Auto | `24th_ICCRTS_paper_11` | 2019 | Ball, S. V. et al. | A Framework for Implementing a Data Science Capability in a Military Intelligence System | 15 | 12 | 0 | 0 | 0 |
| 3 | Auto | `29th_ICCRTS_paper_38` | 2024 | Mitchell, S. W.; Schuck, T. | An Open Architecture for Data Fusion | 15 | 4 | 8 | 0 | 0 |
| 4 | Auto | `28th_ICCRTS_paper_26` | 2023 | Langleite, R. et al. | Autonomous information processing at the tactical level | 14 | 5 | 0 | 6 | 0 |
| 5 | Auto | `25th_ICCRTS_paper_24` | 2020 | Bergeron-Guyard, A. | Enabling Data Driven Multi-Int Analysis: Implications and Exploitation | 14 | 3 | 8 | 0 | 0 |
| 6 | Auto | `22th_ICCRTS_paper_113` | 2017 | Lee, D. et al. | Big Data Decision Support in Command and Control Systems | 12 | 9 | 0 | 0 | 0 |
| 7 | Auto | `25th_ICCRTS_paper_25` | 2020 | Verhoosel, J. et al. | Data-driven, Service-oriented, Knowledge-based Command and Control | 12 | 6 | 1 | 0 | 2 |
| 8 | Auto | `30th_ICCRTS_paper_12` | 2025 | Opland, A. F. et al. | Towards Whole-stack Optimization: Leveraging Edge Computing for Next-Generation Tactical Systems | 12 | 3 | 0 | 6 | 0 |
| 9 | Auto | `22th_ICCRTS_paper_72` | 2017 | Zhou, W. et al. | A Semantic-Based Information Integration Framework of Agile Command and Control | 12 | 1 | 8 | 0 | 0 |
| 10 | Auto | `27th_ICCRTS_paper_25` | 2022 | Fang, S. et al. | A Human Factors Perspective on Information Fusion, Data Analytics and Decision Support for C2 Modernization Concepts | 12 | 0 | 5 | 4 | 0 |
| 11 | Auto | `25th_ICCRTS_paper_120` | 2020 | Putnam, C. et al. | Enabling and Managing Data Provenance in a Command and Control Environment | 9 | 0 | 0 | 2 | 7 |
| 12 | Auto | `29th_ICCRTS_paper_21` | 2024 | Peerdeman, M. et al. | Architectural concepts to support future C2 systems that enable Multi-Domain Operations | 8 | 5 | 0 | 0 | 0 |
| 13 | Auto | `24th_ICCRTS_paper_47` | 2019 | Bergh, A. | Modularising software for influence operation detection in social media | 8 | 1 | 4 | 0 | 0 |
| 14 | Auto | `27th_ICCRTS_paper_14` | 2022 | Manso, M. et al. | Connecting the Battlespace: C2 and IoT Technical Interoperability in Tactical Federated Environments | 8 | 0 | 5 | 0 | 0 |
| 15 | Auto | `28th_ICCRTS_paper_65` | 2023 | Manso, M. et al. | Experimentation on C2 and IoT Technical Interoperability in a Tactical Federated Environment | 8 | 0 | 5 | 0 | 0 |
| 16 | Auto | `26th_ICCRTS_paper_53` | 2021 | Abdelazez, M.; Ghanmi, A. | Improving C2 and Decision Making Using the Joint Operations Fusion Lab | 8 | 0 | 3 | 2 | 0 |
| 17 | Auto | `29th_ICCRTS_paper_19` | 2024 | Léchevin, N.; Rabbath, C. A. | Vulnerability Analysis of a Subset of Decentralized Information Consolidation Mechanisms in C2 | 8 | 0 | 3 | 2 | 0 |
| 18 | Auto | `22th_ICCRTS_paper_37` | 2017 | Galvin, K.; Ruth, J. | Architecture Driven Scenarios in Support of C2-Simulation (C2SIM) | 7 | 4 | 0 | 0 | 0 |
| 19 | Auto | `23rd_ICCRTS_paper_7` | 2018 | Pieneman, R. et al. | The networked command environment: architecture and functional design | 7 | 4 | 0 | 0 | 0 |
| 20 | Auto | `24th_ICCRTS_paper_48` | 2019 | Ferreira, A.; Sá, M. P.; Botelho, T. A. T. | Command and Control Interoperability Middleware Architecture | 7 | 4 | 0 | 0 | 0 |
| 21 | Auto | `26th_ICCRTS_paper_18` | 2021 | Oliveira, A. P. de A.; Figueira, N. M. | A Proposed Hardware-Software Architecture for C5ISR System in the Amazon Operations | 7 | 4 | 0 | 0 | 0 |
| 22 | Auto | `26th_ICCRTS_paper_32` | 2021 | Botelho, T. de A. T. et al. | A Distributed Architecture for Tactical Data Link Interoperability | 7 | 4 | 0 | 0 | 0 |
| 23 | Auto | `29th_ICCRTS_paper_60` | 2024 | Oshiro, D. et al. | Mobile Ad Hoc Networks in a Zero Trust Architecture for the Tactical Edge | 7 | 4 | 0 | 0 | 0 |
| 24 | Auto | `Quick_Reference_List_2020_05` | 2020 | Gubbels, F.; Granillo, A. | Federated Mission Networking (FMN) | 7 | 0 | 4 | 0 | 0 |
| 25 | Auto | `C2COE_2017_02` | 2017 | Robinson, C. W. | Federated Mission Networking (FMN) and Mission Partner Environment (MPE) Civilian-Military Information Sharing Project (FMCM) | 7 | 0 | 4 | 0 | 0 |
| 26 | Auto | `25th_ICCRTS_paper_45` | 2020 | Pullen, J. M. et al. | Simulation in NATO Federated Mission Networking | 7 | 0 | 4 | 0 | 0 |
| 27 | Auto | `25th_ICCRTS_paper_59` | 2020 | Johnsen, F. T. et al. | Evaluation of Message Broker approaches for Information Exchange in Disadvantaged Tactical Networks in a Federated Environment | 7 | 0 | 4 | 0 | 0 |
| 28 | Auto | `29th_ICCRTS_paper_27` | 2024 | Johansson, B. et al. | Federated Mission Networking and Civil-Military Interoperability — striving for the correct level of design | 7 | 0 | 4 | 0 | 0 |
| 29 | Auto | `21th_ICCRTS_paper_32` | 2016 | Deitz, P. H. et al. | The Missions & Means Framework (MMF) Ontology: Matching Military Assets to Mission Objectives | 7 | 0 | 0 | 0 | 7 |
| 30 | **Manual** | `23rd_ICCRTS_paper_30` | 2018 | Schubert, J. et al. | Artificial Intelligence for Decision Support in Command and Control Systems | 6 | 0 | 0 | 6 | 0 |
| 31 | **Manual** | `28th_ICCRTS_paper_12` | 2023 | Abdelazez, M.; Garber, R.; Ghanmi, A. | Decision Support for Commanders: An AI Approach to Wargaming | 6 | 0 | 0 | 6 | 0 |
| 32 | **Manual** | `29th_ICCRTS_paper_43` | 2024 | Firth, A.; Poole, J.; Turner, P. | Opportunity Knocks: A Systems-Based Operational Level Planning Process to Fully Embrace the Promise of Artificial Intelligence | 6 | 0 | 0 | 6 | 0 |
| 33 | **Manual** | `29th_ICCRTS_paper_50` | 2024 | Turner, P.; Leggatt, A. et al. | A challenging case for Artificial Intelligence: evaluation of the benefits of AI-enabled socio-technical concept solutions for Operational-level planning | 6 | 0 | 0 | 6 | 0 |

> **Nota metodológica:** o score\_comp mede a densidade de termos-chave em título e abstract e cumpre exclusivamente a função de funil de triagem. Ele não constitui ranking de relevância final. Na prática, artigos com score baixo podem revelar-se altamente relevantes após leitura integral — esse fenômeno é esperado e documentado nas versões anteriores deste relatório (ex.: Peerdeman et al., 2024, score\_comp = 8, mas único artigo do corpus a descrever um Data Lake operacional em contexto militar). O ordenamento final é produto de julgamento qualitativo informado, descrito na Seção 2.4.

> **Arquivo de auditoria:** o arquivo `scoring_auditoria.xlsx` registra, para cada um dos 491 artigos que passaram pelo corte C, os pontos obtidos em cada categoria e os termos que geraram cada ponto. O script `prisma_scoring.py` reproduz integralmente os resultados desta seção a partir do corpus original.

---

### 2.3 Etapa 3 — Elegibilidade: Leitura Diagonal dos Candidatos

A leitura diagonal foi conduzida sobre os 33 candidatos listados na Tabela 2, com base nos campos `TITLE`, `ABSTRACT`, `INTRODUCTION` e `CONCLUSION` registrados no arquivo `resumos_CD_vs2.md`. O julgamento de elegibilidade aplicou as cinco dimensões temáticas definidas abaixo.

As **dimensões temáticas** que orientaram a leitura diagonal são:

| Dimensão | Maior peso | Menor peso |
| --- | --- | --- |
| **Arquitetura de dados** | Propõe, descreve ou menciona explicitamente componentes de arquitetura de dados para C2 (Data Lake, *schema-on-read*, catálogo, governança, ingestão heterogênea) | Não aborda infraestrutura de dados |
| **Integração de fontes** | Discute integração de bases de dados heterogêneas e distribuídas em contexto militar | Foco em hardware, comunicações ou plataformas autônomas sem camada de dados |
| **Caso de uso PPCOT** | Aborda IA para planejamento operacional terrestre, COAs, Jogo da Guerra, Design Operacional, COP | Domínio naval, aéreo, *cyber* ou tático sem aplicabilidade ao PPCOT |
| **Governança e confiança** | Aborda qualidade de dados, metadados, proveniência, princípios de governança para IA militar | Foco exclusivo em ética de IA sem dimensão de dados |
| **Contexto brasileiro** | Menciona Exército Brasileiro, Ministério da Defesa do Brasil ou processo de planejamento conjunto | Sem conexão com o contexto nacional |

#### 2.3.1 Exclusões na leitura diagonal

Durante a leitura diagonal, dois trabalhos foram excluídos por não se enquadrarem como artigos científicos: tratam-se de textos de revista/noticiário sem contribuição acadêmica verificável, sem metodologia, sem dados empíricos e sem revisão por pares identificável.

| ID Físico | Autores | Ano | Título | Motivo da exclusão |
| --- | --- | --- | --- | --- |
| `Quick_Reference_List_2020_05` | Gubbels, F.; Granillo, A. | 2020 | Federated Mission Networking (FMN) | Texto informativo/institucional, não artigo científico |
| `C2COE_2017_02` | Robinson, C. W. | 2017 | Federated Mission Networking (FMN) and Mission Partner Environment (MPE) Civilian-Military Information Sharing Project (FMCM) | Texto informativo/institucional, não artigo científico |

**Total de artigos após exclusões: 31**

---

### 2.4 Etapa 4 — Seleção Final por Compatibilidade

Após leitura diagonal dos 31 artigos elegíveis, sete trabalhos foram selecionados com base em **julgamento qualitativo informado** pela proximidade com o problema central da dissertação: a ausência de infraestrutura de dados unificada (PITCIC → Data Lake → C2) que iniba a aplicação de IA no ciclo de decisão do PPCOT.

A pontuação automática (score\_comp) foi desconsiderada nesta etapa — ela cumpriu sua função de funil na triagem; a seleção final reflete relevância substantiva para o problema de pesquisa. O caso mais ilustrativo é Peerdeman et al. (2024), que obteve score\_comp = 8 na triagem mas é o único artigo do corpus a descrever um Data Lake operacional em contexto militar — relevância máxima independentemente da pontuação.

**Tabela 3 — Os 8 artigos selecionados**

| # | ID Físico | Autores | Ano | Título |
| --- | --- | --- | --- | --- |
| 1 | `29th_ICCRTS_paper_21` | Peerdeman et al. | 2024 | Architectural concepts to support future C2 systems that enable Multi-Domain Operations |
| 2 | `28th_ICCRTS_paper_60` | Bjurström et al. | 2023 | Data quality and analysts' role in AI enhanced C2 |
| 3 | `28th_ICCRTS_paper_26` | Langleite et al. | 2023 | Autonomous information processing at the tactical level |
| 4 | `25th_ICCRTS_paper_25` | Verhoosel et al. | 2020 | Data-driven, Service-oriented, Knowledge-based Command and Control |
| 5 | `25th_ICCRTS_paper_120` | Putnam et al. | 2020 | Enabling and Managing Data Provenance in a Command and Control Environment |
| 6 | `23rd_ICCRTS_paper_30` | Schubert et al. | 2018 | Artificial Intelligence for Decision Support in Command and Control Systems |
| 7 | `22th_ICCRTS_paper_113` | Lee et al. | 2017 | Big Data Decision Support in Command and Control Systems |
| 8 | `22th_ICCRTS_paper_72` | Zhou et al. | 2017 | A Semantic-Based Information Integration Framework of Agile Command and Control |

#### 2.4.1 Justificativas de seleção

**Peerdeman et al. (2024)** — `29th_ICCRTS_paper_21`

Único artigo do corpus que descreve um Data Lake operacional em contexto militar: o *NATO Core Data Framework* (NCDF) Data Lake, com princípios *schema-on-read*, FAIR e VAULTIS aplicados à ingestão heterogênea de dados de C2 em operações multi-domínio. Trata-se da âncora arquitetural da dissertação — sem este trabalho, a proposta de instrumento tecnológico não encontra precedente na literatura especializada de C2. O score\_comp baixo (8) resulta do vocabulário predominantemente arquitetural do artigo, que não acumula termos de ML/IA; a relevância real supera qualquer outro candidato do corpus.

**Bjurström et al. (2023)** — `28th_ICCRTS_paper_60`

Aborda explicitamente a qualidade e a origem dos dados subjacentes às predições de IA em C2: incerteza, validação, distinção entre dados de exercício, simulação e tempo real, e transparência algorítmica. Discute, ainda, a reconfiguração do papel dos analistas num ambiente de C2 habilitado por IA. Ancora a necessidade da camada de governança do instrumento proposto — especificamente o controle de qualidade e rastreabilidade que a camada Silver/Gold do Data Lake deve garantir antes de alimentar algoritmos de apoio à decisão.

**Langleite et al. (2023)** — `28th_ICCRTS_paper_26`

Propõe e implementa a arquitetura Lambda (Apache Kafka para ingestão, Apache Spark para processamento em lote e em tempo real, GraphDB/RDF para armazenamento semântico) em nós táticos de borda para processamento autônomo de big data. É o trabalho do corpus que mais se aproxima de uma implementação concreta das camadas de processamento do instrumento proposto — a divisão em *speed layer* e *batch layer* é diretamente análoga ao fluxo Bronze→Silver→Gold de um Data Lakehouse tático.

**Verhoosel et al. (2020)** — `25th_ICCRTS_paper_25`

Propõe uma arquitetura orientada a serviços e baseada em conhecimento para C2 em coalizões JIMP com fontes de dados heterogêneas e distribuídas. O artigo introduz explicitamente uma *data-lake layer* como componente da arquitetura — responsável pela coleta de dados brutos para viabilizar análise de big data — e define mecanismos de descoberta e integração automática de novos *knowledge bases* por meio de *Smart Connectors* e um *Semantic Service Directory*. É o único trabalho do corpus que nomeia diretamente o conceito de Data Lake em C2 e descreve a lógica de integração entre fontes díspares que o instrumento proposto deve realizar.

**Putnam et al. (2020)** — `25th_ICCRTS_paper_120`

Único artigo do corpus dedicado inteiramente à proveniência de dados em C2: define o padrão PROV para rastreabilidade, discute blockchain para ledger imutável de custódia e recomenda instrumentação de coleta de metadados em sistemas militares. A pergunta que organiza o artigo — *de onde veio esta informação, por quem foi processada e quando?* — é exatamente o que o catálogo de metadados do Data Lake deve responder para viabilizar confiança na IA de apoio à decisão.

**Schubert et al. (2018)** — `23rd_ICCRTS_paper_30`

Fundamentado em dados empíricos de workshop conduzido com militares na Escola de Comando e Controle das Forças Armadas Suecas, identifica onde a IA produz impacto real no C2: geração de COP, análise de ameaças, avaliação de Linhas de Ação (COAs), apoio às funções S2 e S3. Define os *requisitos funcionais* que o Data Lake deve atender — ou seja, o que a infraestrutura de dados precisa habilitar para que a IA seja útil ao processo de planejamento. Complementa os artigos de arquitetura com a perspectiva do usuário final.

**Lee et al. (2017)** — `22th_ICCRTS_paper_113`

Propõe uma arquitetura *datastore-agnóstica* baseada em tecnologias Hadoop para ingestão e análise de dados estruturados, não-estruturados e díspares em sistemas de C2, com aplicação em apoio à manutenção baseada em condição (CBM) do V-22 Osprey. É o precursor direto do conceito de Data Lake em C2 no corpus: a separação entre camada de armazenamento e camada de análise, a agnósticidade de formato e a proposição de que *a extensão desta arquitetura pode fornecer ao tomador de decisão de C2 informações de fontes estruturadas, não-estruturadas e díspares* antecipa o problema de pesquisa desta dissertação com quase uma década de antecedência.

**Zhou et al. (2017)** — `22th_ICCRTS_paper_72`

Propõe um framework de integração semântica de informações para C2 ágil, construído sobre conversão ETL de banco relacional para banco de grafos e um motor de análise semântica para recuperação de conhecimento. A contribuição central — transformar dados de sistemas heterogêneos em representações semânticas consultáveis por IA — é análoga à camada de transformação e catalogação do Data Lake proposto. A escolha de ETL como mecanismo de integração e a preocupação com a semântica dos dados de comando são pontos de contato diretos com o instrumento da dissertação.

---

## Referências

> ⚠️ **Seção a ser preenchida após a seleção final (Etapa 4).**

---

*Documento gerado em: abril de 2026*
*Script de triagem: `prisma_scoring.py`*
*Planilha de auditoria: `scoring_auditoria.xlsx`*
