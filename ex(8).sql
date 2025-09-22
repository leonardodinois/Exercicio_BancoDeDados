create table cliente (
    id int auto_increment,
    nome varchar(100),
    genero char(01),
    nascimento date,
    salario decimal(10,2),
    email varchar(120) unique, 
    cidadeId int not null,
    constraint pkCliente primary key (id),
    constraint fkClienteCidade foreign key (cidadeId) references cidade(id)
    on delete no action on update no action
);

insert into cliente values (1, 'Helena Magalhães', 'F', '2000-01-01', 12500.99, 'helena@email.com', 2),
                           (2, 'Nicolas', 'M', '2002-12-10', 8500, 'nicolas@email.com', 3),
                           (3, 'Ana Rosa Silva', 'F', '1996-12-31', 8500, 'ana.rosa@email.com', 1),
                           (4, 'Tales Heitor Souza', 'M', '2000-10-01', 7689, 'tales.heitor@email.com', 1),
                           (5, 'Bia Meireles', 'F', '2002-03-14', 9450, 'bia.meireles@email.com', 2),
                           (6, 'Pedro Filho', 'M', '1998-05-22', 6800, 'pedro.filho@email.com', 5),
                           (7, 'Helena Magalhães', 'F', '1994-08-10', 8600, 'helena.magalhaes@email.com', 4);



select * from cliente
where cidadeid = 1
and salario > 8000;

select nome,salario from cliente
where cidadeid = 1
or cidadeid = 3
or cidadeid = 5;

select nome,salario from cliente -- mais simples do que de cima
where cidadeid in (1, 3, 5)

select nome, salario from cliente
where salario > =5000
and salario <= 10000;

select nome, salario from cliente
where salario between 5000 and 10000
order by salario;

select nome, salario from cliente
order by nome asc;








