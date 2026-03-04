
# **Estágio II - Análise Detalhada dos Resultados Biblitométricos**


### **1. Informações Principais e Crescimento da Produção Científica**

* **Visão Geral:** A amostra é composta por 2.902 documentos publicados entre 2016 e 2026, sendo **1.548 *Conference Papers*** e **1.033 *Articles***. Em áreas de rápida inovação tecnológica (como Ciência da Computação e Engenharia de Dados), as conferências parecem ser o principal veículo de disseminação, diferente de outras áreas que são ainda publicizadas primeiramente em periódicos tradicionais.  
* **Expansão da produção:** A produção saltou de 138 publicações (2016) para 840 (2025), como pode-se observar na Figura 1.

<div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig1_prod_cient_anual.png" width="500">
    <figcaption>Figura 1. Produção científica anual</figcaption>
  </figure>
</div>

* **Impacto das Citações:** Os anos de 2020 e 2021 apresentam as maiores médias de citações por ano (respectivamente 2,83 e 3,72 citações por artigo por ano). Artigos publicados neste período formam a base consolidada do conhecimento atual.

 <div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig2_citacoes_por_ano.png" width="500">
    <figcaption>Figura 2. Quantidade média de citações por ano</figcaption>
  </figure>
</div>


### **2 Análise de Fontes (Periódicos e Eventos)**

* **Lei de Bradford:** A lei de dispersão de Bradford indica que o "Núcleo 1" (Zone 1) do tema é composto por cerca de 63 fontes, ou seja, as primeiras 63 fontes (de um total de 1.553) representam o núcleo principal de pesquisas, com aproximadamente 959 documentos (primeiro terço da produção).  
* **Fontes Mais Relevantes e com Maior Impacto:** As séries *Lecture Notes in Computer Science* (103 artigos, h-index 14) e *Lecture Notes in Networks and Systems* (72 artigos) lideram em volume. No entanto, o **IEEE Access** (41 artigos, 767 citações, h-index 13) e o **Procedia Computer Science** (33 artigos, 818 citações) são as fontes de **maior impacto**. Notavelmente, periódicos como *Sensors* e *Sustainability* aparecem no topo, mostrando que o tema está transcendendo a computação pura e sendo aplicado em ecossistemas de IoT e Sustentabilidade.

### **3. Análise de Autores e Padrões de Colaboração**

* **Produtividade vs. Impacto:** Autores asiáticos dominam a produção (ZHANG Y, LI X, WANG Y). Contudo, o impacto local revela uma dinâmica interessante:  
  * **Liderança por TC (Total de Citações)**: O autor LI Y possui o maior impacto local (TC = 583), o que significa que ele é a maior referência teórica dentro desse grupo de documentos, seguido por COSTA C (TC = 424) e WANG H (TC = 399).  
  * **Eficiência (Impacto vs. Quantidade)**: LI X tem um impacto local razoável (TC = 343) com 35 publicações, enquanto ZHANG Y tem 44 publicações com impacto menor (TC = 190). Isso mostra que os trabalhos de LI X são, proporcionalmente, mais influentes.  
  * **O papel de ZHANG Y:** Apesar de um TC menor em comparação a LI Y, a análise da Rede de Colaboração (Figura 5) revela que ZHANG Y é o principal *hub* estrutural da pesquisa asiática. Ele atua como o "nó aglutinador" do maior *cluster* da rede (o cluster vermelho), conectando diversos pesquisadores e facilitando a alta produtividade do grupo.  
  * **Autores Âncora (QUIX C e HAI R):** Olhando estritamente para citações de documentos *dentro* da nossa amostra, **QUIX C (60 citações locais)** e **HAI R (59 citações locais)** destacam-se como os pilares teóricos. Suas pesquisas funcionam como a "cola" intelectual do campo; eles não apenas publicam, mas ditam a base teórica (focada em Data Lakes e integração semântica) que os outros autores asiáticos e europeus utilizam para desenvolver seus próprios trabalhos.


 <div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig4_autores_mais_relevantes.png" width="500">
    <figcaption>Figura 3. Quantidade total de artigos produzidos por autor (2016-2026)</figcaption>
  </figure>
</div>

 <div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig5_autores_mais_citados.png" width="500">
    <figcaption>Figura 4. Quantidade total de citações por autor (2016-2026)</figcaption>
  </figure>
</div>


De acordo com a *Openalex*, ZHANG Y publicou 234 trabalhos, tendo um total de 2037 citações, com os principais tópicos relacionados a *Data Management and Algorithms*, *Advanced Database Systems and Queries*, *Topic Modeling*, *Cloud Computing and Resource Management* e *Recommender Systems and Techniques*.

Por outro lado, ainda de acordo com a *Openalex*, QUIX C publicou 7 trabalhos, tendo um total de 393 citações, com os principais tópicos relacionados a *Data Lakes*, *Data Discovery*, *Semantic Web*, *Ontology-Based Data-Access*, *Metadata Management* e *Big Data*

* **Redes de Colaboração:** A rede de colaboração (Figura 5) é nitidamente dividida em quatro grandes comunidades de pesquisa (clusters vermelho, azul, verde e roxo). A dominância é do grupo vermelho (liderado por ZHANG Y e LI X). Observa-se que a pesquisa não ocorre em silos isolados; há pontes (arestas cinzas) cruzando os clusters, o que denota um campo acadêmico articulado, ainda que polarizado em torno de grandes grupos de pesquisa orientais.

 <div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig19_CollabNet_scopus.png" width="500">
    <figcaption>Figura 5. Rede de colaboração entre autores (2016-2026)</figcaption>
  </figure>
</div>

### **4. Distribuição Geográfica e Institucional**

* **Dominância Asiática:** A **China** é o motor do tema (1.521 publicações), seguida pela Índia (896) e EUA (692). Na Europa, Itália (332) e Alemanha (282) lideram. Contudo, apesar de produzir menos em volume que a Índia, os Estados Unidos possuem um impacto de citação significativamente maior, sugerindo trabalhos de caráter mais seminal ou publicações em revistas de maior estrato, conforme figuras 6 e 7.
  
<div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig8_paises_mais_produtivos.png" width="500">
    <figcaption>Figura 6. Quantidade de trabalhos publicados por país</figcaption>
  </figure>
</div>

<div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig9_paises_mais_citados.png" width="500">
    <figcaption>Figura 7. Quantidade de citações por país</figcaption>
  </figure>
</div>

* **Instituições e Casos de Uso:** As três instituições mais produtivas são chinesas: Jiangsu University (23), Beihang University (20) e Tongji University (19), conforme figura 8. Além disso, nota-se:  
  * **Área Médica/Saúde**: A presença da *Fondazione Policlinico Gemelli* (18) sugere que os Data Lakes e a IA estão sendo aplicados empiricamente na saúde.  
  * **Engenharia**: Universidades como Tsinghua (17) e Politecnico di Milano (16) reforçam um viés tecnológico aplicado.

<div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig7_afiliacoes_mais_relevantes.png" width="500">
    <figcaption>Figura 8. Quantidade de publicações por instituição</figcaption>
  </figure>
</div>


### **5. Fundações Teóricas e Espectroscopia Histórica**

* **Documentos Globais vs. Locais:** O artigo mais citado globalmente é *Francia M, 2021* (839 citações). Contudo, a verdadeira matriz do tema é revelada pelas citações locais. O documento **NA, 2018 (Proc ACM SIGMOD)** atua como o divisor de águas da área (108 citações locais), conforme figuras 9 e 10. Cabe destacar que o documento **NA, 2018** trata-se de um  **Proceedings** contendo diversos trabalhos na área e, por conta disso, pode ter tido muitas citações relacionadas a diversos autores que colaboraram com esse documento.

<div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig10_docs_mais_citados_global.png" width="500">
    <figcaption>Figura 9. Quantidade de citações globais por publicação</figcaption>
  </figure>
</div>

<div align="center">
  <figure>
    <img src="graficos_scopus_vs2/fig11_docs_mais_citados_local.png" width="500">
    <figcaption>Figura 10. Quantidade de citações locais por publicação</figcaption>
  </figure>
</div>


* **Historiografia e Fluxo do Conhecimento:** A análise historiográfica e a rede de cocitação revelam a linha do tempo exata da evolução técnica da área:  
  * **A Gênese (2015-2016):** A rede de cocitação mostra que o campo se apoia fortemente em trabalhos fundamentais como *"Managing data lakes in big data era"* (Fang, 2015) e *"An intelligent data lake system"* (Hai R., 2016), conforme figuras 11 e 12.
  
      <div align="center">
        <figure>
          <img src="graficos_scopus_vs2/fig24_Referencias_Locais_Citadas_Importantes.png" width="500">
          <figcaption>Figura 11. Quantidade de citações locais por publicação</figcaption>
        </figure>
      </div>

  * **O Pivô (2018):** O documento *NA, 2018*, relacionado ao trabalhos publicados no *PROCEEDINGS OF THE ACM SIGMOD INTERNATIONAL CONFERENCE ON MANAGEMENT OF DATA* serve como um funil no grafo histórico, reunindo o conhecimento disperso dos anos anteriores e padronizando-o.  
  * **A Maturidade (2021-2023):** A partir dessa consolidação, o fluxo histórico aponta para as pesquisas mais contemporâneas de consolidação (como Sawadogo P., 2021 e trabalhos subsequentes de Hai R., 2023), focados em otimização de consultas e aplicação.

    <div align="center">
      <figure>
        <img src="graficos_scopus_vs2/fig22_Historiograph_scopus.png" width="500">
        <figcaption>Figura 12. Rede cronológica de citações diretas dos artigos mais relevantes sobre o assunto </figcaption>
      </figure>
    </div>

### **6. Temática, Evolução de Palavras-chave e Tendências (Lakehouse)**

* **A Dicotomia Conceitual:** A análise de co-ocorrência de palavras revela uma divisão quase perfeita da área em dois grandes hemisférios interligados, como pode-se observar na figura 13:  
  * **Hemisfério Azul (Infraestrutura):** Agrupa os conceitos base como "Big Data", "Data Warehouses", "Information Management" e "Cloud Computing". É a camada fundacional.  
  * **Hemisfério Vermelho (Valor e Aplicação):** Agrupa os conceitos voltados ao uso da informação, como "Artificial Intelligence", "Machine Learning" e, como centro gravitacional, **"Decision Making"** (termo mais frequente de toda a amostra, superando o próprio Big Data). O campo foca em *como* extrair valor (Vermelho) da infraestrutura (Azul).

  <div align="center">
    <figure>
      <img src="graficos_scopus_vs2/fig21_CoWordNet_scopus.png" width="500">
      <figcaption>Figura 13. Rede de Co-ocorrência de Palavras-chave</figcaption>
    </figure>
  </div>

* **Acoplamento Bibliográfico e o Surgimento do Lakehouse:** O Mapa de Acoplamento revela o que está gerando mais impacto *atualmente*. Enquanto os clusters focados puramente em "Big Data" ou "Data Lake" têm alto impacto estrutural, desponta no quadrante de alta centralidade e alto impacto o cluster **"Data Lakehouse - conf 71.4%"**. Isso indica uma clara tendência de ruptura tecnológica: a pesquisa de vanguarda está abandonando a dualidade Warehouse/Lake e focando na arquitetura unificada de *Lakehouse*.

  <div align="center">
    <figure>
      <img src="graficos_scopus_vs2/Fig17_mapa_coupling_scopus.png" width="500">
      <figcaption>Figura 14. Mapa Temático de Acoplamento Bibliográfico: Análise de Centralidade e Impacto </figcaption>
    </figure>
  </div>

* **Mapa Temático Estratégico: Temas Básicos:** Big Data e Information Management. (Já consolidados, viraram pré-requisitos), conforme figura 15 abaixo.  
  * **Temas Motores:** Decision Making e Machine Learning. (Alta centralidade e densidade, são o coração da inovação atual).  
  * **Temas Emergentes:** Data Integration, Internet of Things e Digital Twin. (As próximas fronteiras empíricas).

  <div align="center">
    <figure>
      <img src="graficos_scopus_vs2/fig23_thematicmap_scopus.png" width="500">
      <figcaption>Figura 15. Matriz de Evolução Temática: Maturidade e Interconexão dos Clusters de Pesquisa  </figcaption>
    </figure>
  </div>




# **Estágio 3 - Detalhamento, Modelagem Integrativa e Validação por Evidências**

Para consolidar a Revisão Sistemática da Literatura, os seguintes passos metodológicos devem ser executados em sequência:

1. **Triagem e Seleção (Afunilamento):** Aplicação dos critérios de inclusão e exclusão para reduzir a amostra inicial de 2.902 documentos a um portfólio de leitura viável e altamente relevante. 
2. **Análise, de Conteúdo (Leitura Integral):** Extração sistemática de dados dos artigos finais selecionados, com foco em: metodologias utilizadas, lacunas de pesquisa apontadas, construtos teóricos, arquiteturas propostas e resultados empíricos. 
3. **Síntese e Modelagem Integrativa:** Criação de um *framework*, taxonomia ou modelo conceitual que consolide o estado da arte e direcione a agenda de pesquisas futuras (ex.: o mapeamento da transição de *Data Lakes* para *Lakehouses* aplicados à tomada de decisão).

## **3. Diretrizes para Seleção da Amostra (Baseadas em Evidências Bibliométricas)**

A grande vantagem do TEMAC é a utilização dos dados bibliométricos (Estágio 2) para justificar a escolha da amostra de leitura (Estágio 3). A seleção dos trabalhos deve ser guiada pelos seguintes eixos estratégicos revelados na análise:

* **Eixo de Fundamentação (Textos Pivôs):** A matriz do tema é revelada pelas citações locais. Documentos como NA, 2018 (Proc ACM SIGMOD - 108 citações locais), Fang, 2015 ("Managing data lakes in big data era") e Hai R., 2016 ("An intelligent data lake system") são o alicerce da área e de leitura obrigatória. 
* **Eixo de Influência (Autores Âncora):** Trabalhos de autores com alta eficiência e centralidade na rede, como QUIX C. (60 citações locais), HAI R. (59 citações locais) e LI X., devem ser priorizados, pois representam a base teórica de integração semântica. 
* **Eixo de Vanguarda Tecnológica:** O cluster "Data Lakehouse" demonstrou alta centralidade e impacto (71.4%). A pesquisa deve focar nesta ruptura tecnológica, priorizando artigos que abordam a arquitetura unificada de *Lakehouse*. 
* **Eixo de Valor e Aplicação:** A bibliometria revelou uma dicotomia conceitual. A seleção deve buscar trabalhos que façam a ponte entre a infraestrutura de dados (Hemisfério Azul: *Big Data*, *Cloud Computing*) e a aplicação analítica (Hemisfério Vermelho: *Decision Making* e *Machine Learning*), identificados como os verdadeiros "Temas Motores" da área.

## **4. Critérios de Inclusão (CI) e Exclusão (CE)**

Para garantir a replicabilidade da pesquisa e eliminar o viés do pesquisador, foram definidos os seguintes critérios formais, fundamentados nos achados bibliométricos:

### **4.1. Critérios de Inclusão (CI)**

| Código | Critério | Justificativa (Evidência Bibliométrica) |
| :---- | :---- | :---- |
| **CI-1** | **Trabalhos Fundacionais e Textos Pivôs:** Artigos com alto índice de citações locais (ex.: \> 20 citações locais), incluindo obras de referência no grafo histórico. | Constituem a base teórica e padronizam o conhecimento disperso da área. |
| **CI-2** | **Autoria de Referência:** Trabalhos liderados ou coautorados por investigadores de elevada centralidade na rede (ex.: QUIX C., HAI R., LI X.). | Atuam como pilares intelectuais do campo, ditando as bases de arquitetura e integração. |
| **CI-3** | **Foco em Vanguarda Tecnológica:** Estudos focados na evolução para a arquitetura unificada de *Lakehouse*. | Representa o cluster de maior centralidade e impacto (71.4%), refletindo a tendência atual. |
| **CI-4** | **Integração Infraestrutura-Valor:** Trabalhos que integrem arquiteturas de dados com *Decision Making* e/ou *Machine Learning*. | Estes foram identificados no Mapa Temático como os "Temas Motores" e o coração da inovação tecnológica. |
| **CI-5** | **Tipologia de Publicação:** Artigos completos (*Articles*) e artigos de conferência (*Conference Papers*), que representam 89% da amostra e são os motores de disseminação na área. | Garante o alinhamento com o comportamento de publicação das ciências da computação e dados. |

### **4.2. Critérios de Exclusão (CE)**

| Código | Critério | Justificativa (Evidência Bibliométrica) |
| :---- | :---- | :---- |
| **CE-1** | **Abordagem Genérica ou Periférica:** Estudos que abordam *Big Data*, *Information Management* ou *Cloud* sem foco central em arquiteturas de *Data Lakes*/*Lakehouses*. | Estes conceitos foram classificados como "Temas Básicos" (já consolidados como pré-requisitos), não respondendo à fronteira de inovação. |
| **CE-2** | **Indisponibilidade do Texto Integral:** Documentos cujo texto completo não está acessível para download/leitura. | A fase de Análise de Conteúdo do TEMAC exige leitura integral, inviabilizando o uso exclusivo de resumos. |
| **CE-3** | **Desalinhamento Temático e Satélites:** Estudos focados exclusivamente em algoritmos isolados, hardware, ou temas emergentes (*IoT*, *Digital Twin*) que não possuam integração clara com a arquitetura de dados central. | Evita o desvio de escopo, mantendo o foco nos problemas arquitetônicos e de tomada de decisão. |

## **5. Operacionalização: O Funil de Seleção**

A aplicação destes critérios ocorrerá em um processo sequencial de filtragem (semelhante ao diagrama PRISMA), devendo ser documentado passo a passo para a redação final do método:

1. **Fase 1: Identificação (N = 2.902):** Amostra bruta exportada da base Scopus. 
2. **Fase 2: Triagem por Impacto Local:** Ordenação da base por Citações Locais e aplicação imediata de **CI-1** e **CI-2** para garantir a retenção dos documentos fundamentais (independentemente do ano). 
3. **Fase 3: Triagem por Título e Resumo:** Leitura dos metadados dos artigos (com foco principal nas publicações recentes, 2022-2026). Aplicação de **CI-3**, **CI-4**, **CE-1** e **CE-3**. O objetivo é filtrar a vanguarda e eliminar os estudos genéricos. 
4. **Fase 4: Elegibilidade e Leitura Integral:** Com a lista reduzida a um portfólio viável (recomenda-se entre 50 a 80 artigos para teses/dissertações), aplica-se o **CE-2** (exclusão por falta de acesso) e realiza-se a leitura na íntegra, confirmando a aderência total ao tema de pesquisa. 
5. **Fase 5: Inclusão Final (N = ?):** O conjunto final de documentos que comporá o *corpus* qualitativo para a Síntese e Modelagem Integrativa.