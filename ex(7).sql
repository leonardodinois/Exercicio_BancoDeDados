use aulapratica4;

create table cidade (
	id int, 
	nome varchar(100) not null, 
	uf char(02), 
	constraint pkCidade primary key(id)
);

create table cliente (
	id int auto_increment,
    nome varchar(100),
    cidadeid int not null,
    constraint pkcliente primary key (id),
    constraint fkClienteCidade foreign key (cidadeid) references cidade(id)
);

create table funcionario (
	id int,
    nome varchar(100),
    cidadeid int not null,
    constraint fkfunCidade foreign key (cidadeid) references cidade(id)
);

insert into funcionario (id, nome, cidadeid)
	select id, nome, cidadeid from cliente
    
    select * from funcionario

-- insert sintaxe completa
insert into cidade (id, nome, uf) values (1, 'Bage', 'RS');

-- reduzido
insert into cidade values (2, 'Parnaiba', 'PI');

-- insert de algumas colunar
insert into cidade (id, nome) values(3, 'Imperatriz');
select *from cidade

insert into cliente (nome,cidadeid) values ('Pedro', 1);
insert into cliente (noome, cidadeid) values ('maria', 10); -- erro pois a cidade nao existe

insert into cliente (nome,cidadeid) values ('Nicolas', 2), ('Helena', 1), ('Beatriz', 3)
select *from cliente; 


