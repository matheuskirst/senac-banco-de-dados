create table organizacao_eventos_e_sports.Jogadores (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Nickname VARCHAR(100) not null,
	DataNascimento Date not null,
	Salario DECIMAL(10, 2) not null,
	EquipeId INT not null,
	foreign key (EquipeId) references organizacao_eventos_e_sports.Equipes(Id)
)

create table organizacao_eventos_e_sports.Equipes (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null
)

create table organizacao_eventos_e_sports.Arenas (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Capacidade INT not null,
	Modalidade VARCHAR(100) not null
)

create table organizacao_eventos_e_sports.Partidas (
	Id SERIAL primary key,
	ArenaId INT not null,
	Equipe1Id INT not null,
	Equipe2Id INT not null,
	DataPartida TIMESTAMP default CURRENT_TIMESTAMP not null,
	foreign key (ArenaId) references organizacao_eventos_e_sports.Arenas(Id),
	foreign key (Equipe1Id) references organizacao_eventos_e_sports.Equipes(Id),
	foreign key (Equipe2Id) references organizacao_eventos_e_sports.Equipes(Id)
)


create table organizacao_eventos_e_sports.Patrocinadores (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Categoria VARCHAR(50) not null,
	ValorInvestido DECIMAL(10, 2) not null
)


create table organizacao_eventos_e_sports.Visitantes (
    Id SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
)

create table organizacao_eventos_e_sports.Ingressos (
	Id SERIAL primary key,
	Numero VARCHAR(100) unique not null,
	PartidaId INT not null,
	VisitanteId INT unique not null,
	Acesso VARCHAR(20) not null,
	foreign key (PartidaId) references organizacao_eventos_e_sports.Partidas(Id),
	foreign key (VisitanteId) references organizacao_eventos_e_sports.Visitantes(Id)
)

create table organizacao_eventos_e_sports.Plataformas (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null
)

create table organizacao_eventos_e_sports.Streamers (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	PlataformaId INT not null,
	Seguidores INT not null,
	foreign key (PlataformaId) references organizacao_eventos_e_sports.Plataformas(Id)
)


create table organizacao_eventos_e_sports.EspectadoresPartida (
	Id SERIAL primary key,
	PartidaId INT unique not null,
	QuantidadeEspectadores INT default 0 not null,
	foreign key (PartidaId) references organizacao_eventos_e_sports.Partidas(Id)
)

-- Equipes
INSERT INTO organizacao_eventos_e_sports.Equipes (Nome) VALUES
('Furia'),
('LOUD'),
('paiN Gaming'),
('MIBR'),
('RED Canids');


-- Jogadores
INSERT INTO organizacao_eventos_e_sports.Jogadores
(Nome, Nickname, DataNascimento, Salario, EquipeId)
VALUES
('Gabriel Toledo', 'FalleN', '1991-05-30', 25000.00, 4),
('André Akkari', 'Akkari', '1974-12-28', 18000.00, 3),
('Matheus Rossini', 'bzkA', '1996-08-14', 15000.00, 1),
('Felipe Basso', 'skullz', '2002-04-20', 22000.00, 4),
('Arthur Schmitt', 'tuyz', '2004-07-15', 17000.00, 2),
('Kaike Cerato', 'KSCERATO', '1999-09-12', 28000.00, 1),
('Rodrigo Bittencourt', 'biguzera', '1996-01-31', 21000.00, 3),
('Marcelo Cespedes', 'coldzera', '1994-10-31', 30000.00, 5),
('Lucas Neves', 'Lucaozy', '2001-02-18', 16000.00, 5),
('Eduardo Chiste', 'dumau', '2003-01-10', 19000.00, 2);

SELECT
    j.Id,
    j.Nome,
    j.Nickname,
    e.Nome AS Equipe,
    j.Salario
FROM organizacao_eventos_e_sports.Jogadores j
JOIN organizacao_eventos_e_sports.Equipes e
    ON j.EquipeId = e.Id;

-- Arenas
INSERT INTO organizacao_eventos_e_sports.Arenas
(Nome, Capacidade, Modalidade)
VALUES
('Arena Nexus', 5000, 'League of Legends'),
('Cyber Stadium', 8000, 'Counter-Strike 2'),
('Battle Dome', 12000, 'Valorant'),
('E-Sports Coliseum', 15000, 'Dota 2'),
('Digital Arena', 6000, 'Rainbow Six Siege'),
('Phoenix Arena', 10000, 'Free Fire'),
('Titan Gaming Center', 7000, 'Rocket League'),
('Elite Esports Hall', 9000, 'Fortnite'),
('Dragon Arena', 11000, 'Overwatch 2'),
('Infinity Stadium', 20000, 'Multimodal');

SELECT *
FROM organizacao_eventos_e_sports.Arenas
ORDER BY Id;

-- Partidas
INSERT INTO organizacao_eventos_e_sports.Partidas
(ArenaId, EquipesId, DataPartida)
VALUES
(1, 1, '2026-06-01 14:00:00'),
(2, 2, '2026-06-01 18:00:00'),
(3, 3, '2026-06-02 15:00:00'),
(4, 4, '2026-06-02 19:00:00'),
(5, 5, '2026-06-03 16:00:00'),
(6, 1, '2026-06-03 20:00:00'),
(7, 2, '2026-06-04 14:00:00'),
(8, 3, '2026-06-04 18:00:00'),
(9, 4, '2026-06-05 15:00:00'),
(10, 5, '2026-06-05 19:00:00');

select * from organizacao_eventos_e_sports.partidas p
inner join organizacao_eventos_e_sports.Arenas a
on p.ArenaId = a.Id

-- Visitantes
INSERT INTO organizacao_eventos_e_sports.Visitantes (Nome) VALUES
('João Silva'),
('Maria Oliveira'),
('Pedro Santos'),
('Ana Costa'),
('Lucas Pereira'),
('Juliana Almeida'),
('Carlos Souza'),
('Fernanda Lima'),
('Ricardo Martins'),
('Beatriz Rocha');


-- Ingressos
INSERT INTO organizacao_eventos_e_sports.Ingressos
(Numero, PartidaId, VisitanteId, Acesso)
VALUES
('ING-2026-0001', 1, 1, 'Diário'),
('ING-2026-0002', 2, 2, 'Premium'),
('ING-2026-0003', 3, 3, 'Backstage'),
('ING-2026-0004', 4, 4, 'Diário'),
('ING-2026-0005', 5, 5, 'Premium'),
('ING-2026-0006', 6, 6, 'Backstage'),
('ING-2026-0007', 7, 7, 'Diário'),
('ING-2026-0008', 8, 8, 'Premium'),
('ING-2026-0009', 9, 9, 'Backstage'),
('ING-2026-0010', 10, 10, 'Premium');

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

select s.Nome, s.Seguidores, p.Nome as Plataforma from organizacao_eventos_e_sports.streamers s 
inner join organizacao_eventos_e_sports.Plataformas p
on s.PlataformaId = p.Id

-- Patrocinadores
INSERT INTO organizacao_eventos_e_sports.Patrocinadores (Nome, Categoria, ValorInvestido)
VALUES
('Red Bull', 'Bebidas Energéticas', 500000.00),
('Intel', 'Hardware', 1200000.00),
('Logitech', 'Periféricos', 750000.00),
('HyperX', 'Periféricos', 650000.00),
('Razer', 'Periféricos', 800000.00),
('NVIDIA', 'Hardware', 1500000.00),
('Samsung', 'Tecnologia', 900000.00),
('Claro', 'Telecomunicações', 700000.00),
('Banco Inter', 'Serviços Financeiros', 550000.00),
('Monster Energy', 'Bebidas Energéticas', 450000.00);

