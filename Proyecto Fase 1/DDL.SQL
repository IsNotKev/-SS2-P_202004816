use seminario2_202004816

SELECT
  *
FROM
  SYSOBJECTS
WHERE
  xtype = 'U';
GO

CREATE TABLE Vendedor (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codVendedor VARCHAR(50),
    nombreVendedor VARCHAR(100),
    vacacionista BIT
);

delete from Vendedor
select count(*) from Vendedor;

CREATE TABLE Cliente (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codCliente VARCHAR(50),
    nombreCliente VARCHAR(100),
    tipoCliente VARCHAR(50),
    direccionCliente VARCHAR(150),
    numeroCliente BIGINT
);

SELECT count(*) as count1 FROM Cliente ;
DELETE FROM Cliente
SELECT COUNT(id) AS CLIENTE FROM Cliente;

SELECT COUNT(*) AS cantCliente FROM Cliente;

CREATE TABLE Proveedor (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codProveedor VARCHAR(50),
    nombreProveedor VARCHAR(100),
    direccionProveedor VARCHAR(150),
    numeroProveedor BIGINT,
    webProveedor BIT
);
DELETE FROM Proveedor;
SELECT count(*) FROM Proveedor ;

CREATE TABLE Producto (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codProducto VARCHAR(50),
    nombreProducto VARCHAR(100),
    marcaProducto VARCHAR(150),
    categoria VARCHAR(150)
);

SELECT * FROM Producto WHERE categoria = '';

delete from Producto;
SELECT * FROM Producto;
SELECT count(*) FROM Producto;

CREATE TABLE Sucursal (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codSucursal VARCHAR(50),
    nombreSucursal VARCHAR(100),
    direccionSucursal VARCHAR(150),
    region VARCHAR(75),
    departamento VARCHAR(75)
);

SELECT * FROM Sucursal WHERE codSucursal = '';

delete from Sucursal;
SELECT * FROM Sucursal;
SELECT count(distinct nombreSucursal) FROM Sucursal;

CREATE TABLE Compra (
    idCompra INT PRIMARY KEY IDENTITY(1,1),
    idProveedor INT,
    idProducto INT,
    idSucursal INT,
    fecha DATE,
    unidades INT,
    costoU DECIMAL(10, 2),
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(id)
);

delete from Compra;
SELECT * FROM Compra;
SELECT count(*) FROM Compra;


CREATE TABLE Venta (
    idVenta INT PRIMARY KEY IDENTITY(1,1),
    idCliente INT,
    idVendedor INT,
    idProducto INT,
    idSucursal INT,
    fecha DATE,
    unidades INT,
    costoU DECIMAL(10, 2),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(id)
);

SELECT * FROM Venta;
SELECT count(*) FROM Venta;