--Outer JOIN
--A uso se dá quando não exite equivalencia entre tabelas
--Temos um relacionamento entre tabelas como um INNER JOIN, 
-- A expressão (+) realiza uma conexão entre as tabelas mesmo que não haja.
--Dependendo da possição do + pode ser um LEFT OUTER JOIN ou RIGHT OUTER JOIN

--EX
SELECT ename, dname FROM emp e , dept d WHERE e.deptno(+) = d.deptno;
--EX

SELECT ename, dname FROM emp e , dept d WHERE e.deptno = d.deptno(+);
