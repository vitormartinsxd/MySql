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

select * from tb_ecommerce;

insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('TV', 124 , 'Eletronicos', 'Preto e Branco', 4500);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('TV', 124 , 'Eletronicos', 'Preto e Branco', 4500);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('TV', 124 , 'Eletronicos', 'Preto', 4500);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('JBL', 154 , 'Eletronicos', 'Preto e Branco', 300);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('PC', 174 , 'Eletronicos', 'Preto', 1500);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('Playstation 5', 164 , 'Eletronicos', 'Branco', 4900);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('Vassoura', 184 , 'Domesticos', 'Preto', 10);
insert into tb_ecommerce (nome, idProd, categoria, cor, valor) 
value ('TV', 194 , 'Eletronicos', 'Azul e Branco', 1800);

select * from tb_ecommerce where valor > 500;
select * from tb_ecommerce where valor < 500;


