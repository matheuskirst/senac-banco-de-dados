create table organizacao_eventos_e_sports.Arenas (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Capacidade INT not null,
	ModalidadeId INT not null,
	foreign key (ModalidadeId) references organizacao_eventos_e_sports.Modalidades(Id)
)

-- Arenas
INSERT INTO organizacao_eventos_e_sports.Arenas (Nome, Capacidade, ModalidadeId) VALUES
('Summoners Arena', 15000, 1),
('Nexus Stadium', 12000, 1),

('Bombsite Arena', 18000, 2),
('Headshot Stadium', 14000, 2),

('Spike Arena', 13000, 3),
('Radiant Coliseum', 10000, 3),

('Ancient Battleground', 11000, 4),
('The International Dome', 20000, 4),

('Supersonic Arena', 9000, 5),
('Champions Field Stadium', 8500, 5),

('Ultimate Team Arena', 7000, 6),
('Virtual Football Center', 6500, 6),

('Payload Arena', 8000, 7),
('Hero Coliseum', 7500, 7),

('Tactical Siege Arena', 9500, 8),
('Operator Stadium', 9000, 8);
