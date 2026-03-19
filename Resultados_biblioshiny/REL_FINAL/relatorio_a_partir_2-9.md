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
│  Total bruto: 4.068 registros (antes da deduplicação)          │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Remoção de duplicatas entre bases
                           │ (estimativa: ~200-400 documentos comuns)
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 2 — TRIAGEM POR IMPACTO LOCAL (CI-1 e CI-2)              │
│  Aplicar: citações locais ≥ 5 + autores âncora                 │
│  Resultado estimado: ~60-100 documentos                        │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Leitura de título e resumo
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 3 — TRIAGEM POR TEMA (CI-3, CI-4, CE-1, CE-3)           │
│  Filtrar por relevância temática para Data Lake/C2/IA          │
│  Resultado estimado: ~30-50 documentos                        │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Verificação de acesso
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 4 — ELEGIBILIDADE (CI-5 e CE-2)                          │
│  Verificar acesso ao texto integral                            │
│  Resultado estimado: ~20-35 documentos                        │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Leitura integral e análise de conteúdo
┌──────────────────────────▼──────────────────────────────────────┐
│  FASE 5 — INCLUSÃO FINAL                                        │
│  Corpus qualitativo para análise de conteúdo do Estágio 3      │
│  Resultado esperado: 10-20 documentos (conforme TEMAC)        │
└─────────────────────────────────────────────────────────────────┘
```

> **Nota**: Os números exatos das Fases 2 a 5 serão preenchidos durante a execução do Estágio 3, após aplicação manual dos critérios sobre o corpus exportado.

### 2.10.3. Justificativa da Abordagem

A vantagem central da metodologia TEMAC em relação a revisões sistemáticas tradicionais reside precisamente neste ponto: os critérios de inclusão e exclusão não são definidos a priori com base em palavras-chave genéricas, mas são **derivados empiricamente** dos achados bibliométricos. Isso significa que:

- **CI-1** usa as citações locais medidas objetivamente no Bibliometrix — não uma escolha subjetiva do pesquisador;
- **CI-3** usa o cluster de maior centralidade identificado no acoplamento bibliográfico — não uma suposição sobre o que é relevante;
- **CE-1** usa o posicionamento no mapa temático (Q3/Q4) como critério de exclusão — eliminando temas cuja força de inovação a própria literatura já demonstrou estar em declínio.

Esta cadeia metodológica — da bibliometria quantitativa aos critérios qualitativos de seleção — é o que confere ao TEMAC sua robustez e replicabilidade.

---

## 2.11. Síntese para o Estágio 3

Com base nos achados do Estágio 2, os seguintes eixos devem guiar a análise de conteúdo do Estágio 3:

**Eixo 1 — Fundação Arquitetural** (textos pivô de CI-1/CI-2):
Leitura obrigatória de Hai (2016), Sawadogo & Darmont (2020), Nambiar & Mundra (2022), Giebler et al. (2019) e Ravat et al. (2019). Objetivo: mapear os **componentes arquiteturais recorrentes** (zonas de ingestão, armazenamento bruto, curadoria, serving layer, catálogo de metadados).

**Eixo 2 — Vanguarda Tecnológica** (CI-3):
Leitura dos trabalhos sobre *Data Lakehouse* (Oreščanin & Hlupić, 2021; Harby & Zulkernine, 2022; Hai, 2023). Objetivo: identificar **requisitos de governança e transacionalidade** necessários para ambientes de alto rigor (como o contexto militar).

**Eixo 3 — Integração com IA e Apoio à Decisão** (CI-4):
Leitura de trabalhos que conectem arquitetura de dados com *Machine Learning* e suporte à decisão. Objetivo: identificar **requisitos de pipeline de ML** e padrões de integração entre o repositório e a camada analítica.

**Eixo 4 — Aplicações em Defesa e Contextos Sensíveis** (específico da dissertação):
Busca direcionada em fontes complementares (NATO C2COE, ICCRTS) por implementações de Data Lakes em contextos militares ou de segurança. Objetivo: validar a transferibilidade dos requisitos identificados para o contexto do PITCIC/PPCOT.

---

# Conclusão

O presente relatório documentou a execução dos Estágios 1 e 2 da metodologia TEMAC para a revisão sistemática da literatura sobre arquiteturas de Data Lake para aplicações de Comando e Controle.

O Estágio 1 estabeleceu uma estratégia de busca robusta, utilizando as bases de dados Scopus e Web of Science como fontes primárias, complementadas por fontes alternativas de defesa (NATO C2COE, ICCRTS, MORS). As *strings* de consulta foram desenhadas para capturar a interseção entre arquiteturas de dados, Inteligência Artificial e contextos militares, resultando em um corpus de 2.902 documentos no Scopus e 1.166 documentos no WoS.

O Estágio 2 realizou a síntese comparativa das análises bibliométricas, revelando alto grau de convergência entre as bases de dados. Os principais achados indicam:

- **Crescimento sustentado** da produção científica ao longo do período 2016-2026, com três fases distintas de evolução: infraestrutura (2016-2019), consolidação (2019-2022) e maturação cognitiva (2022-atual);
- **Concentração temática** no paradigma de *Data Lakehouse*, que representa a convergência entre Data Lake e Data Warehouse como resposta ao problema do *data swamp*;
- **Dominância de autores específicos** (QUIX C, HAI RH, DARMONT J) que constituem os pilares teóricos do campo, com convergência de impacto local em ambas as bases;
- **Liderança da China** em volume, mas com impacto qualitativo concentrado nos EUA, Europa e Oceania;
- **Importância crescente** da integração entre Data Lakes e Inteligência Artificial como vetor principal de inovação.

Os resultados bibliométricos validam cientificamente a proposta do presente projeto de mestrado, confirmando que a arquitetura de Data Lake proposta está alinhada com as tendências internacionais de desenvolvimento tecnológico. A convergência entre as duas bases de dados constitui forte evidência da robustez dos achados e fornece fundamentação sólida para as próximas etapas da pesquisa.

---

# Referências

BRADFORD, S. C. Sources of information on specific subjects. *Engineering*, v. 137, n. 3550, p. 85-86, 1934.

HAI, R. et al. Constance: An Intelligent Data Lake System. In: *Proceedings of the ACM SIGMOD International Conference on Management of Data*, 2016. p. 2097-2100.

LOTKA, A. J. The frequency distribution of scientific productivity. *Journal of the Washington Academy of Sciences*, v. 16, n. 12, p. 317-323, 1926.

NAMBIAR, A.; MUNDRA, D. An Overview of Data Warehouse and Data Lake in Modern Enterprise Data Management. *Big Data and Cognitive Computing*, v. 6, n. 4, p. 132, 2022.

OREŠČANIN, D.; HLUPIĆ, T. Data Lakehouse — A Novel Step in Analytics Architecture. In: *MIPRO 2021 Proceedings*, 2021.

PAGE, L.; BRIN, S.; MOTWANI, R.; WINOGRAD, T. The PageRank citation ranking: Bringing order to the web. *Technical Report*, Stanford University, 1999.

SAWADOGO, P.; DARMONT, J. On data lake architectures and metadata management. *Journal of Intelligent Information Systems*, v. 56, n. 1, p. 97-120, 2021.

ZIPF, G. K. *Human Behavior and the Principle of Least Effort*. Cambridge: Addison-Wesley, 1949.

---

*Relatório elaborado em conformidade com a metodologia TEMAC (Teoria do Enfoque Meta Analítico Consolidado)*

*Projeto de Mestrado: O Combustível da Decisão — Uma Arquitetura de Data Lake para o Planejamento Militar*
