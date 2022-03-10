SELECT 
s.song AS nome,
COUNT(p.`name`) AS reproducoes
FROM SpotifyClone.`user` AS u
INNER JOIN SpotifyClone.plan AS p
ON u.plan_id = p.plan_id
INNER JOIN SpotifyClone.`history` AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.song AS s
ON h.song_id = s.song_id
WHERE p.`name` = 'gratuito' OR p.`name` = 'pessoal'
GROUP BY nome
ORDER BY nome;