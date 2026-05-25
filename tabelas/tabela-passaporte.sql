CREATE TABLE Passaporte (
    Id SERIAL PRIMARY KEY,
    Numero VARCHAR(20) NOT NULL UNIQUE,
    UsuarioId INT UNIQUE, 
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id)
);

INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100001', 1);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100002', 2);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100003', 3);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100004', 4);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100005', 5);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100006', 6);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100007', 7);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100008', 8);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100009', 9);
INSERT INTO Passaporte (Numero, UsuarioId) VALUES ('BR100010', 10);

select 
u.Nome,
u.Cpf,
p.Numero,
p.UsuarioId
from usuario u 
inner join passaporte p
on u.id = p.usuarioid
where u.id = 2

select
p.Id,
p.ValorTotal,
u.Id as UsuarioId,
u.Nome as NomeUsuario
from Usuario u
inner join Pedido p
on p.usuarioid = u.id
where u.Id = 1



