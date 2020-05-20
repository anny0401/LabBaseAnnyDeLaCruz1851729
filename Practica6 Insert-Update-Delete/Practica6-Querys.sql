use BaseDeDatos
go
select * from MunicipiosEstados
Insert into Asiento (id_Asiento, letra, fila) values (1,'A','1')
Insert into Asiento (id_Asiento, letra, fila) values (2,'B','1')
Insert into Asiento (id_Asiento, letra, fila) values (3,'C','1')
Insert into Asiento (id_Asiento, letra, fila) values (4,'D','1')
Insert into Asiento (id_Asiento, letra, fila) values (5,'A','2')
Insert into Asiento (id_Asiento, letra, fila) values (6,'B','2')
Insert into Asiento (id_Asiento, letra, fila) values (7,'C','2')
Insert into Asiento (id_Asiento, letra, fila) values (8,'D','2')
Insert into Asiento (id_Asiento, letra, fila) values (9,'A','3')
Insert into Asiento (id_Asiento, letra, fila) values (10,'B','3')

Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (1,'Juan','25',78451203,'A', 'si')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (2,'Carlos','26',9586301256,'A','no')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (3,'Melissa','26',8845710316,'A','si')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (4,'Isabela','25',2214305696,'A','no')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (5,'Tomas','30',6594730100,'A','si')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (6,'Miguel','32',1132968365,'A','no')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (7,'Francisco','28',8966756428,'A','no')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (8,'Diego','35',9898986674,'A','si')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (9,'Damian','38',6532323210,'A','no')
Insert into Chofer (id_Chofer, chNombre, chEdad, chTelefono, chLicencia, EmpleadoActivo) values (10,'Felipe','36',2121219887,'A','si')

Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (1,1,1)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (2,2,2)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (3,3,3)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (4,4,4)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (5,5,5)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (6,6,6)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (7,7,7)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (8,8,8)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (9,9,9)
Insert into Camion (id_Camion, id_Chofer, id_Asiento) values (10,10,10)

Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (1,'pablo01','01.Pablo','Pablo','Hernandez','pablo01@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (2,'patricio965','pato100','Patricio','Vazquez','pato965@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (3,'isabel89','fuentes65','Isabel','Castañeda','issa98@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (4,'patty336','sol98bri','Patricia','Lopez','patty336@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (5,'linda000','linda000','Linda','Almaraz','linda000@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (6,'esteban33','ASNjnnsa','Esteban','Huerta','esteban@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (7,'armando99','ApwwwA','Armando','Mendoza','armbet99@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (8,'michel30','P88wQa','Michel','Martinez','michelfran30@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (9,'malcom98','98AHjjen','Malcom','Rodriguez','malcom@gmail.com')
Insert into Usuarios (id_Usuario, uUsuario, uContraseña, uNombre,uApellido, uCorreo) values (10,'fernado15','q0014Qpn','Fernando','De La Cruz','fer15@gmail.com')

Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (1,'Anny','Martinez', 'anny04@gmail.com', 1234562031)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (2,'Vivian','Lopez', 'vivan06@gmail.com', 8181818181)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (3,'Mata','Salazar', 'mata10@gmail.com', 8150607130)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (4, 'Paola','Salazar', 'paola20@gmail.com', 7979797979)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (5, 'Ivan','Castillo', 'ivan00@gmail.com', 4795826120)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (6,'Irwin', 'Lopez','irwin78@gmail.com', 8152467985)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (7, 'Efrain','Torres', 'efra203@gmail.com',9632021574)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (8,'Juan','Lopez', 'juan98@gmail.com', 1546987488)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (9,'Mariana','Martinez', 'mariana01@gmail.com',2233445566)
Insert into Pasajero (id_Pasajero, pNombre,pApellido, pCorreo, pTelefono) values (10,'Monica','Castillo','monica55@gmail.com',3310987541)

Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (1,'Aguascalientes','Aguascalientes ')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (2,'Tijuana','Baja California')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (3,'Saltillo','Coahuila')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (4, 'Manzanillo', 'Colima')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (5,'Chihuahua','Chihuahua')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (6,'Guadalajara', 'Jalisco')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (7, 'Tula','Hidalgo')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (8, 'Puerto Vallarta', 'Jalisco')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (9, 'Cuernavaca', 'Morelos')
Insert into MunicipiosEstados (id_MunicipioEstado, Municipio, Estado) values (10, 'Merida', 'Yucatan')

Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (1,1,2,2329.3);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (2,2,4,2495.3);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (3,2,10,4071.1);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (4,3,4,1010.6);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (5,7,8,804.9);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (6,9,8,1346.8);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (7,10,1,1790.1);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (8,6,3,714.9);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (9,7,4,769.2);
Insert into Ruta (id_Ruta, Origen, Destino,Distancia_KM) values (10,6,9,1844.0);

Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (1,1,550.10,1)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (2,2,500.00,2)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (3,3,450.00,3)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (4,4,500.00,4)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (5,5,350.50,5)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (6,6,300.00,6)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (7,7,350.50,7)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (8,8,120.20,8)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (9,9,323.88,9)
Insert into PrecioDeRuta(iId_PrecioRuta,id_Ruta,PrecioRuta,iIdPromocion)  values (10,10,255.68,10)

Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(1,'2020-01-01','2020-02-01',.10,'M',7,15)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(2,'2020-02-01','2020-03-01',.15,'F',15,21)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(3,'2020-03-01','2020-04-01',.17,'M',12,18)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(4,'2020-04-01','2020-05-01',.17,'M',5,12)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(5,'2020-05-01','2020-06-01',.15,'F',18,21)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(6,'2020-06-01','2020-07-01',.20,'F',13,21)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(7,'2020-07-01','2020-08-01',.20,'M',55,70)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(8,'2020-08-01','2020-09-01',.21,'F',55,72)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(9,'2020-09-01','2020-10-01',.18,'M',60,80)
Insert  into Promocion(iIdPromocion, dFecInicioPromocion,dFecFinPromocion,fPorcentajeDescto,cGenero, tEdadMin, tEdadMax) values(10,'2020-10-01','2020-11-01',.18,'F',60,80)

Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(1,'7:00:00.000','2020-03-20',1,1)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(2,'9:15:02.000','2020-03-21',2,2)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(3,'10:00:00.000','2020-03-22',3,3)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(4,'10:30:17.000','2020-03-23',4,4)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(5,'11:40:45.000','2020-03-24',5,5)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(6,'12:00:00.000','2020-03-25',6,6)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(7,'13:20:33.000','2020-03-26',7,7)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(8,'13:21:10.000','2020-03-27',8,8)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(9,'14:00:00.000','2020-03-28',9,9)
Insert into Salida(id_Salida, HoraSalida, FechaSalida, id_Camion, id_Ruta) values(10,'16:00:00.000','2020-03-29',10,10)


UPDATE PrecioDeRuta SET PrecioRuta=310.55 WHERE iId_PrecioRuta=4 AND id_Ruta= 4    
UPDATE Camion SET id_Asiento=5 WHERE id_Camion=10 AND id_Chofer=10               
UPDATE  Salida SET  FechaSalida='2020-03-30'  WHERE HoraSalida='7:00:00.000'
UPDATE  Ruta SET Distancia_KM='1452.3' WHERE Destino=10
UPDATE  MunicipiosEstados SET Municipio='Monclova'  WHERE Estado='Coahuila'

UPDATE  MunicipiosEstados SET Municipio='Monterrey',Estado='Nuevo Leon'  WHERE id_MunicipioEstado=4
UPDATE  Pasajero SET pNombre='Gustavo', pCorreo='gusgus78@gmail' WHERE id_Pasajero=9
UPDATE  Usuarios SET uUsuario='betty@88', uContraseña='BettylaFea', uNombre='Beatriz',uApellido='Pinzon', uCorreo='bettyF02@gmail.com' WHERE id_Usuario=5
UPDATE  Chofer SET chNombre='Mario', chEdad='30' WHERE id_Chofer=1 AND chTelefono=78451203
UPDATE  Asiento SET letra='C', fila='3' WHERE id_Asiento=2

DELETE FROM PrecioDeRuta where iId_PrecioRuta=10
DELETE FROM Salida WHERE id_Salida=5
DELETE FROM Pasajero WHERE pNombre='Juan' AND pCorreo='juan98@gmail.com'
DELETE FROM Usuarios WHERE uUsuario='Pablo01' AND uContraseña='01.Pablo'
DELETE FROM Camion Where id_Camion=5