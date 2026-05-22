create table Passaporte(
	Id serial primary key,
	Numero VARCHAR(20) not null unique,
	UsuarioId Int unique,
	foreign key (UsuarioId) references Usuarios(Id)
)

INSERT INTO Passaporte (Numero, UsuarioId)
VALUES
    ('BR1234567', 1),
    ('BR2345678', 2),
    ('BR3456789', 3),
    ('BR4567890', 4),
    ('BR5678901', 5);

select * from Passaporte

select * from Usuarios

select u.Nome, p.Numero as PassaporteNumero
from Usuarios u
inner join Passaporte p
on u.Id = p.UsuarioId
