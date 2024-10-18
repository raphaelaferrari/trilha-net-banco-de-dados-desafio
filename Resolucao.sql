-- Resolu��o 1

SELECT Nome, Ano FROM Filmes

-- Resolu��o 2

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- Resolu��o 3

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- Resolu��o 4

SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO = 1997

-- Resolu��o 5

SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO > 2000

-- Resolu��o 6

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Resolu��o 7

SELECT Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Resolu��o 8

SELECT * FROM Atores
WHERE Genero = 'M'


-- Resolu��o 9

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Resolu��o 10

SELECT 
	Filmes.Nome, 
	Generos.Genero 
FROM Filmes
INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero

-- Resolu��o 11

SELECT 
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mist�rio'

-- Resolu��o 12

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