CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    libro_id INT,
    FOREIGN KEY (libro_id) REFERENCES Libros(id)
);

-- Reporte de que se vendio
SELECT Libros.titulo, Ventas.fecha 
FROM Libros 
INNER JOIN Ventas ON Libros.id = Ventas.libro_id;

-- Totales y promedios
SELECT COUNT(*) as total, AVG(precio) as promedio FROM Libros;