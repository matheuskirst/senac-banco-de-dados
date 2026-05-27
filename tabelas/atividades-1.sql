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
