create database db_farmacia;

use db_farmacia;

create table tb_categorias(
id bigint auto_increment,
remedios varchar(255),
tipos varchar (255),
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
preco decimal,
idProd int,
validade varchar(255),
receita varchar(255),
primary key(id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias (remedios, tipos)
values ('Dipirona', 'anti-inflamatório');
insert into tb_categorias (remedios, tipos)
values ('Paracetamol', 'anti-inflamatório');
insert into tb_categorias (remedios, tipos)
values ('Decongex', 'antialérgico');
insert into tb_categorias (remedios, tipos)
values ('Amoxilina', 'antibiotico');
insert into tb_categorias (remedios, tipos)
values ('Neosaldina', 'anti-inflamatório');

insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (25.50, 125, '1 ano', 'Não',2);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (55.50, 255, '2 ano', 'Sim',3);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (70.50, 225, '1 ano', 'Sim',1);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (25.50, 125, '2 ano', 'Não',2);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (40.50, 125, '1 ano', 'Sim',3);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (30.50, 125, '1 ano', 'Não',1);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (15.50, 125, '2 ano', 'Sim',5);
insert into tb_produtos ( preco, idProd, validade, receita, categorias_id)
values (25.50, 125, '2 ano', 'Não',4);


select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 5 and 60;

select remedios from tb_categorias where remedios like "%D%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select tb_produtos.preco, tb_categorias.remedios from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select tb_produtos.preco, tb_categorias.tipos from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;


