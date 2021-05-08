/*
Escreva uma consulta que limite a resposta apenas às primeiras 15 linhas e inclua os campos occurred_at, account_id, e channel na tabela web_events.
*/

SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15;

/*
A fim de ganhar alguma prática usando o ORDER BY:




1. Escreva uma consulta para devolver as 10 encomendas mais antigas na tabela de encomendas. Inclua a id, occurred_at, and total_amt_usd.





2. Escreva uma consulta para devolver as 5 primeiras encomendas em termos de maior total_amt_usd. Incluir o id, account_id, e total_amt_usd.





3. Escrever uma consulta para devolver as 20 ordens inferiores em termos de total mínimo. Inclua o id, account_id, e total_amt_usd.
*/

SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;

SELECT id, account_id, total
FROM orders
ORDER BY total
LIMIT 20;

/*
Escreva uma query que:
1. Puxe as primeiras 5 fileiras e todas as colunas da tabela de pedidos que tenham uma quantidade de dólares de gloss_amt_usd maior ou igual a 1000.

2. Puxe as primeiras 10 linhas e todas as colunas da tabela de ordens que tenham uma quantidade total de gloss_amt_usd inferior a 500.
*/

SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;