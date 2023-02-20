Create database dbvendas;
use dbvendas;
show databases;
create table Vendedores (idvendedor integer not null, cpf char (14) not null, nome char (30) not null, salariofixo char(30) not null, metavendas char (30) not null, totalVendasRealizadas char (30) not null, primary key (idvendedor));

insert into vendedores (idvendedor, cpf, nome, salariofixo, metavendas, totalvendasrealizadas) values 
(100, '298.876.123.23', 'Paulo Souza', 2440.00, 5000.00, 3400.00),
(200, '333.657.480.78', 'Ana Catarina', 2440.00, 4000.00, 4400.00),
(300, '123.125.824.12', 'Joel Silva', 2440.00, 3000.00, 9400.00),
(400, '879.982.013.90', 'Pedro de Paula', 2440.00, 4300.00, 2600.00),
(500, '268.811.861.06', 'Beatriz Carvalho', 2440.00, 8700.00, 7400.00),
(600, '631.938.066.48', 'Vitória Sandos', 2440.00, 2900.00, 3700.00);

select*from vendedores;

create table celulares (idvendedor integer not null, celular char (14) not null, foreign key (idvendedor) references vendedores (idvendedor), primary key (idvendedor, celular));

insert into celulares (idvendedor,celular) values
(100, '11 90976-1234'),
(100, '11 97654-0975'),
(200, '11 99875-1237'),
(200, '11 76542-0962'),
(300, '11 78651-0987'),
(300, '11 75321-6723'),
(400, '11 99876-2739'),
(400, '11 98760-1269'),
(500, '11 76540-0098'),
(500, '11 99977-9944'),
(600, '11 87654-0042'),
(600, '11 99998-0062');

select*from celulares;




