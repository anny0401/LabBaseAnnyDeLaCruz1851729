use BaseDeDatos
SELECT * FROM MunicipiosEstados WHERE Estado='Jalisco'
SELECT * FROM MunicipiosEstados WHERE id_MunicipioEstado=2 and Municipio='Tijuana'
SELECT * FROM Asiento WHERE letra='A'
SELECT * FROM Usuarios WHERE id_Usuario BETWEEN 3 AND 7
SELECT * FROM Camion WHERE id_Camion BETWEEN 5 AND 10

SELECT  EmpleadoActivo FROM Chofer where chEdad > 30 group by EmpleadoActivo
SELECT  chEdad, count (*) as Chofer from Chofer group by chEdad
SELECT pCorreo FROM Pasajero where id_Pasajero between 1 and 5 group by pCorreo
SELECT count(id_Chofer) chNombre from Chofer group by chNombre
SELECT count(id_Usuario) ConteoDeUsuarios, uUsuario from Usuarios group by uUsuario

SELECT SUM(PrecioRuta) sumas from PrecioDeRuta
SELECT MAX(PrecioRuta) maximos from PrecioDeRuta
SELECT MIN(PrecioRuta) minimos from PrecioDeRuta
SELECT AVG(PrecioRuta) promedio from PrecioDeRuta
SELECT COUNT(*) conteo from Asiento

SELECT cGenero, MIN(fPorcentajeDescto) minimo from Promocion group by cGenero having MIN(fPorcentajeDescto) <.17
SELECT  id_Ruta, MAX(Distancia_KM) as Total from Ruta group by id_Ruta having MAX(Distancia_KM) > 1000
SELECT letra, count(*) from Asiento group by letra having letra <>'A'
SELECT count(letra) numero_asiento_fila, fila from Asiento group by fila having fila >2
SELECT count(id_Asiento) id_camion from Camion group by id_Camion having id_Camion>5

SELECT TOP 3 * FROM Promocion
SELECT TOP 5 * FROM Camion
SELECT TOP 6 * FROM Ruta
SELECT TOP 7 * FROM MunicipiosEstados
SELECT TOP 4 * FROM Salida