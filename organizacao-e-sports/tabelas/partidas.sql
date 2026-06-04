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
