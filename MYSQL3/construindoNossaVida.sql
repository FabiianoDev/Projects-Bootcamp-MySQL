create database db_construindo_nossa_vida;

use db_construindo_nossa_vida;

CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(30) NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

insert into tb_categoria (categoria, disponibilidade) values ("Pisos",true);
insert into tb_categoria (categoria, disponibilidade) values ("Janelas",true);
insert into tb_categoria (categoria, disponibilidade) values ("Decoração",true);
insert into tb_categoria (categoria, disponibilidade) values ("Banheiro",true);
insert into tb_categoria (categoria, disponibilidade) values ("Ferragens",true);

SELECT 
    *
FROM
    tb_categoria;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    quantidade FLOAT(10 , 2 ),
    preco DECIMAL(10 , 2 ),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Piso Rotocolor Angra","1","11.90",1);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Piso Rotocolor Imbuia","1","14.90",1);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Janela Veneziana Esquadrisul","1","269.90",2);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Janela Maxim-ar","1","249.90",2);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Adesivo de Parede","1","62.01",3);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Tapete Tropical","1","29.61",3);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Chuveiro Eletrico","1","78.90",4);
insert into tb_produtos (nome, quantidade, preco, categoria_id) values ("Cadeado","1","9.90",5);

SELECT 
    *
FROM
    tb_produtos;

SELECT 
    *
FROM
    tb_produtos
WHERE
    preco > 50;

SELECT 
    *
FROM
    tb_produtos
WHERE
    preco BETWEEN 3 AND 60;

SELECT 
    *
FROM
    tb_produtos
WHERE
    nome LIKE '%PI%';

-- juntando informações das duas tabelas
SELECT 
    *
FROM
    tb_produtos
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- selecionando uma informação específica de uma tabela
SELECT 
    *
FROM
    tb_produtos
        INNER JOIN
    tb_categoria ON tb_categoria.id = tb_produtos.categoria_id
WHERE
    tb_categoria.categoria LIKE '%de%';
