
-- SELECT
SELECT first_name FROM people; -- Retornas todos os primeiros nomes da tabela pessoa;
SELECT * FROM people WHERE ROWNUM <= 10; -- Retorna tudo em um limite de 10 linhas


-- WHERE

SELECT first_name FROM people WHERE state='FL' -- retorna o primeiro nome de todas as pessoas que estão no estado da florida.
SELECT fist_name, last_name FROM people WHERE state = 'CA' OR 'FL' -- retorna o primeiro nome e segundo de todas as pessoas que estão na california e florida.

SELECT first_name, last_name FROM people  WHERE state = 'CA' AND shirt_or_hat = 'shirt'; -- Retorna o primeiro e segundo nome das pessoas que estão no estado da calofornia e pediram camisas.
SELECT fist_name FROM people WHERE team != 'Blue'; Seleciona o primeiro nome de uma pessoa que sejá de um time diferente do azul;
-- No oracle DB a expreção  IS NOT ou NOT equals pode ser expressada por != ou <>

--LIKE

SELECT first_name, state FROM people WHERE state LIKE 'C%';  -- Consulta mais flexivel recupera todos os estados que se inicião com a letra C
SELECT first_name, last_name FROM peoples WHERE last_name LIKE 'Bla%' -- Retorna o primeiro e segundo nome de todas as pessoas que possuem 'Bla' no segundo nome.

-- O % pode ser utilizado tanto no inicio quando no final da consulta

--ORDET BY 
SELECT first_name, last_name FROM people ORDER BY  first_name; -- Ordena todos do nome em ordem pelo primeiro nome
SELECT first_name, last_name FROM people ORDER BY  first_name ASC; -- se não informar por padrão o oracle utiliza ela.
-- Utilize ASC para crescente e DSC para decrescente .

-- LENGTH 
SELECT first_name, length(first_name) FROM people; --retorna o tamanho da strning presente no campo;

--DISTINCT 
SELECT DISTINCT(first_name) FROM peoples; -- retorna os valores distintos da coluna 

--COUNT 
SELECT COUNT (*) FROM people WHERE state = 'CA" -- Conta todos os registros que são do estado da california.

--JOIN ou INNER JOIN 
--O inner join ou apenas join é uma consulta que combina uma ou mais tabelas. sua condição de junção comprara duas colunas ou de difrerentes 
--tabelas.
SELECT p.first_name, s.state_name FROM people p, states s WHERE p.state = s.state_abbrev;
SELECT  p.first_name, state_name FROM people p INNER JOIN  states s ON (p.state = s.state_abbrev);

--Resultados cobinados 
SELECT COUNT (first_name) FOR peoples WHERE first_name = 'James'; --conta quantoas pessoas com o nome James tem no BD
SELECT COUNT (first_name) FOR peoples WHERE first_name LIKE 'J%'; -- conta a quantidade de pessoas cujo o nome  começa com J 
SELECT COUNT(quiz_points) FOR peoples WHER quis_points >= 50 -- conta a quantidade de pessoas  que fizeram 50 pontos ou mais .






