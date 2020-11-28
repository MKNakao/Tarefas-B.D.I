-- Inserção das Raças

Insert Into raca(Race_ID, Nome, Porte, Especie) Values
('R00001', 'Beagle',            'Pequeno',      'Canino'),
('R00002', 'Dachshund',         'Pequeno',      'Canino'),
('R00003', 'Labrador',          'Médio',        'Canino'),
('R00004', 'Husky',             'Médio',        'Canino'),
('R00005', 'Pastor-Alemão',     'Médio/Grande', 'Canino'),
('R00006', 'Fila-Brasileiro',   'Grande',       'Canino'),
('R00007', 'Gato-Perça',        'Médio',        'Felino'),
('R00008', 'Gato-Siamês',       'Médio',        'Felino'),
('R00009', 'Cágado',            'Pequeno',      'Reptil'),
('R00010', 'Jabuti',            'Pequeno',      'Reptil');

select Race_id, Nome, Porte, Especie
from raca;

-- Inserção dos clientes

Insert Into Cliente(CPF_C, Nome, Endereco, Telefone) Values
(80109295668, 'Leonardo Felix',	        'R. Camilo Verós',      554471337645),
(58850222491, 'Camilo Belém Hipólito',  'R. Nerva Trajano',     554415439607),
(13701257664, 'Izabel Carmo',	        'R. Tira Dentes',	    554489883901),
(43344002267, 'Florinda Nascimento',	'R. Boitatá',	        554499116340),
(16504416298, 'Heloísa Palmeira Afonso','R. Gentil Carmélio',	554414526160),
(36552336776, 'Dilan Pureza Fraga',	    'R. Alvaro Dias',	    554431719608),
(82243950758, 'Noa Paredes Cerveira',	'R. Kato Nascimento',	554499298110),
(44503879100, 'Jan Vilariça Mata',	    'R. Paulo Araujo',	    554445846309),
(29890751479, 'Matviy Melo Mafra',	    'R. Leoncio Viveira',	554415119290),
(11122233301, 'Valéria Queirós Talhão',	'R. Ferreira Valquíria',554461070090);

select CPF_C, Nome, Endereco, Telefone
from Cliente;

-- Inserção dos Animais

Insert Into Animal(Animal_ID, Nome, Obs,  CPF_C, Race_ID) Values
('A00001',  'Thor',     'Assusta fácil',        80109295668,    'R00001'),
('A00002',  'Bob',	    'Agitado',	            58850222491,    'R00002'),
('A00003',  'Mel',	    'Tem costume de morder',13701257664,    'R00003'),
('A00004',  'Ted',	    'Agitado',	            43344002267,    'R00004'),
('A00005',  'Bidu',	    'Teme Banhos',	        16504416298,    'R00005'),
('A00006',  'Wendy',	'Tem costume de morder',36552336776,    'R00006'),
('A00007',  'Marley',	'Amigavel',	            82243950758,    'R00007'),
('A00008',  'Mia',	    'Bem Comportada',	    44503879100,    'R00008'),
('A00009',  'Paçoca',	'Gosta de água',	    29890751479,    'R00009'),
('A00010',  'Flor',	    'Teme Barulhos Altos',	11122233301,    'R00010');

select Animal_ID, Nome, Obs,  CPF_C, Race_ID
from Animal;

-- Inserção dos Serviços

Insert Into Servico(Servico_ID, Nome_Servico, Custo,  Tempo_Servico) Values
('S00001',  'Tosa',	                    80,	    30),
('S00002',	'Banho',	                60,	    20),
('S00003',	'Cauterização dos Pelos',	100,	50),
('S00004',	'Hidratação dos Pelos',	    80,	    30),
('S00005',	'Branquiamento dos Dentes', 60,	    60),
('S00006',	'Adestramento',	            120,	40),
('S00007',	'Tratamento de Pelo',	    80,	    20),
('S00008',	'Vacinação',	            100,	10),
('S00009',	'Consulta',	                120,	60),
('S00010',	'Hospedágem',	            150,	30);

select Servico_ID, Nome_Servico, Custo,  Tempo_Servico
from Servico;

-- Inserção dos Produto

Insert Into Produto(Produto_ID, Nome, Marca,  Descricao) Values
('P00001',	'Shampoo Pet Clean', 	    'PetClean',  	'Shampoo Usado no serviço de banho de cães'),
('P00002',	'Shampoo Ipet Shower',	    'Ipet',	        'Shampoo Usado no serviço de banho de gatos'),
('P00003',	'Condicionador Pet Society','Hidra',	    'Condicionador usado para Hidratação dos pelos'),
('P00004',	'Shampoo e Condicionador',	'PetClean',	    'Shampoo e Condicionador usado em serviços de gatos'),
('P00005',	'Ração Úmida Pedigree',	    'Pedigree',	    'Lata Patê de Carne para Cães'),
('P00006',	'Ração Úmida Whiskas', 	    'Whiskas', 	    'Lata Patê de Frango para Gatos'),
('P00007',	'Cannis Globulin',	        'Vencofarma',	'Vacina para Parvovirose'),
('P00008',	'Chemitril',	            'Chemitec',	    'Antibiótico Injetável'),
('P00009',	'Déxium', 	                'Chemitec', 	'Anti-Inflamatório Injetável'),
('P00010',	'Clicker Chalesco',	        'Chalesco',	    'Para Adestramento de Cães');

select Produto_ID, Nome, Marca, Descricao
from Produto;

-- Inserção dos Funcionário

Insert Into Funcionario(CPF_F, Nome, Salario) Values
(44644884947,	'Nayra Lara Dinis',	        1499.00),
(73505195596,	'Filipe Outeiro',	        1399.00),
(32244067817,	'Liam Padilha Feira',	    1399.00),
(46891022619,	'Petra Aveiro',	            2261.00),
(44717464363,	'Daiana Caminha Pacheco',	856.00),
(36581883218,	'Olívia Cordeiro Peseiro',	856.00),
(43027228040,	'Enrique Tedim',	        1399.00),
(83344141898,	'Ayani Chamusca Vilarinho',	1399.00),
(66026392881,	'Mílton Minho Berenguer',	856.00),
(57105930829,	'Carlos Inês Valverde',	    1399.00),
(83841081655,	'Duarte Quinterno Vilar',	1399.00),
(72440261091,	'Emilie Teves Basílio',	    1399.00),
(18748260185,	'Ayla Vasconcelos',	        1399.00),
(68102450179,	'Yanni Oliveira Lages',	    1399.00),
(52261550575,	'Marisol Amaro Santarém',   1399.00),
(92985019921,	'Ethan Brito Lago',	        1399.00),
(10092600461,	'Evandro Bogado',	        1399.00),
(12041145534,	'Deise Carneiro Ferreira',	1399.00),
(94841851068,	'Emily Aldeia Bilhalva',	1399.00),
(73642311979,	'Tito Baptista Damasceno',	1399.00);

select CPF_F, Nome, Salario
from Funcionario;

-- Inserção dos Empregado

Insert Into Empregado(Dias_Trabalho, Qtde_Funcoes, Data_Inicio, CPF_E) Values
(22,	2,	'2018-09-22',	44644884947),
(22,	1,	'2019-03-13',	73505195596),
(22,	1,	'2019-04-25',	32244067817),
(22,	2,	'2015-01-06',	46891022619),
(22,	1,	'2019-11-10',	44717464363),
(22,	1,	'2019-12-15',	36581883218),
(22,	1,	'2020-01-24',	43027228040),
(22,	1,	'2020-03-29',	83344141898),
(22,	1,	'2020-09-11',	66026392881),
(22,	1,	'2020-10-13',	57105930829);

select Dias_Trabalho, Qtde_Funcoes, Data_Inicio, CPF_E
from Empregado;


-- Inserção dos Função

Insert Into Funcao(Funct_ID, Nome, Descricao) Values
('F00001',	'Tosador',                      'Corta os pelos dos animais'),
('F00002',	'Higienizador',	                'Dá banho aos animais'),
('F00003',	'Odontologia veterinária',	    'Responsável pelos dentes dos animais'),
('F00004',	'Veterinário Geral',            'Veterinário Normal'),
('F00005',	'Dermatologista Veterinario',   'Responsável pelos cuidados do pelo'),
('F00006',	'Cuidador',	                    'Toma conta dos animais'),
('F00007',	'Gerente',	                    'Gerencia Funcionários'),
('F00008',	'Logistica',	                'Cuida dos produtos'),
('F00009',	'Atendente',	                'Atende os clientes'),
('F00010',	'Faxineiro',	                'Limpa o estabeleciment');

select Funct_ID, Nome, Descricao
from Funcao;

-- Inserção dos Veículo

Insert Into Veiculo(Placa, Modelo, Manutencao) Values
('ABBS565',	'Fiat Fiorino',	                250),
('ADE54DS',	'Fiat Fiorino',	                250),
('FGAG5D4',	'Fiat Fiorino',	                250),
('AKU5DG6',	'Fiat Fiorino',	                250),
('XAU3S5A',	'Fiat Fiorino',	                250),
('DATS231',	'Fiat Fiorino',	                250),
('TER4F86',	'Fiat Fiorino',	                250),
('CLK54A8',	'Volkswagen Gol',	            200),
('WJKUY95',	'Volkswagen Gol',	            200),
('ILS32YK',	'Mercedes-Benz Accelo 815', 	480);

select Placa, Modelo, Manutencao
from Veiculo;

-- Inserção dos Motorista

Insert Into Motorista(Custo_Entrega, CNH, Telefone, CPF_M, Placa_veiculo) Values
(2.5,	63685264324,	554426244577,	83841081655,	'ABBS565'),
(2.5,	64824830577,	554470657550,	72440261091,	'ADE54DS'),
(2.5,	25613662522,	554404901250,	18748260185,	'FGAG5D4'),
(2.5,	89405589033,	554441903638,	68102450179,	'AKU5DG6'),
(2.5,	35065594487,	554495783848,	52261550575,	'XAU3S5A'),
(2.5,	71479411530,	554493594985,	92985019921,	'DATS231'),
(2.5,	80878704010,	554410175376,	10092600461,	'TER4F86'),
(NULL,	57133849598,	554439549027,	12041145534,	'CLK54A8'),
(NULL,	83233582209,	554401351700,	94841851068,	'WJKUY95'),
(NULL,	37000971391,	554409720848,	73642311979,	'ILS32YK');

select CPF_M, Placa_veiculo, CNH, Telefone, Custo_Entrega
from Motorista;

/* Tabelas De Relacionamento N-N */

-- Função tem Empregado

Insert Into Empregado_tem_Funcao(Funct_ID, CPF_E) Values
('F00001',	44644884947),
('F00002',	73505195596),
('F00003',	32244067817),
('F00004',	46891022619),
('F00005',	44717464363),
('F00006',	36581883218),
('F00007',	43027228040),
('F00008',	83344141898),
('F00009',	66026392881),
('F00010',	66026392881),
('F00002',	44644884947),
('F00007',	46891022619);

select Funct_ID, CPF_E
from Empregado_tem_Funcao;

-- Serviço usa Produto

Insert Into Servico_Usa_Produto(Servico_ID, Produto_ID) Values
('S00002',	'P00001'),
('S00002',	'P00002'),
('S00003',	'P00003'),
('S00002',	'P00004'),
('S00006',	'P00010'),
('S00008',	'P00007'),
('S00008',	'P00008'),
('S00008',	'P00009'),
('S00010',	'P00005'),
('S00010',	'P00006'),
('S00007',	'P00003');

select Servico_ID, Produto_ID
from Servico_Usa_Produto;

-- Animal Possui Serviço

Insert Into Animal_tem_Servico(Servico_ID, Animal_ID) Values
('S00001',	'A00001'),
('S00002',	'A00002'),
('S00003',	'A00003'),
('S00004',	'A00004'),
('S00005',	'A00005'),
('S00006',	'A00006'),
('S00007',	'A00007'),
('S00008',	'A00008'),
('S00009',	'A00009'),
('S00010',	'A00010');

select Servico_ID, Animal_ID
from Animal_tem_Servico;

-- Empregado Faz Serviço

Insert Into Empregado_Faz_Servico(Servico_ID, CPF_E) Values
('S00001',	44644884947),
('S00002',	73505195596),
('S00003',	44717464363),
('S00004',	44717464363),
('S00005',	32244067817),
('S00006',	36581883218),
('S00007',	44717464363),
('S00008',	46891022619),
('S00009',	46891022619),
('S00010',	36581883218);

select Servico_ID, CPF_E
from Empregado_Faz_Servico;

-- Motorista Entrega Animal

Insert Into Motorista_Entrega_Animal(Animal_ID, CPF_M) Values
('A00001',	83841081655),
('A00002',	72440261091),
('A00003',	18748260185),
('A00004',	68102450179),
('A00005',	52261550575),
('A00006',	92985019921),
('A00007',	10092600461),
('A00008',	12041145534),
('A00009',	94841851068),
('A00010',	73642311979);

select Animal_ID, CPF_M
from Motorista_Entrega_Animal;