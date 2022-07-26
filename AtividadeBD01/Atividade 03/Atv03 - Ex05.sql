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

select * from tb_registroEscolar;

insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Vitor', 1245 , 2526 , '8º serie', 7);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Matheus', 1225 , 1426 , '8º serie', 8);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Diego', 4245 , 2527 , '8º serie', 6);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Bianca', 4245 , 2576 , '8º serie', 7);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Gabriel', 4245 , 2626 , '8º serie', 5);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Kim', 7245 , 2656 , '8º serie', 9);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Rodrigo', 1745 , 2526 , '7º serie', 10);
insert into tb_registroEscolar (nome, idade, ra, turma, nota) 
value ('Maria', 7245 , 4526 , '8º serie', 7);

select * from tb_registroEscolar where nota > 7;
select * from tb_registroEscolar where nota < 7;



