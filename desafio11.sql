SELECT 
s.song AS nome_musica,
CASE
WHEN s.song LIKE '%Streets' THEN REPLACE(s.song, 'Streets', 'Code Review')
WHEN s.song LIKE '%Her Own' THEN REPLACE(s.song, 'Her Own', 'Trybe')
WHEN s.song LIKE '%Inner Fire' THEN REPLACE(s.song, 'Inner Fire', 'Project')
WHEN s.song LIKE '%Silly' THEN REPLACE(s.song, 'Silly', 'Nice')
WHEN s.song LIKE '%Circus' THEN REPLACE(s.song, 'Circus', 'Pull Request')
ELSE s.song
END AS novo_nome
FROM SpotifyClone.song AS s
WHERE 
s.song LIKE '%Streets' OR
s.song LIKE '%Her Own'OR
s.song LIKE '%Inner Fire'OR
s.song LIKE '%Silly' OR
s.song LIKE '%Circus'
ORDER BY nome_musica;