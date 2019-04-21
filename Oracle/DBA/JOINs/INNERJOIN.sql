-- INNER JOIN
-- O INNER JOIN só realiza comparações se as duas colunas a serem comparas possum o mesmo valor.
-- Isto é, é nescessario que tenha equivalência entre as duas tabelas.

SELECT [NOME_CAMPO_A] , [NOME_CAMPO_B] FROM [NOME_TABELA_A] [IDENTIFICADOR_TABELA_A], [NOME_TABELA_B] [IDENTIFICADOR_TABELA_B] WHERE [IDENTIFICADOR_TABELA_A].[NOME_TABELA_A] = [IDENTIFICADOR_TABELA_B].[NOME_TABELA_B];
EX: 
SELECT ename, dname FROM emp e , dept d WHERE e.deptno = d.deptno;
