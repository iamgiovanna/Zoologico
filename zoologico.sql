CREATE DATABASE zologico;

use zologico;


 CREATE TABLE cargo(
	cod_cargo VarChar(10) PRIMARY KEY,
	descricao VarChar(80)
 );
 
 CREATE TABLE veterinario__(
	Nome VarChar(80),
	nascimento date NOT NULL,
	crmv VarChar(10) PRIMARY KEY,
	endereco VarChar(50) NOT NULL,
	cpf VarChar(20) NOT NULL,
	RG VarChar(20) NOT NULL
);


 CREATE TABLE funcionario(
	Nome VarChar(80) NOT NULL,
	nascimento date NOT NULL,
	CPF VarChar(20) NOT NULL,
	RG VarChar(20) NOT NULL,
	endereco VarChar(20) NOT NULL,
	crmv VarChar(10),
	foreign key (crmv) references veterinario__,
	endco VarChar(50) NOT NULL,
	cpff VarChar(25) NOT NULL,
	rgg VarChar(25) NOT NULL
);

 CREATE TABLE ANIMAL(
	Nome_ VarChar(50) NOT NULL,
	especie VarChar(50) NOT NULL,
	codigo_an VarChar(50) PRIMARY KEY,
	cod_consul VarChar(10),
    foreign key (cod_consul) references consulta,
   cor VarChar(10) NOT NULL,
   altura VarChar(50) NOT NULL,
   dianasc date NOT NULL

 );

 
 CREATE TABLE consulta(
	crmv VarChar(10),
	foreign key (crmv) references veterinario__,
	--codigo_an VarChar(50),
	--foreign key(codigo_an) references ANIMAL,
	dia_ date NOT NULL,
	localizacao VarChar(50)
 );

 ALTER TABLE consulta
 ADD codigo_consulta VarChar(10) PRIMARY KEY;

 ALTER TABLE consulta
 ADD codigo_an VarChar(50);

 ALTER TABLE consulta
 ADD foreign key(codigo_an) references ANIMAL;

 CREATE TABLE classe(
	codigo_an VarChar(50),
	foreign key(codigo_an) references ANIMAL,
	descricaooo VarChar(52) NOT NULL
 
 );

 CREATE TABLE container
 (
	codigo_an VarChar(50),
	foreign key(codigo_an) references ANIMAL,
	codigo_alaS VarChar(50),
	foreign key(codigo_alaS) references ala,
	codiogo_container VarChar(10) PRIMARY KEY
 );

 CREATE TABLE ala(
 codigo_ala VarChar(50),
 descritivo VarChar(40)
 );

 ALTER TABLE ala
 ADD codigo_alaS VarChar(50) PRIMARY KEY;
