--USING
--Agrupa tabelas com colunas de mesmo nome, mas tipos de dados que não a correspondem

SELECT [NOME_COLUNA] , [NOME_COLUNA] FROM [TABELA] JOIN [TABELA] USING [ATRIBUTO_EM_COMUM];

EX:
SELECT emplotee_id, last_name, location_id, departamento_id FROM employees JOIN departaments USING (departament_id);


