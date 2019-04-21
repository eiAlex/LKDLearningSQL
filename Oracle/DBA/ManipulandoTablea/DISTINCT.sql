--DISTINCT
--Comando utilizado para agrupar registros reicidentes.
SELECT DISTINCT [NOME_CAMPO] FROM [NOME_TABELA] ORDER BY [NOME_CAMPO] ASC; 
EX:
SELECT DISTINCT deptno  FROM emp ORDER BY deptno ASC;
-- O UNIQUE é um comando semelhante ao DISTINCT.
EX: SELECT UNIQUE deptno FROM emp ORDER BY deptno ASC;
-- O comando oposto seria ALL mas muito pouco usado , por ter o *
EX: SELECT ALL deptno FROM emp ORDER BY deptno ASC;
