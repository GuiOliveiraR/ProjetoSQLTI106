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

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
cnpj char(18),
inscrEst char(15),
email varchar(100),
telefone char(10),
primary key(codForn)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal (9,2) check(valor >= 0),
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100),
email varchar(100) not null unique,
cpf char(14),
telefone char(10),
primary key(codCli)
);

create table tbVendas(
codVend int not null auto_increment,
codProd int not null,
codCli int not null,
codUsu int not null,
dataVenda date,
horaVenda time,
quantidade int,
primary key(codVend),
foreign key(codProd) references tbProdutos(codprod),
foreign key(codCli) references tbClientes(codCli),
foreign key(codUsu) references tbUsuarios(codUsu)
);


desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;
desc tbVendas;

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Anderson Nunes Pereira', 'andersonnunes@gmail.com','209.058.862-00','3500.00','M');
insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values ('Maria Aparecida Albuquerque', 'maria_aa@gmail.com','123.234.986-76','3500.00','F');

insert into tbUsuarios(nome,senha,codFunc)
values ('anderson.nsilva', '12345678', 1);
insert into tbUsuarios(nome,senha,codFunc)
values ('maria.aalbuquerque', '12345678', 2);

insert  into tbFornecedores(nome,cnpj,inscrEst,email,telefone)
values('Bolos da Vovo','03.396.1254.0001/36','326.152.654-110','sac@FLTDA.com.br','96332-6918');
insert  into tbFornecedores(nome,cnpj,inscrEst,email,telefone)
values('Piracanjuba','32.436.6743.0046/76','526.547.876-890','sac@PIRA.com.br','98434-4368');
insert  into tbFornecedores(nome,cnpj,inscrEst,email,telefone)
values('Lacta','75.053.9696.0234/34','924.658.436-124','sac@LACTA.com.br','98434-2435');
insert  into tbFornecedores(nome,cnpj,inscrEst,email,telefone)
values('Mococa','24.278.3674.4351/43','658.462.436-340','sac@MOCOCA.com.br','90943-2357');


insert into tbProdutos(descricao,quantidade,valor,codForn)
values ('Bolo de Chocolate',1,40.00,1);
insert into tbProdutos(descricao,quantidade,valor,codForn)
values ('Barra de Chocolate',1,6.00,3);
insert into tbProdutos(descricao,quantidade,valor,codForn)
values ('Leite Condensado',5,25.00,4);
insert into tbProdutos(descricao,quantidade,valor,codForn)
values ('Creme de Leite',2,8.00,2);
insert into tbProdutos(descricao,quantidade,valor,codForn)
values ('Leite Desnatado',1,40.00,3);
insert into tbProdutos(descricao,quantidade,valor,codForn)
values ('Bolo de Milho',1,35.00,1);

insert into tbClientes(nome,email,cpf,telefone)
values('Paulo Albuquerque Lopes','paulao@gmail.com','228.345.256-28','93245-4758');
insert into tbClientes(nome,email,cpf,telefone)
values('Ana Carolina Dias','anacarol@gmail.com','243.459.059-74','9847-5479');
insert into tbClientes(nome,email,cpf,telefone)
values('Marcio Nassario Bailotte','marcio.nbalotte@gmail.com','356.984.092-19','9430-1209');
insert into tbClientes(nome,email,cpf,telefone)
values('Rodrigo Campos Nascimento','rocampos@gmail.com','218.029.460-52','96432-2305');
insert into tbClientes(nome,email,cpf,telefone)
values('Pedro Selena Bragantino','pedrosbragantino@gmail.com','235.124.948-04','95235-4904');
insert into tbClientes(nome,email,cpf,telefone)
values('Barbara Barbarelly Brumer','eubbb@gmail.com','492.421.891-74','95325-8190');

insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(6,2,1,'2022/01/09','09:21:43',1);
insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(3,4,2,'2022/01/09','15:04:12',2);
insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(3,3,1,'2022/01/09','15:53:27',3);
insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(4,1,2,'2022/01/09','08:12:31',5);
insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(1,5,1,'2022/01/09','17:44:31',12);
insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(2,6,2,'2022/01/09','13:41:03',12);




select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;

select * from tbClientes;
select * from tbVendas;


select prod.descricao as 'Nome do Produto', cli.nome as 'Nome do Cliente', forn.nome as 'Nome do Fornecedor' from tbVendas as vend
inner join tbProdutos as prod on vend.codProd = prod.codProd
inner join tbclientes as cli on vend.CodCli = cli.codCli
inner join tbFornecedores as forn on prod.codForn = forn.codForn;

select func.nome as 'Nome do Funcionario', prod.descricao as 'Nome do Produto',prod.quantidade as 'Quantidade', forn.nome as 'Nome do Fornecedor' from tbVendas as vend
inner join tbProdutos as prod on vend.codProd = prod.codProd
inner join tbFornecedores as forn on prod.codForn = forn.codForn
inner join tbUsuarios as usu on vend.codUsu = usu.codUsu
inner join tbFuncionarios as func on usu.codFunc = func.codFunc
where vend.codProd = 3;
