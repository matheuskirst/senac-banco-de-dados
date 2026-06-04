create table organizacao_eventos_e_sports.Modalidades (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null
)

-- Modalidades (Jogos)
INSERT INTO organizacao_eventos_e_sports.Modalidades (Nome) VALUES
('League of Legends'),
('Counter-Strike 2'),
('Valorant'),
('Dota 2'),
('Rocket League'),
('EA Sports FC 26'),
('Overwatch 2'),
('Rainbow Six Siege');