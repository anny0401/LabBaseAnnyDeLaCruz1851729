use BaseDeDatos

Create view PrecioRuta as SELECT SUM(PrecioRuta) PrecioDeRuta from PrecioDeRuta
Create view Listado as Select r.Distancia_KM, count(iId_PrecioRuta) as Orden from PrecioDeRuta pr right join Ruta r on r.id_Ruta=pr.id_Ruta  group by r.Distancia_Km 
Create view MaxDistancia as SELECT  id_Ruta, MAX(Distancia_KM) as Total from Ruta group by id_Ruta having MAX(Distancia_KM) > 800
Create view Promedio as Select  CantidadDeBoletos, avg(Precio_BoletosFinal) as promedio from ProductoBoleto  group by CantidadDeBoletos
Create view Salidas as Select FechaSalida,Count(HoraSalida) as viajes from Salida sa group by FechaSalida