create table Usuarios (
	Id SERIAL primary key,
	Nome VARCHAR(100) not null,
	CPF VARCHAR(11) unique not null,
	Email VARCHAR(100) unique,
	Telefone VARCHAR(20),
	DataCadastro TIMESTAMP not null default CURRENT_TIMESTAMP,
	Ativo BOOLEAN default true
)

INSERT INTO Usuarios (Nome, CPF, Email, Telefone)
VALUES
('João Silva', '12345678901', 'joao.silva@email.com', '(51)99999-1111'),
('Maria Oliveira', '23456789012', 'maria.oliveira@email.com', '(51)99999-2222'),
('Carlos Souza', '34567890123', 'carlos.souza@email.com', '(51)99999-3333'),
('Ana Pereira', '45678901234', 'ana.pereira@email.com', '(51)99999-4444'),
('Fernanda Costa', '56789012345', 'fernanda.costa@email.com', '(51)99999-5555');

select * from Usuarios