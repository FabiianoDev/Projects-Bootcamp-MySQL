create database db_RH2;

use db_RH2;

create table tb_cargo (
	idcargo bigint auto_increment,
    cargo varchar(30),
    gestor varchar(30),
    primary key (idcargo)
);

create table tb_funcionarios (
	id bigint auto_increment primary key,
    nome varchar(30),
    registro varchar(30),
    cargo bigint,
    salario varchar(30),
    foreign key (cargo) references tb_cargo (idcargo)
);

insert into tb_cargo (cargo, gestor) values ("Analis. TI", "Romildo");
insert into tb_cargo (cargo, gestor) values ("Engenharia","Flavio");
insert into tb_cargo (cargo, gestor) values ("Dev. Pleno","Luis");
insert into tb_cargo (cargo) values ("Estagiario");

insert into tb_funcionarios (nome, registro, cargo, salario) values ("Ramirez","0934", 1, 3500);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Clara","0932",3,3500);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Luma","0945",2,1200);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Leon","0935",4,4500);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Nikolau","9847",4,2388);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Israel","9843",3,1800);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Jose","0941",2,2600);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Jaiminho","9384",3,1500);
insert into tb_funcionarios (nome, registro, cargo, salario) values ("Kaisa","0993",2,6300);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario between 1000 and 2000;

select * from tb_funcionarios where nome like "%C%";