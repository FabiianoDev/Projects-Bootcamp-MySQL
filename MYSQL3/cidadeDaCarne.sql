create database db_cidade_das_carnes;

use db_cidade_das_carnes;

CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT,
    categorias VARCHAR(30) NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categoria (categorias, disponibilidade) values ("bovinos",true);
insert into tb_categoria (categorias, disponibilidade) values ("suínos",true);
insert into tb_categoria (categorias, disponibilidade) values ("aves",true);
insert into tb_categoria (categorias, disponibilidade) values ("mercearia",true);
insert into tb_categoria (categorias, disponibilidade) values ("vegano",true);

CREATE TABLE tb_produto (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    detalhes VARCHAR(40) NOT NULL,
    precokg FLOAT(10 , 2 ) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    categoria_id BIGINT(5) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Picado","Picado, embalado à vácuo.","13.90","SEARA",1);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Músculo","Músculo, embalado à vácuo.","17.98","SEARA",1);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Paleta Suína","Paleta Suína, embalada à vácuo.","9.93","AURORA",2);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Panceta","Panceta Suína, embalada à vácuo.","15.29","SADIA",2);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Frango à Passarinho","Frango à Passarinho, embalado à vácuo.","7.63","FAZENDINHA",3);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Sobrecoxa","Sobrecoxa, embalada à vácuo.","8.40","FRIBOI",3);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Molho Budweiser - Lupulada","Vidro de pimenta","90","EAT MEAT",4);
insert into tb_produto (nome, detalhes, precokg, marca, categoria_id) values ("Filé sem Frango","Produto Congelado.","15.91","EAT MEAT",5);

-- exibir tabela
SELECT 
    *
FROM
    tb_categoria;

 -- exibir tabela 
SELECT 
    *
FROM
    tb_produto;

-- preços acima de 50 reais
SELECT 
    *
FROM
    tb_produto
WHERE
    precokg > 50;

-- preços acima de 50 reais
SELECT 
    *
FROM
    tb_produto
WHERE
    precokg BETWEEN 3 AND 60;

-- produtos com as letras digitadas
SELECT 
    *
FROM
    tb_produto
WHERE
    nome LIKE '%co%';

-- juntando informações das duas tabelas
SELECT 
    *
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

-- selecionando uma informação específica de uma tabela
SELECT 
    *
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE
    tb_categoria.categorias LIKE '%av%';
