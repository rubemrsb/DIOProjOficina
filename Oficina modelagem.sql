-- CRIAÇÃO DO DB E TABELAS;

create database oficina;
use oficina;

create table clientes(
idCliente int auto_increment primary key,
Cliente_Fname varchar(15),
Cliente_Minit char,
Cliente_Lname varchar(20),
CPF_CNPJ varchar (14),
Cliente_Endereço varchar(255)
);

create table veiculos(
idVeiculo int auto_increment primary key,
idDono int,
idResponsavel int,
Marca varchar (10),
Modelo varchar (10),
Cor varchar (10),
ano year,
constraint fk_veiculo_iddono foreign key (idDono) references clientes (idCliente),
constraint fk_veiculo_idmecanico foreign key (idResponsavel) references mecanicos(idMecanico)
);

create table mecanicos (
idMecanico int auto_increment primary key,
Nome varchar (50),
Especialidade varchar (50),
Endereço varchar (80)
);

create table ordem_de_servico(
idOS int auto_increment primary key,
DataDeEmissao date,
DataDeEntrega date,
OSStatus enum ('Na fila', 'Em andamento', 'Finalizado') default 'Na fila',
idOSMecanico int,
idOSCliente int,
idOSVeiculo int,
constraint fk_os_mecanico foreign key (idOSMecanico) references mecanicos (idMecanico),
constraint fk_os_cliente foreign key (idOSCliente) references clientes (idCliente),
constraint fk_os_veiculo foreign key (idOSVeiculo) references veiculos (idVeiculo)
);

create table serviço (
idServico int auto_increment primary key,
TipoServico enum ('Lanternagem', 'Pintura', 'Elétrico', 'Upgrade', 'Balanceamento', 'Troca de óleo'),
Observacao varchar (255),
valor float
);

create table pecas (
idPecas int auto_increment primary key,
nome varchar (45),
Modelo varchar (45),
Valor float
);

create table relacaopecaos (
id_peca int,
id_OS int,
constraint fk_relacaopecaos_peca foreign key (id_peca) references pecas (idPecas),
constraint fk_relacaopecaos_os foreign key (id_OS) references ordem_de_servico(idOS)
);

create table contempla(
id_servico int,
id_os int,
foreign key (id_servico) references servico (idServico),
foreign key (id_OS) references ordem_de_servico (idOS)
);
