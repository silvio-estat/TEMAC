# **PROPOSTA DE PROJETO DE DISSERTAÇÃO**

**Título:** O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres (PPCOT)

**Subtítulo:** Da Inteligência do Terreno (PITCIC) à Tomada de Decisão Automatizada

**Linha de Pesquisa:** Ciência de Dados / Tecnologia Militar Aplicada

**Aluno:** Sílvio Ferreira Gomes Júnior

## **1\. INTRODUÇÃO E CONTEXTUALIZAÇÃO**

A transformação digital nas forças armadas globais tem migrado do conceito de "Guerra Centrada em Rede" para a "Guerra Centrada em Dados" (*Data-Centric Warfare*) **(ESTADOS UNIDOS, 2020\)**. Neste novo paradigma, a infraestrutura de dados deixa de ser mero suporte de TI e torna-se um sistema de armas primário, essencial para a superioridade da informação e para a agilidade no ciclo de decisão.

No âmbito do Exército Brasileiro, o Manual de Campanha EB70-MC-10.211 (Processo de Planejamento e Condução das Operações Terrestres \- PPCOT) **(BRASIL, 2020\)** estabelece que o sucesso das operações depende da capacidade do Comandante e seu Estado-Maior de compreenderem o ambiente operacional, visualizarem o futuro e dirigirem as ações. Atualmente, este ciclo é alimentado pelo Processo de Integração do Terreno, Condições Meteorológicas, Inimigo e Considerações Civis (PITCIC), regulado pelo manual EB70-MC-10.336 **(BRASIL, 2023\)**.

Entretanto, a fusão desses dados ocorre de maneira majoritariamente manual ou compartimentada. O PPCOT enfatiza que o Processo de Planejamento Militar (PPM) exige a análise simultânea de múltiplos fatores em um tempo restrito (ritmo de batalha). A ausência de uma arquitetura de dados unificada cria um gargalo cognitivo, dificultando a aplicação de algoritmos de Inteligência Artificial (IA) **(RUSSELL; NORVIG, 2010, p.27,28) (KELLTON, 2025\)** que poderiam acelerar a etapa do Exame de Situação e o Design Operacional.

Este projeto propõe, como etapa inicial de uma estratégia de dados de longo prazo, a construção de uma arquitetura de *Data Lake* capaz de ingerir, processar e disponibilizar os insumos do PITCIC para nutrir diretamente as etapas críticas do PPCOT. 

Esta entrega constitui a fase fundacional para a "IA Operacional", pavimentando o caminho para uma futura evolução ao paradigma de *Data Lakehouse*, que unificará a flexibilidade do armazenamento de dados brutos com a governança necessária para aplicações avançadas de IA e Inteligência de Negócios (BI).

## **2\. PROBLEMA DE PESQUISA**

O manual EB70-MC-10.211 destaca que *"a quantidade de informações disponíveis no ambiente operacional moderno excede a capacidade humana de processamento sem auxílio tecnológico"*. A eficácia de modelos de Inteligência Artificial depende diretamente da qualidade e disponibilidade dos dados (*Garbage In, Garbage Out*) **(STENSON, 2016\) (OZMINKOWSKI, 2021\)**.

O atual cenário apresenta a seguinte lacuna:

* **Doutrinariamente:** O Exército possui processos bem definidos de planejamento (PPM) e inteligência (PITCIC).  
* **Tecnologicamente:** Faltam pipelines de dados automatizados que conectem a coleta (Sensores/Guerra Eletrônica/Geoinformação) à decisão (Sistemas de C2).

**Pergunta de Pesquisa:** Quais são os requisitos e componentes arquiteturais necessários em um Data Lake On-Premise para integrar dados heterogêneos do PITCIC e viabilizar aplicações de IA no suporte ao Exame de Situação do PPCOT?

## **3\. OBJETIVOS**

### **3.1. Objetivo Geral**

Propor e implementar uma Arquitetura de Referência de *Data Lake* (prova de conceito) que automatize a ingestão e tratamento de dados operacionais, servindo como infraestrutura habilitadora para o uso de Inteligência Artificial no apoio ao Processo de Planejamento Militar (PPM).

### **3.2. Objetivos Específicos**

1. **Mapear o Fluxo de Dados do PPCOT:** Identificar quais dados do PITCIC (Ex: relevo, hidrografia, tábua de marés, ORBAT inimigo) são críticos para as etapas de *Análise da Missão* e *Levantamento de Alternativas* do PPM.  
2. **Arquitetura Resiliente:** Projetar uma solução baseada em software livre (*Open Source*) que opere em ambiente desconectado (*On-Premise*), respeitando os requisitos de segurança de operações militares.  
3. **Pipeline ETL/ELT:** Desenvolver rotinas de extração, transformação e carga que convertam dados não estruturados (ex: relatórios de reconhecimento em texto) e geoespaciais (shapefiles) em formatos consumíveis por algoritmos de Machine Learning.  
4. **Validação Operacional:** Demonstrar a utilidade do Data Lake simulando o apoio a uma decisão tática, como a "Análise de Linhas de Ação" (Etapa 3 do PPM), provendo dados saneados para um modelo preditivo de mobilidade.

## **4\. JUSTIFICATIVA E ALINHAMENTO DOUTRINÁRIO**

A relevância deste projeto justifica-se pela necessidade de modernização do **Comando e Controle (C2)**. Conforme o EB70-MC-10.211:

*"O exercício do comando e controle é dinâmico e contínuo... visa à tomada de decisão oportuna e eficaz."*

A introdução de um Data Lake operacional ataca diretamente três pontos nevrálgicos citados no manual:

1. **Gestão da Informação e do Conhecimento:** O manual prescreve que o C2 deve ser apoiado por sistemas que facilitem o fluxo de informação. O Data Lake atua como o repositório centralizado que transforma "dados brutos" em "conhecimento processável".  
2. **Agilidade e Sincronização:** No planejamento detalhado, o Estado-Maior perde tempo precioso convertendo dados de formatos proprietários ou planilhas dispersas. A automação proposta libera o capital intelectual humano para a atividade fim: o Design Operacional e a arte da guerra.  
3. **Apoio à Decisão:** A IA não substitui o Comandante, mas o Data Lake garante que a IA tenha dados confiáveis para oferecer recomendações probabilísticas durante o *Jogo da Guerra* (Etapa 4 do PPM).

### **4.1. Estratégia Tecnológica: A Abordagem Evolutiva (Do Lake ao Lakehouse)**

Embora o paradigma de *Data Lakehouse* (que combina a flexibilidade dos *Data Lakes* com a governança dos *Data Warehouses*) represente o "Estado Final Desejado" para a arquitetura de dados da Força, este projeto adota a implementação de um *Data Lake* como solução tática imediata pelas seguintes razões:

* **Natureza dos Dados do PITCIC:** Os insumos operacionais são altamente heterogêneos e não estruturados (imagens de satélite, shapefiles, relatórios textuais). Um *Data Lake* oferece agilidade superior na ingestão desses dados brutos ("Schema-on-Read") em comparação à rigidez inicial exigida por um *Warehouse* ou *Lakehouse* completo.  
* **Curva de Maturidade:** A adoção de um *Data Lakehouse* exige uma governança de dados complexa e custosa. Propor um *Data Lake* inicial permite ao Exército obter "Vitórias Rápidas" (*Quick Wins*) no apoio ao PPCOT, validando o valor da IA Operacional antes de investir na complexidade de gestão de transações ACID e esquemas unificados.  
* **Foco na Velocidade (Ciclo OODA):** Em consonância com a agilidade exigida pelo PPCOT, o *Data Lake* remove barreiras de entrada para os cientistas de dados, acelerando a prototipagem de modelos de IA necessários para o Exame de Situação.

## **5\. METODOLOGIA**

O projeto adotará a metodologia Design Science Research (DSR). Diferentemente do método científico clássico (Hipotético-Dedutivo), que busca descrever ou explicar fenômenos naturais ou sociais de forma descritiva, o DSR é uma abordagem prescritiva voltada à resolução de problemas práticos através da construção de um *artefato* (neste caso, a arquitetura de dados) **(DRESCH; LACERDA; ANTUNES JR, 2015; HEVNER; CHATTERJEE, 2010\)**.

O ciclo do DSR será alinhado à lógica de resolução de problemas militares:

1. **Explicitação do Problema:** Análise das dificuldades do Oficial de Inteligência (S2) e de Operações (S3) em fundir dados durante o PPM.  
2. **Sugestão (Design):** Desenho da arquitetura lógica e física do Data Lake.  
3. **Desenvolvimento (Construção do Artefato):**  
   * *Camada de Ingestão:* Coleta de dados pertinentes ao *Fator Terreno* e *Condições Meteorológicas* (inputs do PITCIC).  
   * *Camada de Processamento:* Scripts para normalização de dados visando o cálculo de vetores de mobilidade.  
   * *Camada de Consumo:* Disponibilização via API para ferramentas de C2.  
4. **Avaliação:** Simulação de um cenário de Planejamento Deliberado, onde a velocidade de disponibilização da informação estruturada será comparada com o método tradicional.  
5. **Conclusão:** Documentação da arquitetura como um ativo de "Lições Aprendidas" para o Sistema de Doutrina.

## **6\. CRONOGRAMA PRELIMINAR**

* **Fase 1:** Revisão Bibliográfica e Análise Profunda do EB70-MC-10.211 (Foco no fluxo de infomação do PPM).  
* **Fase 2:** Definição da Stack Tecnológica e Arquitetura.  
* **Fase 3:** Configuração do Ambiente On-Premise (Lab).  
* **Fase 4:** Desenvolvimento dos Pipelines de Engenharia de Dados (Foco em dados do PITCIC).  
* **Fase 5:** Estudo de Caso: Alimentando o Exame de Situação (Integração com IA).  
* **Fase 6:** Escrita da Dissertação e Defesa.

## **7\. RESULTADOS ESPERADOS**

Espera-se entregar uma **Arquitetura de Referência** funcional que demonstre como o Exército pode reduzir o atrito no fluxo de informações. O produto final será um *Data Lake* populado capaz de responder a consultas complexas que auxiliem o Estado-Maior na elaboração das Linhas de Ação, concretizando o conceito de "Comando e Controle Orientado a Dados" em conformidade com o PPCOT.

**BIBLIOGRAFIA**

1. BRASIL. Exército Brasileiro. Comando de Operações Terrestres. EB70-MC-10.211: processo de planejamento e condução das operações terrestres. 1\. ed. Brasília, DF: COTER, 2020\.  
2. BRASIL. Exército Brasileiro. Comando de Operações Terrestres. EB70-MC-10.336: processo de integração terreno, condições meteorológicas, inimigo e considerações civis – PITCIC. 1\. ed. Brasília, DF: COTER, 2023\.  
3. ESTADOS UNIDOS. Department of Defense. DoD data strategy: unleashing data to advance the National Defense Strategy. Washington, D.C., 2020\.  
4. RUSSELL, Stuart; NORVIG, Peter. Artificial intelligence: a modern approach. 3\. ed. Upper Saddle River: Prentice Hall, 2010\.  
5. KELLTON. Biggest data architecture mistakes that're killing your AI initiatives. \[S. l.\], 8 out. 2025\. Disponível em: [https://www.kellton.com/kellton-tech-blog/data-architecture-mistakes-ai-initiatives](https://www.kellton.com/kellton-tech-blog/data-architecture-mistakes-ai-initiatives). Acesso em: 27 jan. 2026\.  
6. STENSON, Rob. Is this the first time anyone printed, 'Garbage In, Garbage Out'? Atlas Obscura, \[S. l.\], 14 mar. 2016\. Disponível em: [https://www.atlasobscura.com/articles/is-this-the-first-time-anyone-printed-garbage-in-garbage-out](https://www.atlasobscura.com/articles/is-this-the-first-time-anyone-printed-garbage-in-garbage-out). Acesso em: 27 jan. 2026\.  
7. OZMINKOWSKI, Ron. Garbage In, Garbage Out: saving the world is just one good reason to address this common problem. Towards Data Science, \[S. l.\], 13 nov. 2021\. Disponível em: [https://towardsdatascience.com/garbage-in-garbage-out-721b5b299bc1/](https://towardsdatascience.com/garbage-in-garbage-out-721b5b299bc1/). Acesso em: 30 jan. 2026\.  
8. DRESCH, Aline; LACERDA, Daniel Pacheco; ANTUNES JR, José Antônio Valle. Design Science Research: A Method for Science and Technology Advancement. Cham: Springer, 2015\.  
9. HEVNER, Alan; CHATTERJEE, Samir. Design Research in Information Systems: Theory and Practice. New York: Springer, 2010\.  
10. HEVNER, Alan R. et al. Design science in information systems research. MIS Quarterly, v. 28, n. 1, p. 75-105, 2004

