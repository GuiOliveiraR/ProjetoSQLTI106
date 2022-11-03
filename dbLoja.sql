-- apagar o banco de dados
drop database dbLoja;

-- criando banco de dados
create database dbLoja;

-- visualizando o banco de dados
show databases;

-- acessando o banco de dados
use dbLoja;

-- criando tabelas para o banco de dados
create table tbFuncionarios(
codFunc int auto_increment,
nome varchar(50),
email varchar(50),
cpf char(14),
tel char(10),
primary key(codFunc) -- chave primária da tabela
);

create table tbUsuarios(
codUsu int auto_increment,
nome varchar(15),
senha varchar(14),
primary key(codUsu)
);

create table tbProdutos(
codProd int auto_increment,
descricao varchar(50),
preco decimal(9,2),
validade date,
quantidade int,
tipo varchar(10),
primary key(codProd)
);



-- visualizando as tabelas no banco de dados
show tables;

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;
desc tbProdutos;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Guilherme de Oliveira','guilhermeor10@hotmail.com','478.749.657-17','95827-1760');
insert into tbFuncionarios(nome,email,cpf,tel)
values('Lucas Leoocardio','dosleocadio@gmail.com','282.741.658-22','98587-2399');
insert into tbFuncionarios(nome,email,cpf,tel)
values('Joao Otario','tavinho@hotmail.com','562.742.659-15','93458-1780');

insert into tbUsuarios(nome,senha)
values('Gui.OR','40028922');
insert into tbUsuarios(nome,senha)
values('Don.o.cardio','123456');
insert into tbUsuarios(nome,senha)
values('Joao.Otario','654321');

insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Banana',20.50, '2022-11-07', 12, 'Duzia');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Chocolicia',2.00, '2022-11-04', 1, 'Unidade');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Melancia',30.0, '2022-11-30', 1, 'Unidade');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Morango',10.50, '2022-11-08', 1, 'Caixa');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Peixe',40.50, '2022-11-05', 1, 'Unidade');
insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Banana',20.50, '2022-11-07', 12, 'Duzia');


-- vizualizar os registros da tabela
select * from tbFuncionarios;
select * from tbUsuarios;

-- alterando os registros das tabelas
update tbUsuarios set senha = '12345678' where codUsu = 3;

-- busca por codigo
select * from tbProdutos where codProd = 2;


-- Alterar os valores para 10%	
update tbProdutos set preco = preco * 1.10 where preco > 11.00;

select * from tbUsuarios;

-- excluindo os registros das tabelas
delete from tbUsuarios where codUsu = 3;

select * from tbUsuarios;

-- Pesquisar com like para achar resultados especificos
select * from tbProdutos where descricao like '%n%';


