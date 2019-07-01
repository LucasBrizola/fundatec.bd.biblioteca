use biblioteca;

DROP PROCEDURE IF EXISTS verificar_atrasos;
DROP PROCEDURE IF EXISTS consulta_livro;
DROP PROCEDURE IF EXISTS consulta_atendente;
DROP PROCEDURE IF EXISTS cinco_livros;
DROP PROCEDURE IF EXISTS doacao;
DROP PROCEDURE IF EXISTS livros_velhos;

delimiter rsrs

create procedure verificar_atrasos( in aluno int)
begin
	select aluno.nome_aluno, livro.nome_livro, retirada_entrega_livro.entrega_livro
	from aluno
	inner join retirada_entrega_livro on aluno_id = id_aluno and aluno_id = aluno and entrega_aluno_livro is null
	inner join livro on livro.id_livro = retirada_entrega_livro.livro_id;
end rsrs

create procedure consulta_livro( in livro varchar(50))
begin
    if (select disponivel from livro where livro.nome_livro like livro) = 1 THEN
		select "esta disponivel" as disponibilidade;
	else
		select "não esta disponivel";
	end if;
end rsrs

create procedure consulta_atendente(in atendente int, dat date)
begin
	select livro.nome_livro
    from livro
    inner join retirada_entrega_livro on id_livro = livro_id
    where retirada_livro = dat and atendente_retirada_id = atendente
    group by nome_livro
    union all
    (select livro.nome_livro
    from livro
    inner join retirada_entrega_livro on id_livro = livro_id
    where entrega_aluno_livro = dat and atendente_devolucao_id = atendente
    group by nome_livro
    );
end rsrs

create procedure cinco_livros()
begin
	select nome_livro, count(livro_id) as "vezes locado"
    from livro
    inner join retirada_entrega_livro on livro_id = id_livro
	group by nome_livro
    order by count(livro_id) desc
    limit 5;
    
end rsrs

CREATE PROCEDURE doacao(nome varchar(50), qtd int)
BEGIN
	if (select nome_livro from livro where nome_livro = nome) <> " " then
		update livro set nro_exemplares = nro_exemplares + qtd
        where nome_livro = nome;
	end if;
End rsrs

CREATE PROCEDURE livros_velhos() -- fazer funcionar
begin
	select id_livro, nome_livro
    from livro
    inner join retirada_entrega_livro on livro_id = id_livro
    where year(retirada_livro) = year(curdate()) -2
    union all (
    select id_livro, nome_livro
    from livro
	inner join retirada_entrega_livro on livro_id = id_livro
    where livro_id not in (select livro_id from retirada_entrega_livro)
    );
    
end rsrs

delimiter ;

call consulta_atendente(53, "2019-06-28");
call cinco_livros();
call verificar_atrasos (2);
call consulta_livro("JQuery in Action");
call doacao("harry potter 1", 2);
call livros_velhos();