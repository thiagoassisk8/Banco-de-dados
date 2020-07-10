create database db_empresa;
use db_empresa;
drop table tb_funcionarios_empresa;
drop table tb_funcionarios_terceirizados;
drop table tb_outras_empresas;

-- Empresa: 
create table if not exists tb_funcionarios_empresa (
	codigo int primary key auto_increment,
    identidade int unique not null,
    nome varchar(15) not null,
    sobrenome varchar(50) not null,
    dt_nascimento date not null,
    dt_contratacao date not null,
    cod_gerente int,
    cargo varchar(15) not null,
    departamento int not null,
    salario double
);

drop table tb_outras_empresas;
-- Empresas a parte
create table if not exists tb_outras_empresas(
	cod_empresa int primary key not null auto_increment,
    nme_empresa varchar(30),
    cnpj int(15)
);
-- Funcionarios de outra empresa:
create table if not exists tb_funcionarios_terceirizados (
	codigo int primary key auto_increment,
    identidade int unique not null,
    nome varchar(15) not null,
    sobrenome varchar(50) not null,
    dt_nascimento date not null,
    dt_contratacao date not null,
    cod_gerente int,
    cargo varchar(15) not null,
    departamento int not null,
    salario double,
    fk_cod_empresa int not null,
    CONSTRAINT fk1 FOREIGN KEY (fk_cod_empresa) REFERENCES tb_outras_empresas(cod_empresa)
);

 