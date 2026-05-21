create table Produtos (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Preco DECIMAL(10,2) not null,
	Estoque INT default 0
)

insert into Produtos (Nome, Preco, Estoque)
values ('Gigabyte RTX 5060 Ti 16GB', '3899.99', '24')

insert into Produtos (Nome, Preco, Estoque)
values ('Intel Core i5-10400', '699.99', '148')

insert into Produtos (Nome, Preco, Estoque)
values ('Acer Nitro KG240Y', '799.99', '305')

select * from Produtos order by Preco

update Produtos
set Preco = 599.99
where Nome = 'Intel Core i5-10400'

delete from Produtos where Id = 2
