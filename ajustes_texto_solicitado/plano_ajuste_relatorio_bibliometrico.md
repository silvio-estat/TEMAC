# PLANO DE AJUSTE DO RELATÓRIO BIBLIOMÉTRICO ESTÁGIO 1 e 2 - METODOLOGIA TEMAC

## PERSONA
Você é um aluno de mestrado que está construindo a parte de revisão bibliográfica utilizando a metodologia TEMAC

## SITUACAO

Você está utilizando a metodologia TEMAC para realizar a revisão sistemática da literatura do seu projeto de mestrado:

1. **Titulo**: O Combustível da Decisão: Uma Arquitetura de Data Lake para Acelerar o Processo de Planejamento e Condução das Operações Terrestres;
2. **Problema de pesquisa**: O manual EB70-MC-10.211 destaca que "a quantidade de informações disponíveis no ambiente operacional moderno excede a capacidade humana de processamento sem auxílio tecnológico". A eficácia de modelos de Inteligência Artificial depende diretamente da qualidade e disponibilidade dos dados (Garbage In, Garbage Out);
3. **Pergunta de Pesquisa**: Quais são os requisitos e componentes arquiteturais necessários em um Data Lake On-Premise para integrar dados heterogêneos do PITCIC e viabilizar aplicações de IA no suporte ao Exame de Situação do PPCOT;
4. **Objetivo Geral**: Propor e implementar uma Arquitetura de Referência de Data Lake (prova de conceito) que automatize a ingestão e tratamento de dados operacionais, servindo como infraestrutura habilitadora para o uso de Inteligência Artificial no apoio ao Processo de Planejamento Militar (PPM);
5. **Objetivos Específicos**:
   1. **Arquitetura Resiliente**: Projetar uma solução baseada em software livre (Open Source) que opere em ambiente desconectado (On-Premise), respeitando os requisitos de segurança de operações militares;
   2. **Pipeline ETL/ELT**: Desenvolver rotinas de extração, transformação e carga que convertam dados não estruturados (ex: relatórios de reconhecimento em texto) e geoespaciais (shapefiles) em formatos consumíveis por algoritmos de Machine Learning;
   3. **Validação Operacional**: Demonstrar a utilidade do Data Lake simulando o apoio a uma decisão tática, como a "Análise de Linhas de Ação" (Etapa 3 do PPM), provendo dados saneados para um modelo preditivo de mobilidade.
6. **Justificativa**: A relevância deste projeto justifica-se pela necessidade de modernização do Comando e Controle (C2). A introdução de um Data Lake operacional ataca diretamente três pontos nevrálgicos citados no manual:
   1. **Gestão da Informação e do Conhecimento**: O manual prescreve que o C2 deve ser apoiado por sistemas que facilitem o fluxo de informação. O Data Lake atua como o repositório centralizado que transforma "dados brutos" em "conhecimento processável".
   2. **Agilidade e Sincronização**: No planejamento detalhado, o Estado-Maior perde tempo precioso convertendo dados de formatos proprietários ou planilhas dispersas. A automação proposta libera o capital intelectual humano para a atividade fim: o Design Operacional e a arte da guerra.
   3. **Apoio à Decisão**: A IA não substitui o Comandante, mas o Data Lake garante que a IA tenha dados confiáveis para oferecer recomendações probabilísticas durante o Jogo da Guerra (Etapa 4 do PPM).
   4. **Data lake**: Embora o paradigma de Data Lakehouse (que combina a flexibilidade dos Data Lakes com a governança dos Data Warehouses) represente o "Estado Final Desejado" para a arquitetura de dados da Força, este projeto adota a implementação de um Data Lake como solução tática imediata.

## INSTRUMENTOS DISPONÍVEIS

1. **Palavras-chave utilizadas para baixar as bases de dados de metadados**: informacoes_iniciais/palavras_chave_temac.md;
2. **Relatório bibliométrico parcial SCOPUS**: Resultados_biblioshiny/SCOPUS/analise_vs2/relatorio_SCOPUS_vs4.md;
3. **Relatório bibliométrico parcial WoS**: Resultados_biblioshiny/WoS/analise_vs1/relatorio_WoS_vs1.md;
4. **Planilha contendo os dados da análise do Biblioshiny() para a SCOPUS**: Resultados_biblioshiny/SCOPUS/analise_vs2/bibliometrix_scopus_vs2.xlsx;
5. **Planilha contendo os dados da análise do Biblioshiny() para a WoS** Resultados_biblioshiny/WoS/analise_vs1/bibliometrix_wos.xlsx;
6. **Considerações do professor quanto à análise de cada fonte**: ajustes_texto_solicitado/ajuste_nr1.md;
7. **Histórico de trabalho**: historico_de_trabalho/historico.md
8. **Manual do bibliometrix**: bibliometrix/bibliometrix_manual.pdf

## OBJETIVO

Realizar a construção do relatório final (estágios 1 e 2) da revisão sistemática utilizando a metodologia TEMAC.

1. Construir a parte do relatório referente ao estágio 1, buscando as palavras chave e justificando a busca de cada conjunto, assim como relatar quantos trabalhos retornaram em cada consulta;
2. Realizar a síntese comparativa dos relatórios parciais da análise bibliométrica ("relatorio_SCOPUS_vs4.md" e "relatorio_WoS_vs1.md"). O objetivo não é apenas colar os textos, mas comparar os resultados das duas bases, destacando principalmente as convergências (quando ambas apontam para as mesmas tendências, autores ou tecnologias) e pontuando divergências relevantes. Levar em consideração os apontamentos do orientador ("ajuste_nr1.md") e o manual técnico ("bibliometrix_manual.pdf"). Tal síntese estruturará o Estágio 2 da metodologia TEMAC.

## DIRETRIZES

1. Utilizar tom acadêmico formal e impessoal (terceira pessoa).
2. Ao integrar as análises, focar não apenas nos números frios, mas em como as tendências bibliométricas (autores, instituições, palavras-chave) convergem para a aplicação prática do tema, conectando os achados com as necessidades de arquiteturas de data lakes e o contexto de comando e controle.
3. Justificar as decisões metodológicas citando as diretrizes da metodologia TEMAC.
4. Foco na Convergência: Dedicar atenção especial para evidenciar quando a base Scopus e a base Web of Science chegam aos mesmos resultados (ex: mesmas palavras-chave mais frequentes, mesmos autores de referência). Utilizar essa concordância para fortalecer os argumentos que embasam a escolha da arquitetura de Data Lake proposta.

## RELATORIO FINAL

1. Deve ter uma introdução;
2. Uma seção chamada "Estágio 1: Estratégia de Busca e Seleção do Corpus":
   1. Deve-se falar sobre a escolha das bases de dados SCOPUS e WOS pois eram bases de dados consagradas que indexam diversos jornais etc. Falar também que as informações foram filtradas para que só fossem retornadas relativas a trabalhos de 2016 a 2026;
   2. Falar que existem outras fontes, principalmente na área de defesa, que foram estudadas fora da metodologia TEMAC por falta de metadados estruturados;
   3. Mostrar de forma geral quais foram as strings utilizadas e os resultados e o porquê das escolhas;
3. Uma nova seção deve-se chamar "Estágio 2: Síntese Comparativa da Análise Bibliométrica"
   1. Aqui deve-se realizar uma análise profunda de cada documento discorrendo sobre:
      1. **Informações Principais e Crescimento da Produção Científica**: Discorrer sobre a "Visão Geral","Expansão da produção", "Impacto das Citações";
      2. **Análise de Fontes (Periódicos e Eventos)**: Discorrer sobre "Lei de Bradford", "Fontes Mais Relevantes e com Maior Impacto";
      3. **Análise de Autores e Padrões de Colaboração**: Discorrer sobre "Produtividade vs. Impacto", "Liderança por Citações Locais", "Eficiência (Impacto vs. Quantidade)", "Papel dos autores principais - locais e globais", "Redes de Colaboração";
      4. **Distribuição Geográfica e Institucional**: Discorrer sobre "Países dominantes", "Instituições e Casos de Uso";
      5. **Fundações Teóricas e Espectroscopia Histórica**: Discorrer sobre "Documentos Globais vs. Locais", "Historiografia e Fluxo do Conhecimento";
      6. **Temática, Evolução de Palavras-chave e Tendências**:  Discorrer sobre a "estruturação temática pelos clusters analisados", "Mapa Temático Estratégico" e "Tendências de Palavras-chave".
   2. Adicionar os gráficos/figuras por meio do código html que está presente nos relatorios markdown;
   3. Adicionar uma conclusão do Estagio 2 sobre os achados de forma geral e se os resultados das duas bases de dados convergiram. 