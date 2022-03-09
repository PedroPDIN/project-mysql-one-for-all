-- 6 =
SELECT 
MIN(p.price) AS faturamento_minimo,
MAX(p.price) AS faturamento_maximo,
ROUND(AVG(price), 2) AS faturamento_medio,
SUM(price) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.`user` AS u
ON p.plan_id = u.plan_id;