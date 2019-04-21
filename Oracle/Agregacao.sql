SELECT SUM (valor) FROM compras; -- Função de agregação que soma valores de uma coluna.

SELECT SUM(valor) FROM compras WHERE data > '01-JAN-2017'; -- Finção de Agregação que soma os valores de da coluna valor 
-- com uma estrutura condicional.

SELECT AVG(valor) FROM compras; -- Retorna a média da coluna compras.

SELECT COUNT(id) FROM compras WHERE data BETWEEN '01-JAN-2018' and '31-DEZ-2018'; -- Conta quantos indices a tabela possui entre as datas

SELECT SUM(valor) as SOMA, AVG(valor) as Media FROM compras; -- Retorna a soma e a media da coluna valor noeados.

SELECT SUM(valor) FROM compras WHERE recebido = '1'; -- Estrutura condicional de duas colunas.

SELECT recebido, SUM(valor) FROM compras GROUP BY recebido; -- Função de agregação

SELECT EXTRACT (YEAR FROM data), SUM(valor) FROM compras GROUP BY EXTRACT(YEAR FROM data); -- Função extract do oracleDB extrai o ano 
-- da coluna data e agrega ao grupo data.

SELECT EXTRACT (YEAR FROM data) AS ANO, SUM(valor) AS SOMA FROM compras GROUP BY EXTRACT(YEAR FROM data) ORDER BY ano;
-- Seleção de soma com colunas renoameadas agregadas e ordenadas.

-- cria a tabela compradores todos not null,
CREATE TABLE compradores(id number primary key, nome varchar2(30) NOT NULL, endereco varchar2(30) NOT NULL, telefone varchar2(20) NOT NULL);

-- cria a sequencia 
CREATE SEQUENCE id_compradores_seq;

-- Faz inserção na tabela
INSERT INTO compradores (id, nome, endereco, telefone) VALUES (id_compradores_seq.nextval, 'Alex', 'Durval Moreira, 123', '9652616-6261');
INSERT INTO compradores (id, nome, endereco, telefone) VALUES (id_compradores_seq.nextval, 'Fernanda', 'Professor Abeylard, 123', '7612872-1111');

-- Altera a coluna telefone
ALETER TABLE compras MODIFY (telefone varchar2(30));

--Exibir mais caracteres por linha
SET LINESIZE 100;

-- adicionar a coluna comprador_id na tabela comrpas
ALTER TABLE compras ADD(comprador_id number);

--UPDATE PARA adicionar id em compradr
UPDATE  compras SET comprador_id=1 WHERE id <=20;
UPDATE compras SET comprador_id =2 WHERE id > 20;

-- Juntando as duas tabelas
SELECT observacao, valor, nome FROM compras JOIN compradores ON compras.comprador_id = compradores.id;

-- criando uma chave estrageira.
ALTER TABLE compras ADD FOREING KEY (comprador_id) REFERENCES compradores(id);








