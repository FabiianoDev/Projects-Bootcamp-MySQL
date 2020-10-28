create database db_ecommerce;

use db_ecommerce;

create table tb_categoria (
	id bigint auto_increment,
	streetwear varchar(30),
    casual varchar(30),
    Social varchar(30),
    primary key (id)
);

create table tb_produto (
	id bigint auto_increment primary key,
    Camisetas varchar(30),
    Cor varchar(30),
    tamanho varchar(30),
    preco varchar(30),
    foreign key  (id) references tb_categoria (id)
);

	insert into tb_categoria (streetwear, casual, social) values ("DGK","Reserva","Calvin Klein");
    insert into tb_categoria (streetwear, casual, social) values ("RXPT","Ralph Lauren","Cavalera");
    insert into tb_categoria (streetwear, casual, social) values ("Nike","Lacoste","Colcci");
    insert into tb_categoria (streetwear, casual, social) values ("Off","Tommy Hilfiger","Diesel");
    insert into tb_categoria (streetwear, casual, social) values ("Oakley","Armani Exchange","Ellus");
    
    insert into tb_produto (Camisetas, Cor, tamanho, preco) values ("aloha","azul","M",1400);
    insert into tb_produto (Camisetas, Cor, tamanho, preco) values ("carpi","branco","GG",2000);
    insert into tb_produto (Camisetas, Cor, tamanho, preco) values ("comet","carmesin","P",5499);
    insert into tb_produto (Camisetas, Cor, tamanho, preco) values ("luria","azul","M",2000);
    insert into tb_produto (Camisetas, Cor, tamanho, preco) values ("hp","vermelho","G",1500);
    
    select * from tb_categoria;
    
    select * from tb_produto where preco > 2000;
    
    select * from tb_produto where preco between 1000 and 2000;
    
    select * from tb_produto where Camisetas like "%c%"
    