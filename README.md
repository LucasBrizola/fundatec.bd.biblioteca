# fundatec.bd.biblioteca

A seguir são listados os principais problemas da biblioteca de uma escola, analisando estes problemas, crie um Modelo conceitual e o modelo ER que vise atender os problemas propostos.

Após, elabore o script de criação da base de dados e suas tabelas, bem como crie também o script que vai inserir os dados nestas tabelas, preste atenção nos requisitos mínimos especificados logo após a descrição dos problemas.

Por último, elabore as consultas que atenderão de fato os problemas listados.

Boa sorte!

 

Sugestão: Após realizar a modelagem, criação e inserção de dados, faça uma consulta de cada vez, mas faça bem feito, é melhor fazer uma ou duas bem feitas, do que fazer 4 que não funcionam. 

 

Problemas a serem solucionados:

 

Problema A:

"José da Silva é aluno de uma escola, e gostaria de saber a data para devolução do livro "Javascript Ninja" que ele pegou na biblioteca semana passada, pois ele não lembra o prazo nem o dia que retirou."

 

Problema B:

"Um aluno deseja consultar se o livro "JQuery in Action" está disponível no momento"

 

Problema C:

"Maria Joaquina atende no balcão da biblioteca, ela precisa de uma lista de todos os livros que ela entregou ou recebeu ontem"

 

Problema D:

"O diretor da escola deseja saber quais os 5 livros mais retirados pelos alunos, para que possa comprar mais livros parecidos"

 

Problema E:

"O diretor da escola deseja saber quais livros não são retirados a mais de 1 ano, para que estes sejam doados ou descartados"

 

Problema F:

“O Diretor da escola deseja cobrar multa por dias de atraso na entrega dos livros”.

 

Problema G:

“A escola recebeu uma doação de livros e será necessário verificar se já existe esse livro no acervo, caso exista deve ser informado o número de exemplares, caso contrário deve ser cadastrado um novo livro”

 

Requisitos mínimos:
Todas as consultas devem retornar resultados, ou seja, deverão existir dados suficiente para isto.

Criar as consultas necessárias para validar cada problema e cada requisito.

Todos Selects que envolvam mais de uma tabela devem fazer uso do JOIN.

·         Devem existir no mínimo 20 livros.

·         Devem existir no mínimo 10 alunos.

·         Devem existir no mínimo 2 atendentes.

·         Devem existir no mínimo 5 retiradas de livros por cada aluno, metade entregues por um atendente, metade pela outra no mínimo.

·         Devem existir pelo menos 4 alunos com pendencia de entrega de livros com multa aplicada.

·         Devem existir pelo menos dois livros sem retiradas a mais de 1 ano (ou nunca retirados).

·         Criar uma Função que retorne se um livro especifico está disponível ou não.

·         Criar uma função para verificar se existe débito para um determinado aluno. A Função deve retornar o valor do débito, caso exista.

·         Criar uma Procedure que faça a reserva do livro

·         Criar uma procedure que faça a devolução do livro. Deve ser verificado no momento da entrega se o livro está em atraso. Caso esteja, inserir o valor da multa.

·         Criar uma procedure para inserir um novo aluno

·         Criar uma procedure para a cobrança de multa por atraso na entrega dos livros. O valor da multa a ser cobrado é de R$ 2,00 por dia de atraso.

·         Criar uma View que retorne todos os livros que estão disponíveis. 

·         Criar uma view que retorne por aluno, as pendencias de entregas de livros informando o nome do livro, o valor da multa e os dias em atraso
