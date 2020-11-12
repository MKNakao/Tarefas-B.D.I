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
    Nome varchar(128),
    Salario_H decimal(10,2)
);

create table Empregado(
	CPF_E integer primary key,
    HoraDTrabalho float,
    Qtde_Funcoes integer,
    Data_Inicio date,
    foreign key (CPF_E) references Funcionario(CPF_F) ON DELETE CASCADE
);

create table Funcao(
	Funct_ID integer primary key,
    Nome varchar(128),
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
    Modelo varchar(128),
    Manutencao decimal(10,2)
);

create table Motorista(
	CPF_M integer primary key,
    Custo_Entrega decimal(10,2),
    CNH char(11),
    Telefone char(12), /* (44 1234567) ou (44 123456789) */
    Placa_veiculo char(7) NOT NULL,
    foreign key (CPF_M) references Funcionario(CPF_F) ON DELETE CASCADE, 
    foreign key (Placa_veiculo) references Veiculo(Placa) 
);

create table Servico(
	Servico_ID integer primary key,
    Nome_Servico varchar(256),
    Custo decimal(10,2),
    Tempo_Servico float
);

create table Produto(
	Produto_ID integer primary key,
    Nome varchar(256),
    Marca varchar(126),
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
    Nome varchar(128),
    Especie varchar(128),
    Porte varchar(64) /*Grande Pequeno Medio*/
);

create table cliente(
    CPF_C integer primary key,
    Nome varchar(128),
	Endereco varchar(128),
    Telefone char(12)
);

create table Animal(
	Animal_ID integer primary key,
    CPF_C integer NOT NULL,
    Race_ID integer,
    Nome varchar(128),
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