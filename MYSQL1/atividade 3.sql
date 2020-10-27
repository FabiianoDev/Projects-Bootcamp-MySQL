create database db_regischool;

use db_regischool;

create table tb_alunos (
id bigint auto_increment,
nome varchar(30) not null,
serie int(1) not null,
sala varchar(15) not null,
materia varchar(15) not null,
nota decimal(10,2) not null,
primary key (id)
);

insert into tb_alunos (nome, serie, sala, materia, nota) values ("Anderson","3","10","Portugues",7);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Raissa","2","5","Portugues",6);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Vanessa","4","5","Portugues",9);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Francisco","8","9","Portugues",8);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Juliana","3","10","Portugues",9);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Danilo","2","7","Portugues",5);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Laquanda","8","9","Portugues",4);
insert into tb_alunos (nome, serie, sala, materia, nota) values ("Bruna","2","7","Portugues",3);

select * from tb_alunos;

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

