create table cidade(
id int primary key auto_increment,
nome varchar(120) not null,
cepgeral int unsigned zerofill);
 
alter table cidade
add dddd char(05);
describe cidade

alter table cidade
change dddd ddd char(05);

alter table cidade
modify ddd char(03);

insert into cidade (nome, cepgeral, ddd)
values ('Salvador', 76588, 045)

select * from cidade