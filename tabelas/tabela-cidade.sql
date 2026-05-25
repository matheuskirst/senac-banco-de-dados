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

alter table Usuario
add column CidadeId INT;

select * from Usuario

update Usuario
set CidadeId = 3
where Id = 1;
update Usuario
set CidadeId = 3
where Id = 2;
update Usuario
set CidadeId = 2
where Id = 3;
update Usuario
set CidadeId = 1
where Id = 4;
update Usuario
set CidadeId = 3
where Id = 5;
update Usuario
set CidadeId = 2
where Id = 5;

select
u.Id,
u.Nome,
u.Cpf,
c.Nome as CidadeNome,
c.Estado
from Usuario u
left join Cidade c
on u.CidadeId = c.Id

select
u.Id,
u.Nome,
u.Cpf,
c.Nome as CidadeNome,
c.Estado
from Usuario u
right join Cidade c
on u.CidadeId = c.Id


select
u.Id,
u.Nome,
u.Cpf,
c.Nome as CidadeNome,
c.Estado
from Usuario u
inner join Cidade c
on u.CidadeId = c.Id


select
	c.Nome as Cidade,
	count(u.Id) as TotalUsuarios
from Cidade c
left join usuario u on c.Id = u.CidadeId
group by c.Id


