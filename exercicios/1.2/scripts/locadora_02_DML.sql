USE Locadora;
GO

ALTER TABLE aluguel DROP COLUMN prazoLocacao, dataAluguel;
GO

ALTER TABLE aluguel ADD dataInicio DATE, dataFim DATE;
GO

INSERT INTO empresa (end_empresa, Cnpj) VALUES ('Augusta', '11111111111111'), ('Avenida Paulista', '22222222222'), ('Itapura', '33333333333');
GO

UPDATE empresa SET Cnpj = 11111111111 WHERE IdEmpresa = 1;
GO

INSERT INTO marca (nomeMarca) VALUES ('Volkswagen'), ('Nissan'), ('Ford'), ('Chevrolet'), ('Fiat');
GO

INSERT INTO modelo (IdMarca, nomeModelo) VALUES (3, 'Fiesta'), (4, 'Onix'), (4, 'Spin'), (1, 'UP');
GO

INSERT INTO veiculo (IdEmpresa, IdModelo, placaVeiculo) VALUES (1, 2, 'ABCD001'), (1, 4, 'EFGH002'), (2, 3, 'IJKL003'), (3, 2, 'LMNO004');
GO

INSERT INTO cliente (nomeCliente, cpfCliente) VALUES ('Odirlei', '11111111111'), ('Thiago', '22222222222'), ('Saulo', '33333333333'), ('Lucas', '44444444444');
GO

INSERT INTO aluguel (IdVeiculo, IdCliente, valorAluguel, dataInicio, dataFim)
VALUES (4, 4, 100, '01/01/2021', '02/02/2021'), (3, 2, 200, '03/03/2021', '04/04/2021'), (2, 3, 300, '05/05/2021', '06/06/2021'), (3, 4, 400, '07/07/2021', '08/08/2021');
GO