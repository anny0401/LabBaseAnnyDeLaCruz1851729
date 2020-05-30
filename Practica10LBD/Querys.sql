use BaseDeDatos

Create procedure PrecioR (@PrecioRuta int )
as Begin
SELECT SUM(@PrecioRuta) as PrecioRuta from PrecioDeRuta
end
Execute PrecioR @PrecioRuta= 3


Create procedure ProcListado (@idListado int)
as begin
Select r.Distancia_KM, count(iId_PrecioRuta) as Orden from PrecioDeRuta pr right join Ruta r on r.id_Ruta=pr.id_Ruta where @idListado=iId_PrecioRuta group by r.Distancia_Km 
end
Execute ProcListado @idListado = 1


Create procedure MaxiDistancia( @idDistancia int )
as begin
SELECT  id_Ruta, MAX(Distancia_KM) as Total from Ruta where @idDistancia=id_Ruta group by id_Ruta having MAX(Distancia_KM) > 800
end
Execute MaxiDistancia @idDistancia = 1


Create procedure Promedios(@idPromedio int) as
begin
Select CantidadDeBoletos, avg(Precio_BoletosFinal) as promedio from ProductoBoleto where @idPromedio=CantidadDeBoletos group by CantidadDeBoletos
end
Execute Promedios @idPromedio = 1


Create procedure ProcSalidas (@idSalidas date)
as begin
Select FechaSalida,Count(sa.FechaSalida) as viajes from Salidas sa where @idSalidas=FechaSalida group by FechaSalida
end
Execute ProcSalidas @idSalidas = '2020-03-30'
go

--Triggers

create trigger PrimerTrigger on PrecioDeRuta 
after insert 
as begin select * from inserted
end


create trigger SegundoTrigger on Salida 
instead of insert
as begin select * from inserted 
end

--Funciones 
Create function NombreMayusculas (@Resultado varchar(50)) 
returns varchar(50)
as begin 
declare @NombrePasajero varchar(50)
declare @ApellidoPasajero varchar(50) 
set @Resultado =(upper(@NombrePasajero)+ ' '+ upper(@ApellidoPasajero))
return @Resultado
end
select *,dbo.NombreMayusculas('NombreMayusculas') AS NombreMayusculas from Pasajero


create function RutaPromedio (@final float)
returns float
as begin
declare @PrecioRuta float
declare @descuento float
set @final = @PrecioRuta-@PrecioRuta*@descuento
return @final
end