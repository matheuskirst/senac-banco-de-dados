create table organizacao_eventos_e_sports.Ingressos (
	Id SERIAL primary key,
	Numero VARCHAR(100)
	unique not null,
	PartidaId INT not null,
	VisitanteId INT unique not null,
	AcessoId INT not null,
	foreign key (PartidaId) references organizacao_eventos_e_sports.Partidas(Id),
	foreign key (VisitanteId) references organizacao_eventos_e_sports.Visitantes(Id),
	foreign key (AcessoId) references organizacao_eventos_e_sports.TipoIngressoAcesso(Id)
)

INSERT INTO organizacao_eventos_e_sports.Ingressos
(Numero, PartidaId, VisitanteId, AcessoId)
VALUES
('ESP2026-0001', 1, 1, 1),
('ESP2026-0002', 1, 2, 2),
('ESP2026-0003', 1, 3, 3),

('ESP2026-0004', 2, 4, 1),
('ESP2026-0005', 2, 5, 2),
('ESP2026-0006', 2, 6, 1),

('ESP2026-0007', 3, 7, 3),
('ESP2026-0008', 3, 8, 2),
('ESP2026-0009', 3, 9, 1),

('ESP2026-0010', 4, 10, 2),
('ESP2026-0011', 4, 11, 1),
('ESP2026-0012', 4, 12, 3),

('ESP2026-0013', 5, 13, 1),
('ESP2026-0014', 5, 14, 2),
('ESP2026-0015', 5, 15, 1);

