CREATE DATABASE Libreria;
USE Libreria;
CREATE TABLE Cliente(
ClienteID INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Apellido VARCHAR(100) NOT NULL,
FechaNacimiento DATE NOT NULL,
Email VARCHAR(100) UNIQUE,
Direccion VARCHAR(255),
Telefono VARCHAR(20)
);

CREATE TABLE Autor (
AutorID INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Apellido VARCHAR(100) NOT NULL,
Nacionalidad VARCHAR(50) NOT NULL,
FechaNacimiento DATE
);

CREATE TABLE Libros (
Libro INT AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
FechaPublicacion DATE,
AutorID  INT,
FOREIGN KEY (AutorID) REFERENCES Autor(AutorID) 
);

CREATE TABLE Ventas(
VentaID INT AUTO_INCREMENT PRIMARY KEY,
ClienteID INT,
LibroID INT,
Cantidad INT NOT NULL,
FOREIGN KEY(ClienteID) REFERENCES Cliente(ClienteID),
FOREIGN KEY(LibroID) REFERENCES Libro(LibroID)
);