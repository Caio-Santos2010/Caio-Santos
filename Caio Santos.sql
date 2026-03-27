create database vendas;
use vendas;
create table produto (
	id int auto_increment primary key, 
    nome varchar(100) not null,
    descricao varchar(100),
    preco float
);

create table notafiscal (
	numero int,
    data date,
    valor float
);

create table itens (
	codigo_produto int,
    numero_nf int,
    numero_item int,
    quantidade_item int
);

alter table produto
modify column descricao varchar (50);

alter table notafiscal
add column ICMS float after numero;

alter table produto
add column peso float;

select * from produtos;
select * from notafiscal;

insert into produto (nome, descricao, preco)
values ('Arroz', 'Arroz pacote 5kg', '18.90'),
('feijão', 'Feijão pacote', '7.85'),
('Macarrão', 'Pacote 500g', '8.90'),
('Óleo', 'Óleo de soja 500ml', '5.95'),
('Refrigerante', 'Refrigerante Tubaína 2l', '4.99');