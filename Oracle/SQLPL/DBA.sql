-- Conectar ao banco
CONNECT [usuario]/"[SENHA"@[CAMINHO]; 

-------------------Conceção de OBJETOS-------
-- Criação de usuario com esquema padrão
CREATE USER teste IDENTIFIED BY teste123;

--Alteação de usuário 
ALTER USER teste IDENTIFIED BY teste1234;

-- Deletar usuario
DROP USER teste;
-- Quando o  usuário possui objetos criados utilizamos 
DROP USER teste CASCADE;

--Concedendo ações para um usuario
GRANT SELECT,UPDATE, DELETE, ON [TABELA] TO [USUARIO];

--Concedendo ação de campos para usuário.
GRANT UPDATE ([campo],[campo2]) ON [TABELA] TO [USUÁRIO];

-- Concedendo ação de execução de procedure ao um usuário.
GRANT EXECUTE ON [PROCEDURE] TO [USUÁRIO];

--Para revogar provilegio ao usua´rio. REvoke funciona apena para tabela inteira
REVOKE EXECUTE ON [PROCEDURE] FROM [USUÁRIO];

-- UM usuário que recebe uma conceção tambem pode dar se for atribuido a ele
GRANT SELECT ON [TABELA] TO [USUARIO] WITH GRANT OPTION;

--
-------------------Conceção de SISTEMA-------
-- Concedendo a ação ALTER user para usuário.
GRANT ALTER USER TO [USUáRIO];

--Condedendo a ação create ANY TABLE para o usuario
GRANT CREATE ANY TABLE TO [USUáRIO];

-- Exemplo de revogação
REVOKE DROP ANY SEQUENCER FROM [USUáRIO];

-- Concessões parao usuario public refletem para todos os outros.
GRANT SELECT ON [TABELA] TO PUBLIC;

-- Criando uma ROLE.
CREATE ROLE [NOME_ROLE];

-- Após a role criada podemos definir os provilégios queela poderá ter.
GRANTe SELECT ON [TABELA] TO [NOME_ROLE];

--Podemos condecer uma ROLE a um usuário.
GRANTE [NOME_ROLE]  TO [NOME_USUARIO];

-- Consedendo alguns privilégios ao usuário.
GRANTE RESOURCE, CONNECT TO [NOME_USUÁRIO];



--Saber as tabelas de usuário conectado com o Sytem 
SELECT table_name FROM all_table WHERE owner ='[NOME_USUARIO]';
















