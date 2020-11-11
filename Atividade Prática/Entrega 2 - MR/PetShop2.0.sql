/* 10 entidades, e 5 tabelas de relacionamento.
*/
drop table if exists Motorista_Entrega_Animal;
drop table if exists Animal_tem_Servico;
drop table if exists Animal;
drop table if exists cliente;
drop table if exists Raca;
drop table if exists Servico_Usa_Produto;
drop table if exists Empregado_Faz_Servico;
drop table if exists Produto;
drop table if exists Servico;
drop table if exists Motorista;
drop table if exists Veiculo;
drop table if exists Empregado_tem_Funcao;
drop table if exists Funcao;
drop table if exists Empregado;
drop table if exists Funcionario;

Create table Funcionario(
	CPF_F integer primary key,
    Nome varchar(128) NOT NULL,
    Salario_H decimal(10,2) NOT NULL
);

create table Empregado(
	CPF_E integer,
    HoraDTrabalho float NOT NULL,
    Qtde_Funcoes integer NOT NULL,
    Data_Inicio date NOT NULL,
    foreign key (CPF_E) references Funcionario(CPF_F)
);

create table Funcao(
	Funct_ID integer primary key,
    Nome varchar(128) NOT NULL,
    Descricao varchar(512)
);

create table Empregado_tem_Funcao(
	CPF_E integer,
    Funct_ID integer,
    primary key(CPF_E, Funct_ID),
    foreign key(CPF_E) references Empregado(CPF_E),
    foreign key(Funct_ID) references Funcao(Funct_ID)
);

create table Veiculo(
	Placa char(7) primary key,
    Modelo varchar(128) NOT NULL,
    Manutencao decimal(10,2) NOT NULL
);

create table Motorista(
	CPF_M integer,
    Custo_Entrega decimal(10,2),
    CNH char(11) NOT NULL,
    Placa_veiculo char(7),
    Telefone char(12) NOT NULL, /* (44 1234567) ou (44 123456789) */
    foreign key (CPF_M) references Funcionario(CPF_F),
    foreign key (Placa_veiculo) references Veiculo(Placa)
);

create table Servico(
	Servico_ID integer primary key,
    Nome_Servico varchar(256) NOT NULL,
    Custo decimal(10,2) NOT NULL,
    Tempo_Servico float NOT NULL
);

create table Produto(
	Produto_ID integer primary key,
    Nome varchar(256) NOT NULL,
    Marca varchar(126) NOT NULL,
    Descricao varchar(256)
);

create table Servico_Usa_Produto(
	Servico_ID integer,
    Produto_ID integer,
    primary key(Servico_ID, Produto_ID),
    foreign key(Servico_ID) references Servico(Servico_ID),
    foreign key(Produto_ID) references Produto(Produto_ID)
);

create table Empregado_Faz_Servico(
	Servico_ID integer,
    CPF_E integer,
    primary key(Servico_ID, CPF_E),
    foreign key(Servico_ID) references Servico(Servico_ID),
    foreign key(CPF_E) references Empregado(CPF_E)
);

create table Raca(
	Race_ID integer primary key,
    Raca varchar(128),
    Especie varchar(128),
    Porte varchar(64) /*Grande Pequeno Medio*/
);

create table cliente(
    CPF_C integer primary key,
    Nome varchar(128) NOT NULL,
	Endereco varchar(128) NOT NULL,
    Telefone char(12) NOT NULL
);

create table Animal(
	Animal_ID integer primary key,
    CPF_C integer NOT NULL,
    Race_ID integer,
    Nome varchar(128) NOT NULL,
    obs varchar(256),
    foreign key(CPF_C) references Cliente(CPF_C),
    foreign key(Race_ID) references Raca(Race_ID)  
);

create table Animal_tem_Servico(
	Servico_ID integer,
    Animal_ID integer,
    primary key(Servico_ID, Animal_ID),
    foreign key(Servico_ID) references Servico(Servico_ID),
    foreign key(Animal_ID) references Animal(Animal_ID)
);

create table Motorista_Entrega_Animal(
	CPF_M integer,
    Animal_ID integer,
    primary key(CPF_M, Animal_ID),
    foreign key(CPF_M) references Motorista(CPF_M),
    foreign key(Animal_ID) references Animal(Animal_ID)
);