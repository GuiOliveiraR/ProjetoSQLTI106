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

-- visualizando as tabelas no banco de dados
show tables;

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Guilherme de Oliveira','guilhermeor10@hotmail.com','478.749.657-17','95827-1760');
insert into tbFuncionarios(nome,email,cpf,tel)
values('Lucas Leoocardio','dosleocadio@gmail.com','282.741.658-22','98587-2399');
insert into tbFuncionarios(nome,email,cpf,tel)
values('João Otario','tavinho@hotmail.com','562.742.659-15','93458-1780');

insert into tbUsuarios(nome,senha)
values('Gui.OR','40028922');
insert into tbUsuarios(nome,senha)
values('Don.o.cardio','123456');
insert into tbUsuarios(nome,senha)
values('João.Otario','654321');

-- vizualizar os registros da tabela
select * from tbFuncionarios;
select * from tbUsuarios;
