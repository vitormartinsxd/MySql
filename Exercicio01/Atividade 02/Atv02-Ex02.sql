create database bd_ecommerce;

use bd_rh;

create table tb_ecommerce(
id bigint auto_increment,
nome varchar(255),
idProd int,
categoria varchar(255),
cor varchar(255),
valor double,
primary key (id)
);

