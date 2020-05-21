use BaseDeDatos

Select * From Promocion p inner join PrecioDeRuta  pr on p.iIdPromocion=pr.iId_PrecioRuta
Select * From Salida sa inner join Ruta r  on sa.id_Salida=r.id_Ruta
Select  Ca.id_Chofer,A.fila from Camion Ca left join Asiento A on A.id_Asiento=Ca.id_Camion
Select Ch.chNombre, Ca.id_Asiento from Chofer Ch left join Camion Ca on Ch.id_Chofer=Ca.id_Camion
Select pr.iIdPromocion,r.Distancia_KM from PrecioDeRuta pr right join Ruta r on pr.iId_PrecioRuta=r.id_Ruta

Select r.Distancia_KM, count(iId_PrecioRuta) as Orden from PrecioDeRuta pr right join Ruta r on r.id_Ruta=pr.id_Ruta  group by r.Distancia_Km 
cross join
Select u.uUsuario, u.uCorreo, p.pNombre, p.pCorreo from Usuarios u cross join Pasajero p 
Select pr.cGenero, pa.pNombre, pr.fPorcentajeDescto from Promocion pr cross join Pasajero pa
subquery
Select pa.pNombre, pa.pApellido from Pasajero pa where id_Pasajero in( select ca.id_Camion from Camion ca where id_Camion>4)


select with/into
create database copia
select * into copia from Camion
 




