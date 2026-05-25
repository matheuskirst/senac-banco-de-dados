create table Produtos (
	Id SERIAL primary key,
	Nome VARCHAR(150) not null,
	Descricao text,
	Preco DECIMAL(10,2) not null,
	Estoque INT default 0,
	Ativo BOOLEAN default true,
	CriadoEm TIMESTAMP default CURRENT_TIMESTAMP,
	AtualizadoEm TIMESTAMP default CURRENT_TIMESTAMP
);

insert into Produtos (Nome, Descricao, Preco, Estoque)
values
('Mouse Gamer', 'Mouse RGB 7200 DPI', 150.00, 25),
('Teclado Mecânico', 'Teclado switch blue', 350.00, 15),
('Monitor 24"', 'Monitor Full HD IPS', 899.90, 10),
('Headset Gamer', 'Headset com microfone', 250.75, 20),
('Notebook i5', 'Notebook 16GB RAM SSD 512GB', 4500.00, 5),
('Cadeira Gamer', 'Cadeira ergonômica reclinável', 1200.50, 8),
('Webcam HD', 'Webcam 1080p', 89.90, 30),
('Mousepad XXL', 'Mousepad extra grande', 45.00, 40),
('SSD 1TB', 'SSD NVMe Gen4', 560.00, 12),
('Fonte 650W', 'Fonte modular 80 Plus Bronze', 310.20, 18);

