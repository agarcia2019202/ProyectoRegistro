drop database if exists DBRegistroProyecto;

create database DBRegistroProyecto;

use DBRegistroProyecto;

create table Persona(
	codigoPersona int not null auto_increment,
    DPI varchar(15) not null,
    nombrePersona varchar(125) not null,
    primary key PK_codigoPersona (codigoPersona)
);

create table Rol(
	codigoRol int not null auto_increment,
    tipoRol varchar(13),
    primary key PK_codigoRol (codigoRol)
);

create table Usuario(
	codigoUsuario int not null auto_increment,
	nombreUsuario varchar(30) not null unique,
    contraseña varchar(20) not null,
    rolUsuario int not null,
    primary key PK_codigoUsuario (codigoUsuario),
    foreign key (rolUsuario) references rol(codigoRol)    
);

-- INSERTS
insert into Persona(DPI, nombrePersona) values ('1706402621547','Lionel Messi');
insert into Persona(DPI, nombrePersona) values ('2326369966678','Cristiano Ronaldo');
insert into Persona(DPI, nombrePersona) values ('4898476516528','Juan Benitez');
insert into Persona(DPI, nombrePersona) values ('1996871313645','Agustin Ocaña');
insert into Persona(DPI, nombrePersona) values ('9215213357798','Raul Alvarado');

insert into Rol(tipoRol) values ('administrador');
insert into Rol(tipoRol) values ('usuario');

insert into Usuario(nombreUsuario, contraseña, rolUsuario) values ('agarcia', 'angel', 1);
insert into Usuario(nombreUsuario, contraseña, rolUsuario) values ('jperez', 'jose', 1);
insert into Usuario(nombreUsuario, contraseña, rolUsuario) values ('odembele', 'dembele', 2);
