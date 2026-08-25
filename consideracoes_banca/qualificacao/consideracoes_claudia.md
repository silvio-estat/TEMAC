# CONSIDERAÇÕES DA QUALIFICAÇÃO DA PROFESSORA CLAUDIA

## CAPA

- Marcou o objetivo "Dissertacao apresentada como requisito parcial para qualificação do Mestrado Professional em Computação Aplicada" -> Checar como outros colegas coloram na qualificação.
- Pediu para ajustar a data da capa que estava totalmente em desacordo com a data da qualificacao abril -> agosto;
- Na referenciação do professor, usar "Prof.ª Dr.ª" ou "Profa. Dra."


## CAP 1 - INTRODUCAO

- Na parte de delimitação de escopo ela escreveu "Alguma investigação sobre os sistemas e dados reais envolvidos?";
- No item do meu projeto que fala "Integração com sistemas legados específicos do Exército Brasileiro" ela fez a seguinte pergunta: "Mas como demonstrar que a solucao proposta é útil?";
- Em um determinado momento - na parte de contribuição acadêmnica e tecnológica - eu escrevi que "... nenhum aborda a aplicação do padrão Lakehouse Medallion ao contexto institucional, doutrinário e operacional do Exército Brasileiro no nível brigada". Para isso ela escreveu "Mas o fato de não haver uma solução específica para o EB não chega a caracterizar uma contribuição acadêmica. (Melhorar a justificativa academica?)

## CAP 2 - METODOLOGIA

- Na página 11, a professora marcou "Trabalhos anteriores a 2016 não contemplam as abordagens que representam o estado da arte atual" ela escreveu: "no que se refere a? melhorar a justific." -> provavelmente ela quer que eu defina melhor em qual área/disciplina estou falando aqui.
  
## CAP 3 - REFERENCIAL TEÓRICO
- Ela disse que poderia excluir certos detalhamentos. Disse que eu poderia rever c/ base no que realmente precisa p/ entender a minha proposta. Acho que falei demais, expliquei demais.
- Melhorar a concordância, pag 24, Giebler et al DESTACAM...;
- Na página 25, pediu para eu explicar melhor o que quis dizer com "...por seu formato..." como forma de caracterizar os data ponds, inclusive ela até sugeriu se não era melhor usar a palavra "estrutura".
- Na página 25 ela marcou o trecho "... em sislos disjuntos..." falado pela Giebler e colocou a seguinte mensagem para isso: "Será? Literatura marketeira?" -> nao acho que é o caso. aparenta ser uma autora de renome que publicou na IEEE.
- Já na página 26 ela disse: "O que essa nova definição em zonas tem de diferente da ETL", fazendo referencia à figura 3.4 - arquitetura por zonas e camadas;

## CAP 4 - PROPOSTA DE ARQUITETURA

- Na Figura 4.1 (p.50), marcou a caixa "Engine de processamento (orquestrado por pipelines)" e sugeriu explicitar melhor o processo, sem esconder as zonas de dados -> Acho que ela anotou isso antes de ler o restante do capítulo, pois logo depois eu destrincho o que é feito entre cada zona; talvez seja um pedido pra tornar a figura mais autoexplicativa, com remissão mais clara às subseções seguintes.
- Perguntou "Há dados que chegam direto em B [Bronze]?" -> Mesma observação acima: ambiguidade visual sobre a Landing ser porta de entrada obrigatória, algo que já resolvo no texto (RD-4) mas que a figura sozinha não deixa claro.
- Sugeriu que a zona Silver pode ter dados já prontos para consulta e visualização (ex.: mapas com posições de elementos) -> Conferir se a subseção da Silver já menciona a interface de consulta analítica própria dela, e se isso está refletido no diagrama.
- Na conexão da Gold com o "Engine de consulta analítica", escreveu algo como "não necessariamente visão analítica" -> Sugestão de não rotular essa saída exclusivamente como analítica, já que BI/API/relatórios também consomem os dados da Gold.
- Escreveu "Alfa Bravo Charlie?" próximo a "Sistemas subsidiários das Funções de Combate" -> Provavelmente relacionado à hierarquia de ferramentas do FAC2FTER (Charlie = ferramenta de ponta/trincheira, Bravo = camada intermediária, Alpha = comandantes/planejamento). Confirmar com a professora a intenção exata.