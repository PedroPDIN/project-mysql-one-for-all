SELECT 
COUNT(user_name) AS quantidade_musicas_no_historico
FROM SpotifyClone.`user` AS u
INNER JOIN SpotifyClone.`history` AS h
ON u.user_id = h.user_id
WHERE user_name = 'Bill';