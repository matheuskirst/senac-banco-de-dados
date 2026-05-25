create table Status (
	Id int primary key,
	Nome VARCHAR(30) not null
)

insert into Status (Id, Nome)
values 
(1, 'Pago'),
(2, 'Pendente'),
(3, 'Enviado'),
(4, 'Cancelado');

drop table status
