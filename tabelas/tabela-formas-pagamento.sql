create table FormaPagamento (
	Id int primary key,
	Nome varchar(30) not null
);

insert into FormaPagamento (Id, Nome) values 
(1, 'Cartão de Crédito'),
(2, 'Cartão de Débito'),
(3, 'PIX'),
(4, 'Boleto'),
(5, 'Dinheiro');
