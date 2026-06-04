create table organizacao_eventos_e_sports.TipoIngressoAcesso (
	Id SERIAL primary key,
	Acesso VARCHAR(50) not null
)

-- Tipos de acesso
INSERT INTO organizacao_eventos_e_sports.TipoIngressoAcesso (Acesso) VALUES
('Diario'),
('Premium'),
('Backstage');
