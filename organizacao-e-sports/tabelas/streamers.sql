create table organizacao_eventos_e_sports.Streamers (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	PlataformaId INT not null,
	Seguidores INT not null,
	foreign key (PlataformaId) references organizacao_eventos_e_sports.Plataformas(Id)
)

-- Streamers
INSERT INTO organizacao_eventos_e_sports.Streamers
(Nome, PlataformaId, Seguidores)
VALUES
('Gaules', 1, 4200000),
('Alanzoka', 1, 6800000),
('Cellbit', 1, 3500000),
('Baiano', 1, 1200000),
('Casimiro', 2, 5300000),
('Nobru', 2, 15000000),
('Loud Coringa', 1, 2900000),
('Mount', 3, 450000),
('Buxexa', 3, 850000),
('Paulinho o Loko', 4, 1800000),
('Cerol', 2, 7900000),
('Jukes', 1, 950000),
('Yoda', 1, 2200000),
('BrTT', 1, 1700000),
('Mch', 3, 380000);
