use Filmes;

select Nome, Ano from dbo.Filmes;

select Nome, Ano from dbo.Filmes
order by Ano asc;

select Nome, Ano, Duracao from dbo.Filmes
where Nome like 'De volta para o Futuro';

select Nome, Ano, Duracao from dbo.Filmes
where Ano like '1997';

select Nome, Ano, Duracao from dbo.Filmes
where Ano > '2000';

select Nome, Ano, Duracao from dbo.Filmes
where Duracao > 100 and Duracao < 150;

select Ano, count(*) as 'quantidade' from dbo.Filmes
group by Ano, Duracao
order by Duracao desc;


select PrimeiroNome, UltimoNome, Genero from dbo.Atores
where Genero like 'M';

select a.Nome, c.Genero  from dbo.Filmes as a
join dbo.FilmesGenero as b
on a.id = b.IdFilme
join dbo.Generos as c
on b.IdGenero = c.Id;

select a.Nome, c.Genero  from dbo.Filmes as a
join dbo.FilmesGenero as b
on a.id = b.IdFilme
join dbo.Generos as c
on b.IdGenero = c.Id
where c.Genero like 'Mistério';

select a.Nome, c.PrimeiroNome, c.UltimoNome, b.Papel from dbo.Filmes as a
join dbo.ElencoFilme as b
on a.Id = b.IdFilme
join dbo.Atores as c
on c.Id = b.IdAtor;
