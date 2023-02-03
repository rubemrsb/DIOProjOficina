-- PERSISTINDO INFORMAÇÕES NAS TABELAS PARA TESTES

desc clientes;

INSERT INTO clientes (Cliente_Fname, Cliente_Minit, Cliente_Lname, CPF_CNPJ, Cliente_endereço) VALUES 
	('Rubem', 'S', 'Batista', '11111111111', 'Rua A'),
	('Natalia', 'B', 'Silva', '22222222222', 'Rua B'),
	('Joseli', 'M', 'Silva', '33333333333', 'Rua C'),
    ('Sergio', 'R', 'Alves', '44444444444', 'Rua D'),
    ('Rosane', 'R', 'Delfino', '55555555555', 'Rua E'),
    ('Vitor', 'A', 'Batista', '66666666666', 'Rua F');
    
select * from clientes;
    
desc mecanicos;

INSERT INTO mecanicos (Nome, Especialidade, Endereço) VALUES
	('Pedro', 'Funilaria', 'Rua 1'),
    ('Mateus', 'Pintura', 'Rua 2'),
    ('Lucas', 'Eletricista', 'Rua 3'),
    ('Junior', 'Motor e alinhamento', 'Rua 4');

select * from mecanicos;

desc veiculos;

INSERT INTO veiculos (idDono, idResponsavel, Marca, Modelo, Cor, ano) VALUES
	(1, 3, 'VolksWagen', 'Fox', 'Prata', 2018),
    (1, 4, 'VolksWagen', 'Polo', 'Branco', 2022),
    (2, 1, 'VolksWagen', 'Up', 'Cinza', 2022),
    (3, 4, 'Toyota', 'Etios', 'Prata', 2022),
    (4, 2, 'Peugeout', '308', 'Azul', 2018),
    (5, 1, 'Chevrolet', 'Onix', 'Branco', 2023),
    (6, 4, 'Fiat', 'Argo', 'Preto', 2019);

select * from veiculos;

desc pecas;

INSERT INTO pecas (nome, Modelo, Valor) VALUES
	('Para-choque', 'Fiat', '1000'),
    ('Para-choque', 'VolksWagen', '1000'),
    ('Para-choque', 'Toyota', '1000'),
    ('Para-choque', 'Chevrolet', '1000'),
    ('Para-choque', 'Peugeout', '1000'),
    ('Bateria', 'Energy', '400'),
    ('Bateria', 'Power', '500'),
    ('Tinta', 'Metalico', 500),
    ('Tinta', 'Fosco', 500),
    ('Motor', '1.0', 3000),
    ('Motor', '1.6', 5000),
    ('Motor', '2.0', 6000);
    
desc serviço;


-- 'Lanternagem', 'Pintura', 'Elétrico', 'Upgrade', 'Balanceamento', 'Troca de óleo'

INSERT INTO serviço (TipoServico, Observacao, Valor) VALUES
	('Troca de óleo', 'Troca', 1000),
    ('Balanceamento', 'Reparo', 150),
    ('Pintura', 'Total', 2000),
    ('Pintura', 'Parcial por área', 500),
    ('Elétrico', 'Chupeta', 100),
    ('Elétrico', 'Troca Bateria', 150),
    ('Elétrico', 'Painel', 150),
    ('Lanternagem', 'Solda', 250),
    ('Lanternagem', 'Desamassar', 400);
    
    
desc ordem_de_servico;
-- 1 funileiro, 2 Pintor, 3 Eletricista, 4 Motor e alinhamento
--  OS Status 'Na fila', 'Em andamento', 'Finalizado'
-- 1 pedro, 2 mateus, 3 lucas, 4 junior
INSERT INTO ordem_de_servico (DataDeEmissao, DataDeEntrega, OSStatus, idOSMecanico, IDOSCliente, IDOSVeiculo) VALUES
	('2022-12-25', '2022-12-25', 'Finalizado', 3, 1, 1),
    ('2022-12-25', '2022-12-25', 'Finalizado', 4, 1, 2),
	('2022-12-31', '2023-01-15', 'Finalizado', 1, 2, 3),
    ('2022-02-02', '2023-02-10', 'Em andamento', 4, 3, 4),
    ('2022-01-31', '2023-02-20', 'Em andamento', 2, 4, 5),
    ('2022-01-26', '2023-02-04', 'Em andamento', 1, 5, 6),
    ('2022-02-20', '2023-02-10', default, 4, 6, 7);
  
-- 1 funileiro, 2 Pintor, 3 Eletricista, 4 Motor e alinhamento
desc relacaopecaos;    
INSERT INTO relacaopecaos VALUES
	(6,1),
    (10,2),
	(2,3),
    (11,4),
    (8,5),
    (4,6),
	(10,7);
    
desc contempla;
select * from serviço;
INSERT INTO contempla VALUES
	(6,1),
    (1,2),
	(18,3),
    (1,4),
    (3,5),
    (17,6),
	(1,7);
    