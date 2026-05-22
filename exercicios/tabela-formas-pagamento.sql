create table FormasPag (
	Id int primary key,
	Nome VARCHAR(30) not null
)

INSERT INTO FormasPag (Id, Nome)
values
(1, 'Cartão de Crédito'),
(2, 'Cartão de Débito'),
(3, 'PIX'),
(4, 'Boleto'),
(5, 'Dinheiro');

select * from FormasPag
