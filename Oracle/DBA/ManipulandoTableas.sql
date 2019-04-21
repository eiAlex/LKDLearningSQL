-- Manipulando Tabelas em um DB.


--Criação de Tabelas, definição de colunas e propiedades inerentes ao banco de dados.
CREATE TABLE [NOME_DA_TABELA] 
([NOME_DO_CAMPO/NOME_DO_ATRIBUTO] [TIPO_DA_COLUNA/TIPO_ATRIBUTO][OBRIGATORIAEDADE];
 
 EX:
 CREATE TABLE emp
 (empno     number(4,2) not null,
  ename     varchar2(10),
  job       varchar2(9),
  mgr       number(4,9),
  hiredate  date,
  sal       number(7,2),
  comm      number(7,2),
  deptno    number(2,0)
  );

 EX2:
 CREATE TABLE dept
 (deptno    number(2,0),
  dname     varchar2(14),
  loc       varchar2(13)
  );
 
 -- DEFAULT ESPECIFICATIONS
 -- Na criação de tabelas pode-se criar tabelas com valores padrão (DEFAULT)
 EX:
 CREATE TABLE empregados
 (empno     number(4,0) not null,
  ename     varchar2(10),
  job       varchar2(9),
  mgr       number(4,0),
  hiredate  date default sysdate,
  sal       number(7,2),
  comm      number(2,0) default 0,
  deptno    number(2,0)
  );
	-- Ao inseriri informação em tabela que possuem campos default o valor será preenchido mesmo quando não declarado
	EX
	INSERT INTO empregados (empno, ename, job, mgr, sal, comm, deptno)
	VALUES (11, 'Alex', 'Pedreiro', 1, 1000, 2, 1);
	
 

		
--Criando tabelas baseadas em outras tabelas select.
	CREATE TABLE SALES as SELECT * FROM empregados WHERE job='SALESMAN';			

 -- Caso vocÊ queira levar apenas a estrutura da tabela 
	CREATE TABLE  [NOME_NOVA_TABELA] as SELECT * FROM [NOME_TABELA_IMPORTADA] WHERE 1<>1;		-- A cláusura 1<>1 faz com que nenhum dado seja retornado																																																																				

--Tabela Temporaria por sessão.			   
     	create global temporary table emp_tmp 
	( empno 	number(4,0)not null,
	 ename		varchar2(10),
	 job 		varchar2(9),
	 mgr 		number(4,0),
	 hiredate 	date,
	 sal 		number(7,2),
	 comm 		number(7,2),
	 deptno 	number(2,0))
	ON COMMIT preserve rows;                        
                                   
  --    ALTER TABLE
 
  --Alterar um atributo tabela
 
ALTER TABLE [NOME_TABELA] MODIFY ([NOME_CAMPO] [ATRIBUTOS_QUE_SERÂO_ALTERADOS];
EX:    
ALTER TABLE emp MODIFY (empno number(4,0));
                                   
 -- Alterar o nome de uma coluna na tabela
ALTER TABLE [NOME_TABELA] RENAME COLUMN [NOME_COLUNA] TO [NOVO_NOME_COLUNA];
EX
ALTER TABLE empregados RENAME COLUMN depto TO deptno;
				  
--Alter table adicionando um campo a tabéla.
ALTER TABLE [NOME_TABELA] ADD [NOME_ATRIBUTO] date;
EX
ALTER TABLE empregos ADD data_nascimento date;

-- Excluindo uma coluna.
ALTER TABLE [NOME_TABELA] DROP COLUMN [NOME_COLUNA];
EX:
ALTER TABLE empregados DROP COLUMN dt_nascimento;

-- Modificando uma atributo
ALTER TABLE [NOME_TABELA] MODIFY [NOME_COLUNA] [ATRIBUTO] [OBRIGATORIEDADE];
EX:
ALTER TABLE empregados MODIFY ename varchar2(240) NOT NULL;

--Adicionando uma nova coluna com varchar
ALTER TABLE [NOME_TABELA] add ([NOME_COLUNA] VARCHAR2 ([QTD_CHARS]);
EX:
ALTER TABLE empregos ADD (observaco VARCHAR2 (2000));
			       
--Renomeando uma coluna de uma tabela.
ALTER TABLE [NOME_TABELA] RENAME COLUMN [NOME_COLUNA] TO [NOVO_NOME];
EX:
ALTER TABLE empregados RENAME COLUMN ename TO nome;
			       
--Alterando uma tabela para modo leitura;
ALTER TABLE [NOME_TABELA] READ ONLY;
EX:
ALTER TABLE empregados READ ONLY;

--Alterando para modo leitura e gravação;
ALTER TABLE [NOME_TABELA] READ WRITE;
EX:
ALTER TABLE empregos READ WRITE;
			       
--DROP TABLE
-- Deletar uma tabela que você tenha permissão 
DROP TABLR [NOME_TABELA];

-- DELETAR TODAS AS LINHAS DA TABELA SEM ROOLBACK
TRUNCATE TABLE [NOME_TABELA];
			       
--ORDER BY
--Axulia em como os dados serão ordenados ASC ou DESC por default ASC
SELECT [NOME_COLUNA] FROM [TABELA] ORDER BY [NOME_COLUNA];
EX:
SELECT nome FROM empregados ORDER BY nome;
SELECT [NOME_COLUNA] FROM [TABELA] ORDER BY [NOME_COLUNA] DESC; --ordena decresente.
-- Ordenação com subquery
SELECT empno,nome,deptno FROM empregados AS e ORDER BY (SELECT dname FROM dept as d WHERE d.deptno = edptno);

				  

				  
				  
				  
				  
				  
				  
				  
