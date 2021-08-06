USE Optus;
GO

SELECT * FROM empresa;
GO

SELECT * FROM artista;
GO

SELECT * FROM album;
GO

SELECT * FROM estilo;
GO

SELECT * FROM lancamento;
GO

SELECT * FROM permissao;
GO

SELECT * FROM usuario;
GO

SELECT * FROM plataforma;
GO

SELECT * FROM visibilidade;
GO

-- SELECT COM JOIN ->

-- Listar todos os usuários administradores, sem exibir suas senhas

SELECT IdUsuario, tipoPermissao, nomeUsuario, email, dataCadastro FROM usuario
RIGHT JOIN permissao
ON permissao.IdPermissao = usuario.IdPermissao
WHERE tipoPermissao = 'administrador'


-- Listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT * FROM album WHERE (dataLancamento > '2019')


-- Listar os dados de um usuário através do e-mail e senha

SELECT * FROM usuario WHERE email = 'lucas@email.com' AND senha = '123ABC';


-- Listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT IdLancamento, nomeAlbum, nomeArtista, nomeEstilo, nomeStatus FROM lancamento
LEFT JOIN album
ON album.IdAlbum = lancamento.IdAlbum
LEFT JOIN artista
ON artista.IdArtista = album.IdArtista
LEFT JOIN visibilidade
ON visibilidade.IdVisibilidade = album.IdVisibilidade
LEFT JOIN estilo
ON estilo.IdEstilo = lancamento.IdEstilo
WHERE nomeStatus = 'Ativo';
