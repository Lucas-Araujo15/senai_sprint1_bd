USE Optus;
GO

CREATE TABLE visibilidade (
	IdVisibilidade TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeStatus VARCHAR(30)
);
GO

ALTER TABLE album DROP COLUMN numFaixas;
GO

ALTER TABLE album ADD dataLancamento DATE, minutagem TINYINT, localizacao VARCHAR(100);
GO

ALTER TABLE album ADD IdVisibilidade TINYINT FOREIGN KEY REFERENCES visibilidade(IdVisibilidade);
GO

ALTER TABLE lancamento DROP COLUMN dataLancamento;
GO

ALTER TABLE lancamento ADD nomeColaborador VARCHAR(70);
GO

ALTER TABLE empresa DROP COLUMN nomeEmpresa;
GO

INSERT INTO empresa (end_Empresa) VALUES ('Avenida Paulista'), ('Oscar Freire');
GO

INSERT INTO artista (IdEmpresa, nomeArtista) VALUES (1, 'Odirlei'), (2, 'Thiago'), (2, 'Lucas'), (1, 'Saulo');
GO

INSERT INTO visibilidade (nomeStatus) VALUES ('Ativo'), ('Inativo');
GO

INSERT INTO album(IdArtista, nomeAlbum, dataLancamento, minutagem, localizacao, IdVisibilidade) 
VALUES (5, 'Senai Musics', '01/01/2021', 40, 'São Paulo', 1),
       (7, 'Senai SoundTrack', '02/03/2021', 30, 'São Paulo', 1),
	   (6, 'dotnet songs', '03/03/2021', 25, 'São Paulo', 2),
	   (5, 'CSSongs', '05/05/2021', 34, 'São Paulo', 1);
GO

INSERT INTO estilo (nomeEstilo) VALUES ('Rock'), ('Samba'), ('Sertanejo'), ('Rap');
GO

INSERT INTO lancamento (IdAlbum, IdEstilo, nomeColaborador) 
VALUES (4, 3, 'Paulo'), (6, 1, 'Possarle'), 
	   (4, 1, 'Paulo'), (5, 4, 'Fernando'), (6, 2, 'Possarle');
GO

INSERT INTO permissao (tipoPermissao) VALUES ('Administrador'), ('Comum');
GO

INSERT INTO usuario (IdPermissao, nomeUsuario, email, senha, dataCadastro) 
VALUES (2, 'Lucas', 'lucas@email.com', '123ABC', '01/01/2020'),
	   (1, 'César', 'cesar@email.com', '456ABC', '02/02/2020'),
	   (1, 'Mateus', 'mateus@email.com', '789ABC', '03/03/2021'),
	   (2, 'João', 'joao@email.com', '123DEF', '04/04/2021');
GO

INSERT INTO plataforma (IdLancamento, IdUsuario, dataAcesso) 
VALUES (11, 2, '01/01/2021'),
	   (9, 4, '05/02/2021'),
	   (7, 2, '07/03/2021'),
	   (10, 1, '08/09/2020');
GO