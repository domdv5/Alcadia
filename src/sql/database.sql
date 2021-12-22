create database Opc;

use Opc;

CREATE TABLE Logs(
  cedula int not null primary key,
  contraseña varchar(50) 
);
create TABLE Usuarios( 
tipoDocumento varchar(100),
cedula int not null primary key, 
nombre  varchar(100),
correo varchar(100),
pass varchar(50),
telefono int not null ,
Rol varchar (50)
);
create TABLE Actividades(
id int not null primary key,
nombre varchar(100),
linea varchar(100),
componente varchar(100),
secretaría varchar(100),
facilitador varchar(100),
datosReunion varchar(100),
fecha varchar(100),
horaApertura int not null,
horaCierre int not null,
ciudad varchar(100),
comunaCorregimiento varchar(100),
barrioVereda varchar(100),
dirección varchar(100),
tipoReunion varchar(100),
nombreProyectoInversión varchar(100),
nombresIndicadores varchar(100),
nombresPlanDesarrollo varchar(100),
codigosIndicadoresPDMyPI varchar(100)
);

CREATE TABLE cds(
    -> IdCds Int not null auto_increment primary key,
    -> Comuna varchar (40),
    -> IdentificadorCds int not null,
    -> Nombre varchar (50),
    -> Direccion varchar (50),
    -> Horario varchar (100),
    -> Telefono int not null,
    -> Email varchar(50),
    -> NombreCoordinador varchar(100)
    -> )

    CREATE TABLE telecentros(
    -> IdTelecentro Int not null auto_increment primary key,
    -> Comuna varchar (40),
    -> IdentificadorTelecentro int not null,
    -> Nombre varchar (50),
    -> Direccion varchar (50),
    -> Horario varchar (100),
    -> Telefono int not null,
    -> Email varchar(50),
    -> NombreCoordinador varchar(100)
    -> )
    -> ;