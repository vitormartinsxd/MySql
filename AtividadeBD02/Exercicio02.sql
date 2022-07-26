create database db_rpg;

use db_rpg;

create table tb_classe(
id bigint auto_increment,
clase varchar(255),
descricao varchar(255),
arma varchar (1000),
primary key (id) 
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
raca varchar(255),
ataque int,
defesa double,
hp int,
primary key (id),
classe_id bigint,
foreign key (classe_id) references tb_classe (id)
);

select * from tb_classe;
select * from tb_personagem;

insert into tb_classe(classe, descricao, arma)
value ('Ladrao', 'Adaga', 'Rouba' );
insert into tb_classe(classe, descricao, arma)
value ('Mago(a)', 'Cajado', 'Magia' );
insert into tb_classe(classe, descricao, arma)
value ('Arqueiro', 'Arco', 'Solta flexas' );

insert into tb_personagem (nome, raca, ataque, defesa, hp, classe_id)
value ('Vitor', 'Arqueiro', 3000, 2450 , 1000, 1);
insert into tb_personagem (nome, raca, ataque, defesa, hp, classe_id)
value ('Kim', 'Mago', 2400, 3000 , 1000, 2);
insert into tb_personagem (nome, raca, ataque, defesa, hp, classe_id)
value ('Diego', 'Guerreiro', 1490 , 2268, 1000, 3);

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem left join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.ataque, tb_personagem.defesa, tb_classe.classe from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.raca, tb_personagem.nome, tb_classe.classe from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.classe = 'Ladrao';

