drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar (100),
email varchar (100),
cpf char(14) not null unique,
salario decimal(9,2) not null default 0.0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')), 
primary key(codFunc)
);

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar (20) not null,
senha varchar (20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal (9,2) check(valor >= 0),
codUsu int not null,
primary key(codProd),
foreign key(codUsu) references tbUsuarios(codUsu)
);

desc tbFuncionarios;
desc tbUsuarios;
desc tbProdutos;

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Anderson Nunes Pereira', 'andersonnunes@gmail.com','209.058.862-00','3500.00','M');
insert into tbUsuarios(nome,senha,codFunc)values ('anderson.nsilva', '12345678', 1);
insert into tbProdutos(descricao,quantidade,valor,codUsu)values ('Banana',12,35,1);

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Lurdes Nogueira Santos', 'lulunogueira@gmail.com','128.021.214-21','1500.00','F');
insert into tbUsuarios(nome,senha,codFunc)values ('lurdes.nsantos', '12345678', 2);
insert into tbProdutos(descricao,quantidade,valor,codUsu)values ('Bolo de Chocolate',1,40,2);

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Renato Matias Louise', 'retanomatias@gmail.com','334.124.585-86','4000.00','M');
insert into tbUsuarios(nome,senha,codFunc)values ('renato.mlouise', '12345678', 3);
insert into tbProdutos(descricao,quantidade,valor,codUsu)values ('Churros',1,5,3);

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Paloma Binnatchele Ferreira', 'palomabibi@gmail.com','421.214.322-21','6500.00','F');
insert into tbUsuarios(nome,senha,codFunc)values ('paloma.bferreira', '12345678', 4);
insert into tbProdutos(descricao,quantidade,valor,codUsu)values ('Banana Grande',12,65,4);

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Marcelo Teixera Junior', 'marcelojunior@gmail.com','123.421.543-89','9500.00','M');
insert into tbUsuarios(nome,senha,codFunc)values ('marcelo.tjunior', '12345678', 5);
insert into tbProdutos(descricao,quantidade,valor,codUsu)values ('Cenoura',2,8,5);

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbProdutos;




