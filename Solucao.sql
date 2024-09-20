--1
SELECT 
	Nome,
	Ano
FROM Filmes
--2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano
--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o futuro'
--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997
--5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000
--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao
--7 como esta na pergunta
SELECT 
	Ano, 
	COUNT(*) Quantidade,
	MAX(Duracao) MaiorDuracao
FROM Filmes
GROUP BY Ano
ORDER BY MaiorDuracao DESC
--7 como esta na resposta esperada
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
--8 como esta na pergunta
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'
--8 como esta na resposta esperada
SELECT 
	*
FROM Atores
WHERE Genero = 'M'
--9 como esta na pergunta
SELECT 
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--9 como esta na resposta esperada
SELECT 
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--10
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM Filmes
JOIN
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN
	Generos ON Generos.Id = FilmesGenero.IdGenero
--11
SELECT
	F.Nome,
	G.Genero
From Filmes F
JOIN
	FilmesGenero FG ON F.Id = FG.IdFilme
JOIN
	Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'
--12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
JOIN
	ElencoFilme EF ON F.Id = EF.IdFilme
JOIN
	Atores A ON A.Id = EF.IdAtor

