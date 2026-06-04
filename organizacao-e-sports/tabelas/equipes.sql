create table organizacao_eventos_e_sports.Equipes (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null
)


-- Equipes
INSERT INTO organizacao_eventos_e_sports.Equipes (Nome) VALUES
('Furia'),
('LOUD'),
('paiN Gaming'),
('MIBR'),
('RED Canids');
