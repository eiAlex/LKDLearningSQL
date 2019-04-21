
-- Quando um commit é realizado todas aalaterações realizadas na sessão são atualizadas.
UPDATE pessoa SET nome ='Alex junio' WHERE id= 1;
COMMIT; -- Após este comando se torna efetivo as alterações.

-- Quando um rollbakc é realizado ele funciona como um CRT-Z desfazendo as ultimas alteraçoes até o commit.
DELETE from pessoa;
ROLLBACK; -- rollback anulando a achão de delete da linhas da tabela.


-- SET TRANSACTION também inicia uma transação – transação explícita.
SET TRANSACTION;

-- A coluna table_name da tábela user_tables tem visóes  com informações de indeces  (tabela e colunas),
SELECT table_name FROM user_tables;


list ou apenas L -- Este comando tem por finalidade ,listar a ultima ou ultimas linhas listadas.

Apeed ou apena A -- permite anexar um trecho de codigo ao fim de uma linha conrrente.

change  ou paenas C  -- Tem como função substituir partes ou trechos salvos.

Del ou DEL  + 'linha desejada'  -- Exclui um linha no buffer ou a linha corrente.

I-nput --  adiciona uma ou  mais linhas no sqlbuffer

R-un -- comando responsavel por enviar as do sqlbuffer

EXIT/QUIT  -- encerra a sessão do SQLPLUS

DESC-ribe -- Mostra descrição da uma tabela

SAVE  -- Salva o conteudo presente no buffer.

STAR-t ou @ -- resposanvel por executar o arquivo de comando existente.

HOT  -- Chama o CMD sem fechar o SQLPLUS.

SPOOL --  amazena informa em um arquivo
SPOOL D://pessoa.txt;
SELECT * FROM pessoa;
SPOLL OFF;











