create database db_pizzaria;

use db_pizzaria;

create table tb_categorias(
id bigint auto_increment,
doce varchar(255),
salgada varchar (255),
primary key(id)
);

create table tb_pizzas(
id bigint auto_increment,
preco decimal,
pequena varchar(255),
media varchar(255),
grande varchar(255),
primary key(id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_pizzas;

insert into tb_categorias (doce, salgada)
values ('Chocolate', 'Frango c/ catupiry');
insert into tb_categorias (doce, salgada)
values ('Chocolate c/ Nutella', 'Mussarela');
insert into tb_categorias (doce, salgada)
values ('Chocolate c/ Morango', 'Portuguesa');
insert into tb_categorias (doce, salgada)
values ('Chocolate c/ Banana', '4 queijos');
insert into tb_categorias (doce, salgada)
values ('Chocolate', 'Calabresa');

insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (35, 'Não', 'Não','Sim', 4);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (22, 'Sim', 'Não','Não', 3);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (30, 'Não', 'Sim','Não', 1);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (38, 'Não', 'Não','Sim', 1);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (62, 'Não', 'Sim','Sim', 5);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (90, 'Sim', 'Sim','Sim', 2);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (21, 'Sim', 'Não','Não', 3);
insert into tb_pizzas (preco, pequena, media, grande, categorias_id)
values (32, 'Não', 'Não','Sim', 5);

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select salgada from tb_categorias where salgada like "%C%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select tb_pizzas.preco, tb_categorias.doce from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select tb_pizzas.preco, tb_categorias.salgada from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;



