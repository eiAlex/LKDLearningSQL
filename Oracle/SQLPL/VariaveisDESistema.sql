-- As variaveis de sistema guiam o comportamento da ferramenta e da apresnatação dos dados exibidos por ela.
-- Utiliza SET para configurar e SHOW para ver os valores.


ARRAY-size -- o padrão é 15 define o número de linhas a serem recuperadas


DEF-INE -- Ao se utilizar o ON temos que utilizar um prefixo de & para deteminar um elemento
SET DEFINE ON;
SELECTE * FROM pessoa WHERE id = &id;
-- Aquivo SQL
accept qtd prompt
"Informe o ID:"
SELECT * FROM pessoa WHERE codigo = &codigo;
/

ECHO -- podemos definir se o camando SQL sera exibido ou não

HEA-DING -- define se os cabeçalhos das tabelas serão mostrados ou não 

LIN-SIZE -  difine a quantidade de caracteres por linha o padrão do sistema é 80.

PAGES-IZE -- Define a quantidade de linhas em cada pagina o padrão é 24.

TIMI-NG  --  controla se o TIME sera apresentado ou não.
PAU-SE --  podese passar mensagem ou realizar uma pausa depois do procedimento

SERVEROUT -- Realizar uma pesquisa sibre 

ESC-APE -- Define qual será o caractere de escape

SQLT-TERMINATOR --Define qual sera o carctere de fim de execução para o SQLPLUS

SQLP-ROMPT -- define um testo de prompt pro SQLplus

TERMOUT -- Exibe tela de resultados

FEEDBACK -- exibe os retornos do SQL
