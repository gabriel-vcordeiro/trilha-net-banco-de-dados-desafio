select nome, ano from Filmes;
select nome, ano  from Filmes ORDER BY ano;
select nome, ano, duracao from Filmes where nome='De Volta para o Futuro';
select * from Filmes where ano=1997;
select * from Filmes where ano>2000;
select * from Filmes where duracao between 101 and 150 order by duracao;
select ano, count(ano) as quantidade from Filmes group by ano order by quantidade desc;
select PrimeiroNome,UltimoNome from atores where genero='M';
select PrimeiroNome,UltimoNome from atores where genero='F' order by PrimeiroNome;
select Filmes.Nome, Generos.Genero from Filmes inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme inner join	 Generos on  Generos.Id=FilmesGenero.IdGenero;
select Filmes.Nome, Generos.Genero from Filmes inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme inner join	 Generos on  Generos.Id=FilmesGenero.IdGenero where Generos.Genero='Mistério';
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme inner join Atores on Atores.Id = ElencoFilme.IdAtor;