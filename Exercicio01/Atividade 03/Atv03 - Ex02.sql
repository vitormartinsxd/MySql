create database bd_registroEscolar;

use bd_registroEscolar;

create table tb_registroEscolar(
id bigint auto_increment,
nome varchar(255), 
idade int, 
ra int,
turma varchar(255),
nota double,
primary key(id)
);