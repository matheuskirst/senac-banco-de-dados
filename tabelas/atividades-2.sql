-- 1 Mostrar pedidos com valor entre 100 e 500
select * from pedido p 
where p.ValorTotal > 100 and p.ValorTotal < 500

-- 2 Contar quantos usuários utilizam Outlook
select count(u.Id) as TotalUsuarios
from Usuario u
where u.Email ilike '%outlook%'

-- 3 Dados do pedido de maior valor
select * from Pedido p
order by p.ValorTotal desc
limit 1

-- 4 Dados do produto de menor preço
select * from produtos pr
order by pr.Preco asc
limit 1

-- 5 Média de preço apenas dos produtos que saíram em pedidos
select avg(prod.Preco) from PedidoProduto pp
inner join Produtos prod
on prod.Id = pp.ProdutoId
where pp.ProdutoId = prod.Id

-- 6 Dados do pedido, usuário e produtos apenas dos pedidos acima de 300 reais
select * from PedidoProduto pp
inner join Pedido p
on pp.PedidoId = p.Id
inner join Produtos prod
on pp.ProdutoId = prod.Id
inner join Usuario u
on p.UsuarioId = u.Id
where p.ValorTotal > 300

-- 7 Nome do usuário, cidade e estado de usuários inativos
select
u.Nome as NomeUsuario,
c.Nome as CidadeNome,
c.Estado as Estado
from Usuario u
inner join Cidade c
on u.CidadeId = c.Id
where u.Ativo = false

-- 8 Subir o preço do 'Mouse Gamer' e do 'Mousepad XXL' em 15%
select * from produtos order by produtos.Id asc

update produtos prod
set Preco = prod.Preco * 1.15
from (
	values (1), (8)
) as data(Id)
where prod.Id = data.Id

-- 9 Quantidade total de pedidos por usuário
select
	u.Nome as NomeUsuario,
	count(p.Id) as TotalPedidos
from Pedido p
left join usuario u on u.Id = p.UsuarioId
group by u.Id

-- 10 Valor total vendido por produto
select prod.Nome, pp.ValorTotal
from pedidoproduto pp
inner join produtos prod
on pp.ProdutoId = prod.Id

-- 11 Usuários que fizeram pedidos acima do valor médio
select u.Nome as NomeUsuario, p.ValorTotal
from Pedido p
inner join Usuario u
on p.UsuarioId = u.Id
where p.ValorTotal > (select avg(ValorTotal) from pedido)

-- 12 Produtos com preço acima da média dos produtos
select * from produtos prod
where prod.Preco > (select avg(Preco) from produtos)













