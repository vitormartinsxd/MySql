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

