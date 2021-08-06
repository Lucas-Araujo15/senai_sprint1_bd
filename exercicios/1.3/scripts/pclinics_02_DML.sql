USE Pclinics;
GO

INSERT INTO clinica (end_clinica, RazaoSocial) VALUES ('Augusta', 'Pclinics LTDA.'), ('Avenida Paulista', 'SuperPET LTDA'), ('Barão de Ladário', 'PetShow LTDA.'), ('Oscar Freire','Cobasi LTDA.');
GO

INSERT INTO veterinario (IdClinica, nomeVet, CRMV) VALUES (5, 'Odirlei', 'SP'), (6, 'Paulo', 'RJ'), (7, 'Saulo', 'MG'), (6, 'Lucas', 'PR');
GO

INSERT INTO tipoPet (nomeTipo) VALUES ('Felino'), ('Canino'), ('Ave');
GO

INSERT INTO raca (IdTipoPet, nomeRaca) VALUES (2, 'Husky'), (2, 'Golden'), (3, 'Papagaio'), (1, 'Persa');
GO

INSERT INTO dono (nomeDono, cpfDono) VALUES ('Lucas', '11111111111'), ('Leonardo', '22222222222'), 
				('Alex', '33333333333'), ('Vinícius', '44444444444');
GO

INSERT INTO pet (IdRaca, IdDono, nomePet, dataNasc) VALUES (3, 6,'Zeus', '01/01/2015'),
	(1, 7, 'Nina', '04/04/2017'),
	(4, 5, 'Bob', '05/05/2018'),
	(2, 8, 'Zé', '06/06/2029'),
	(4, 6, 'Kiko', '07/07/2020');
GO

UPDATE pet SET dataNasc = '06/06/2019' WHERE IdPet = 4;

INSERT INTO atendimento (IdVeterinario, IdPet, dataAtendimento, descricao)
VALUES (13, 10, '01/02/2021', 'cirugia'),
	(10, 8, '03/04/2021', 'fratura'),
	(11, 11, '05/06/2021', 'castração'),
	(13, 7, '07/08/2021', 'vacinação'),
	(12, 11, '09/10/2021', 'cirurgia');
GO
