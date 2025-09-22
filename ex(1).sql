use aulapratica4_2;

create table cidade(
	id int,
    nome varchar(100) not null,
    uf char(02),
    constraint pkCidade primary key (id)
);

-- Inserir os registros na tabela cidade
insert into cidade values (1, 'Curitiba', 'PR');
insert into cidade values (2, 'Bage', 'RS');
insert into cidade values (3, 'Parnaiba', 'RS');
insert into cidade values (4, 'Videira', 'SC');
insert into cidade values (5, 'Imperatriz', 'MA');
insert into cidade values (6, 'Belo horizonte', 'MG');
insert into cidade values (7, 'Sao Paulo', 'SP');

set SQL_SAFE_UPDATES = 0;

update cidade
set nome = 'Londrina',
uf = 'PR'
where id = 5;

delete from cidade where id = 7;

select * from cidade

update cidade
set nome = 'Teste'

delete from cidade;