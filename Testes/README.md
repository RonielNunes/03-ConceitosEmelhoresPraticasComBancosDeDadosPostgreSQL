# **Introdução ao banco de dados PostgreSQL**

### As colunas de uma tabela são também chamadas de:

Atributos da tabela.

### O que são informações?

São dados agrupados e com uma definição atribuída, gerando valor.

### O que são dados?

São fatos brutos estocados sem qualquer alteração.

### O que significa a sigla SGBD?

Sistema gerenciador de banco de dados.

### O que é o pgAdmin?

Uma interface gratuita para interação com o banco de dados PostgreSQL.

### Para instalar o PostgreSQL no Windows nós precisamos:

Informar na instalação a porta do banco de dados que por padrão é 5432.

### Indique a alternativa que apresenta três características do PostgreSQL:

Suporte a dados geográficos (PostGIS), Linguagem procedural também em Python, Opensource.

### Quais são as duas principais colunas de uma tabela?

Chave primária e chave estrangeira.

### Qual é o modelo mais comum de banco de dados?

Modelo relacional

### Onde estão armazenados os dados no modelo relacional?

Armazenados em tabelas.

# **Objetos e tipos de dados do PostgreSQL**

###  Sobre Grant, é incorreto afirmar:

Todas estão corretas.

### Qual a localização padrão do arquivo postgresql.conf?

Dentro do diretório de dados do PostgreSQL, também conhecido como PGDATA


### Qual a finalidade do arquivo postgresql.conf?

Armazenar todas as configurações do servidor PostgreSQL que são compartilhadas com todos os bancos de dados do cluster.

### Para que um usuário se conecte no banco de dados PostgreSQL sem a necessidade de senha, o que precisamos configurar/editar?

O method trust do usuário do banco de dados no arquivo pg_hba.conf

### Para quê serve uma primary key:

Para garantir que a coluna id seja um campo sequencial que nunca se repete.

### Uma role com a opção INHERIT possui quais características?

Capacidade de herdar as permissões de outras roles.

### Schemas são:

Um ou mais grupos de objetos (tabelas, funções, views, triggers, etc) dentro de bancos de dados.


### Para desassociar roles, qual comando a ser executado?

REVOKE [role] FROM [role]


### Qual a porta padrão de conexão com o banco de dados PostgreSQL?

5432

### Qual dos arquivos abaixo fazem parte da configuração de autenticação?

password_encryption

# **Qual a diferença entre LEFT JOIN e LEFT OUTER JOIN?**

### Qual a diferença entre LEFT JOIN e LEFT OUTER JOIN?
Nenhuma. São o mesmo comando.

### Quais são os comandos permitidos em uma CTE?

INSERT, UPDATE, SELECT, DELETE

### Por que é importante não esquecer a cláusula WHERE em comandos de UPDATE e DELETE?

Para evitar a atualização de todos os registros da tabela.


### Qual a diferença entre os comandos TRUNCATE RESTART IDENTITY e TRUNCATE CONTINUE IDENTITY?

RESTART IDENTITY reinicia os campos seriais para um valor escolhido enquanto CONTINUE IDENTITY não reinicia os valores seriais.

### Qual a melhor prática para se evitar erros de duplicidade de registros ao inserir novo dado em uma tabela?

INSERT ON CONFLICT

### Para trazer registros apenas de 1 tabela, qual comando é mais adequado?


SELECT campos FROM tabela1


### Dada a relação abaixo:

ID	NOME	                      IDADE
1	Karen	                      17
2	Armênia	                      99
3	Cremilda                      32
4	Álvaro	                      58
5	Pedro Álvares	      76
6	Orlando Nogueira      63

O resultado 78.50 é obtido com o seguinte comando:

SELECT AVG(IDADE) + SUM(ID) FROM tabela

### Na consulta abaixo:

SELECT COUNT(id), nome
FROM cliente
WHERE nome ILIKE ‘José’;

O comando… :


Resultará em erro porque o campo nome deve ser agrupado usando o comando GROUP BY, uma vez que a função de agregação COUNT agrupa o ID.

### Qual a diferença entre as condições LIKE e ILIKE?
ILIKE é case insensitive e LIKE é case sensitive.


### Qual o tipo de relacionamento entre tabelas que cria uma matriz com todos os valores?

CROSS JOIN

# **Comandos avançados da Structured Query Language (SQL)**

### Qual a condição para uma VIEW aceitar comandos de INSERT, UPDATE ou DELETE?


Possuir apenas uma única tabela em seu conteúdo respeitando as regras de obrigatoriedade de cada coluna da tabela.

### Qual a diferença na criação de uma função com as opções SECURITY DEFINER e SECURITY INVOKER?

SECURITY DEFINER executa a função com as permissões do usuário que criou a função. SECURITY INVOKER executa a função com as permissões do usuário está executando a função.


### Os comandos básicos de uma transação são:
BEGIN, COMMIT, ROLLBACK


### Quais tipos de comandos são aceitos dentro de uma VIEW?

SELECT, INSERT, UPDATE e DELETE


### Para criar uma função de somar que retornar um número, programadas na linguagem plpgsql, com as permissões do usuário que está executando a função, com idempotência e ignorando parâmetros nulos, qual comando devemos executar?

CREATE OR REPLACE FUNCTION fc_somar(n1 INTEGER, n2 INTEGER) RETURNS INTEGER SECURITY INVOKER CALLED ON NULL INPUT LANGUAGE PLPGSQL AS $$ BEGIN RETURN n1 + n2; END; $$;


### São consideradas procedural language de uma função:

SQL, PLPGSQL, PLJAVA, PLPHP

### Uma TEMP VIEW é?
Uma view que estará disponível apenas na sessão ativa de cada usuário.

### A opção WITH LOCAL CHECK OPTION em uma VIEW tem qual finalidade?

Validar comandos de INSERT, UPDATE ou DELETE conforme as condições da consulta dentro da VIEW chamada.

### Para utilizar corretamente o código de idempotência de função com o OR REPLACE, devemos seguir quais regras?


A função deve ter sempre o mesmo nome; A função deve ter os mesmos parâmetros e seus tipos de dados; A função deve retornar sempre o mesmo tipo de dado.

### Para desfazer os comandos de um código específico e retornar a um outro ponto da transação, devemos usar:

ROLLBACK TO SAVEPOINT


### Para utilizar corretamente o código de idempotência de função com o OR REPLACE, devemos seguir quais regras?

A função deve ter sempre o mesmo nome; A função deve ter os mesmos parâmetros e seus tipos de dados; A função deve retornar sempre o mesmo tipo de dado.
