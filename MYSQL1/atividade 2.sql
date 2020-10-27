create database db_ecomm;

use db_ecomm;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(30) not null,
    data_fabric varchar(30) not null,
    data_validade varchar(30) not null,
    pesoEmGramas decimal (10,3) not null,
    preco decimal (10,2) not null,   
    primary key (id)
);

insert into tb_produtos (nome, data_fabric, data_validade, pesoEmGramas, preco) values ("Doce de Leite","10/12/2020","07/06/2020","500",13.70);
insert into tb_produtos (nome, data_fabric, data_validade, pesoEmGramas, preco) values ("Doce de Chuchu","17/08/2021","04/08/2026","1",25.30);
insert into tb_produtos (nome, data_fabric, data_validade, pesoEmGramas, preco) values ("Nutella","29/04/2020","14/09/2022","1000",350.00);
insert into tb_produtos (nome, data_fabric, data_validade, pesoEmGramas, preco) values ("Mel","23/02/2018","13/11/2020","500",570.75);
insert into tb_produtos (nome, data_fabric, data_validade, pesoEmGramas, preco) values ("Avelã","27/08/2020","04/10/2022","3000",640.35);
insert into tb_produtos (nome, data_fabric, data_validade, pesoEmGramas, preco) values ("Côco","23/08/2019","24/06/2021","3500",370.65);
insert into tb_produtos (nome, data_fabric, data_validade, peso, preco) values ("Yogurte","23/08/2020","30/09/2025","700","640.20");
insert into tb_produtos (nome, data_fabric, data_validade, peso, preco) values ("Frango","28/08/2020","27/04/2021","500",42.30);

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;