SELECT 
a.artist AS artista,
ab.album AS album,
COUNT(ua.user_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab
ON a.artist_id = ab.artist_id
INNER JOIN SpotifyClone.user_artist AS ua
ON a.artist_id = ua.artist_id
GROUP BY artist, album
ORDER BY seguidores DESC, artista, album;