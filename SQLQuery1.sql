create database examenPixzelle
use examenPixzelle
create table Usuarios(
id int identity(1000,1),
usuario varchar(50),
contrasenia varbinary(100)
)

/*Ingrsando datos atraves de procesos */
create procedure AgregarUs
@usuario varchar(50),
@contrasenia varchar(50),
@key varchar(50) /*Patron de incriptacion servira para autenticar y desencriptar la contraseña*/
as begin
insert into Usuarios(usuario, contrasenia) values(@usuario, ENCRYPTBYPASSPHRASE(@key, @contrasenia))
end

/*Validando el inicio de sesion*/
create procedure validarUsuario
@usuario varchar(50),
@contrasenia varchar(50),
@key varchar(50)
as begin
select * from Usuarios where usuario = @usuario and convert(varchar(50), DECRYPTBYPASSPHRASE(@key, contrasenia))= @contrasenia
end

select * from Usuarios

AgregarUs 'Cristian', '12345', 'examenPixzelle'

create table Videojuegos(
id int primary key identity(1000,1),
nombre varchar(50),
descripcion varchar(50),
fechaLanzamiento date,
Portada varchar(50),
Compañia varchar(50),
ConsolaJuego varchar(50)
)

select * from Videojuegos