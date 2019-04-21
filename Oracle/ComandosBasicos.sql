connect [nome usuário]/"[senha]" -- deve-se utilizar aspas quando a senha possui um caracteres especial ex: @

CREATE TABLE compras (id number primary key, valor number, data date, observacoes vachar2(30), recebido char check (recebido in (0,1)));
-- no DB oracle não possui  valores booleanos então deve-se realizar aquela checagem,

CREATE SEQUENCE id_seq; -- oracle DB não possui auto incremento de chaves então se torna nescessário a criação de uma sequência 

INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 100, '12-MAY-2017', 'compras de maio', '1');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 150, '15-JUN-2017', 'compras de junho', '0');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '15-NOV-2017', 'compras de novembro', '0');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '15-DEZ-2017', 'compras de dezembro', '1');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '14-FEV-2017', 'compras de Fevereiro', '1');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '18-MAR-2017', 'compras de Março', '0');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '14-ABR-2017', 'compras de Abril', '1');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '14-MAI-2017', 'compras de Maio', '1');
INSERT INTO compras (id, valor, data, observacoes, recebido) VALUES (id_seq.nextval, 180, '14-JUN-2018', 'compras de junho', '1');

-- A inserção de valores no banco oracle segue o padrão de caracteres a data é refenciada pro 3 letras referente ao mês, id_seg.nextval
-- é o autoincrement da tabela passando a seguencia.

SELECT * FROM COMPRAS; -- É e o mesmo selecte de sempre 
SELECT valor, data FROM compras; -- Pode se selecionar apenas os campos desejados.
SELECT valor *3, data FROM compras; -- Pode-se realizar expressões numericas no SELECT.
SELECT (valor * 3) AS triplo, data from compras; -- Pode-se nomear os elementos e uilizar parênteses para uma melhor organização

SELECT valor , data FROM compras WHERE valor < 120; -- Retorna compras menores que 120 WHERE é a condição ou onde.
SELECT valor, data FROM compras WHERE valor < 120 AND recebido = '1'; --Retorna compras  menores que 120 e que foram recebidas.

SELECT * FROM  compras WHERE observacoes = 'compras'; -- está consulta não retornará nada pois nesta checagem ela busca 
--exatemente a palavra compras no banco .

SELECT * FROM compras WHERE observacoes like 'compras%'; -- Esta retornará todas as compras pois fará uma busca da para compras
--e seu caracteres a frente, lembrado é CASE SENCITIVE.

SELECT * FROM compras WHERE observacoes like '%de%'; -- Retonas todas as strings que possuem 'de' no inicio ou no final.

SELECT * FROM compras WHERE valor >= 200 and valor <=700; -- Seleciona todas as compras que estão entre 200 e 700.
SELECT * FROM compras WHERE valor between 200 and 700 ;  -- Quere equivalente.
SELECT * FROM compras WHERE data between '01-JAN-2017' and '01-ABR-2017';


UPDATE compras SET valor = 900; --COMANDO MUITO PERIGOSO  PODE ALTERAR TODOS OS DADOS DA COLUNA VALOR DA TABELA COMPRAS PARA 900.
UPDATE compras SET valor = 900 WHERE id = 1; -- UPDATE seguro informando o ID que quero alterar.

UPDATE compras SET observacoes = 'datas Festivas' WHERE data in ('01-ABR-2017', '25-DEZ-2017'); -- UPDATE por agrupamento de dados.

DELETE  FROM compras; -- COMANDO QUE APAGA TUDO DENTRO DA TABELA Equivalente ao ALL ou * 
DELETE FROM compras WHERE id = 6; -- Deleção segura informando o ID para ser certeito.
DELETE FROM comprass WHERE valor >50; -- Deleção por estrutura condicional.

DESCRIBE compras;
DESC compras -- Utilizados para descrever um tabela.

SELECT * FROM compras WHERE observacoes IS NULL; -- retorna todos os dados da tabela compras em que as observações estejão nullas
SELECT * FROM compras WHERE observacoes IS NOT NULL; -- retorna todos os dados que a coluna observações são not null.

DELETE  FROM compras WHERE observacoes IS NULL; -- Deleta todos os dados da tabela compras que na coluna observações estão nulos.

ALTER TABLE compras MODIFY (observacoes varchar2(30) NOT NULL); -- Altera a coluna observacoes para não acietar nulo.
ALTER TABLE compras MODIFY (recebido CHAR DEFAULT '0' CHECK (recebido IN (0,1))); -- altera campo recebido para receber um valor delfault
-- Caso não seja passado um valor compras ele recebe um padrão default

ALTER TABLE compras ADD (forma_pgt VARCHAR2(10) CHECK (forma_pagt in ('boleto', 'dinehiro', 'cartao')));
-- Altera a tabela compras adicionando uma coluna forma_Pagt que recebe apena tres pararametros.

UPDATE compras SET forma_pgt= 'dinheiro' WHERE forma_pagt IS NULL;
-- Atualiza os campos nulos para dinheiro

ALTER TABLE compras RENAME COLUNM forma_pagt TO forma_pagto;
-- muda o nome da coluna.



