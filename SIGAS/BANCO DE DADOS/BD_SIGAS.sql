create database BD_SIGAS

use BD_SIGAS



create table Pessoas(
id_pessoa int not null primary key identity,
nome_pessoa varchar(100) not null,
email_pessoa varchar(60) null,
endereco varchar (200) null,
tel1 varchar (13)not null,
tel2 varchar (13) null
);

select * from Pessoas
EXEC sp_help 'Pessoas';

create table Clientes(
id_pessoa int not null primary key,
cpf_cnpj varchar (14) not null,
foreign key (id_pessoa) references Pessoas(id_pessoa)
);

select * from Clientes

create table Fornecedores(
id_pessoa int not null primary key,
cnpj varchar (14) not null,
razao_social varchar (100)
);

EXEC sp_help 'Fornecedores';

--trazendo a chave estrangeira de Pessoas
alter table Fornecedores
add constraint fk_id_pessoa
foreign key (id_pessoa) references Pessoas(id_pessoa);

create table Categorias(
id_categoria int not null primary key identity,
nome_categoria varchar (20)
);

create table Produtos(
id_produto int not null primary key identity,
nome_produto varchar (60) not null,
descricao varchar (500) not null,
unidade varchar (10) not null,
preco_unidade money not null,
qtd_estoque real not null,
id_categoria int not null,
foreign key (id_categoria) references Categorias(id_categoria)
);

--acrescentando chave estrangeira do fornecedor
alter table Produtos
add id_pessoa int not null;
alter table Produtos
add constraint fk_id_fornecedores
foreign key (id_pessoa) references Fornecedores (id_pessoa);

create table Vendas(
id_venda int not null primary key identity,
data_venda date not null
);
--criando a chave estrangeira do Cliente
alter table Vendas
add id_cliente int not null

--select * from Vendas
--alter table Vendas 
--drop column id_cliente
alter table Vendas
add constraint fk_id_cliente
foreign key (id_cliente) references Pessoas (id_pessoa)

create table Itens_Venda
(id_venda int not null,
id_produto int not null,
preco_item_venda real not null,
qtd_item_venda real not null,
primary key(id_venda,id_produto),
foreign key (id_venda) references Vendas(id_venda),
foreign key (id_produto) references Produtos(id_produto)
);

--alterar o tipo do campo preco_item_venda para money
alter table Itens_Venda
alter column preco_item_venda money not null;

create table Compras
(id_compra int not null primary key identity,
data_compra date not null
);

--alter table Compras drop column id_fornecedor
--adicionando chave estrangeira do fornecedor
alter table Compras
add id_fornecedor int not null
alter table Compras
add constraint fk_id_fornecedor
foreign key (id_fornecedor) references Pessoas (id_pessoa)

create table Itens_Compra(
id_compra int not null,
id_produto int not null,
preco_item_compra money not null,
qtd_item_compra real not null,
primary key(id_compra, id_produto),
foreign key (id_compra) references Compras (id_compra),
foreign key (id_produto) references Produtos (id_produto)
);

create table Usuarios(
id_user int not null primary key identity,
email_user varchar (50) not null,
senha varchar (20) not null
);

--incluir permissao na tabela usuario
alter table Usuarios
add permissao int not null;

create table Relattorios(
id_relatorio int not null primary key identity,
id_user int not null,
data_relatorio date not null,
descricao_relatorio varchar (300)
);
--adicionar chave estrangeira
alter table Relatorios
add constraint fk_id_user
foreign key (id_user) references Usuarios (id_user)

--corrigir o nome da tabela Relatorios
EXEC sp_rename 'Relattorios', 'Relatotios';
EXEC sp_rename 'Relatotios', 'Relatorios';

select * from Relattorios
select * from Categorias
insert into Categorias values('Rapé');
insert into Categorias values('Guia');
insert into Categorias values('Santo Cruzeiro');
insert into Categorias values('Sabonete Líquido');
insert into Categorias values('Hidratante');
insert into Categorias values('Sabonete em Barra');
insert into Categorias values('Jurema');
insert into Categorias values('Aromatizador');
select * from Categorias


select * from Pessoas

insert into Pessoas values ('Juruá Rapé', 'jurua@gmail.com', 'Rua Amazonia, n 500', '50987654569','');
insert into Pessoas values ('Mix Biju', 'mixbiju@gmail.com', 'Rua General, 123, São José do Rio Preto', '50987884569','');
insert into Pessoas values ('Lojas Lívea', 'lojaslivia@hotmail.com', 'Rua Coronel,10, São José do Prero', '1111122233356', '543289632');
insert into Pessoas values ('Presentes MDF', 'mdfriopreto@hotmail.com', 'Av. Bady Bassit, 25, São José do Rio Preto', '999887766', '');
insert into Pessoas values ('Embalagens Iirá', 'ibiraaembala@bol.com.br', 'Rua Cristovão Colombo, 200, Ibirá', '918273465', '32225555');

insert into Pessoas values ('Maria Joaquina', 'mariazinha@yahoo.com.br', 'Rua Jequitibá, 1254, Baobá', '33332222', '33332221');
INSERT INTO Pessoas VALUES ('Carlos Silva', 'carloss@gmail.com', 'Avenida das Américas, 456, Centro', '44445555', '44445556');
INSERT INTO Pessoas VALUES ('Ana Paula', 'anapaula@hotmail.com', 'Rua das Flores, 789, Jardim', '55556666', '55556667');
INSERT INTO Pessoas VALUES ('João Souza', 'joaosouza@outlook.com', 'Praça da Liberdade, 101, Liberdade', '66667777', '66667778');
INSERT INTO Pessoas VALUES ('Fernanda Oliveira', 'fernanda_oli@gmail.com', 'Alameda Santos, 202, Bela Vista', '77778888', '77778889');

INSERT INTO Fornecedores VALUES (1, '12345678000101', 'Borges e Filhos');
INSERT INTO Fornecedores VALUES (2, '23456789000102', 'Luquin e Irmãos');
INSERT INTO Fornecedores VALUES (3, '34567890000103', 'Silva & Família');
INSERT INTO Fornecedores VALUES (4, '45678900000104', 'Oliveira e Companhia');
INSERT INTO Fornecedores VALUES (5, '56789010000105', 'Medeiros e Associados');

select * from Fornecedores

INSERT INTO Clientes VALUES (6, '12345678901');
INSERT INTO Clientes VALUES (7, '23456789012');
INSERT INTO Clientes VALUES (8, '34567890123');
INSERT INTO Clientes VALUES (9, '45678901234');
INSERT INTO Clientes VALUES (10, '56789012345');

select * from Clientes

select * from Produtos

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Rapé Jurema Preta', 'Rapé medicinal Indígena, 20g', 'Unidade', 80.00, 100, 1, 1);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Rapé Samaúma', 'Rapé medicinal Indígena, 20g', 'Unidade', 80.00, 25, 1, 1);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Rapé Cumaru', 'Rapé medicinal Indígena, 20g', 'Unidade', 80.00, 25, 1, 1);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Santo Cruzeiro Iemanjá', 'Santo Cruzeiro nas cores azul e branco com conchas', 'Unidade', 40.00, 5, 3, 2);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Guia Caboclo', 'Guia de Umbanda e Candomblé na cor verde', 'Unidade', 55.00, 3, 2, 2);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Jurema', 'Spray com Alcool de Cereais e ervas medicinais, 60 ml', 'Unidade', 15.00, 20, 7, 1);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Sabonete em Barra Erva-Doce', 'Sabonete esfoliante com essência de erva-doce, 50g', 'Unidade', 15.00, 30, 6, 3);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Aromatizador Jabuticaba', 'Aromatizador de ambiente', 'Unidade', 50.00, 35, 8, 5);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Hidratante Lavanda', 'Hidratante para o corpo, 50 ml', 'Unidade', 30.00, 10, 5, 3);

INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Guia Exú', 'Guia de Umbanda e Candomblé nas cores preto e vermelho', 'Unidade', 55.00, 3, 2, 2);


select * from Compras

insert into Compras values ('01-05-2024',1);
INSERT INTO Compras VALUES ('15-01-2024',2);
INSERT INTO Compras VALUES ('10-02-2024',3);
INSERT INTO Compras VALUES ('05-03-2024',4);
INSERT INTO Compras VALUES ('20-04-2024',5);


INSERT INTO Itens_Compra (id_compra, id_produto, preco_item_compra, qtd_item_compra)
VALUES (7, 1, 80.00, 2);

INSERT INTO Itens_Compra (id_compra, id_produto, preco_item_compra, qtd_item_compra)
VALUES (8, 2, 80.00, 1);

INSERT INTO Itens_Compra (id_compra, id_produto, preco_item_compra, qtd_item_compra)
VALUES (9, 3, 80.00, 3);

INSERT INTO Itens_Compra (id_compra, id_produto, preco_item_compra, qtd_item_compra)
VALUES (10, 4, 40.00, 1);

INSERT INTO Itens_Compra (id_compra, id_produto, preco_item_compra, qtd_item_compra)
VALUES (11, 5, 55.00, 2);

select * from Itens_Compra


INSERT INTO Vendas VALUES ('15-01-2024',1);
INSERT INTO Vendas VALUES ('10-02-2024',2);
INSERT INTO Vendas VALUES ('05-03-2024',3);
INSERT INTO Vendas VALUES ('20-04-2024',4);
INSERT INTO Vendas VALUES ('30-05-2024',5);
INSERT INTO Vendas VALUES ('25-06-2024',2);

select * from Vendas

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (14, 1, 80.00, 2);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (15, 2, 80.00, 1);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (16, 3, 80.00, 3);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (17, 4, 40.00, 1);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (18, 5, 55.00, 2);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (19, 6, 15.00, 1);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (19, 7, 15.00, 2);

INSERT INTO Itens_Venda (id_venda, id_produto, preco_item_venda, qtd_item_venda)
VALUES (19, 8, 50.00, 1);

select * from Itens_Venda

INSERT INTO Usuarios (email_user, senha, permissao)
VALUES ('admin@example.com', 'admin123', 1);

INSERT INTO Usuarios (email_user, senha, permissao)
VALUES ('user1@example.com', 'password1', 2);

INSERT INTO Usuarios (email_user, senha, permissao)
VALUES ('user2@example.com', 'password2', 2);

INSERT INTO Usuarios (email_user, senha, permissao)
VALUES ('user3@example.com', 'password3', 2);

INSERT INTO Usuarios (email_user, senha, permissao)
VALUES ('user4@example.com', 'password4', 2);

select * from Usuarios

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (1, '2024-01-15', 'Relatório das vendas de Rapé Jurema Preta em janeiro');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (2, '2024-02-10', 'Relatório da compra de Rapé Samaúma em fevereiro');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (3, '2024-03-05', 'Relatório das vendas de Rapé Cumaru em março');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (4, '2024-04-20', 'Relatório da compra de Santo Cruzeiro Iemanjá em abril');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (5, '2024-05-30', 'Relatório das vendas de Guia Caboclo em maio');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (1, '2024-06-10', 'Relatório das vendas de Jurema em junho');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (2, '2024-07-15', 'Relatório da compra de Sabonete em Barra Erva-Doce em julho');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (3, '2024-08-10', 'Relatório das vendas de Aromatizador Jabuticaba em agosto');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (4, '2024-09-05', 'Relatório da compra de Hidratante Lavanda em setembro');

INSERT INTO Relatorios (id_user, data_relatorio, descricao_relatorio)
VALUES (5, '2024-10-01', 'Relatório das vendas de Guia Exú em outubro');

select * from Relatorios

select * from Produtos

update Produtos
set descricao = 'Aromatizador de Ambiente, 100 ml'
where id_produto = 8

update Produtos
set preco_unidade  = 20.00
where nome_produto = 'Jurema'

update Usuarios
set senha = 'admin@123'
where id_user = 1

update Categorias
set nome_categoria = 'Rapé Medicinal'
where nome_categoria = 'Rapé'

update Compras
set data_compra = '02-05-2024'
where data_compra = '01-05-2024'

select * from Categorias
select * from Compras
select * from Itens_Compra
select * from Vendas
select * from Itens_Venda
select * from Relatorios
select * from Usuarios
select * from Produtos
select * from Clientes


delete from Categorias
where id_categoria = 4
delete Itens_Venda
where id_venda = 14
delete Relatorios
where id_user = 5
delete Usuarios
where id_user = 5
delete Vendas
where id_venda = 14

select Produtos.nome_produto as [NOME DO PRODUTO], Pessoas.nome_pessoa as [FORNECEDOR]
from Produtos
inner join Pessoas
on Produtos.id_pessoa = Pessoas.id_pessoa

select Produtos.nome_produto as [PRODUTO], Itens_Venda.id_venda [CÓDIGO DA VENDA], Vendas.id_cliente as [CLIENTES]
from Produtos
inner join Itens_Venda
on Produtos.id_produto = Itens_Venda.id_produto
inner join Vendas
on Itens_Venda.id_venda = Vendas.id_venda

select Pessoas.nome_pessoa as [CLIENTE], Pessoas.email_pessoa as [EMAIL], Vendas.data_venda as [DATA DA VENDA]
from Pessoas
inner join Vendas
on Vendas.id_cliente = Pessoas.id_pessoa

select Produtos.nome_produto as [PRODUTO], Produtos.descricao as [DESCRIÇÃO], Produtos.preco_unidade as [PREÇO], Categorias.nome_categoria as [CATEGORIA]
from Produtos
inner join Categorias
on Produtos.id_categoria = Categorias.id_categoria

select Compras.id_fornecedor as [FORNECEDOR], Compras.data_compra as [DATA], Fornecedores.cnpj as [CNPJ], Pessoas.nome_pessoa as [FORNECEDOR]
from Compras
inner join Fornecedores
on Compras.id_fornecedor = Fornecedores.id_pessoa
inner join Pessoas
on Pessoas.id_pessoa = Compras.id_fornecedor


create trigger Trigger_Produto
on Produtos
after insert
as print 'PRODUTO CADASTRADO COM SUCESSO'
INSERT INTO Produtos (nome_produto, descricao, unidade, preco_unidade, qtd_estoque, id_categoria, id_pessoa)
VALUES ('Guia Pombogira', 'Guia de Umbanda e Candomblé nas cores preto e vermelho', 'Unidade', 55.00, 3, 2, 2);

create trigger Trigger_Relatorio
on Relatorios
instead of delete
as print 'VOCÊ NÃO TEM AUTORIZAÇÃO PARA ESTA OPERAÇÃO'
delete Relatorios
where id_relatorio = 1

create trigger Trigger_Usuarios
on Usuarios
instead of insert
as
print 'ACESSO NEGADO: SOMENTE ADMINISTRADOR PODE INCLUIR USUÁRIOS'
INSERT INTO Usuarios (email_user, senha, permissao)
VALUES ('user6@example.com', 'password6', 2);

create trigger Trigger_Atualiza_Estoque
on Itens_Compra
after insert
as
begin
	update Produtos
	set Produtos.qtd_estoque = Produtos.qtd_estoque + Itens_Compra.qtd_item_compra
	from Produtos
	inner join Itens_Compra
	on Itens_Compra.id_produto = Produtos.id_produto
end

insert into Itens_Compra values (10, 1, 80.00, 10)

create trigger Trigger_Venda
on Vendas
after insert
as
print 'VENDA CADASTRADA COM SUCESSO'

INSERT INTO Vendas VALUES ('06-06-2024', 9)

Select *
From sys.triggers
where is_disabled = 0