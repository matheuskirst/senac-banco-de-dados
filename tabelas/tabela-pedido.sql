create table Pedido (
	Id SERIAL primary key,
	UsuarioId INT not null,
	DataPedido TIMESTAMP default CURRENT_TIMESTAMP not null,
	ValorTotal DECIMAL(10, 2) not null,
	StatusId INT default 1 not null,
	FormaPagamentoId INT not null,
	Observacao VARCHAR(200) null,
	foreign key (UsuarioId) references Usuario(Id),
	foreign key (FormaPagamentoId) references FormaPagamento(Id),
	foreign key (StatusId) references Status(Id)
)

INSERT INTO Pedido (UsuarioId, ValorTotal, StatusId, FormaPagamentoId, Observacao)
VALUES
(1, 250.75, 1, 1, 'Entrega expressa'),
(2, 89.90, 2, 3, 'Cliente pediu embalagem presente'),
(3, 560.00, 3, 4, NULL),
(4, 120.50, 4, 2, 'Pagamento não aprovado'),
(2, 999.99, 1, 3, 'Entrega agendada'),
(2, 45.00, 2, 5, NULL),
(1, 310.20, 3, 1, 'Entregar após 18h'),
(3, 780.40, 1, 4, NULL),
(1, 150.00, 2, 3, 'Primeira compra do cliente'),
(5, 67.89, 1, 2, NULL);

select * from Pedido

select Pedido.Id, Pedido.UsuarioId, Usuarios.Nome, fp.Nome as "formapagamento", s.Nome as "status", Pedido.DataPedido
from Pedido
inner join Usuarios
on Pedido.UsuarioId = Usuarios.Id
inner join FormaPagamento fp
on Pedido.FormaPagamentoId = fp.Id
inner join Status s
on Pedido.StatusId = s.Id
order by Pedido.Id asc
where Usuario.Id = 4

select min(ValorTotal)
from Pedido

select sum(ValorTotal) as SomaValorTotalPedidos
from Pedido



