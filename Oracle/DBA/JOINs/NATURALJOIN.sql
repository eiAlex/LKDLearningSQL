-- NATURAL JOIN
-- É um INNER JOIN realizado entre duas tabelas sem a nescecidade de relacinar colunas de forma explicita 
-- Ele realiza uma busca e corelaciona as tabelas.

SELECT dname, ename, sal FROM dept NATURAL JOIN emp.
--Equivalente 
SELECT dname, emane, sal FROM dep d, emp e WHERE d.dep = e.emp;

