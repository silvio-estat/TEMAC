# Seleção dos Artigos Seminais sobre Comando e Controle (C2)
## Fundamentos para a Pesquisa sobre Arquitetura de Dados no Suporte ao PPCOT
### Versão 2 — Ordenamento Completo por Compatibilidade com o Projeto

---

## 1. Contextualização e Escopo

Este documento registra o processo de seleção bibliográfica conduzido para identificar os trabalhos mais relevantes no domínio de Comando e Controle (C2) que subsidiam a proposta de pesquisa *"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres (PPCOT)"*. A revisão partiu de uma base de dados consolidada composta por **586 trabalhos** oriundos de múltiplas fontes bibliográficas especializadas no domínio de Comando e Controle, reunidas em um único arquivo de metadados para fins desta pesquisa. As fontes que compõem essa base são: (a) os anais do *International Command and Control Research and Technology Symposium* (ICCRTS), abrangendo todas as edições de 2016 a 2026 — fonte predominante, com cobertura da principal conferência acadêmica mundial da área; (b) os periódicos do *NATO Command and Control Centre of Excellence* (C2COE), disponibilizados em <https://c2coe.org/annals/>; e (c) trabalhos selecionados do periódico *Military Operations Research* (MOR). Essa consolidação permitiu uma cobertura abrangente da literatura recente em C2, reunindo produção acadêmica de origens institucionais distintas — universidades, centros de pesquisa de defesa e organismos multilaterais.

O recorte temático é delimitado pelo problema central da pesquisa: **a ausência de uma infraestrutura de dados unificada que conecte a coleta de informações operacionais (PITCIC) aos sistemas de C2**, inibindo a aplicação de algoritmos de Inteligência Artificial no apoio ao ciclo de decisão do Exame de Situação (PPM). A seleção priorizou trabalhos que abordassem a interseção entre:

- Inteligência Artificial aplicada a sistemas de C2;
- Arquiteturas de dados para operações militares;
- Integração de dados heterogêneos no contexto operacional;
- Apoio à decisão e ao planejamento militar por IA;
- Resiliência e adaptabilidade de sistemas de C2 habilitados por IA.

**Limitação reconhecida e justificativa da seleção:** a literatura de C2 não produz, até o momento, trabalhos que proponham diretamente uma arquitetura de Data Lake ou Data Lakehouse para ambientes operacionais militares. Nenhum dos trabalhos do corpus cumpre esse papel isoladamente. A fundamentação arquitetural do instrumento tecnológico proposto — ingestão em camadas (*Bronze/Silver/Gold* ou equivalente), catálogo de metadados, esquema sob demanda (*schema-on-read*), padrões de governança e qualidade de dados — é construída a partir da literatura própria de engenharia de dados, coberta em seção distinta desta pesquisa.

**Diferença em relação à Versão 1:** enquanto a versão anterior desta análise identificou os **cinco trabalhos mais importantes** para a dissertação (processo binário de inclusão/exclusão), esta Versão 2 apresenta o **ordenamento completo dos 29 trabalhos únicos** do corpus de triagem, do mais ao menos compatível com o objeto desta pesquisa. A motivação para essa revisão foi a disponibilização dos textos integrais de todos os 29 trabalhos (arquivo `resumos_CD.md`), que permitiu uma reavaliação mais precisa da contribuição efetiva de cada trabalho à proposta de Data Lake, inclusive de artigos que a leitura rápida de título e abstract não havia revelado como arquiteturalmente relevantes — notadamente Lee et al. (2017), que propõe uma arquitetura *datastore-agnóstica* com abstrações de armazenamento compatíveis com os princípios de um Data Lake.

---

## 2. Protocolo de Seleção (adaptado do PRISMA)

O processo seguiu as quatro etapas da metodologia **PRISMA** (*Preferred Reporting Items for Systematic Reviews and Meta-Analyses*), adaptadas ao contexto de uma dissertação em Design Science Research (DSR).

---

### 2.1 Etapa 1 — Identificação

A base consolidada foi integralmente considerada como corpus de partida. Os campos analisados em cada registro foram: `TITLE`, `ABSTRACT`, `YEAR`, `AUTHORS_APA` e `CONFERENCE/JOURNAL`. A janela temporal abrangeu publicações de **2016 a 2025**, cobrindo o período de consolidação das discussões sobre IA em C2 e operações multidomínio, sem excluir trabalhos anteriores de referência conceitual.

**Total de registros identificados: 586**

---

### 2.2 Etapa 2 — Triagem por Análise de Título e Abstract (*Screening*)

Cada trabalho recebeu uma **pontuação de pertinência** (*relevance score*) calculada automaticamente a partir da frequência e do peso semântico de termos-chave nos campos `TITLE` e `ABSTRACT`. O método de pontuação adotado foi o seguinte:

**Tabela 1 — Critérios de pontuação terminológica**

| Categoria | Termos | Peso no Título | Peso no Abstract |
| --- | --- | --- | --- |
| Alta relevância — C2 e decisão | *command and control*, *C2 system*, *battle management*, *situational awareness*, *decision support* | 5 | 3 |
| Média relevância — tecnologia habilitadora | *artificial intelligence*, *machine learning*, *data-driven*, *data architecture*, *knowledge base* | 4 | 2 |
| Suporte contextual — domínio militar | *military*, *operational*, *warfare*, *AI*, *automation* | 2 | 1 |

A pontuação máxima observada foi **25 pontos** (Schubert et al., 2018), e o limiar de corte para avaliação aprofundada foi fixado nos **30 trabalhos com maior pontuação**, cujos abstracts foram lidos integralmente nesta etapa.

**Resultado: 30 trabalhos pré-selecionados para avaliação aprofundada**

**Tabela 2 — Corpus de triagem: os 30 trabalhos pré-selecionados**

| Rank | Score | Ano | Autores (resumido) | Título | Evento |
| --- | --- | --- | --- | --- | --- |
| 1 | 25 | 2018 | Schubert et al. | Artificial Intelligence for Decision Support in Command and Control Systems | 23rd ICCRTS |
| 2 | 20 | 2019 | Ferreira, Sá, Botelho | Command and Control Interoperability Middleware Architecture | 24th ICCRTS |
| 3 | 20 | 2025 | Ghajar-Khosravi et al. | Explainable Artificial Intelligence for Multi-Domain Command and Control Concept Development | 30th ICCRTS |
| 4 | 18 | 2019 | Brook et al. | Implementing a Prototype Reach-back Capability for Decision Support in Multi-domain and Coalition Operations | 24th ICCRTS |
| 5 | 18 | 2022 | Bau et al. | Intelligent Situational Awareness - Experimental Framework for C2 Technology | 27th ICCRTS |
| 6 | 18 | 2022 | Fang et al. | A Human Factors Perspective on Information Fusion, Data Analytics and Decision Support for C2 Modernization | 27th ICCRTS |
| 7 | 18 | 2024 | Peerdeman et al. | Architectural concepts to support future C2 systems that enable Multi-Domain Operations | 29th ICCRTS |
| 8 | 17 | 2019 | Granåsen, Huskaj, Varga | Command and Control, Cyber Situational Awareness and Intelligence Perspectives on Cyber Defense | 24th ICCRTS |
| 9 | 17 | 2020 | Diaz | Mobility Nodes Beyond the Tactical Edge for Close Air Support Situational Awareness and Survivability | 25th ICCRTS |
| 10 | 17 | 2021 | Simpson et al. | Agile, Antifragile, Artificial-Intelligence-Enabled Command and Control | 26th ICCRTS |
| 11 | 17 | 2024 | Firth, Poole, Turner | Opportunity Knocks: A Systems-Based Operational Level Planning Process to Fully Embrace the Promise of AI | 29th ICCRTS |
| 12 | 17 | 2021 | Miller et al. | Merging Future Knowledgebase System of Systems with AI/ML Engines to Maximize Reliability for Decision Support | Military Operations Research |
| 13 | 16 | 2020 | Freeman | Modeling Value of Information in Command and Control Domain | 25th ICCRTS |
| 14 | 16 | 2020 | Verhoosel, Nouwt, Voogd | Data-driven, Service-oriented, Knowledge-based Command and Control | 25th ICCRTS |
| 15 | 16 | 2022 | Boury-Brisset | Robust and Trusted Artificial Intelligence through Refined Processes and Metrics for Military Applications | 27th ICCRTS |
| 16 | 16 | 2024 | Turner et al. | A challenging case for AI: evaluation of AI-enabled socio-technical concept solutions for Operational-level planning | 29th ICCRTS |
| 17 | 15 | 2016 | Couillard et al. | The Unit Commander on the Move: Information and Communication Requirements for Effective C2 in a Dispersed Battlespace | 21st ICCRTS |
| 18 | 15 | 2016 | Pradhan, Ota | Interface Design and Assessment of Situational Awareness and Workload for an Adaptable Multimodal Crew Assistance System | 21st ICCRTS |
| 19 | 15 | 2018 | Oosthuizen, Venter, Serfontein | Model Based Systems Engineering Process for Complex Command and Control Systems | 23rd ICCRTS |
| 20 | 15 | 2019 | Simpson, M. L. Jr. | Multi Domain Command and Control (MDC2) an Execution Concept | 24th ICCRTS |
| 21 | 15 | 2020 | Tillman, Conley | Operationalizing Joint All Domain C2 in the U.S. Military | 25th ICCRTS |
| 22 | 15 | 2022 | Abdelazez, Ghanmi | Security First Approach for Developing Machine Learning Applications in Multi-Domain Operations | 27th ICCRTS |
| 23 | 15 | 2023 | Abdelazez, Garber, Ghanmi | Decision Support for Commanders: An AI Approach to Wargaming | 28th ICCRTS |
| 24 | 15 | 2024 | Sur et al. | Data-Driven Distributed Common Operational Picture from Heterogenous Platforms using Multi-Agent Reinforcement Learning | 29th ICCRTS |
| 25 | 15 | 2025 | Moy, Salmond | LLMs for ICCRTS: Situational Awareness in the Research Domain | 30th ICCRTS |
| 26 | 15 | 2025 | Sur et al. | Data-Driven Distributed Common Operational Picture from Heterogenous Platforms using Multi-Agent Reinforcement Learning | 30th ICCRTS |
| 27 | 14 | 2017 | Patel, Wardman | Joint Mission Planning and Decision Support Through C2-Simulation Interoperability | 22nd ICCRTS |
| 28 | 14 | 2017 | Lee et al. | Big Data Decision Support in Command and Control Systems | 22nd ICCRTS |
| 29 | 14 | 2017 | Galdorisi et al. | Command and Control (C2) of Cross-Domain Unmanned Vehicles (UxVs): Progress of an Early Prototype | 22nd ICCRTS |
| 30 | 14 | 2017 | Raglin et al. | Human Variabilities in C2 Machine Learning | 22nd ICCRTS |

> **Nota:** O registro de Rank 26 (Sur et al., 30th ICCRTS) é idêntico ao de Rank 24 (Sur et al., 29th ICCRTS), constituindo **duplicata** e sendo descartado na etapa de elegibilidade.

> **Nota metodológica — limitação da pontuação de triagem:** A pontuação de pertinência mede a densidade de termos-chave nos campos `TITLE` e `ABSTRACT` e cumpre exclusivamente a função de funil de triagem: identificar os 30 candidatos a leitura completa. Ela **não constitui ranking de relevância final**. Na prática, trabalhos com pontuação baixa na Tabela 2 (como Lee et al., rank 28, score 14) revelaram-se altamente relevantes após a leitura integral, enquanto trabalhos de alta pontuação mostraram-se periféricos ao problema desta dissertação. Essa inversão é esperada e explicável: a pontuação captura *abrangência terminológica no título e resumo*, ao passo que o ordenamento final exige *profundidade de contribuição arquitetural* e alinhamento com o problema específico desta dissertação — critérios avaliáveis apenas pela leitura integral dos documentos.

---

### 2.3 Etapa 3 — Elegibilidade: Leitura dos Documentos Completos

Os 29 registros únicos foram obtidos em formato completo a partir dos arquivos disponíveis na pasta `pre_selecao_C2/`. Cada trabalho foi submetido a uma **leitura em diagonal** — introdução, conclusão e seções de maior relevância temática (metodologia e resultados quando pertinentes) — para avaliação expedita de sua contribuição efetiva aos eixos temáticos da dissertação. Na Versão 2, a leitura completa de todos os 29 artigos foi realizada com base no arquivo `resumos_CD.md`, que reúne os campos `TITLE`, `ABSTRACT`, `INTRODUCTION` e `CONCLUSION` de cada trabalho.

As **dimensões temáticas** que orientaram a leitura diagonal e o julgamento do pesquisador no ordenamento desta versão são:

| Dimensão | Maior peso no ordenamento | Menor peso no ordenamento |
| --- | --- | --- |
| **Arquitetura de dados** | Propõe, descreve ou menciona explicitamente componentes de arquitetura de dados para C2 (Data Lake, *schema-on-read*, catálogo, governança, ingestão heterogênea) | Não aborda infraestrutura de dados |
| **Integração de fontes** | Discute integração de bases de dados heterogêneas e distribuídas em contexto militar | Foco em hardware, comunicações ou plataformas autônomas |
| **Caso de uso PPCOT** | Aborda IA para planejamento operacional terrestre, COAs, Jogo da Guerra, Design Operacional, COP | Domínio naval, aéreo, cyber ou tático sem aplicabilidade ao PPCOT |
| **Governança e confiança** | Aborda qualidade de dados, metadados, princípios de governança de dados para IA militar | Foco exclusivo em ética de IA sem dimensão de dados |
| **Contexto brasileiro** | Menciona Exército Brasileiro, Ministério da Defesa do Brasil ou processo de planejamento conjunto | Sem conexão com o contexto nacional |

---

### 2.4 Etapa 4 — Ordenamento por Compatibilidade

Após leitura diagonal de todos os 29 documentos, o pesquisador estabeleceu um **ordenamento por compatibilidade** com o problema de pesquisa desta dissertação com base em seu **julgamento qualitativo informado** — não em pontuação automática. Conforme a metodologia PRISMA, a avaliação de elegibilidade recai sobre o pesquisador, que aplica os critérios definidos na etapa anterior mediante leitura dos textos completos (ou em diagonal, quando suficiente para o julgamento). O resultado é, portanto, um posicionamento relativo fundamentado nas dimensões temáticas da Tabela 2, não um escore calculado.

O ranking resultante foi dividido em **quatro quartis** para fins de apresentação: os limites entre quartis foram aplicados *post hoc* ao ordenamento já estabelecido, de modo que cada quartil agrupe aproximadamente um quarto dos trabalhos (1º quartil: posições 1–7; 2º quartil: posições 8–15; 3º quartil: posições 16–22; 4º quartil: posições 23–29).

**Tabela 3 — Ordenamento completo dos 29 trabalhos por compatibilidade com o projeto Data Lake/PPCOT**

| Pos. | Quartil | Autores | Ano | Título (resumido) | Eixo de compatibilidade |
| --- | --- | --- | --- | --- | --- |
| **1** | 1º Q | Peerdeman et al. | 2024 | Architectural Concepts for Future C2 Systems in MDO | Único artigo do corpus a citar explicitamente um **NCDF Data Lake** em operação militar; discute *scheme-on-read*, FAIR, VAULTIS, Smart Connector e catálogo de metadados — componentes diretos do Lakehouse proposto |
| **2** | 1º Q | Verhoosel, Nouwt, Voogd | 2020 | Data-driven, Service-oriented, Knowledge-based C2 | Compara explicitamente sua arquitetura a uma "*data-lake layer*"; propõe Semantic Service Directory e Smart Connector para integração de KB heterogêneas — análogos à camada de ingestão e catálogo do Data Lake proposto |
| **3** | 1º Q | Turner et al. | 2024 | AI for Operational-level Planning (MSC2) | Identifica **a indisponibilidade de dados** como principal barreira à IA no planejamento operacional — validação empírica do problema central desta dissertação; AI para Design Operacional (LLMs + RAG); modelo metodológico para avaliação DSR |
| **4** | 1º Q | Schubert et al. | 2018 | AI for Decision Support in C2 Systems | Dados empíricos com militares sobre o que a IA deve fazer com os dados (S2/S3, COP, análise de ameaças, avaliação de COAs) — define os **requisitos funcionais** que o Data Lake deve atender |
| **5** | 1º Q | Abdelazez, Garber, Ghanmi | 2023 | Decision Support for Commanders: AI Approach to Wargaming | IA para exploração de COAs e Jogo da Guerra (Step 4 do PPM); cita explicitamente que o **Ministério da Defesa do Brasil** planeja incorporar IA ao processo de wargaming — ancora o projeto no contexto nacional |
| **6** | 1º Q | Lee et al. | 2017 | Big Data Decision Support in C2 Systems | Propõe arquitetura *datastore-agnóstica* com abstração de armazenamento que desacopla usuários das tecnologias de storage — princípio diretamente análogo à camada de acesso do Data Lake; demonstra ingestão de dados estruturados, não-estruturados e heterogêneos em C2 |
| **7** | 1º Q | Miller et al. | 2021 | Merging FKSS with AI/ML for Decision Support | Propõe governança de dados em nível enterprise para o DoD; discute Knowledge Base integrada com AI/ML, migração de dados autoritativos para repositório centralizado — elementos do modelo de maturidade de dados que o Data Lake deve implementar |
| **8** | 2º Q | Firth, Poole, Turner | 2024 | Opportunity Knocks: Systems-Based Planning for AI (MSC2) | Argumenta que o processo atual de planejamento operacional "continuará sendo uma versão de um processo de planejamento tático, melhor servido por *data analytics*" — reconhece explicitamente dados como condição necessária para IA no nível operacional |
| **9** | 2º Q | Ferreira, Sá, Botelho | 2019 | C2 Interoperability Middleware Architecture (INTERC2) | Projeto de interoperabilidade C2 das **Forças Armadas Brasileiras** (SOA, JC3IEDM); documenta o estado atual da integração de dados no SISMC2 e SIPLOM — mapeia exatamente a lacuna de integração que o Data Lake proposto visa preencher |
| **10** | 2º Q | Brook et al. | 2019 | Prototype Reach-back for Decision Support (NATO ACT 2030) | Demonstra protótipo de reach-back via cloud para análise de COAs em exercício real; a solução popula simulação com *operational data feeds* em tempo real — evidência de viabilidade da integração de dados operacionais com sistemas de decisão |
| **11** | 2º Q | Freeman | 2020 | Modeling Value of Information in C2 Domain | Framework para priorização de dados em ambientes com recursos de rede limitados (CCMAB); relevante para o design da camada de ingestão do Data Lake — critérios de valor da informação que devem guiar a seleção e priorização dos dados do PITCIC |
| **12** | 2º Q | Boury-Brisset | 2022 | Robust and Trusted AI for Military Applications | Analisa dimensões de governança de dados para IA militar (robustez, explicabilidade, confiança, rastreabilidade) citando frameworks NATO, DoD e UE — referência para os critérios de qualidade dos dados na camada Silver do Lakehouse |
| **13** | 2º Q | Patel, Wardman | 2017 | C2SIM: Joint Mission Planning and Decision Support | Descreve integração de *operational C2 information feeds* em tempo real para inicialização de simulação FTRT — caso de uso de ingestão de dados de C2 em sistemas de apoio à decisão, análogo ao pipeline de dados do PITCIC para IA |
| **14** | 2º Q | Simpson, M. L. Jr. | 2019 | MDC2 an Execution Concept | Critica diretamente a ideia de que um "*data lake* compartilhado, por si só, melhora a qualidade da decisão", argumentando que "não torna os pescadores melhores"; o argumento reforça a necessidade de maturidade no uso dos dados — contraponto útil para a justificativa da arquitetura proposta |
| **15** | 2º Q | Abdelazez, Ghanmi | 2022 | Security First Approach for ML in MDO | Propõe MLSecOps como framework de segurança na ingestão e uso de dados para ML em MDO (envenenamento de dados, ataques adversariais) — referência para a camada de segurança e validação de dados do Lakehouse militar |
| **16** | 3º Q | Sur et al. | 2024 | Data-Driven Distributed COP (MARL) | Framework de aprendizado multiagente para formação de COP em tempo real a partir de plataformas heterogêneas — demonstra viabilidade técnica da fusão de dados heterogêneos em C2; foco em execução em tempo real, distinto do planejamento deliberado |
| **17** | 3º Q | Simpson, El Sawah, Oosthuizen, Abbass | 2021 | Agile, Antifragile, AI-Enabled C2 (A3IC2) | Framework sobre riscos de fragilidade na integração de IA em C2; o argumento sobre *antifragilidade* como princípio de design é transferível para a arquitetura do Data Lake (evitar over-otimização, manter capacidade de adaptação) |
| **18** | 3º Q | Tillman, Conley | 2020 | Operationalizing JADC2 in the U.S. Military | Analisa resistência institucional à mudança em C2 (Decision Authorities Matrix, battle rhythm); relevante para contextualizar os desafios de adoção do Data Lake no Exército Brasileiro |
| **19** | 3º Q | Bau et al. | 2022 | INSANE Framework for C2IS R&D | Framework experimental de microserviços para desenvolvimento de C2IS (Fraunhofer FKIE); cita serviços de *data management* e arquitetura modular — modelo de laboratório experimental útil para a fase de Avaliação do DSR |
| **20** | 3º Q | Fang et al. | 2022 | Human Factors for NORAD C2 Modernization | Revisão de literatura e entrevistas sobre gestão de informação e IA para NORAD; identifica desafios de *information management* (excesso de dados, *SA* degradada) — contextualiza a demanda por infraestrutura de dados em C2 moderno |
| **21** | 3º Q | Granåsen, Huskaj, Varga | 2019 | C2 and Cyber SA in CDX (Locked Shields) | Metodologia de coleta de dados em exercício de defesa cibernética (observação, questionários, logs); técnica de coleta de dados em ambientes de C2 sob pressão operacional — transferível para o design do pipeline de ingestão de dados do PITCIC |
| **22** | 3º Q | Moy, Salmond | 2025 | LLMs for ICCRTS Research Situational Awareness | Protótipo RAG (Retrieval-Augmented Generation) sobre corpus ICCRTS (vector embeddings, LLMs); tecnicamente demonstra como LLMs podem consultar repositórios de documentos — o padrão RAG é diretamente aplicável à camada Gold do Lakehouse proposto para consulta a documentos doutrinários |
| **23** | 4º Q | Ghajar-Khosravi et al. | 2025 | XAI for Multi-Domain C2 (NORAD) | XAI para operadores do NORAD (AP:TIMS, layered explanations, SA); foco em interface humano-IA para decisões de intercepção aérea — distante do problema de arquitetura de dados e do contexto terrestre do PPCOT |
| **24** | 4º Q | Oosthuizen, Venter, Serfontein | 2018 | MBSE for Complex C2 Systems (Special Operations) | MBSE (DODAF + SysML) para C2 de Forças de Operações Especiais; abordagem *data-centric* no sentido de modelos em banco de dados para gerenciamento de requisitos — não aborda arquitetura de dados operacionais ou IA para planejamento |
| **25** | 4º Q | Raglin et al. | 2017 | Human Variabilities in C2 Machine Learning | ML para reconhecimento de gestos táticos NATO em contexto IoBT; variabilidade humana como desafio para algoritmos — escopo restrito a pelotão/fração, sem relação com arquitetura de dados ou PPCOT |
| **26** | 4º Q | Couillard et al. | 2016 | Unit Commander on the Move Experiment | Requisitos de informação para comandantes móveis (exercício do Exército Canadense); focado em comunicações e consciência situacional no nível tático — sem relação com infraestrutura de dados ou planejamento operacional |
| **27** | 4º Q | Pradhan, Ota | 2016 | Interface Design for Crew Assistance System (NGVA) | Design de interface para tripulações de veículos blindados (NGVA standard, SAGAT, NASA TLX); escopo restrito ao nível de veículo — sem conexão com a problemática de dados para planejamento operacional |
| **28** | 4º Q | Galdorisi et al. | 2017 | C2 of Cross-Domain Unmanned Vehicles (UxVs) | C2 de UAV/UUV cross-domain em exercício naval (Unmanned Warrior 2016, domínio marítimo); foco em comunicações e controle de plataformas não-tripuladas — domínio naval, sem aplicabilidade ao PPCOT |
| **29** | 4º Q | Diaz | 2020 | Mobility Nodes Beyond the Tactical Edge for CAS | Plataformas robóticas não-tripuladas para apoio aéreo próximo e breaching em zonas de Area Denial; proposta operacional tática — sem relação com arquitetura de dados ou planejamento operacional terrestre |

---

## 3. Justificativa Detalhada por Quartil

### 3.1 Primeiro Quartil (Posições 1 a 7)

Os sete trabalhos desta faixa contribuem diretamente para a fundamentação da dissertação: seja propondo componentes arquiteturais aplicáveis ao Data Lake, descrevendo casos de uso que o Data Lake deve habilitar, ou fornecendo evidência empírica da lacuna de dados que ele resolve. São os trabalhos com maior densidade de conceitos transferíveis para o projeto.

**Pos. 1 — Peerdeman et al. (2024)** é o trabalho mais próximo de uma proposta concreta de arquitetura de dados para C2 militar. Menciona nominalmente o *NCDF Data Lake* da NATO (NATO Core Data Framework), distingue arquiteturas *scheme-on-write* de *scheme-on-read* — princípio fundamental de Data Lakes —, propõe *Smart Connector* e *Service Directory* com metadados de qualidade e classificação (equivalentes à camada de catálogo e governança do Lakehouse proposto), e adota os princípios FAIR e VAULTIS como framework de governança. A leitura completa revelou que o artigo é o único do corpus a nomear explicitamente um Data Lake operacional em contexto de defesa, conferindo ancoragem direta ao instrumento tecnológico proposto.

**Pos. 2 — Verhoosel et al. (2020)** propõe uma arquitetura de serviços para integrar múltiplas bases de conhecimento heterogêneas e distribuídas — exatamente o cenário do PITCIC. A leitura completa revelou que os autores comparam explicitamente sua abordagem descentralizada a uma "*data-lake layer*" (descrita como alternativa centralizada para big data), e propõem um *Semantic Service Directory* e um *Smart Connector* baseados em OWL/RDF/SPARQL — tecnologias análogas às camadas de metadados e ingestão do Lakehouse proposto. O trabalho ancora o conceito de Data Lake no debate arquitetural do campo de C2.

**Pos. 3 — Turner et al. (2024)** documenta a avaliação do projeto MSC2 (Dstl/UK): ao testar soluções de IA para planejamento operacional, os planejadores militares identificaram como **principal barreira a indisponibilidade e heterogeneidade dos dados** — validação empírica direta do problema de pesquisa desta dissertação. O artigo também avalia IA para "Support to Operational Design" (geração de Decisive Conditions via LLMs + RAG), correspondente direto ao Design Operacional do PPM. A metodologia sociotécnica empregada (ex-planejadores + pesquisadores + desenvolvedores de IA em avaliação formativa antes do comprometimento de recursos) é modelo replicável para a etapa de Avaliação do DSR.

**Pos. 4 — Schubert et al. (2018)** obteve a maior pontuação de triagem (25) e sustenta esse status após a leitura completa. Com base em dados empíricos de workshop no Armed Forces Command and Control School sueco, identifica concretamente *o que* a IA deve fazer com os dados: composição do COP, análise de ameaças, avaliação de linhas de ação (funções S2 e S3). Conclui que "o lado que implementar IA com sucesso em seu sistema de C2 poderá ser o melhor e mais rápido em analisar informações" — alinhado à hipótese central desta dissertação.

**Pos. 5 — Abdelazez et al. (2023)** é o único trabalho do corpus que conecta explicitamente o tema ao contexto brasileiro: cita que o **Ministério da Defesa do Brasil** planeja incorporar IA ao processo de wargaming de COAs como parte do processo de planejamento conjunto. O trabalho discute IA para geração e avaliação de COAs (análoga ao AlphaGo/StarCraft), wargaming automatizado e aceleração do ciclo OODA — funções equivalentes ao Jogo da Guerra (Step 4 do PPM). Fundamenta *o caso de uso primário* que o Data Lake deve habilitar.

**Pos. 6 — Lee et al. (2017)** foi subestimado na triagem (score 14, rank 28) mas revelou-se altamente relevante na leitura completa. O artigo propõe uma **arquitetura datastore-agnóstica** que abstrai as tecnologias de armazenamento dos usuários finais, suportando dados estruturados, não-estruturados e heterogêneos — princípios centrais de um Data Lake. O caso de uso (manutenção condicional da aeronave V-22, Hadoop/HDFS) é específico, mas os autores explicitam que "a extensão poderia fornecer ao decisor C2 informações de planejamento e execução da missão a partir de conjuntos de dados estruturados, não-estruturados e díspares." A conclusão generaliza a arquitetura para outros tipos de dados de C2, tornando-a diretamente aplicável ao contexto do PITCIC.

**Pos. 7 — Miller et al. (2021)** discute a integração do FKSS (*Future Knowledgebase System of Systems*) com motores de AI/ML para maximizar confiabilidade e disponibilidade em apoio à decisão. A conclusão afirma que "o DoD terá que implementar **governança de dados em nível enterprise**" e que "a disponibilidade geral do FKSS será medida pela capacidade de acessar sistemas individuais quando necessário para migrar dados autoritativos para **um ou poucos locais correspondentes onde AI/ML possa atuar**" — descrição funcional de um Data Lake. A dimensão de SoS reliability e os modelos de disponibilidade propostos são transferíveis para o design da infraestrutura de dados do PITCIC.

---

### 3.2 Segundo Quartil (Posições 8 a 15)

Os oito trabalhos deste quartil contribuem com: (a) o contexto operacional e as barreiras institucionais que o Data Lake deve superar; (b) aspectos de integração de dados C2 em sistemas de apoio à decisão; (c) princípios de governança e valor da informação aplicáveis à arquitetura; e (d) argumentos críticos que, pelo contraste que estabelecem, reforçam a necessidade de uma arquitetura de dados bem estruturada.

**Pos. 8 — Firth, Poole, Turner (2024)** é o artigo "gêmeo" de Turner et al. (pos. 3), do mesmo projeto MSC2. Argumenta que o processo atual de planejamento operacional é "mecanicista e linear", que a tecnologia não pode simplesmente ser aplicada "pelos benefícios de primeira ordem que parece oferecer" e que "a IA não elevará o processo de planejamento operacional atual a uma abordagem baseada em sistemas; continuará sendo uma versão de um processo de planejamento físico-tático, melhor servido por *data analytics*." Esse argumento, ao reconhecer *data analytics* como condição necessária, reforça a motivação para o Data Lake.

**Pos. 9 — Ferreira et al. (2019)** descreve o projeto INTERC2, middleware SOA de interoperabilidade C2 das Forças Armadas Brasileiras (SOA, JC3IEDM, SIPLOM, SISNC2, C2Cmb). A leitura completa revela que a arquitetura atual do SISMC2 opera com troca de mensagens por filas JMS e modelo relacional JC3IEDM — estrutura que, por design, não suporta ingestão massiva de dados brutos heterogêneos nem consultas analíticas de IA. O artigo documenta o *estado da arte* da integração de dados militares no Brasil e, com isso, mapeia precisamente a lacuna arquitetural que o Data Lake proposto visa preencher. É o único artigo do corpus com foco exclusivo no contexto brasileiro.

**Pos. 10 — Brook et al. (2019)** descreve um protótipo de *reach-back* para apoio à decisão desenvolvido pelo Dstl (UK) usando o conceito de arquitetura C2 2030 da NATO ACT com cloud computing. A simulação é inicializada com *operational C2 data feeds* e processa múltiplas COAs em tempo mais que real (FTRT). Embora o foco seja em C2SIM, o artigo demonstra viabilidade técnica de alimentar sistemas analíticos com dados operacionais em tempo real — premissa fundamental do pipeline de ingestão do Data Lake.

**Pos. 11 — Freeman (2020)** propõe um framework (CCMAB — Contextual Combinatorial Multi-Armed Bandit) para quantificar e priorizar o valor da informação em C2, relevante em ambientes com largura de banda limitada. O problema de priorização — *quais dados ingerir e quando* — é diretamente aplicável ao design da camada Bronze do Lakehouse: em um ambiente PITCIC com comunicações DIL (*Denied, Interrupted, Limited*), a arquitetura de ingestão precisará de critérios de valor para priorizar o tráfego de dados. O framework de Freeman fornece fundamento teórico para esses critérios.

**Pos. 12 — Boury-Brisset (2022)** examina dimensões de desenvolvimento responsável de IA para aplicações militares — robustez, risco, explicabilidade, confiança, incerteza, legal/ética — citando frameworks da NATO, DoD, UE e França. A dimensão de **governança de dados** é central: o artigo propõe que IA military deve ser desenvolvida com "data governance" como eixo transversal do pipeline. Os requisitos de qualidade e rastreabilidade dos dados estabelecidos nesse trabalho são diretamente aplicáveis aos critérios de aceitação da camada Silver do Lakehouse.

**Pos. 13 — Patel, Wardman (2017)** descreve o padrão C2SIM (*Command and Control to Simulation Interoperability*) para planejamento de missão e apoio à decisão. A integração de *operational C2 information feeds* para inicializar simulações FTRT — incluindo "unstructured live data streams from civilian sources" mencionados na conclusão — demonstra que dados heterogêneos de fontes C2 reais já são objeto de padronização técnica. Isso fundamenta a viabilidade de um pipeline de ingestão estruturado para o PITCIC.

**Pos. 14 — Simpson, M. L. Jr. (2019)** é o único artigo do corpus que **critica diretamente o conceito de Data Lake** para C2, argumentando que "ter todo mundo compartilhando um gigantesco *data lake* comum não torna por padrão os pescadores de informação melhores." O argumento, paradoxalmente, é útil para esta dissertação: ao identificar que o problema não é a existência do Data Lake mas *como* seus dados são utilizados, Simpson reforça a necessidade de uma arquitetura que vá além do armazenamento bruto — o modelo Lakehouse com camadas de refinamento (Bronze/Silver/Gold) e algoritmos de IA que transformem dados em sinal operacionalmente útil.

**Pos. 15 — Abdelazez, Ghanmi (2022)** propõe MLSecOps como framework de segurança para desenvolvimento de ML em Operações Multidomínio. A discussão sobre envenenamento de dados (*data poisoning*), extração de modelos e ataques adversariais durante a fase de treinamento é diretamente aplicável ao pipeline de ingestão do Data Lake: os critérios de validação de qualidade e autenticidade dos dados do PITCIC devem contemplar vetores de ataque identificados por MLSecOps.

---

### 3.3 Terceiro Quartil (Posições 16 a 22)

Os sete trabalhos deste quartil contribuem com perspectivas sobre: adoção de IA em C2, barreiras institucionais ao compartilhamento de dados, metodologias experimentais transferíveis, e um caso de uso técnico (RAG) aplicável à camada Gold do Lakehouse. Nenhum aborda arquitetura de dados diretamente, mas todos contextualizam o ambiente em que o Data Lake operará.

**Pos. 16 — Sur et al. (2024)** apresenta framework MARL para formação autônoma de COP em tempo real a partir de plataformas heterogêneas não-tripuladas. O artigo demonstra viabilidade técnica da fusão de dados de sensores heterogêneos em representação unificada, com resiliência a ambientes DDIL — premissas compartilhadas com o Data Lake do PITCIC, embora o foco em execução em tempo real (vs. planejamento deliberado) o distancie do caso de uso central.

**Pos. 17 — Simpson et al. (2021)** argumenta que a integração de IA em C2 pode criar uma "armadilha de fragilidade" pela delegação excessiva de funções cognitivas a algoritmos. O framework A3IC2 (Agile, Antifragile, AI-Enabled C2) propõe *antifragilidade* como princípio de design — relevante para a dissertação na medida em que o Data Lake não deve criar dependência operacional total de IA: a arquitetura deve suportar degradação graceful e decisão humana quando a infraestrutura de dados estiver comprometida.

**Pos. 18 — Tillman, Conley (2020)** analisa resistência institucional à operacionalização do JADC2, propondo adaptações incrementais ao processo de batalha existente. A Discussion Authorities Matrix proposta — que mapeia relações entre decisores, requisitos de informação e fluxos resultantes — é transferível para o design da camada de acesso e governança do Data Lake: quem acessa quais dados, em quais condições.

**Pos. 19 — Bau et al. (2022)** descreve o framework INSANE (Intelligent Situational Awareness), um C2IS experimental da Fraunhofer FKIE baseado em microserviços. O framework inclui serviços de *data management* e permite integração rápida de novos serviços — modelo de laboratório experimental útil para a fase de Avaliação do DSR desta dissertação, permitindo validação de protótipos antes de comprometimento de recursos de desenvolvimento.

**Pos. 20 — Fang et al. (2022)** identifica desafios de gestão de informação em NORAD a partir de revisão de 189 artigos e entrevistas com SMEs. Mesmo focado em fatores humanos, o artigo articula que "o número de sensores disponíveis para operações militares cresceu imensamente" e que "livrar os operadores humanos do *big data* e deslocar o envolvimento humano do reconhecimento de padrões para processos de decisão de ordem superior" é objetivo de C2 moderno — formulação que justifica diretamente a camada de processamento intermediário (Silver) do Lakehouse.

**Pos. 21 — Granåsen et al. (2019)** documenta metodologia de coleta de dados em exercício de defesa cibernética (questionários, observação, logs de comunicação, pontuações de desempenho). A abordagem multi-método de captura de dados em ambiente de alta pressão operacional é transferível para o design da coleta de dados do PITCIC — especialmente para a ingestão de dados não-estruturados como relatórios de situação e comunicações.

**Pos. 22 — Moy, Salmond (2025)** descreve protótipo RAG sobre o corpus ICCRTS. Embora seja meta-pesquisa sobre descoberta bibliográfica, o artigo descreve em detalhes técnicos a composição de *vector databases*, LLMs open-source, *retrieval-augmented generation* e sumarização automática — padrão diretamente aplicável à camada Gold do Lakehouse proposto, onde consultas em linguagem natural sobre documentos doutrinários e de planejamento poderiam ser habilitadas.

---

### 3.4 Quarto Quartil (Posições 23 a 29)

Os sete trabalhos deste quartil apresentam contribuições periféricas ao problema de pesquisa: domínios divergentes (naval, aéreo, cyber), foco tático sem generalização para o nível operacional, ou escopo restrito a interfaces humano-máquina sem dimensão de arquitetura de dados.

**Posições 23 a 29** (Ghajar-Khosravi et al., Oosthuizen et al., Raglin et al., Couillard et al., Pradhan e Ota, Galdorisi et al., Diaz) apresentam contribuições sem relação direta com arquitetura de dados para planejamento operacional terrestre. Seus domínios (NORAD, Operações Especiais, IoBT tático, veículos blindados, naval/marítimo, CAS aéreo) e focos (XAI de interface, MBSE de requisitos, variabilidade humana em ML, requisitos de comunicação, crew assistance, UxV) não se conectam ao problema central da dissertação.

---

## 4. Síntese: Cobertura por Quartil

A Tabela 4 a seguir resume a contribuição de cada quartil para os eixos temáticos da dissertação.

**Tabela 4 — Contribuição por quartil ao projeto Data Lake/PPCOT**

| Quartil | Posições | N | Contribuição central para a dissertação |
| --- | --- | --- | --- |
| 1º Q | 1–7 | 7 | Arquitetura de dados (Data Lake, *scheme-on-read*, catálogo, governança); casos de uso de IA para planejamento (PPCOT); evidência empírica da lacuna de dados; contexto brasileiro |
| 2º Q | 8–15 | 8 | Contexto operacional e barreiras institucionais; integração de dados C2 em sistemas analíticos; governança de IA; priorização de ingestão de dados; argumento crítico ao Data Lake (reforça necessidade de qualidade dos dados) |
| 3º Q | 16–22 | 7 | Riscos de adoção de IA; segurança de dados; barreiras organizacionais ao compartilhamento; metodologias experimentais transferíveis; padrão RAG aplicável à camada Gold |
| 4º Q | 23–29 | 7 | Contribuições periféricas; domínios ou focos sem relação direta com Data Lake ou PPCOT |

**Os cinco artigos mais importantes para a dissertação** (posições 1 a 5) cobrem o espectro de fundamentação necessário: do *como* integrar arquiteturalmente os dados (Peerdeman, Verhoosel) ao *por que* a lacuna é real e reconhecida (Turner), ao *o que* a IA deve fazer com esses dados (Schubert), e ao *qual caso de uso específico* do PPCOT brasileiro deve ser habilitado (Abdelazez et al.). Complementarmente, Lee et al. (pos. 6) contribui com a precedência técnica de arquitetura datastore-agnóstica em C2, e Miller et al. (pos. 7) com o imperativo de governança de dados enterprise para IA militar.

---

## 5. Referências dos Artigos por Quartil

### Primeiro Quartil (Posições 1 a 7)

PEERDEMAN, Mark et al. Architectural concepts to support future C2 systems that enable multi-domain operations. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 29., 2024. *Anais [...]*. [S. l.: s. n.], 2024.

VERHOOSEL, Jack; NOUWT, Barry; VOOGD, Jeroen. Data-driven, service-oriented, knowledge-based command and control. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 25., 2020. *Anais [...]*. [S. l.: s. n.], 2020.

TURNER, Patrick et al. A challenging case for artificial intelligence: evaluation of the benefits of AI-enabled socio-technical concept solutions for operational-level planning. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 29., 2024. *Anais [...]*. [S. l.: s. n.], 2024.

SCHUBERT, Jörgen; BRYNIELSSON, Joel; NILSSON, Mattias; SVENMARCK, Peter. Artificial intelligence for decision support in command and control systems. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 23., 2018. *Anais [...]*. [S. l.: s. n.], 2018.

ABDELAZEZ, Mohamed; GARBER, Richard; GHANMI, Ahmed. Decision support for commanders: an AI approach to wargaming. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 28., 2023. *Anais [...]*. [S. l.: s. n.], 2023.

LEE, James et al. Big data decision support in command and control systems. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 22., 2017. *Anais [...]*. [S. l.: s. n.], 2017.

MILLER, James et al. Merging future knowledgebase system of systems with artificial intelligence/machine learning engines to maximize reliability and availability for decision support. **Military Operations Research**, [S. l.], 2021.

### Segundo Quartil (Posições 8 a 15)

FIRTH, Robert; POOLE, Alexander; TURNER, Patrick. Opportunity knocks: a systems-based operational level planning process to fully embrace the promise of artificial intelligence. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 29., 2024. *Anais [...]*. [S. l.: s. n.], 2024.

FERREIRA, Alexssandro Matos; SÁ, Wellington Cunha; BOTELHO, Leonardo Lana. Command and control interoperability middleware architecture. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 24., 2019. *Anais [...]*. [S. l.: s. n.], 2019.

BROOK, David et al. Implementing a prototype reach-back capability for decision support in multi-domain and coalition operations. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 24., 2019. *Anais [...]*. [S. l.: s. n.], 2019.

FREEMAN, Daniel. Modeling value of information in command and control domain. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 25., 2020. *Anais [...]*. [S. l.: s. n.], 2020.

BOURY-BRISSET, Anne-Claire. Robust and trusted artificial intelligence through refined processes and metrics for military applications. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 27., 2022. *Anais [...]*. [S. l.: s. n.], 2022.

PATEL, Nimish; WARDMAN, Colin. Joint mission planning and decision support through C2-simulation interoperability. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 22., 2017. *Anais [...]*. [S. l.: s. n.], 2017.

SIMPSON, Michael L. Jr. Multi domain command and control (MDC2) an execution concept. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 24., 2019. *Anais [...]*. [S. l.: s. n.], 2019.

ABDELAZEZ, Mohamed; GHANMI, Ahmed. Security first approach for developing machine learning applications in multi-domain operations. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 27., 2022. *Anais [...]*. [S. l.: s. n.], 2022.

### Terceiro Quartil (Posições 16 a 22)

SUR, Indranil et al. Data-driven distributed common operational picture from heterogenous platforms using multi-agent reinforcement learning. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 29., 2024. *Anais [...]*. [S. l.: s. n.], 2024.

SIMPSON, Michael; EL SAWAH, Sondoss; OOSTHUIZEN, Roelien; ABBASS, Hussein. Agile, antifragile, artificial-intelligence-enabled command and control. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 26., 2021. *Anais [...]*. [S. l.: s. n.], 2021.

TILLMAN, Barrett; CONLEY, Christopher. Operationalizing joint all domain C2 in the U.S. military. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 25., 2020. *Anais [...]*. [S. l.: s. n.], 2020.

BAU, Tobias et al. Intelligent situational awareness: experimental framework for command and control technology. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 27., 2022. *Anais [...]*. [S. l.: s. n.], 2022.

FANG, Xi et al. A human factors perspective on information fusion, data analytics and decision support for command-and-control modernization concepts. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 27., 2022. *Anais [...]*. [S. l.: s. n.], 2022.

GRANÅSEN, Magdalena; HUSKAJ, Gazmend; VARGA, Stefan. Data collection and research in CDXs: command and control, cyber situational awareness and intelligence perspectives on cyber defense. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 24., 2019. *Anais [...]*. [S. l.: s. n.], 2019.

MOY, Tyrone; SALMOND, Craig. LLMs for ICCRTS: situational awareness in the research domain. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 30., 2025. *Anais [...]*. [S. l.: s. n.], 2025.

### Quarto Quartil (Posições 23 a 29)

GHAJAR-KHOSRAVI, Shadan et al. Explainable artificial intelligence for multi-domain command and control concept development. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 30., 2025. *Anais [...]*. [S. l.: s. n.], 2025.

OOSTHUIZEN, Roelien; VENTER, Martin; SERFONTEIN, Eduan. Model based systems engineering process for complex command and control systems. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 23., 2018. *Anais [...]*. [S. l.: s. n.], 2018.

RAGLIN, Adrienne et al. Human variabilities in C2 machine learning. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 22., 2017. *Anais [...]*. [S. l.: s. n.], 2017.

COUILLARD, Philippe et al. The unit commander on the move experiment: information and communication requirements for effective command and control in a dispersed battlespace. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 21., 2016. *Anais [...]*. [S. l.: s. n.], 2016.

PRADHAN, Pankaj; OTA, Yusuke. Interface design and assessment of situational awareness and workload for an adaptable multimodal crew assistance system based on NATO generic vehicle architecture. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 21., 2016. *Anais [...]*. [S. l.: s. n.], 2016.

GALDORISI, George et al. Command and control (C2) of cross-domain unmanned vehicles (UxVs): progress of an early prototype. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 22., 2017. *Anais [...]*. [S. l.: s. n.], 2017.

DIAZ, Ervin. Mobility nodes beyond the tactical edge for close air support situational awareness and survivability. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 25., 2020. *Anais [...]*. [S. l.: s. n.], 2020.
