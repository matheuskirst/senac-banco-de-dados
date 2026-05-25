create table Funcionario (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Cargo VARCHAR(50) not null,
	Salario DECIMAL(10,2) not null,
	DataAdmissao date not null
)

insert into Funcionario (Nome, Cargo, Salario, DataAdmissao)
values ('Jorge', 'Supervisor', '5000.00', '1990-04-20')

insert into Funcionario (Nome, Cargo, Salario, DataAdmissao)
values ('Igor', 'Estoquista', '2000.00', '2025-10-02')

insert into Funcionario (Nome, Cargo, Salario, DataAdmissao)
values ('Daniel', 'Desenvolvedor', '3000.00', '2025-09-11')

select * from Funcionario where Salario > 3000

select * from Funcionario
where extract(year from DataAdmissao) = '2025'

select Nome, Cargo from Funcionario
where Cargo = 'Desenvolvedor'

update Funcionario Cargo
set Cargo = 'Gerente'
where Id = 1

select * from Funcionario order by Id

select avg(Salario)
from Funcionario
