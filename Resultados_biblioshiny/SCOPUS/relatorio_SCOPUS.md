# **Análise Bibliométrica em Profundidade e Estruturação TEMAC**

Este documento apresenta uma análise exaustiva dos resultados exportados via Bibliometrix (Scopus), com o objetivo de fornecer um alicerce robusto para a condução de uma Revisão Sistemática da Literatura (RSL). O relatório está dividido em duas partes: (I) Análise detalhada dos dados e (II) Síntese baseada na Metodologia TEMAC.

## **PARTE I: ANÁLISE DETALHADA DOS RESULTADOS BIBLIOMÉTRICOS**

### **1\. Informações Principais e Crescimento da Produção Científica**


* **Visão Geral (MainInfo.csv):** A amostra é composta por 3.192 documentos publicados entre 2016 e 2026, sendo **1.548 *Conference Papers*** e **1.033 *Articles***. Aparentemente, áreas de rápida inovação tecnológica (como Ciência da Computação e Engenharia de Dados), as conferências parecem ser o principal veículo de disseminação, diferente de outras áreas que são ainda publicizadas em periódicos tradicionais.  
  
* **Crescimento Exponencial:** A produção saltou de 149 publicações (2016) para 948 (2025), como pode-se observar na Figura 1. 
  

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig1_prod_cient_anual_scopus.png" width="500">
    <figcaption>Figura 1. Produção científica anual</figcaption>
  </figure>
</div>

* **Impacto das Citações:** Os anos de 2018 e 2021 apresentam as maiores médias de citações por ano. Artigos publicados neste período formam a base consolidada do conhecimento atual.

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig2_qtd_media_cit_scopus.png" width="500">
    <figcaption>Figura 2. Quantidade média de citações por ano</figcaption>
  </figure>
</div>


### **2\. Análise de Fontes (Periódicos e Eventos)**

* **Lei de Bradford:** A lei de dispersão de Bradford indica que o "Núcleo 1" (Zone 1\) do tema é composto por cerca de 79 fontes, ou seja, o primeiro terço da quantidade total de pesquisas é representado pelas 79 fontes. Essa será a zona principal de pesquisas.
  
* **Fontes Mais Relevantes e com Maior Impacto:** As séries *Lecture Notes in Computer Science* (105 artigos, h-index 14\) e *Lecture Notes in Networks and Systems* (73 artigos) lideram em volume. No entanto, o **IEEE Access** (41 artigos, 767 citações, h-index 13\) e o **Procedia Computer Science** (33 artigos, 818 citações) são as fontes de **maior impacto**. Notavelmente, periódicos como *Sensors* e *Sustainability* aparecem no topo, mostrando, provavelmente, que o tema está sendo aplicado em IoT e Sustentabilidade.

### **3\. Análise de Autores e Padrões de Colaboração**



* **Produtividade vs. Impacto:** Autores asiáticos dominam a produção (ZHANG Y, LI X, WANG Y), conforme Figura 3. Contudo, o impacto local revela uma anomalia fundamental: **BALAC N possui 1.160 citações locais**, um valor sensivelmente superior ao segundo colocado (QUIX C, com 62), conforme Figura 4. Balac N é o "autor âncora" desta rede de conhecimento, ou seja, é o autor com trabalhos considerados mais importantes. Cabe destacar ainda os seguintes resultados:
   * **Liderança por TC (Total de Citações)**: O autor LI Y possui o maior impacto local (TC = 605), o que significa que ele é a maior referência teórica dentro desse grupo de documentos, seguido por WANG H (TC = 400).
   * **Eficiência (Impacto vs. Quantidade)**: LIU Z tem um impacto local alto (TC = 392) com apenas 16 publicações (NP), enquanto ZHANG Y tem 44 publicações mas um impacto bem menor (TC = 190). Isso mostra que os trabalhos de LIU Z são mais influentes para esse tema específico.
   * **Consolidação (m-index)**: Autores como GRÖGER C e LIU Z têm o maior m-index (0.875), indicando que atingiram um impacto relevante em menos tempo (carreira mais "produtiva" recentemente dentro do tema).


 <mark style="background-color: #ffb86c;">COLOCAR AQUI MAIS INFORMACOES DO ZHANG Y</mark>.

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig3_qtd_artg_autor_scopus.png" width="500">
    <figcaption>Figura 3. Quantidade total de artigos produzidos por autor (2016-2026)</figcaption>
  </figure>
</div>

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig4_qtd_cit_autor_scopus.png" width="500">
    <figcaption>Figura 4. Quantidade total de citações por autor (2016-2026)</figcaption>
  </figure>
</div>

<mark style="background-color: #ffb86c;">COLOCAR AQUI MAIS INFORMACOES DO BALAC N</mark>.


* **Lei de Lotka:** 85,5% dos autores (8.570) escreveram apenas 1 artigo. Isso pode caracterizar um campo de pesquisa "fragmentado" e altamente interdisciplinar. Provavelmente muitos pesquisadores "visitam" o tema para resolver um problema específico de suas áreas e não retornam. 
  
* **Redes de Colaboração:** A rede de colaboração mostra fortes laços entre autores de origem chinesa (Zhang, Li, Wang), formando o maior *cluster* (colégio invisível) da amostra, conforme figura 5.

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig5_rede_autores_colab_scopus.png" width="500">
    <figcaption>Figura 5. Rede de colaboração entre autores (2016-2026)</figcaption>
  </figure>
</div>

### **4\. Distribuição Geográfica e Institucional**


* **Dominância Asiática:** A **China** é o motor do tema (1.549 publicações), seguida pela Índia (1.132) e EUA (755). Na Europa, Itália (348) e Alemanha (315) lideram.
   
* **Instituições e Casos de Uso:** Excluindo o erro de reporte (31 trabalhos sem o metadado de afiliação), as três instituições mais produtivas são chinesas: Jiangsu University (23), Beihang University (20) e Tongji University (19). Isso indica que o centro de gravidade da produção acadêmica deste tema específico está fortemente concentrado na China. Além disso, tem-se:
  * **Área Médica/Saúde**: A presença da Fondazione Policlinico Gemelli (18) sugere que existem aplicações do tema na área da saúde ou biotecnologia.
  * **Engenharia e Tecnologia**: Universidades como Tsinghua (18) e Politecnico di Milano (16) reforçam um viés tecnológico ou de engenharia.
  * **Presença Lusófona**: A Universidade do Minho (17) aparece com destaque.
  * **Termo Genérico**: O item "College of Engineering" (17) é um erro comum de padronização. Provavelmente refere-se a faculdades de engenharia de diferentes universidades que o software não conseguiu agrupar corretamente sob o nome da instituição principal.
  
* **Colaboração Global:** A maior ponte de colaboração ocorre entre China e EUA, e China e Austrália. Há um "deserto" de colaborações no hemisfério sul (África e América do Sul).
* **Produção por país:** A figura 6 mostra um aumento, ao longo dos anos, da produção científica na área de pesquisa, destacando-se a China, em primeiro lugar e a Índia em segundo. Porém pode-se perceber que, apesar de produzir mais artigos que o Estados Unidos, este último possui mais impacto em termos de citação que a Índia.

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig6_paises_mais_produtivos_scopus.png" width="500">
    <figcaption>Figura 6. Produção de pesquisas por páis (os mais relevantes) ao longo dos anos.</figcaption>
  </figure>
</div>

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig7_paises_mais_citados_scopus.png" width="500">
    <figcaption>Figura 7. Países mais citados ao longo dos anos.</figcaption>
  </figure>
</div>

### **5\. Documentos Seminais e Espectroscopia (RPYS)**


* **Documentos Globais vs. Locais:** O artigo mais citado globalmente é ***Francia M, 2021* (839 citações, focado em Future Generation Computer Systems)**, que representa o número total de citações que um artigo recebeu em toda a base de dados. Mas o documento mais importante, que representa o número de citações que um documento recebeu de outros artigos que fazem parte da amostra de interesse da pesquisa, é o mais citado localmente: **Balac N, 2020 (Intell Internet of Things: From Device To Fog and Cloud)**, conforme figuras 8 e 9.

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig8_docs_mais_cit_glob_scopus.jpeg" width="500">
    <figcaption>Figura 8. Documentos globais mais citados.</figcaption>
  </figure>
</div>

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig9_docs_mais_cit_loc_scopus.jpeg" width="500">
    <figcaption>Figura 9. Documentos locais mais citados.</figcaption>
  </figure>
</div>


* **A Raiz Teórica:** O RPYS (Espectroscopia de Ano de Publicação) mostra "picos" históricos que fundaram a área:  
  * **2004/2008:** O nascimento do processamento distribuído (Trabalho de Dean J. sobre *MapReduce*).  
  * **2011/2014:** A explosão do *Big Data* (Trabalho de Chen, 2014).  
  * **2015/2016:** A conceitualização do *Data Lake* (Trabalho seminal de Fang, 2015).  
  * **2021:** A evolução para o *Lakehouse* (Trabalho de Armbrust, 2021).

### **6\. Temática, Palavras-chave e Tendências**


* **Frequência Absoluta:** A palavra mais frequente não é uma tecnologia, mas um objetivo de negócio: **Decision Making (1.065)**, superando Big Data (1.044) e Data Integration (897), conforme figura 9. 

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig10_palavras_mais_freq_scopus.jpeg" width="500">
    <figcaption>Figura 10. Palavras mais frequentes.</figcaption>
  </figure>
</div>

* **Evolução Temática:**  Pode-se, a partir da figura 11, propor três recortes de tempo com os termos mais frequentes:

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig11_topicos_mais_relevantes_spcopus.jpeg" width="500">
    <figcaption>Figura 11. Distribuição das palavras mais relevantes no tempo.</figcaption>
  </figure>
</div>

  * *Passado (2016-2019):* Hadoop, MapReduce, Fast Data. (Tecnologia de infraestrutura).  
  * *Presente (2020-2022):* Data Architectures, Digital Storage, Data Handling. (Gestão e arquitetura).  
  * *Futuro (2022-Atualidade):* Network Architecture, Digital Twin, Predictive Analytics. (Uso da inteligência em tempo real).
  
* **Mapa Temático:** O *Decision Making* (Tomada de Decisão) juntamente com *IoT* e *Data Integration* formam os temas motores (alta centralidade e alta densidade), ou seja, são o coração do desenvolvimento atual.

 <div align="center">
  <figure>
    <img src="/Resultados_biblioshiny/SCOPUS/fig12_mapa_tematico_scopus.jpeg" width="500">
    <figcaption>Figura 12. Mapa temático dos tópicos.</figcaption>
  </figure>
</div>

## **PARTE II: SÍNTESE METODOLÓGICA T-E-M-A-C**

Com base na interpretação aprofundada acima, estruturamos os pilares para a escrita da sua Revisão Sistemática da Literatura.

### **T \- Teoria (A base conceptual)**

A literatura sofreu uma mutação teórica evidente. A teoria de base evoluiu do mero "processamento distribuído em lote" (*batch processing* suportado pela teoria do MapReduce de 2008\) para o conceito de **Arquiteturas de Gestão Dinâmica**.

* **Fundamento Central:** A transição do conceito de *Data Warehouse* (dados estruturados) para *Data Lakes* (dados brutos e heterogêneos), formalizada por autores como Fang (2015) e Hai (2016).  
* **Evolução Teórica Atual:** O estado da arte teórico atual, ancorado nos trabalhos de Balac (2020) e Armbrust (2021), postula a necessidade de arquiteturas híbridas (*Lakehouses*) integradas à computação em nuvem e névoa (*Fog computing*) para lidar com a Internet das Coisas.

### **E \- Empiria (O campo de observação e prática)**

A empiria desta área do conhecimento é caracterizada por testes massivos em escala, liderados pelo eixo Asiático (China e Índia).

* **Domínios de Aplicação:** Os dados bibliométricos confirmam que a experimentação saiu dos laboratórios de computação. A presença forte de publicações na área médica (Hospital Policlinico Gemelli), em revistas de *Sustainability* e *Automation in Construction*, mostra que as arquiteturas de dados estão sendo testadas empiricamente na **Saúde Inteligente (Smart Health)**, **Cidades Inteligentes (Smart Cities)** e **Construção Civil/Engenharia (Digital Twins)**.  
* **Lacunas Empíricas (Research Gaps):** Existe uma vasta lacuna empírica na aplicação dessas tecnologias em cenários de infraestrutura precária ou ambientes de baixo orçamento, típicos do Sul Global (América Latina e África), visto que a produção nestas regiões é estatisticamente irrelevante na amostra global.

### **M \- Metodologia (Ferramentas e técnicas de resolução)**

Para resolver os desafios da arquitetura de dados modernos, a literatura abandonou métodos puramente estatísticos e abraçou a computação avançada.

* **Inteligência Habilitadora:** O uso de **Artificial Intelligence** (397) e **Machine Learning** (374) são as metodologias padrão (*gold standard*) atuais para promover a *Data Fusion* (fusão de dados) e o refinamento do *Data Lake*.  
* **Maturidade Metodológica:** A análise fatorial aponta para uma clusterização metodológica focada em **Deep Learning** e **Predictive Analytics**. A metodologia vigente não procura apenas "entender o que aconteceu" com os dados, mas usar algoritmos de aprendizagem profunda para "prever o que vai acontecer" com altíssima velocidade (*real-time systems*).

### **A \- Análise (O foco do escrutínio dos pesquisadores)**

O que os investigadores estão realmente a analisar quando recolhem e processam todo este volume de dados?

* **Tomada de Decisão:** O objetivo principal de todas as arquiteturas propostas na literatura não é o armazenamento em si, mas o **Decision Making**. A análise científica recai sobre como criar *Decision Support Systems* que sejam rápidos e confiáveis.  
* **Representação Virtual:** Uma forte tendência analítica recente é o **Digital Twin** (Gêmeo Digital). A análise da literatura foca em como utilizar a integração de dados para criar simulações perfeitas de sistemas físicos no mundo digital, permitindo testes analíticos sem risco de operação (usado na indústria 4.0 e hospitais).

### **C \- Contexto (O ambiente circundante)**

O contexto tecnológico, social e de mercado que exige essas pesquisas.

* **Gatilho Contextual (IoT):** A *Internet of Things* (IoT) é o grande motor. O contexto atual é um mundo hiper-sensorizado. Sensores industriais, smartwatches, veículos autônomos geram um tsunami de dados desestruturados em tempo real, tornando as antigas arquiteturas (Hadoop) obsoletas devido à latência.  
* **Contexto de Maturidade:** Como indicado pelo ciclo de vida da produção (*LifeCycle.csv*), o campo entrou na sua fase de estabilização pós-pico (2024-2025). O contexto atual não é mais "inventar a tecnologia de Data Lake", mas focar na **governança de dados, privacidade (Data Privacy) e qualidade da informação (Metadata Management)**.

### **💡 Recomendações Estratégicas Finais para a RSL**

1. **Foco Temporal:** Defina a janela da sua revisão sistemática para artigos publicados **após 2018/2019**. Textos anteriores discutirão infraestruturas (como Hadoop puro) que já não refletem a fronteira de inovação analítica exigida pelos novos *frameworks* de IA.  
2. **Busca em Conferências:** Não restrinja sua busca bibliográfica apenas a periódicos revisados por pares (*journals*). O cerne inovador da área (1.548 documentos) reside nos *Conference Papers* (*Lecture Notes in Computer Science*, etc.). Excluí-los causará um grave viés na sua RSL.  
3. **Sugestão de Pergunta de Pesquisa (RQ):** Baseado na metodologia TEMAC extraída, uma excelente pergunta para sua revisão seria: *"Como a integração de Machine Learning em Data Lakes (M) otimiza os Sistemas de Apoio à Tomada de Decisão (A) em contextos aplicados de Saúde/Indústria (E/C)?"*