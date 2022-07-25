create database bd_rh;

use bd_rh;

create table tb_rh(
id bigint auto_increment,
nome varchar(255),
idade int,
funcao varchar(255),
idEmpresa int,
salario double,
primary key (id)
);

select * from tb_rh;


insert into tb_rh (nome, idade, funcao, idEmpresa, salario) 
value ('Vitor', 23, 'Contratos', 1234, 3000);
insert into tb_rh (nome, idade, funcao, idEmpresa, salario) 
value ('Douglas', 20, 'Contas', 1235, 1750);
insert into tb_rh (nome, idade, funcao, idEmpresa, salario) 
value ('Diego', 19, 'Seleção de novos empregados', 1236, 2200);
insert into tb_rh (nome, idade, funcao, idEmpresa, salario) 
value ('Bianca', 27, 'Contratos', 1237, 1950);
insert into tb_rh (nome, idade, funcao, idEmpresa, salario) 
value ('Maria', 25, 'Contas', 1238, 1800);

select * from tb_rh where salario > 2000;

select * from tb_rh where salario < 2000;

update tb_rh set salario = 4000 where id = 4;
