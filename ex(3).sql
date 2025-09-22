create table aluno (
	id int primary key,
	nome varchar(130) not null,
	genero char(01), -- genero F , M
	estadoCivil char(01) check (estadoCivil in ('S', 'C', 'V')),
	renda decimal(10,2) default 0
);

insert into aluno (id, nome, genero, estadoCivil)
values (1, 'Maria', 'M', 'S');

select * from aluno;
insert into aluno values(2, null, 'F', 'C', 10000)
select * from aluno;

describe aluno