create table organizacao_eventos_e_sports.Jogadores (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	Nickname VARCHAR(100) not null,
	DataNascimento Date not null,
	Salario DECIMAL(10, 2) not null,
	EquipeId INT not null,
	foreign key (EquipeId) references organizacao_eventos_e_sports.Equipes(Id)
)

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
