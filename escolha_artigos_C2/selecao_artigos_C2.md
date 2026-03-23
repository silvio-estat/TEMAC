# Seleção dos Artigos Seminais sobre Comando e Controle (C2): Fundamentos para a Pesquisa sobre Arquitetura de Dados no Suporte ao PPCOT

---

## 1. Contextualização e Escopo da Revisão

O presente documento registra o processo de seleção bibliográfica realizado para identificar os cinco trabalhos mais relevantes no domínio de Comando e Controle (C2) que fundamentam a proposta de pesquisa intitulada *"O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres (PPCOT)"*. A revisão partiu de uma base de dados consolidada, denominada `bases_c2_juntas`, composta por **586 trabalhos** oriundos de múltiplas fontes bibliográficas, incluindo anais do *International Command and Control Research and Technology Symposium* (ICCRTS) e publicações correlatas.

O recorte temático é delimitado pelo problema central da pesquisa: **a ausência de uma infraestrutura de dados unificada que conecte a coleta de informações operacionais (PITCIC) aos sistemas de C2**, inibindo a aplicação de algoritmos de Inteligência Artificial no apoio ao ciclo de decisão do Exame de Situação (PPM). Dessa forma, a seleção priorizou trabalhos que abordassem a interseção entre:

- Inteligência Artificial aplicada a sistemas de C2;
- Arquiteturas de dados orientadas a C2;
- Integração de dados heterogêneos no contexto operacional;
- Automação e suporte à decisão no planejamento militar;
- Resiliência e adaptabilidade de sistemas de C2 habilitados por IA.

---

## 2. Protocolo de Seleção

O processo de seleção foi conduzido em conformidade com as diretrizes da metodologia **PRISMA** (*Preferred Reporting Items for Systematic Reviews and Meta-Analyses*) adaptada ao contexto de um projeto de dissertação em Design Science Research. A adoção do PRISMA como referencial metodológico visa conferir transparência, reprodutibilidade e rigor à triagem realizada.

### 2.1. Etapa de Identificação

A base de dados `bases_c2_juntas` foi integralmente considerada como corpus de partida. Os campos analisados em cada registro foram: `TITLE`, `ABSTRACT`, `YEAR`, `AUTHORS_APA` e `CONFERENCE/JOURNAL`. A janela temporal considerada abrangeu publicações de **2016 a 2025**, priorizando trabalhos recentes que reflitam o estado da arte, sem excluir trabalhos anteriores de referência conceitual estabelecida.

### 2.2. Etapa de Triagem (*Screening*)

Foram definidos **critérios de relevância terminológica** para a triagem inicial. Cada trabalho recebeu uma pontuação de pertinência (*relevance score*) calculada a partir da frequência e do peso semântico dos seguintes termos-chave nos campos `TITLE` e `ABSTRACT`:

**Termos de alta relevância (peso 4–5 por ocorrência no título):**
- *command and control*, *C2 system*, *battle management*, *situational awareness*, *decision support*

**Termos de média relevância (peso 2–4):**
- *artificial intelligence*, *machine learning*, *data-driven*, *data architecture*, *knowledge base*

**Termos de suporte contextual (peso 1–2):**
- *military*, *operational*, *warfare*, *automation*, *AI*

Esse método resultou em um ranqueamento dos 586 artigos, dos quais os **30 trabalhos com maior pontuação** foram avaliados em profundidade na etapa subsequente.

### 2.3. Critérios de Inclusão e Exclusão

| Critério | Inclusão | Exclusão |
|---|---|---|
| **Pertinência temática** | Aborda diretamente C2, IA em C2 ou arquitetura de dados para operações militares | Foco exclusivo em aspectos táticos, de hardware ou comunicações, sem interface com C2 conceitual ou de dados |
| **Relevância para o problema de pesquisa** | Contribui para fundamentar a proposta de Data Lake ou o uso de IA no ciclo de decisão | Não apresenta conexão com automação de dados ou apoio à decisão |
| **Qualidade do abstract** | Abstract completo e informativo | Abstract ausente ou genérico demais para avaliação |
| **Representatividade temporal** | Distribui-se ao longo do período 2017–2024, garantindo profundidade histórica e atualidade | Trabalhos duplicados (mesma contribuição em dois registros) |

Durante a avaliação em profundidade, identificou-se que o trabalho de Sur et al. (2024) — *"Data-Driven Distributed Common Operational Picture from Heterogenous Platforms using Multi-Agent Reinforcement Learning"* (ROW 530) — estava **duplicado** na base (`bases_c2_juntas`, ROW 530 e ROW 578), sendo considerado apenas uma vez.

### 2.4. Seleção Final

Após a triagem criteriosa, cinco trabalhos foram selecionados como **referências seminais** para a presente pesquisa, conforme detalhado na seção seguinte.

---

## 3. Artigos Selecionados

### Artigo 1 — Fundamento Conceitual: IA para Apoio à Decisão em C2

> **SCHUBERT, J.; BRYNIELSSON, J.; NILSSON, M.; SVENMARCK, P.** Artificial Intelligence for Decision Support in Command and Control Systems. *23rd International Command and Control Research & Technology Symposium*, 2018.

**Justificativa de seleção:** Este artigo obteve a **maior pontuação de pertinência** em toda a base (*score* 25), sendo o trabalho que mais diretamente fundamenta o problema de pesquisa. Com base em dados empíricos coletados junto a militares, os autores investigam como a IA pode ser integrada aos processos de inteligência e operações dos sistemas de C2. O trabalho discute o uso de IA para a composição do *Common Operational Picture* (COP), para a análise de ameaças e para a análise de ações próprias antes da execução — tarefas que correspondem, no contexto do PPCOT, às etapas de Análise da Missão e Levantamento de Alternativas. A conclusão central dos autores — de que a IA confere vantagem operacional à força que conseguir analisar informações mais rapidamente — alinha-se à hipótese central desta dissertação. Trata-se, portanto, do **trabalho mais importante** do corpus para o referencial teórico proposto.

---

### Artigo 2 — Infraestrutura de Dados para C2: Da Arquitetura Orientada a Serviços à Base de Conhecimento

> **VERHOOSEL, J.; NOUWT, B.; VOOGD, J.** Data-driven, Service-oriented, Knowledge-based Command and Control. *25th International Command and Control Research & Technology Symposium*, 2020.

**Justificativa de seleção:** Este trabalho aborda diretamente a lacuna arquitetural que constitui o **problema de pesquisa da dissertação**. Os autores propõem uma arquitetura de serviços de informação capaz de integrar **múltiplas bases de conhecimento heterogêneas e distribuídas** — exatamente o cenário dos dados do PITCIC (relevo, meteorologia, ORBAT inimigo, considerações civis). A proposta inclui um componente de diretório semântico de serviços e um conector inteligente que habilita a descoberta e integração automáticas de novos serviços, antecipando, conceitualmente, a lógica de ingestão de dados que fundamenta a arquitetura de Data Lake proposta na dissertação. A ênfase na integração de dados como precondição para sistemas de C2 eficazes torna este artigo referência obrigatória para a seção de justificativa tecnológica da pesquisa.

---

### Artigo 3 — Framework para IA em C2: Agilidade, Antifragilidade e os Limites da Automação

> **SIMPSON, J.; EL SAWAH, S.; OOSTHUIZEN, R.; ABBASS, H.** Agile, Antifragile, Artificial-Intelligence-Enabled Command and Control. *26th International Command and Control Research & Technology Symposium*, 2021.

**Justificativa de seleção:** Embora os Artigos 1 e 2 fundamentem *o que a IA pode fazer* em C2, este trabalho contribui com uma perspectiva crítica sobre *como deve ser feita* essa integração. Os autores argumentam que a delegação irrestrita de funções de C2 à IA pode criar uma **armadilha de fragilidade** (*fragility trap*), resultando em falhas estratégicas catastróficas em ambientes operacionais complexos. Como resposta, propõem o framework *Agile, Antifragile, AI-Enabled C2* (A3IC2), cujo ciclo de retroalimentação contínua permite ao sistema melhorar sua capacidade de decisão diante de choques e surpresas — uma analogia direta ao ciclo OODA de Boyd. Este artigo é fundamental para a seção de metodologia da dissertação, pois orienta a forma como a IA deve ser posicionada: não como substituta do Comandante, mas como **amplificadora da capacidade de análise** dentro de um sistema resiliente.

---

### Artigo 4 — IA para o Planejamento Operacional: Avaliação de Soluções Sociotécnicas

> **TURNER, P. et al.** A challenging case for Artificial Intelligence: evaluation of the benefits of AI-enabled socio-technical concept solutions for Operational-level planning. *29th International Command and Control Research & Technology Symposium*, 2024.

**Justificativa de seleção:** Este artigo documenta a experiência do laboratório *Machine Speed Command and Control* (MSC2) do DSTL britânico na implementação de IA para o planejamento operacional — nível equivalente ao do PPCOT. Os autores desenvolveram e avaliaram soluções para duas funções críticas: (a) mapeamento de perspectivas de múltiplos atores (*Stakeholder Mapper*) e (b) suporte ao Design Operacional (*Support to Operational Design*). A segunda função é especialmente relevante, pois corresponde diretamente ao conceito de *Design Operacional* do PPM brasileiro. A metodologia sociotécnica empregada — que envolve ex-planejadores militares, pesquisadores de C2 e desenvolvedores de IA — oferece um modelo de validação aplicável à etapa de Avaliação do DSR desta dissertação, tornando este trabalho referência tanto para o referencial teórico quanto para a estratégia metodológica.

---

### Artigo 5 — Apoio à Decisão do Comandante: IA Aplicada ao Jogo da Guerra (*Wargaming*)

> **ABDELAZEZ, M.; GARBER, R.; GHANMI, A.** Decision Support for Commanders: An AI Approach to Wargaming. *28th International Command and Control Research & Technology Symposium*, 2023.

**Justificativa de seleção:** O *wargaming* é, no contexto do PPCOT, a Etapa 4 do PPM — o *Jogo da Guerra* —, etapa em que as Linhas de Ação (COAs) são confrontadas contra as Linhas de Ação do Inimigo (COAs inimigos) para avaliar riscos, potencialidades e adequação ao Estado Final Desejado. Os autores demonstram como a IA pode acelerar e enriquecer esse processo: executando múltiplas iterações de simulação inviáveis no wargaming manual, gerando COAs não previstas pelos planejadores e reduzindo o tempo e os recursos necessários para conduzir os jogos. A conexão direta com a Etapa 4 do PPM e com a análise de COAs — um dos produtos finais que a arquitetura de Data Lake proposta na dissertação visa subsidiar — justifica a inclusão deste trabalho como **referência de aplicação** da IA Operacional em contexto tático-operacional.

---

## 4. Síntese da Seleção

A tabela a seguir apresenta os cinco artigos selecionados com seus metadados essenciais:

| # | Autores | Ano | Título (resumido) | Relevância Central |
|---|---|---|---|---|
| 1 | Schubert et al. | 2018 | AI for Decision Support in C2 Systems | IA no processo de inteligência e operações em C2 |
| 2 | Verhoosel et al. | 2020 | Data-driven, Service-oriented, Knowledge-based C2 | Arquitetura de dados heterogêneos para C2 |
| 3 | Simpson et al. | 2021 | Agile, Antifragile, AI-Enabled C2 | Framework de IA resiliente para C2 |
| 4 | Turner et al. | 2024 | AI for Operational-level Planning | IA para Design Operacional e planejamento PPM |
| 5 | Abdelazez et al. | 2023 | AI Approach to Wargaming | IA para análise de COAs e Jogo da Guerra |

Os artigos selecionados cobrem o espectro completo necessário para fundamentar a dissertação: do **conceito** (Artigo 1) à **infraestrutura** (Artigo 2), passando pelo **framework** de integração (Artigo 3), pela **aplicação** em planejamento operacional (Artigo 4) e pela **validação tática** via wargaming (Artigo 5). Essa cobertura progressiva — do abstrato ao concreto, do estratégico ao tático — reflete a estrutura lógica proposta no ciclo do DSR adotado como metodologia da pesquisa.

---

## 5. Referências dos Artigos Selecionados (ABNT)

SCHUBERT, Jörgen; BRYNIELSSON, Joel; NILSSON, Mikael; SVENMARCK, Peter. Artificial intelligence for decision support in command and control systems. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 23., 2018. *Anais [...]*. [S. l.: s. n.], 2018.

VERHOOSEL, Jack; NOUWT, Barry; VOOGD, Jan. Data-driven, service-oriented, knowledge-based command and control. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 25., 2020. *Anais [...]*. [S. l.: s. n.], 2020.

SIMPSON, James; EL SAWAH, Sondoss; OOSTHUIZEN, Roelien; ABBASS, Hussein. Agile, antifragile, artificial-intelligence-enabled command and control. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 26., 2021. *Anais [...]*. [S. l.: s. n.], 2021.

ABDELAZEZ, Mahmoud; GARBER, Ryan; GHANMI, Adel. Decision support for commanders: an AI approach to wargaming. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 28., 2023. *Anais [...]*. [S. l.: s. n.], 2023.

TURNER, Peter et al. A challenging case for artificial intelligence: evaluation of the benefits of AI-enabled socio-technical concept solutions for operational-level planning. In: **INTERNATIONAL COMMAND AND CONTROL RESEARCH & TECHNOLOGY SYMPOSIUM**, 29., 2024. *Anais [...]*. [S. l.: s. n.], 2024.
