create table Pedido (
	Id SERIAL primary key,
	UsuarioId INT not null,
	DataPedido TIMESTAMP default CURRENT_TIMESTAMP not null,
	ValorTotal DECIMAL(10, 2) not null,
	StatusId INT default 1 not null,
	FormaPagamentoId INT not null,
	Observacao VARCHAR(200) null,
	foreign key (UsuarioId) references Usuarios(Id),
	foreign key (FormaPagamentoId) references FormasPag(Id),
	foreign key (StatusId) references Status(Id)
)

INSERT INTO Pedido 
(UsuarioId, ValorTotal, StatusId, FormaPagamentoId, Observacao)
VALUES
(4, 140.00, 2, 3, 'Cliente fidelidade'),
(1, 89.90, 2, 3, 'Cliente recorrente'),
(5, 67.80, 2, 2, NULL),
(2, 78.40, 1, 3, NULL),
(3, 310.99, 2, 1, 'Entrega agendada'),
(1, 230.00, 1, 4, 'Aguardando pagamento'),
(4, 210.30, 1, 4, NULL),
(2, 45.00, 2, 3, NULL),
(1, 150.50, 2, 1, 'Entrega rápida'),
(4, 99.99, 2, 1, NULL),
(3, 59.90, 1, 3, NULL),
(2, 120.75, 3, 2, 'Pedido cancelado pelo cliente');

select * from Pedido

select Pedido.Id, Pedido.UsuarioId, Usuarios.Nome, FormasPag.Nome as "formapagamento", Status.Nome as "status", Pedido.DataPedido
from Pedido
inner join Usuarios
on Pedido.UsuarioId = Usuarios.Id
inner join FormasPag
on Pedido.FormaPagamentoId = FormasPag.Id
inner join Status
on Pedido.StatusId = Status.Id
order by Pedido.Id asc
where Usuario.Id = 4

select min(ValorTotal)
from Pedido

select sum(ValorTotal) as SomaValorTotalPedidos
from Pedido

-- Atividade 1
select Usuarios.Nome, Usuarios.Email
from Usuarios
where Ativo = true

-- Atividade 2
select Pedido.Id, Pedido.DataPedido, Pedido.ValorTotal
from Pedido
where ValorTotal > 500

-- Atividade 3
rip

-- Atividade 4
select count(*) as TotalUsuarios
from Usuarios

-- Atividade 5
select max(ValorTotal)
from Pedido

-- Atividade 6
select avg(ValorTotal)
from Pedido

-- Atividade 7
select sum(ValorTotal)
from Pedido p
inner join FormasPag f
on p.FormaPagamentoId = f.Id
where f.Nome ilike '%PIX%'


-- Atividade 8
select u.Nome, p.DataPedido, s.Nome as Status
from Pedido p
inner join Usuarios u
on p.UsuarioId = u.Id
inner join Status s
on p.StatusId = s.Id
where s.Nome = 'Pendente'

-- Atividade 9
select Usuarios.Nome, Pedido.ValorTotal, FormasPag.Nome as "formapagamento"
from Pedido
inner join Usuarios
on Pedido.UsuarioId = Usuarios.Id
inner join FormasPag
on Pedido.FormaPagamentoId = FormasPag.Id
where FormasPag.Nome ilike '%cartão%'

-- Atividade 10
select Usuarios.Nome, Pedido.DataPedido, Pedido.ValorTotal
from Pedido
inner join Usuarios
on Pedido.UsuarioId = Usuarios.Id
where Pedido.ValorTOtal > 200

-- Atividade 11
select Usuarios.Nome
from Pedido
inner join Usuarios
on Pedido.UsuarioId = Usuarios.Id
where Usuarios.Ativo = TRUE

-- Atividade 12
select Usuarios.Nome, Status.Nome as "status", Pedido.Observacao
from Pedido
inner join Usuarios
on Pedido.UsuarioId = Usuarios.Id
inner join Status
on Pedido.StatusId = Status.Id
where Pedido.Observacao is not null

-- Atividade 13
update Usuarios
set (Telefone, Email) = ('(51)99999-6666', 'm4ria0liveira@email.com')
where Usuarios.Id = 2

select * from Usuarios