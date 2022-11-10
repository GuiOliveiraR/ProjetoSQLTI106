drop database dbEstacionamento;

create database dbEstacionamento;

use dbEstacionamento;

create table tbCarros(
codEsta int auto_increment,
placa varchar(10),
cor varchar(20),
modelo varchar(40),
ano char(4),
data_entrada date,
hora_entrada time,
data_saida date,
hora_saida time,
primary key (codEsta)
);

insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('FXR-2548','Branco',' Volkswagen Gol','1996','2022/11/07','11:30:13', '2022/11/09','15:30:45');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('JVT-1244','Vermelho','Fiat Mobi','2022','2022/11/16','18:30:02', '2022/11/16','19:38:08');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('PQT-2184','Prata','Jeep Renegade','2019','2022/11/12','12:30:52', '2022/11/12','14:16:21');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('CVV-5305','Preto','Fiat Palio','2000','2022/11/06','08:00:00', '2022/11/06','16:00:00');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('CRA-0384','Amarelo','Chevrolet Camaro SS','2012','2022/11/30','21:51:12','2022/12/04','10:46:24');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('LMH-9542','Laranja','Chevrolet Onix','2018','2022/11/02','08:52:34','2022/11/03','13:22:09');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('CWU-6351','Vermelho','Volkswagen Up','2015','2022/11/12','1:30h','2022/11/14','15:30h');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('QHD-9384','Azul','Volkswagen Fusca','1972','2022/11/01','09:30:09','2022/11/03','11:30:12');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('NZA-8462','Marrom','Chevrolet Caravan','1978','2022/11/21','08:21:26','2022/11/28','08:48:35h');
insert into tbCarros(placa,cor,modelo,ano,data_entrada,hora_entrada,data_saida,hora_saida)
values('NCP-3721','Preto','Volkswagen Golf','2013','2022/11/10','16:29:02','2022/11/11','19:00:00');

desc tbCarros;

select * from tbCarros;

-- Alterar pelo menos 5 registros

update tbCarros set cor = 'Preto' where codEsta = 3;
update tbCarros set plac = 'EMW-1245' where codEsta = 9;
update tbCarros set ano = '2019' where codEsta = 6;
update tbCarros set data_saida = '2022/11/23' where codEsta = 9;
update tbCarros set data_entrada = '2022/11/23' where codEsta = 7;

--Apagar pelo menos 3 registros

delete from tbCarros where codEsta = 2;
delete from tbCarros where codEsta = 6;
delete from tbCarros where codEsta = 7;

-- Pesquisas os carros pelo nome

select * from tbCarros where modelo = 'Fiat Palio';

--Pesquisar os carros pelo codigo

select * from tbCarros where codEsta = 4;

-- Pesquisar pela data de entrada

select * from tbCarros where data_entrada = '2022/11/30';

-- Pesquisar os carros pela cor

select * from tbCarros where cor = 'Marrom';

-- Pesquisar os carros pelo modelo

select * from tbCarros where modelo = 'Fiat Palio';


