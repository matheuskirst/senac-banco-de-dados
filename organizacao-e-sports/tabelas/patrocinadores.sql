create table organizacao_eventos_e_sports.Patrocinadores (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	CategoriaId INT not null,
	ValorInvestido DECIMAL(10, 2) not null
	foreign key (CategoriaId) references organizacao_eventos_e_sports.CategoriasEmpresas(Id)
)

-- Patrocinadores
INSERT INTO organizacao_eventos_e_sports.Patrocinadores
(Nome, CategoriaId, ValorInvestido) VALUES
('NVIDIA', 1, 500000.00),
('AMD', 1, 350000.00),

('Logitech G', 2, 250000.00),
('Razer', 2, 275000.00),

('Red Bull', 3, 600000.00),
('Monster Energy', 3, 450000.00),

('Vivo', 4, 400000.00),
('Claro', 4, 380000.00),

('Microsoft', 5, 700000.00),
('Intel', 5, 550000.00),

('Twitch', 6, 800000.00),
('YouTube Gaming', 6, 650000.00),

('FURIA Wear', 7, 150000.00),
('LOUD Store', 7, 180000.00),

('Nubank', 8, 300000.00),
('PicPay', 8, 220000.00);
