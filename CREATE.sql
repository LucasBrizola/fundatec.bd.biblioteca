drop database if exists biblioteca;
create database biblioteca;
use biblioteca;

create table aluno(
id_aluno int primary key,
nome_aluno varchar(32) not null
);

create table livro(
id_livro int primary key,
nome_livro varchar(50) not null,
nro_exemplares int not null,
disponivel boolean not null
);

create table atendente(
id_atendente int primary key,
nome_atendente varchar(32) not null
);

create table retirada_entrega_livro (
id_retirada_livro int primary key,
aluno_id int not null,
livro_id int not null,
atendente_retirada_id int not null,
retirada_livro date not null,
entrega_livro date,
atendente_devolucao_id int,
entrega_aluno_livro date,
FOREIGN KEY (aluno_id) references aluno(id_aluno),
FOREIGN KEY (livro_id) references livro(id_livro),
FOREIGN KEY (atendente_retirada_id) references atendente(id_atendente),
FOREIGN KEY (atendente_devolucao_id) references atendente(id_atendente)
);