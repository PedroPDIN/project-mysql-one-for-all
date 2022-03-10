SELECT 
a.artist AS artista,
ab.album AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS ab
ON a.artist_id = ab.artist_id
WHERE artist = 'Walter Phoenix'
ORDER BY album;