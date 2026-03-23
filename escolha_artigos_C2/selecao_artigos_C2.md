# Seleção dos Artigos Seminais sobre Comando e Controle (C2)
## Fundamentos para a Pesquisa sobre Arquitetura de Dados no Suporte ao PPCOT

---

## 1. Contextualização e Escopo

Este documento registra o processo de seleção bibliográfica conduzido para identificar os cinco trabalhos mais relevantes no domínio de Comando e Controle (C2) que subsidiam a proposta de pesquisa *"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres (PPCOT)"*. A revisão partiu de uma base de dados consolidada, denominada `bases_c2_juntas`, composta por **586 trabalhos** oriundos de múltiplas fontes bibliográficas, com predominância de anais do *International Command and Control Research and Technology Symposium* (ICCRTS).

O recorte temático é delimitado pelo problema central da pesquisa: **a ausência de uma infraestrutura de dados unificada que conecte a coleta de informações operacionais (PITCIC) aos sistemas de C2**, inibindo a aplicação de algoritmos de Inteligência Artificial no apoio ao ciclo de decisão do Exame de Situação (PPM). A seleção priorizou trabalhos que abordassem a interseção entre:

- Inteligência Artificial aplicada a sistemas de C2;
- Arquiteturas de dados para operações militares;
- Integração de dados heterogêneos no contexto operacional;
- Apoio à decisão e ao planejamento militar por IA;
- Resiliência e adaptabilidade de sistemas de C2 habilitados por IA.

---

## 2. Protocolo de Seleção (adaptado do PRISMA)

O processo seguiu as quatro etapas da metodologia **PRISMA** (*Preferred Reporting Items for Systematic Reviews and Meta-Analyses*), adaptadas ao contexto de uma dissertação em Design Science Research (DSR).

---

### 2.1 Etapa 1 — Identificação

A base `bases_c2_juntas` foi integralmente considerada como corpus de partida. Os campos analisados em cada registro foram: `TITLE`, `ABSTRACT`, `YEAR`, `AUTHORS_APA` e `CONFERENCE/JOURNAL`. A janela temporal abrangeu publicações de **2016 a 2025**, cobrindo o período de consolidação das discussões sobre IA em C2 e operações multidomínio, sem excluir trabalhos anteriores de referência conceitual.

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

> **Nota metodológica — limitação da pontuação de triagem:** A pontuação de pertinência mede a densidade de termos-chave nos campos `TITLE` e `ABSTRACT` e cumpre exclusivamente a função de funil de triagem: identificar os 30 candidatos a leitura completa. Ela **não constitui ranking de relevância final**. Na prática, quatro dos cinco artigos selecionados têm pontuação intermediária (ranks 10, 14, 16 e 23), enquanto sete trabalhos de alta pontuação (ranks 2–9) foram excluídos após a leitura completa. Essa inversão é esperada e explicável: a pontuação captura *abrangência terminológica no título e resumo*, ao passo que a seleção final exige *profundidade de contribuição arquitetural* e alinhamento com o problema específico desta dissertação — critérios avaliáveis apenas pela leitura integral dos documentos, conforme descrito na Etapa 3.

---

### 2.3 Etapa 3 — Elegibilidade: Leitura dos Documentos Completos

Os 29 registros únicos foram obtidos em formato completo a partir dos arquivos disponíveis na pasta `pre_selecao_C2/`. Cada trabalho foi lido integralmente — introdução, seções de metodologia, resultados e conclusão — para avaliação de sua contribuição efetiva aos eixos temáticos da dissertação. A pontuação de triagem (Etapa 2) determinou *quais trabalhos ler*, mas não *quais incluir*: os critérios de elegibilidade aplicados na leitura são qualitativamente distintos dos critérios de pontuação, razão pela qual a ordenação final dos artigos selecionados não coincide com o ranking da Tabela 2. Os **critérios de elegibilidade** aplicados foram:

| Critério | Inclusão | Exclusão |
| --- | --- | --- |
| **Contribuição direta** | Propõe, avalia ou fundamenta conceitos aplicáveis ao problema de dados e IA no ciclo de decisão do PPM | Aborda C2 de forma periférica ou em subdomínios sem relação com planejamento operacional terrestre |
| **Alinhamento arquitetural** | Discute infraestrutura de dados, integração de fontes heterogêneas ou arquitetura de C2 orientada a dados | Foco exclusivo em hardware, comunicações, plataformas autônomas ou cibernética |
| **Generalização** | Resultados e conceitos transferíveis para o contexto do Exército Brasileiro e do PPCOT | Resultados altamente específicos a domínios (naval, aéreo, cyber) sem aplicabilidade terrestre |
| **Não duplicidade** | Trabalho único no corpus | Registro duplicado na base ou com sobreposição temática excessiva com trabalho já selecionado |

---

### 2.4 Etapa 4 — Inclusão: Artigos Selecionados

Após a leitura dos documentos completos, **cinco trabalhos** foram incluídos na lista final de referências seminais da pesquisa.

**Tabela 3 — Artigos selecionados: motivação da inclusão**

| # | Autores | Ano | Título (resumido) | Motivação para inclusão |
| --- | --- | --- | --- | --- |
| **1** | Schubert, Brynielsson, Nilsson, Svenmarck | 2018 | AI for Decision Support in C2 Systems | Único trabalho do corpus com dados empíricos coletados junto a militares sobre uso de IA nos processos de inteligência e operações. Discute diretamente o apoio a COP, análise de ameaças e avaliação de linhas de ação — funções equivalentes às dos seções S2 e S3 no PPCOT. |
| **2** | Verhoosel, Nouwt, Voogd | 2020 | Data-driven, Service-oriented, Knowledge-based C2 | Propõe uma arquitetura de serviços para integração de bases de conhecimento heterogêneas e distribuídas, problema central desta dissertação. O paper chega a citar explicitamente o conceito de "data-lake layer" como alternativa comparativa, conferindo ancoragem direta ao tema central da pesquisa. |
| **3** | Simpson, El Sawah, Oosthuizen, Abbass | 2021 | Agile, Antifragile, AI-Enabled C2 | Apresenta argumento crítico e bem fundamentado sobre os riscos de delegar funções de C2 à IA sem critério — a "armadilha de fragilidade". O framework A3IC2 proposto, baseado no ciclo DOODA de Brehmer, oferece o posicionamento teórico correto da IA como amplificadora, não substituta, do julgamento do Comandante. |
| **4** | Abdelazez, Garber, Ghanmi | 2023 | Decision Support for Commanders: AI Approach to Wargaming | Trata diretamente da aplicação de IA para exploração de Linhas de Ação e condução do Jogo da Guerra — equivalentes ao Step 4 do PPM. O paper menciona explicitamente que o Ministério da Defesa do Brasil planeja incorporar IA ao processo de wargaming de COAs, conectando-se ao contexto nacional desta pesquisa. |
| **5** | Turner et al. | 2024 | AI for Operational-level Planning (MSC2) | Descreve avaliação formativa de soluções de IA para planejamento operacional do projeto MSC2 (Dstl/UK), incluindo a função "Support to Operational Design" — correspondente direto ao Design Operacional do PPM. A metodologia sociotécnica empregada, com ex-planejadores militares e desenvolvedores de IA, oferece modelo replicável para a etapa de Avaliação do DSR desta dissertação. |

**Tabela 4 — Artigos excluídos após leitura completa: motivação da exclusão**

| Rank | Autores | Ano | Título (resumido) | Motivo da exclusão |
| --- | --- | --- | --- | --- |
| 2 | Ferreira, Sá, Botelho | 2019 | C2 Interoperability Middleware (INTERC2) | Descreve a arquitetura SOA do projeto INTERC2 das Forças Armadas brasileiras. Apesar do contexto nacional relevante, o foco é em protocolos de interoperabilidade (MIP/JC3IEDM), não em arquitetura de dados para IA. A lacuna de integração que identifica é a mesma tratada por Verhoosel et al. (já incluído), com abordagem mais diretamente aplicável. |
| 3 | Ghajar-Khosravi et al. | 2025 | XAI for Multi-Domain C2 (NORAD) | Aborda IA explicável para operadores do NORAD. Relevante para a camada de interface humano-IA, mas distante do problema central de ingestão e arquitetura de dados. O foco em fatores humanos e design de interface não acrescenta fundamentação essencial à proposta de Data Lake. |
| 4 | Brook et al. | 2019 | Prototype Reach-back for Decision Support | Descreve um protótipo de apoio à decisão via simulação reach-back com análise de COAs. Contribuição similar à de Turner et al. (já incluído), mas menos desenvolvida metodologicamente e sem avaliação formal com planejadores militares. |
| 5 | Bau et al. | 2022 | INSANE Framework for C2IS R&D | Framework experimental para desenvolvimento e teste de soluções de C2IS. A contribuição é metodológica — para construção de laboratórios de C2 —, não arquitetural ou conceitual em relação ao uso de dados e IA para planejamento operacional. |
| 6 | Fang et al. | 2022 | Human Factors for NORAD C2 Modernization | Revisão de literatura e entrevistas sobre fatores humanos em C2 para o NORAD. O foco em carga cognitiva e interface operador-IA é periférico ao problema de arquitetura de dados e ao contexto terrestre do PPCOT. |
| 7 | Peerdeman et al. | 2024 | Architecture for C2 in MDO (NATO RTG SAS-IST 171) | Trabalho de grupo de pesquisa NATO sobre princípios e componentes arquiteturais para C2 em MDO. Relevante conceitualmente, mas voltado ao alinhamento de padrões da Aliança, sem aplicabilidade imediata ao nível operacional terrestre e ao contexto de Data Lake on-premise. |
| 8 | Granåsen, Huskaj, Varga | 2019 | C2 and Cyber Situational Awareness in CDX | Estudo de coleta de dados em exercício de defesa cibernética (Locked Shields). Focado no domínio cyber, sem relação com o planejamento de operações terrestres ou com a arquitetura de dados do PITCIC. |
| 9 | Diaz | 2020 | Mobility Nodes for CAS Situational Awareness | Proposta operacional para uso de plataformas não-tripuladas no apoio aéreo próximo. Distante do escopo temático — não trata de arquitetura de dados, IA para planejamento ou C2 ao nível operacional. |
| 11 | Firth, Poole, Turner | 2024 | Opportunity Knocks: Systems-Based Planning for AI (MSC2) | Argumento crítico sobre a inadequação do processo de planejamento militar para a IA, oriundo do mesmo projeto MSC2 de Turner et al. (já incluído). A sobreposição temática e de autoria não justifica inclusão separada; a avaliação empírica de Turner et al. cobre o argumento com maior rigor. |
| 12 | Miller et al. | 2021 | Merging FKSS with AI/ML for Decision Support | Aborda confiabilidade e disponibilidade de sistemas de sistemas (SoS) com IA/ML. O foco em métricas de confiabilidade operacional (tipo I/II) e manutenção preditiva está distante da arquitetura de ingestão de dados operacionais e do apoio ao planejamento. |
| 13 | Freeman | 2020 | Modeling Value of Information in C2 | Framework teórico para quantificar o valor da informação em C2 usando teoria da decisão e Multi-Armed Bandit. Contribuição conceitual relevante mas abstrata demais para fundamentar diretamente a proposta de Data Lake. |
| 15 | Boury-Brisset | 2022 | Robust and Trusted AI for Military Applications | Revisão de processos e métricas para garantia de qualidade de IA em aplicações militares. Contribui para a discussão de confiança em IA, mas não aborda infraestrutura de dados nem suporte ao planejamento operacional. |
| 17 | Couillard et al. | 2016 | Unit Commander on the Move Experiment | Experimento sobre requisitos de informação para comandantes móveis. Foca em capacidades de comunicação e consciência situacional em campo — nível tático, sem relação com a arquitetura de dados operacionais do PPCOT. |
| 18 | Pradhan, Ota | 2016 | Interface Design for Crew Assistance System (NGVA) | Design de interface para assistência a tripulações de veículos blindados. Escopo restrito ao nível de veículo, sem conexão com a problemática de integração de dados para o planejamento operacional. |
| 19 | Oosthuizen, Venter, Serfontein | 2018 | MBSE Process for Complex C2 Systems | Propõe MBSE (DODAF + SysML) para desenvolvimento de sistemas C2 para Forças de Operações Especiais. A contribuição é de engenharia de sistemas, não de arquitetura de dados ou IA para planejamento operacional convencional. |
| 20 | Simpson, M. L. Jr. | 2019 | MDC2 an Execution Concept | Propõe uma visão de execução para o MDC2. O paper critica explicitamente a ideia de que um "data lake" compartilhado, por si só, melhora a qualidade da decisão — argumento que, paradoxalmente, reforça a necessidade de maturidade no uso dos dados, não de sua rejeição. Porém, a contribuição conceitual não supera as dos artigos já selecionados. |
| 21 | Tillman, Conley | 2020 | Operationalizing JADC2 in the U.S. Military | Analisa a resistência institucional à mudança nos processos de C2 e propõe adaptações incrementais. Relevante para a discussão de adoção de inovação em forças armadas, mas não acrescenta fundamentação técnica sobre arquitetura de dados ou IA. |
| 22 | Abdelazez, Ghanmi | 2022 | Security First Approach for ML in MDO | Aborda segurança em aprendizado de máquina para operações multidomínio (MLSecOps). Foco exclusivo em ameaças ao ML (ataques adversariais), sem relação com a arquitetura de ingestão de dados ou com o processo de planejamento operacional. |
| 24 | Sur et al. | 2024 | Data-Driven COP from Heterogenous Platforms (MARL) | Apresenta um framework de aprendizado multiagente para formação de COP em tempo real com plataformas não-tripuladas. A contribuição é para C2 de sistemas autônomos, não para o planejamento deliberado com dados do PITCIC — escopo divergente do desta dissertação. |
| 25 | Moy, Salmond | 2025 | LLMs for ICCRTS Research Situational Awareness | Descreve um protótipo de assistente de pesquisa baseado em LLMs para o repositório ICCRTS. Meta-pesquisa sobre descoberta bibliográfica, sem contribuição direta para o problema de arquitetura de dados ou IA em C2 operacional. |
| 26 | Sur et al. | 2025 | Data-Driven COP (MARL) — duplicata | Registro duplicado do Rank 24. Descartado na etapa de elegibilidade. |
| 27 | Patel, Wardman | 2017 | C2SIM Interoperability for Mission Planning | Descreve o padrão C2-to-Simulation (C2SIM) para planejamento e ensaio de missão. Contribuição voltada à integração de sistemas de simulação com C2, não à arquitetura de ingestão de dados operacionais brutos para IA. |
| 28 | Lee et al. | 2017 | Big Data Decision Support in C2 Systems | Usa Big Data (Hadoop/HDFS) para manutenção baseada em condição (CBM) de ativos C2. O caso de uso — manutenção de aeronave V-22 Osprey — é demasiado específico e distante do apoio ao ciclo de planejamento operacional terrestre. |
| 29 | Galdorisi et al. | 2017 | C2 of Cross-Domain Unmanned Vehicles (UxVs) | Relato de experimento com veículos não-tripulados multi-domínio (UAV/UUV) em ambiente marítimo. Escopo exclusivamente naval/marítimo, sem aplicabilidade ao contexto terrestre e ao PPCOT. |
| 30 | Raglin et al. | 2017 | Human Variabilities in C2 Machine Learning | Investiga o impacto da variabilidade humana em algoritmos de ML para reconhecimento de gestos táticos NATO (IoBT). Escopo muito específico — nível de pequena fração/pelotão —, sem relação com a arquitetura de dados para planejamento operacional. |

---

## 3. Artigos Selecionados: Justificativa Detalhada

### Artigo 1 — Fundamento Conceitual: IA para Apoio à Decisão em C2

> **SCHUBERT, J.; BRYNIELSSON, J.; NILSSON, M.; SVENMARCK, P.** Artificial Intelligence for Decision Support in Command and Control Systems. *23rd International Command and Control Research & Technology Symposium*, 2018.

**Justificativa:** Este artigo obteve a **maior pontuação de pertinência** em toda a base (*score* 25) e foi confirmado como o trabalho mais diretamente alinhado ao problema de pesquisa após leitura completa. Com base em dados empíricos coletados junto a militares por meio de atividades estruturadas centradas no usuário, os autores investigam como a IA pode ser integrada aos **processos de inteligência e operações** dos sistemas de C2 — funções que, no PPCOT, correspondem ao papel das seções S2 e S3 do Estado-Maior. O trabalho discute o uso de IA para a composição do *Common Operational Picture* (COP), para a análise de ameaças e para a avaliação de ações próprias antes da execução, todas etapas críticas do Exame de Situação. A conclusão central — de que a IA confere vantagem operacional à força que conseguir analisar informações mais rapidamente — alinha-se à hipótese central desta dissertação.

---

### Artigo 2 — Infraestrutura de Dados para C2: Arquitetura Orientada a Conhecimento

> **VERHOOSEL, J.; NOUWT, B.; VOOGD, J.** Data-driven, Service-oriented, Knowledge-based Command and Control. *25th International Command and Control Research & Technology Symposium*, 2020.

**Justificativa:** Este trabalho aborda diretamente a lacuna arquitetural que constitui o problema de pesquisa da dissertação. Os autores propõem uma arquitetura de serviços de informação capaz de integrar **múltiplas bases de conhecimento heterogêneas e distribuídas** — exatamente o cenário dos dados do PITCIC. A leitura completa revelou ainda que os autores comparam explicitamente sua proposta a uma "*data-lake layer*", que descrevem como uma alternativa centralizada para coleta de dados e análise massiva (*big data*), em contraste com a abordagem descentralizada que propõem. Essa menção direta ao conceito de Data Lake ancora conceitualmente o instrumento tecnológico proposto nesta dissertação dentro do debate arquitetural do campo. A arquitetura inclui um componente de diretório semântico de serviços (*Semantic Service Directory*) e um conector inteligente que habilita a descoberta e integração automáticas de novas fontes de dados — lógica análoga à camada de ingestão do Data Lake proposto.

---

### Artigo 3 — Framework para IA em C2: Agilidade, Antifragilidade e os Limites da Automação

> **SIMPSON, J.; EL SAWAH, S.; OOSTHUIZEN, R.; ABBASS, H.** Agile, Antifragile, Artificial-Intelligence-Enabled Command and Control. *26th International Command and Control Research & Technology Symposium*, 2021.

**Justificativa:** Enquanto os artigos 1 e 2 fundamentam *o que a IA pode fazer* em C2, este trabalho contribui com uma perspectiva crítica e teoricamente sólida sobre *como deve ser feita* essa integração. Os autores argumentam que a delegação irrestrita de funções de C2 à IA pode criar uma **armadilha de fragilidade** (*fragility trap*), com falhas estratégicas catastróficas em ambientes operacionais complexos. A leitura completa revelou que o argumento é construído sobre o modelo DOODA Loop de Brehmer — uma extensão do ciclo OODA de Boyd —, que torna cada função do processo de C2 explícita para fins de melhoria. Como resposta à fragilidade, propõem o framework *Agile, Antifragile, AI-Enabled C2* (A3IC2), cujo ciclo de retroalimentação contínua permite ao sistema melhorar sua capacidade de decisão diante de choques e surpresas. Este artigo é fundamental para posicionar a IA nesta dissertação: não como substituta do Comandante, mas como amplificadora da capacidade analítica dentro de um sistema resiliente, em conformidade com a doutrina do PPCOT.

---

### Artigo 4 — Apoio à Decisão do Comandante: IA Aplicada ao Jogo da Guerra (*Wargaming*)

> **ABDELAZEZ, M.; GARBER, R.; GHANMI, A.** Decision Support for Commanders: An AI Approach to Wargaming. *28th International Command and Control Research & Technology Symposium*, 2023.

**Justificativa:** O *wargaming* é, no PPCOT, a Etapa 4 do PPM — o *Jogo da Guerra* —, onde as Linhas de Ação (COAs) são testadas contra as COAs do inimigo para avaliação de riscos, potencialidades e adequação ao Estado Final Desejado. A leitura completa deste artigo revelou uma conexão direta com o contexto brasileiro: os autores citam que o **Ministério da Defesa do Brasil** planeja incorporar IA ao processo de wargaming de COAs como parte do processo de planejamento conjunto brasileiro, acelerando o ciclo OODA. Os autores demonstram como a IA pode gerar COAs inéditas (como o AlphaGo no jogo de Go), executar múltiplas iterações inviáveis no wargaming manual e funcionar como árbitro via aprendizado por reforço. Essa conexão direta com o ciclo de planejamento brasileiro e com a Etapa 4 do PPM justifica a inclusão deste trabalho como referência de aplicação da IA Operacional em contexto tático-operacional.

---

### Artigo 5 — IA para o Planejamento Operacional: Avaliação de Soluções Sociotécnicas

> **TURNER, P. et al.** A challenging case for Artificial Intelligence: evaluation of the benefits of AI-enabled socio-technical concept solutions for Operational-level planning. *29th International Command and Control Research & Technology Symposium*, 2024.

**Justificativa:** Este artigo documenta a avaliação formativa de soluções de IA para planejamento operacional no âmbito do projeto *Machine Speed Command and Control* (MSC2) do DSTL britânico — o mais avançado programa de pesquisa em C2 habilitado por IA da atualidade. A leitura completa confirmou que a pesquisa avalia dois conceitos específicos: (a) mapeamento de perspectivas de múltiplos atores (*Stakeholder Mapper*) e (b) suporte ao *Design Operacional* — geração de *Decisive Conditions* como parte da estrutura de planejamento. Esta segunda função corresponde diretamente ao *Design Operacional* do PPM brasileiro. A metodologia sociotécnica empregada — que combina ex-planejadores militares, pesquisadores de C2 e desenvolvedores de IA em avaliações formativas antes do comprometimento de recursos de desenvolvimento — oferece modelo aplicável à etapa de Avaliação do ciclo DSR desta dissertação, tornando este trabalho referência simultânea para o referencial teórico e para a estratégia metodológica.

---

## 4. Síntese

| # | Autores | Ano | Título (resumido) | Eixo de contribuição |
| --- | --- | --- | --- | --- |
| 1 | Schubert et al. | 2018 | AI for Decision Support in C2 Systems | Base empírica: IA nos processos S2/S3 e COP |
| 2 | Verhoosel et al. | 2020 | Data-driven, Knowledge-based C2 | Base arquitetural: integração de dados heterogêneos para C2 |
| 3 | Simpson et al. | 2021 | Agile, Antifragile, AI-Enabled C2 | Base teórica: framework de integração segura de IA em C2 |
| 4 | Abdelazez et al. | 2023 | AI Approach to Wargaming | Aplicação: IA para COAs e Jogo da Guerra (Step 4 do PPM) |
| 5 | Turner et al. | 2024 | AI for Operational-level Planning (MSC2) | Validação: IA para Design Operacional e avaliação sociotécnica |

Os cinco artigos cobrem o espectro necessário para fundamentar a dissertação: do **conceito** (Artigo 1) à **infraestrutura** (Artigo 2), passando pelo **framework** de integração (Artigo 3), pela **aplicação tática** via wargaming (Artigo 4) e pela **validação operacional** do uso de IA no planejamento (Artigo 5). Essa progressão — do abstrato ao concreto, do estratégico ao tático — reflete a estrutura lógica do ciclo DSR adotado como metodologia da pesquisa.

---

## 5. Referências dos Artigos Selecionados (ABNT)

SCHUBERT, Jörgen; BRYNIELSSON, Joel; NILSSON, Mattias; SVENMARCK, Peter. Artificial intelligence for decision support in command and control systems. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 23., 2018. *Anais [...]*. [S. l.: s. n.], 2018.

VERHOOSEL, Jack; NOUWT, Barry; VOOGD, Jeroen. Data-driven, service-oriented, knowledge-based command and control. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 25., 2020. *Anais [...]*. [S. l.: s. n.], 2020.

SIMPSON, Jacob; EL SAWAH, Sondoss; OOSTHUIZEN, Rudolph; ABBASS, Hussein. Agile, antifragile, artificial-intelligence-enabled command and control. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 26., 2021. *Anais [...]*. [S. l.: s. n.], 2021.

ABDELAZEZ, Mohamed; GARBER, Richard; GHANMI, Ahmed. Decision support for commanders: an AI approach to wargaming. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 28., 2023. *Anais [...]*. [S. l.: s. n.], 2023.

TURNER, Patrick et al. A challenging case for artificial intelligence: evaluation of the benefits of AI-enabled socio-technical concept solutions for operational-level planning. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 29., 2024. *Anais [...]*. [S. l.: s. n.], 2024.
