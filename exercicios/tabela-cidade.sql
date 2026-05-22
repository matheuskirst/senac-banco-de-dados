create table Cidade(
	Id serial primary key,
	Nome VARCHAR(100) not null,
	Estado VARCHAR(20) not null
)

insert into Cidade (Nome, Estado)
values
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Belo Horizonte', 'MG'),
('Curitiba', 'PR'),
('Fortaleza', 'CE')

alter table Usuarios
add column CidadeId INT;

select * from Usuarios

update Usuarios
set CidadeId = 3
where Id = 1;
update Usuarios
set CidadeId = 3
where Id = 2;
update Usuarios
set CidadeId = 2
where Id = 3;
update Usuarios
set CidadeId = 1
where Id = 4;
update Usuarios
set CidadeId = 3
where Id = 5;
update Usuarios
set CidadeId = 2
where Id = 5;

select
u.Id,
u.Nome,
u.Cpf,
c.Nome as CidadeNome,
c.Estado
from Usuarios u
left join Cidade c
on u.CidadeId = c.Id
