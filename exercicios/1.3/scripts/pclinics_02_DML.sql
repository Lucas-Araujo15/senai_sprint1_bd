USE Pclinics;
GO

INSERT INTO clinica (end_clinica) VALUES ('Augusta'), ('Avenida Paulista'), ('Barão de Ladário'), ('Oscar Freire');
GO

INSERT INTO veterinario (IdClinica, nomeVet) VALUES (1, 'Odirlei'), (2, 'Paulo'), (3, 'Saulo'), (2, 'Lucas');
GO

INSERT INTO tipoPet (nomeTipo) VALUES ('Felino'), ('Canino'), ('Ave');
GO

INSERT INTO raca (IdTipoPet, nomeRaca) VALUES (2, 'Husky'), (2, 'Golden'), (3, 'Papagaio'), (1, 'Persa');
GO

INSERT INTO dono (nomeDono, cpfDono) VALUES ('Lucas', '11111111111'), ('Leonardo', '22222222222'), 
				('Alex', '33333333333'), ('Vinícius', '44444444444');
GO

INSERT INTO pet (IdRaca, IdDono, nomePet, dataNasc) VALUES (3, 2,'Zeus', '01/01/2015'),
	(1, 3, 'Nina', '04/04/2017'),
	(4, 1, 'Bob', '05/05/2018'),
	(2, 4, 'Zé', '06/06/2029'),
	(4, 2, 'Kiko', '07/07/2020');
GO

UPDATE pet SET dataNasc = '06/06/2019' WHERE IdPet = 4;

INSERT INTO atendimento (IdVeterinario, IdPet, dataAtendimento, descricao) VALUES (4, 4, '01/02/2021', 'cirugia'),
	(3, 2, '03/04/2021', 'fratura'),
	(1, 5, '05/06/2021', 'castração'),
	(4, 1, '07/08/2021', 'vacinação'),
	(1, 5, '09/10/2021', 'cirurgia');
GO