create database  db_RH1;

use db_RH1;

create table tb_funcionarios (
    id bigint auto_increment,
    nome varchar(255) not null,
    data_admissao varchar (10) not null,
    cargo varchar(25),
    salario decimal (10,2),
    primary key (id)
);

insert into tb_funcionarios (nome, data_admissao, cargo, salario) values ("Karla Soares","10/10/2020","Dev. Junior",2500);
insert into tb_funcionarios (nome, data_admissao, cargo, salario) values ("Luis Witts","15/03/2019","Analis. TI",7300);
insert into tb_funcionarios (nome, data_admissao, cargo, salario) values ("Fabiano Aparecido","15/06/2014","Analis. TI",7300);
insert into tb_funcionarios (nome, data_admissao, cargo, salario) values ("Judite Santos","10/09/2008","Aux. Admin",500);
insert into tb_funcionarios (nome, data_admissao, cargo, salario) values ("Laura Pedroza","12/04/2007","Dev. Sênior",21000);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario <2000;

update tb_funcionarios set salario = 16000 where id= 4;

select *from tb_funcionarios;