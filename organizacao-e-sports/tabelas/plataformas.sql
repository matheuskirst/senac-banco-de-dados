create table organizacao_eventos_e_sports.Plataformas (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null
)

-- Plataformas
INSERT INTO organizacao_eventos_e_sports.Plataformas (Nome)
VALUES
('Twitch'),
('YouTube Gaming'),
('Kick'),
('Facebook Gaming'),
('Trovo'),
('Nimo TV'),
('Steam'),
('Discord'),
('TikTok Live'),
('Mildom');
