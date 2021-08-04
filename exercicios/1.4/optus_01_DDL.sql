CREATE DATABASE Optus;
GO

USE Optus;
GO

CREATE TABLE empresa (
	IdEmpresa TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEmpresa VARCHAR(50),
	end_Empresa VARCHAR(100),
);
GO

CREATE TABLE artista (
	IdArtista TINYINT PRIMARY KEY IDENTITY (1,1),
	IdEmpresa TINYINT FOREIGN KEY REFERENCES empresa (IdEmpresa),
	nomeArtista VARCHAR(100),
);
GO

CREATE TABLE album (
	IdAlbum TINYINT PRIMARY KEY IDENTITY (1,1),
	IdArtista TINYINT FOREIGN KEY REFERENCES artista (IdArtista),
	nomeAlbum VARCHAR(200),
	numFaixas TINYINT,
);
GO

CREATE TABLE estilo (
	IdEstilo TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEstilo VARCHAR(50),
);
GO

CREATE TABLE lancamento (
	IdLancamento INT PRIMARY KEY IDENTITY (1,1),
	IdAlbum TINYINT FOREIGN KEY REFERENCES album (IdAlbum),
	IdEstilo TINYINT FOREIGN KEY REFERENCES estilo (IdEstilo),
	dataLancamento DATE,
);
GO

CREATE TABLE permissao (
	IdPermissao TINYINT PRIMARY KEY IDENTITY (1,1),
	tipoPermissao VARCHAR(50),
);
GO

CREATE TABLE usuario (
	IdUsuario INT PRIMARY KEY IDENTITY (1,1),
	IdPermissao TINYINT FOREIGN KEY REFERENCES permissao (IdPermissao),
	nomeUsuario VARCHAR(100) NOT NULL,
	email VARCHAR(70) NOT NULL UNIQUE,
	senha VARCHAR(20) NOT NULL,
	dataCadastro DATE,
);
GO

CREATE TABLE plataforma (
	IdPlataforma INT PRIMARY KEY IDENTITY (1,1),
	IdUsuario INT FOREIGN KEY REFERENCES usuario (IdUsuario),
	IdLancamento INT FOREIGN KEY REFERENCES lancamento (IdLancamento),
	dataAcesso DATETIME,
);
GO
