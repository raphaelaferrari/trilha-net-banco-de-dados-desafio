-- Resolução 1

SELECT Nome, Ano FROM Filmes

-- Resolução 2

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- Resolução 3

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- Resolução 4

SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO = 1997

-- Resolução 5

SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO > 2000

-- Resolução 6

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Resolução 7

SELECT Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Resolução 8

SELECT * FROM Atores
WHERE Genero = 'M'


-- Resolução 9

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Resolução 10

SELECT 
	Filmes.Nome, 
	Generos.Genero 
FROM Filmes
INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero

-- Resolução 11

SELECT 
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- Resolução 12

SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
From Filmes
INNER JOIN ElencoFilme
ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
ON Atores.Id = ElencoFilme.IdAtor