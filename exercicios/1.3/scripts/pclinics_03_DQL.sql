USE Pclinics;
GO

SELECT * FROM clinica;
GO

SELECT * FROM veterinario;
GO

SELECT * FROM tipoPet;
GO

SELECT * FROM raca;
GO

SELECT * FROM pet;
GO

SELECT * FROM dono;
GO

SELECT * FROM atendimento;
GO

-- SELECT UTILIZANDO JOIN

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)

SELECT IdVeterinario, nomeVet, CRMV, RazaoSocial FROM veterinario
LEFT JOIN clinica
ON clinica.IdClinica = veterinario.IdClinica
WHERE veterinario.IdClinica = 6


-- Listar todas as raças que começam com a letra S

SELECT * FROM raca WHERE SUBSTRING(nomeRaca, 1, 1) = 'S';


-- Listar todos os tipos de pet que terminam com a letra O

SELECT * FROM tipoPet WHERE RIGHT(nomeTipo, 1) = 'O'


-- Listar todos os pets mostrando os nomes dos seus donos

SELECT IdPet, nomePet, nomeDono, dataNasc FROM pet
LEFT JOIN dono
ON dono.IdDono = pet.IdDono


-- Listar todos os atendimentos mostrando o nome do veterinário que atendeu, 
-- o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido

SELECT IdAtendimento,nomeDono, nomePet, nomeRaca, nomeTipo, nomeVet, RazaoSocial, dataAtendimento, descricao FROM atendimento
LEFT JOIN veterinario
ON atendimento.IdVeterinario = veterinario.IdVeterinario
LEFT JOIN clinica 
ON veterinario.IdClinica = clinica.IdClinica
LEFT JOIN pet 
ON atendimento.IdPet = pet.IdPet
LEFT JOIN raca
ON pet.IdRaca = raca.IdRaca
LEFT JOIN tipoPet
ON raca.IdTipoPet = tipoPet.IdTipoPet
LEFT JOIN dono
ON pet.IdDono = dono.IdDono


