create table organizacao_eventos_e_sports.EspectadoresPartida (
	Id SERIAL primary key,
	PartidaId INT unique not null,
	QuantidadeEspectadores INT default 0 not null,
	foreign key (PartidaId) references organizacao_eventos_e_sports.Partidas(Id)
)
