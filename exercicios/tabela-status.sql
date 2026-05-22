create table Status (
	Id int primary key,
	Nome VARCHAR(30) not null
)

INSERT INTO Status (Id, Nome)
values
(1, 'Pendente'),
(2, 'Concluido'),
(3, 'Cancelado');

select * from Status
