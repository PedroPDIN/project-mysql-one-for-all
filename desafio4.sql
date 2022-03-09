SELECT 
u.user_name AS usuario,
IF(
YEAR(MAX(h.`date`)) = 2021,
'Usuario ativo',
'Usuario inativo'
) AS condicao_usuario
FROM SpotifyClone.`user` AS u
INNER JOIN SpotifyClone.`history` AS h
ON u.user_id = h.user_id
GROUP BY usuario
ORDER BY usuario;