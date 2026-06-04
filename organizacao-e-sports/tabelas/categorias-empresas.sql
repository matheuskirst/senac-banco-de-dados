create table organizacao_eventos_e_sports.CategoriasEmpresas (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null
)

-- Categorias de Empresas
INSERT INTO organizacao_eventos_e_sports.CategoriasEmpresas (Nome) VALUES
('Hardware'),
('Periféricos'),
('Energia e Bebidas'),
('Telecomunicações'),
('Tecnologia'),
('Streaming'),
('Vestuário Gamer'),
('Bancos e Fintechs');
