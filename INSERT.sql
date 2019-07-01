use biblioteca;

insert into aluno (id_aluno, nome_aluno) values
(null, "Lucas"),
(null, "José da Silva"),
(null, "Rik"),
(null, "Yuri"),
(null, "Vivian"),
(null, "Tassio"),
(null, "Fabio"),
(null, "Hikari"),
(null, "Bruno"),
(null, "Barbara");

insert into livro (id_livro, nome_livro, nro_exemplares, disponivel) values
(101, "harry potter 1", 2, 1),
(102, "harry potter 2", 2, 1),
(103, "harry potter 3", 2, 1),
(104, "harry potter 4", 2, 1),
(105, "harry potter 5", 2, 1),
(106, "harry potter 6", 2, 1),
(107, "harry potter 7", 2, 1),
(108, "senhor dos aneis 1", 2, 1),
(109, "senhor dos aneis 2", 2, 1),
(110, "senhor dos aneis 3", 2, 1),
(111, "o hobbit", 1, 1),
(112, "crepusculo 1", 2, 1),
(113, "crepusculo 2", 2, 1),
(114, "crepusculo 3", 2, 1),
(115, "crepusculo 4", 1, 1),
(116, "curso java 1", 1, 1),
(117, "curso java 2", 2, 1),
(118, "curso java 3", 2, 1),
(119, "curso java 4", 2, 1),
(120, "JQuery in Action", 1, 1),
(121, "Javascript Ninja", 2, 1),
(122, "curso php 1", 2, 1),
(123, "curso php 2", 2, 1);

insert into atendente (id_atendente, nome_atendente) values
(51, "Dani"),
(52, "Iza"),
(53, "Maria Joaquina");


SET FOREIGN_KEY_CHECKS=0;

insert into retirada_entrega_livro (id_retirada_livro, aluno_id, livro_id, atendente_retirada_id, retirada_livro, entrega_livro,
atendente_devolucao_id, entrega_aluno_livro) values
(1000, 1, 116, 53, 20190128, null, null, null),
(1001, 1, 116, 51, 20190201, null, null, null),
(1002, 1, 117, 52, 20190301, null, null, null),
(1003, 1, 117, 51, 20190425, null, null, null),
(1004, 1, 118, 52, 20190511, null, null, null),
(1005, 1, 119, 51, 20190603, null, null, null),
(1006, 1, 120, 52, 20190621, null, null, null), -- não foi entregue e está atrasado

(1007, 2, 101, 53, 20181111, null, null, null),
(1008, 2, 102, 51, 20181210, null, null, null),
(1009, 2, 103, 53, 20190315, null, null, null),
(1010, 2, 104, 51, 20190506, null, null, null),
(1011, 2, 105, 52, 20190607, null, null, null),

(1012, 3, 108, 51, 20181012, null, 53, 20190119),
(1013, 3, 108, 51, 20181020, null, null, null),
(1014, 3, 109, 53, 20190201, null, null, null),
(1015, 3, 109, 52, 20190201, null, null, null),
(1016, 3, 110, 53, 20190301, null, null, null),
(1017, 3, 110, 52, 20190301, null, null, null),
(1018, 3, 111, 51, 20190628, null, null, null), -- não está atrasado

(1019, 4, 112, 52, 20181029, null, null, null),
(1020, 4, 112, 53, 20181110, null, null, null),
(1021, 4, 113, 51, 20190305, null, null, null),
(1022, 4, 114, 52, 20190401, null, 52, 20190415), -- atrasou aqui
(1023, 4, 114, 53, 20190415, null, null, null),
(1024, 4, 115, 51, 20190628, null, null, null), -- não está atrasado

(1025, 5, 111, 51, 20181111, null, 53, 20181119), -- atrasou 1 dia
(1026, 5, 111, 52, 20181202, null, null, null),
(1027, 5, 111, 52, 20190225, null, 52, 20190301), -- atrasou aqui
(1028, 5, 112, 51, 20190305, null, null, null),
(1029, 5, 113, 53, 20190426, null, null, null),

(1030, 6, 110, 52, 20190208, null, 52, 20190210),
(1031, 6, 111, 53, 20190301, null, null, null),
(1032, 6, 112, 52, 20190308, null, null, null),
(1033, 6, 112, 51, 20190315, null, null, null),
(1034, 6, 113, 51, 20190524, null, null, null),

(1035, 7, 108, 52, 20181130, null, null, null),
(1036, 7, 108, 51, 20181206, null, null, null),
(1037, 7, 109, 53, 20190415, null, null, null),
(1038, 7, 110, 52, 20190505, null, null, null),
(1039, 7, 110, 51, 20190515, null, null, null),

(1040, 8, 116, 51, 20190401, null, null, null),
(1041, 8, 117, 52, 20190416, null, null, null),
(1042, 8, 118, 51, 20190422, null, null, null),
(1043, 8, 116, 53, 20190503, null, 51, 20190514), -- atrasou aqui
(1044, 8, 116, 53, 20190601, null, null, null),

(1045, 9, 116, 51, 20181110, null, 52, 20181120), -- atrasou aqui
(1046, 9, 116, 52, 20181120, null, null, null),
(1047, 9, 117, 51, 20190302, null, null, null),
(1048, 9, 117, 53, 20190311, null, null, null), 
(1049, 9, 118, 53, 20190621, null, 53, 20190628),

(1050, 10, 115, 51, 20181002, null, null, null),
(1051, 10, 111, 53, 20181123, null, null, null),
(1052, 10, 112, 51, 20190405, null, null, null),
(1053, 10, 116, 52, 20190516, null, null, null),
(1054, 10, 116, 53, 20190628, null, null, null); -- não foi entregue ainda porém não está atrasado



drop procedure if exists calcula_entrega;
drop procedure if exists retirada_livro;
drop procedure if exists entrega_livro;

delimiter rsrs


create procedure calcula_entrega( in id_retirada int)
begin
update retirada_entrega_livro set entrega_livro = DATE_ADD(retirada_livro, INTERVAL + 7 DAY) 
where id_retirada_livro = id_retirada;
end rsrs

create procedure retirada_livro ( in id_retirada int, aluno int, idlivro int, atendente int, retirada date)
begin

 	if (select disponivel from livro where id_livro = idlivro) = 1
 		THEN
		insert into retirada_entrega_livro (id_retirada_livro, aluno_id, livro_id, atendente_retirada_id, retirada_livro, entrega_livro,
		atendente_devolucao_id, entrega_aluno_livro) values
		(id_retirada, aluno, idlivro, atendente, retirada, null, null, null );
		call calcula_entrega(id_retirada);
         update livro set nro_exemplares = nro_exemplares -1
         where livro.id_livro = idlivro;
		
        if (select nro_exemplares from livro where id_livro = idlivro) = 0 THEN
			update livro set disponivel = 0
            where livro.id_livro = idlivro;
	 	end if;
        
 	ELSE
 		select "livro não está disponível" as disponibilidade;
 	end if;
end rsrs

create procedure entrega_livro (id_retirada int, atendente int, entrega date)
begin
	update retirada_entrega_livro set atendente_devolucao_id = atendente, entrega_aluno_livro = entrega
	where id_retirada_livro = id_retirada;
    
    update livro set livro.nro_exemplares = livro.nro_exemplares + 1
    where id_livro = (
    select livro from (select distinct livro_id as livro
    from retirada_entrega_livro
    left join livro on livro.id_livro = retirada_entrega_livro.livro_id
    where retirada_entrega_livro.id_retirada_livro = id_retirada)as id);
    if (select nro_exemplares from livro
		inner join retirada_entrega_livro
		on livro.id_livro = retirada_entrega_livro.livro_id
    where retirada_entrega_livro.id_retirada_livro = id_retirada) = 1 THEN
			update livro set disponivel = 1;
	 	end if;
 
end rsrs
	
create procedure cadastrar_aluno(nome varchar(32))
begin
	insert into aluno (nome_aluno) values
    (nome);
end rsrs
delimiter ;

call cadastrar_aluno("karolina");
call retirada_livro(1055, 2, 121, 53, 20190628);
call retirada_livro(1056, 3, 121, 53, 20190629);
call retirada_livro(1057, 7, 121, 51, 20190630); -- vai estar indisponivel pois 
call retirada_livro(1057, 11, 123, 51, 20171012);

call entrega_livro(1000, 52, 20190203);
call entrega_livro(1007, 51, 20190203);
call entrega_livro(1008, 53, 20181216);
call entrega_livro(1009, 52, 20190321);
call entrega_livro(1010, 51, 20190513);
call entrega_livro(1011, 52, 20190614);

call calcula_entrega(1000);
call calcula_entrega(1001);
call calcula_entrega(1002);
call calcula_entrega(1003);
call calcula_entrega(1004);
call calcula_entrega(1005);
call calcula_entrega(1006);
call calcula_entrega(1007);
call calcula_entrega(1008);
call calcula_entrega(1009);
call calcula_entrega(1010);
call calcula_entrega(1011);
call calcula_entrega(1012);
call calcula_entrega(1013);
call calcula_entrega(1014);
call calcula_entrega(1015);
call calcula_entrega(1016);
call calcula_entrega(1017);
call calcula_entrega(1018);
call calcula_entrega(1019);
call calcula_entrega(1020);
call calcula_entrega(1021);
call calcula_entrega(1022);
call calcula_entrega(1023);
call calcula_entrega(1024);
call calcula_entrega(1025);
call calcula_entrega(1026);
call calcula_entrega(1027);
call calcula_entrega(1028);
call calcula_entrega(1029);
call calcula_entrega(1030);
call calcula_entrega(1031);
call calcula_entrega(1032);
call calcula_entrega(1033);
call calcula_entrega(1034);
call calcula_entrega(1035);
call calcula_entrega(1036);
call calcula_entrega(1037);
call calcula_entrega(1038);
call calcula_entrega(1039);
call calcula_entrega(1040);
call calcula_entrega(1041);
call calcula_entrega(1042);
call calcula_entrega(1043);
call calcula_entrega(1044);
call calcula_entrega(1045);
call calcula_entrega(1046);
call calcula_entrega(1047);
call calcula_entrega(1048);
call calcula_entrega(1049);
call calcula_entrega(1050);
call calcula_entrega(1051);
call calcula_entrega(1052);
call calcula_entrega(1053);
call calcula_entrega(1054);

select livro_id from retirada_entrega_livro where livro_id = 122;

select * from livro;
select * from retirada_entrega_livro;