SELECT 
COUNT(DISTINCT s.song_id) AS cancoes,
COUNT(DISTINCT a.artist_id) AS artistas,
COUNT(DISTINCT ab.album_id) AS albuns
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.album AS ab
ON s.album_id = ab.album_id
INNER JOIN SpotifyClone.artist AS a
ON ab.artist_id = a.artist_id;