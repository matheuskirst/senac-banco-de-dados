CREATE TABLE PedidoProduto (
    Id SERIAL PRIMARY KEY,
    PedidoId INTEGER NOT NULL,
    ProdutoId INTEGER NOT NULL,
    Quantidade INTEGER NOT NULL,
    ValorUnitario NUMERIC(10,2) NOT NULL,
    ValorTotal NUMERIC(10,2) NOT NULL,
	FOREIGN KEY (PedidoId) REFERENCES Pedido(Id),
	FOREIGN KEY (ProdutoId) REFERENCES Produtos(Id)
);

INSERT INTO PedidoProduto
(PedidoId, ProdutoId, Quantidade, ValorUnitario, ValorTotal)
VALUES
(1, 8, 3, 45.00, 135.00),
(1, 1, 1, 115.75, 115.75),
(2, 7, 1, 89.90, 89.90),
(3, 8, 4, 45.00, 180.00),
(3, 1, 2, 150.00, 300.00),
(3, 7, 1, 80.00, 80.00),
(4, 8, 2, 45.00, 90.00),
(4, 1, 1, 30.50, 30.50),
(5, 3, 1, 899.90, 899.90),
(5, 8, 2, 45.00, 90.00),
(5, 1, 1, 10.09, 10.09),
(6, 8, 1, 45.00, 45.00),
(7, 8, 2, 45.00, 90.00),
(7, 1, 1, 150.00, 150.00),
(7, 7, 2, 35.10, 70.20),
(8, 9, 1, 560.00, 560.00),
(8, 8, 2, 45.00, 90.00),
(8, 1, 1, 130.40, 130.40),
(9, 8, 2, 45.00, 90.00),
(9, 1, 2, 30.00, 60.00),
(10, 8, 1, 45.00, 45.00),
(10, 1, 3, 7.63, 22.89);



select
ped.Id as Pedido,
ped.DataPedido,
prod.Nome as ProdutoNome,
pp.ValorUnitario,
pp.Quantidade,
ped.ValorTotal
from pedidoproduto pp
inner join Pedido ped
on ped.Id = pp.PedidoId
inner join Produtos prod
on prod.Id = pp.ProdutoId
where ped.Id = 8


