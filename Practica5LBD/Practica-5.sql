USE [master]
GO
/****** Object:  Database [BD]    Script Date: 30/03/2020 01:43:13 a. m. ******/
CREATE DATABASE [BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD] SET  MULTI_USER 
GO
ALTER DATABASE [BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD] SET QUERY_STORE = OFF
GO
USE [BD]
GO
/****** Object:  Table [dbo].[Asiento]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[id_Asiento] [int] NOT NULL,
	[letra] [char](2) NOT NULL,
	[fila] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Asiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camion]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camion](
	[id_Camion] [int] NOT NULL,
	[id_Chofer] [int] NOT NULL,
	[id_Asiento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[id_Chofer] [int] NOT NULL,
	[cNombre] [varchar](20) NOT NULL,
	[cEdad] [int] NOT NULL,
	[cTelefono] [bigint] NULL,
	[cLicencia] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Chofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_Cliente] [int] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](16) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Correo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descuento]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuento](
	[id_Descuento] [int] NOT NULL,
	[descripcion] [varchar](10) NOT NULL,
	[porcentaje] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino](
	[id_Destino] [int] NOT NULL,
	[CiudadDestino] [varchar](25) NOT NULL,
	[EstadoDestino] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Destino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDeVenta]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDeVenta](
	[id_Detalle_Venta] [int] NOT NULL,
	[id_Venta] [int] NOT NULL,
	[id_Pasajero] [int] NOT NULL,
	[id_Viaje] [int] NOT NULL,
	[id_ProdBoleto] [int] NOT NULL,
	[FormaDePago] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Detalle_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origen]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origen](
	[id_Origen] [int] NOT NULL,
	[CiudadOrigen] [varchar](25) NOT NULL,
	[EstadoOrigen] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[id_Pasajero] [int] NOT NULL,
	[pNombre] [varchar](30) NOT NULL,
	[correo] [varchar](30) NOT NULL,
	[telefono] [bigint] NULL,
	[nacionalidad] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Pasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[id_Precio] [int] NOT NULL,
	[id_Ruta] [int] NOT NULL,
	[id_Descuento] [int] NOT NULL,
	[PrecioTotal_Viaje] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Precio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoBoleto]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoBoleto](
	[id_ProdBoleto] [int] NOT NULL,
	[Cantidad_Boletos] [tinyint] NOT NULL,
	[id_Precio] [int] NOT NULL,
	[PrecioFinal] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ProdBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroDeVenta]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroDeVenta](
	[id_Venta] [int] NOT NULL,
	[num_Venta] [int] NOT NULL,
	[PrecioVenta] [int] NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[id_Ruta] [int] NOT NULL,
	[id_Origen] [int] NOT NULL,
	[id_Destino] [int] NOT NULL,
	[Distancia_KM] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salida]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salida](
	[id_Salida] [int] NOT NULL,
	[HoraSalida] [time](7) NOT NULL,
	[FechaSalida] [date] NOT NULL,
	[id_Camion] [int] NOT NULL,
	[id_Ruta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Salida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 30/03/2020 01:43:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viaje](
	[id_Viaje] [int] NOT NULL,
	[id_Salida] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Viaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (1, N'A ', 1)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (2, N'C ', 3)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (3, N'C ', 1)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (4, N'D ', 1)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (5, N'A ', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (6, N'B ', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (7, N'C ', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (8, N'D ', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (9, N'A ', 3)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (10, N'B ', 3)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (1, 1, 1)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (2, 2, 2)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (3, 3, 3)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (4, 4, 4)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (5, 5, 5)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (6, 6, 6)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (7, 7, 7)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (8, 8, 8)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (9, 9, 9)
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (1, N'Mario', 30, 78451203, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (2, N'Carlos', 26, 9586301256, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (3, N'Melissa', 26, 8845710316, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (4, N'Isabela', 25, 2214305696, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (5, N'Tomas', 30, 6594730100, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (6, N'Miguel', 32, 1132968365, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (7, N'Francisco', 28, 8966756428, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (8, N'Diego', 35, 9898986674, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (9, N'Damian', 38, 6532323210, N'A')
INSERT [dbo].[Chofer] ([id_Chofer], [cNombre], [cEdad], [cTelefono], [cLicencia]) VALUES (10, N'Felipe', 36, 2121219887, N'A')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (2, N'patricio965', N'pato100', N'Patricio', N'pato965@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (3, N'isabel89', N'fuentes65', N'Isabel', N'issa98@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (4, N'patty336', N'sol98bri', N'Patricia', N'patty336@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (5, N'betty@88', N'BettylaFea', N'Beatriz', N'bettyF02@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (6, N'esteban33', N'ASNjnnsa', N'Esteban', N'esteban@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (7, N'armando99', N'ApwwwA', N'Armando', N'armbet99@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (8, N'michel30', N'P88wQa', N'Michel', N'michelfran30@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (9, N'malcom98', N'98AHjjen', N'Malcom', N'malcom@gmail.com')
INSERT [dbo].[Cliente] ([id_Cliente], [Usuario], [Contraseña], [Nombre], [Correo]) VALUES (10, N'fernado15', N'q0014Qpn', N'Fernando', N'fer15@gmail.com')
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (1, N'niño', 0.15)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (2, N'estudiante', 0.17)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (3, N'3ra edad', 0.2)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (5, N'mes', 0.5)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (6, N'festival', 0.1)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (7, N'navidad', 0.14)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (8, N'semasanta', 0.18)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (9, N'reyesday', 0.13)
INSERT [dbo].[Descuento] ([id_Descuento], [descripcion], [porcentaje]) VALUES (10, N'valentin', 0.11)
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (1, N'Aguascalientes', N'Aguascalientes ')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (2, N'Tijuana', N'Baja California')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (3, N'Saltillo', N'Coahuila')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (4, N'Monterrey', N'Nuevo Leon')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (5, N'Chihuahua', N'Chihuahua')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (6, N'Guadalajara', N'Jalisco')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (7, N'Tula', N'Hidalgo')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (8, N'Puerto Vallarta', N'Jalisco')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (9, N'Cuernavaca', N'Morelos')
INSERT [dbo].[Destino] ([id_Destino], [CiudadDestino], [EstadoDestino]) VALUES (10, N'Merida', N'Yucatan')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (1, N'Aguascalientes', N'Aguascalientes ')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (2, N'Tijuana', N'Baja California')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (3, N'Monclova', N'Coahuila')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (4, N'Manzanillo', N'Colima')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (5, N'Chihuahua', N'Chihuahua')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (6, N'Guadalajara', N'Jalisco')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (7, N'Tula', N'Hidalgo')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (8, N'Puerto Vallarta', N'Jalisco')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (9, N'Cuernavaca', N'Morelos')
INSERT [dbo].[Origen] ([id_Origen], [CiudadOrigen], [EstadoOrigen]) VALUES (10, N'Merida', N'Yucatan')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (1, N'Anny', N'anny04@gmail.com', 1234562031, N'mexicana')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (2, N'Vivian', N'vivan06@gmail.com', 8181818181, N'estadounidence')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (3, N'Mata', N'mata10@gmail.com', 4150607130, N'coreana')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (4, N'Paola', N'paola20@gmail.com', 8979797979, N'cubana')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (5, N'Ivan', N'ivan00@gmail.com', 4795826120, N'colombiano')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (6, N'Irwin', N'irwin78@gmail.com', 8152467985, N'mexicano')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (7, N'Efrain', N'efra203@gmail.com', 81632021574, N'estadounicence')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (8, N'Juan', N'juan98@gmail.com', 1546987488, N'coreano')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [correo], [telefono], [nacionalidad]) VALUES (9, N'Gustavo', N'gusgus78@gmail', 2233445566, N'cubano')
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (1, 1, 100, CAST(N'2020-03-20T07:00:00.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (2, 2, 110, CAST(N'2020-03-21T09:15:02.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (3, 3, 130, CAST(N'2020-03-22T10:00:00.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (4, 4, 110, CAST(N'2020-03-23T10:30:17.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (5, 5, 100, CAST(N'2020-03-24T11:40:45.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (6, 6, 90, CAST(N'2020-03-25T12:00:00.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (7, 7, 98, CAST(N'2020-03-26T13:20:33.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (8, 8, 100, CAST(N'2020-03-27T13:21:10.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (9, 9, 110, CAST(N'2020-03-28T14:00:00.000' AS DateTime))
INSERT [dbo].[RegistroDeVenta] ([id_Venta], [num_Venta], [PrecioVenta], [FechaVenta]) VALUES (10, 10, 110, CAST(N'2020-03-30T12:15:15.000' AS DateTime))
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (1, 1, 1, 550.55)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (2, 2, 2, 260.1)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (3, 3, 3, 110.45)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (4, 4, 4, 310.55)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (5, 5, 5, 810.5)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (6, 6, 6, 90)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (7, 7, 7, 780.55)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (9, 9, 9, 110)
INSERT [dbo].[Ruta] ([id_Ruta], [id_Origen], [id_Destino], [Distancia_KM]) VALUES (10, 10, 10, 220)
ALTER TABLE [dbo].[Camion]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Asiento] FOREIGN KEY([id_Asiento])
REFERENCES [dbo].[Asiento] ([id_Asiento])
GO
ALTER TABLE [dbo].[Camion] CHECK CONSTRAINT [FK_Camion_Asiento]
GO
ALTER TABLE [dbo].[Camion]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Chofer] FOREIGN KEY([id_Chofer])
REFERENCES [dbo].[Chofer] ([id_Chofer])
GO
ALTER TABLE [dbo].[Camion] CHECK CONSTRAINT [FK_Camion_Chofer]
GO
ALTER TABLE [dbo].[DetalleDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Pasajero] FOREIGN KEY([id_Pasajero])
REFERENCES [dbo].[Pasajero] ([id_Pasajero])
GO
ALTER TABLE [dbo].[DetalleDeVenta] CHECK CONSTRAINT [FK_DetalleVenta_Pasajero]
GO
ALTER TABLE [dbo].[DetalleDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_ProductoBoleto] FOREIGN KEY([id_ProdBoleto])
REFERENCES [dbo].[ProductoBoleto] ([id_ProdBoleto])
GO
ALTER TABLE [dbo].[DetalleDeVenta] CHECK CONSTRAINT [FK_DetalleVenta_ProductoBoleto]
GO
ALTER TABLE [dbo].[DetalleDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Venta] FOREIGN KEY([id_Venta])
REFERENCES [dbo].[RegistroDeVenta] ([id_Venta])
GO
ALTER TABLE [dbo].[DetalleDeVenta] CHECK CONSTRAINT [FK_DetalleVenta_Venta]
GO
ALTER TABLE [dbo].[DetalleDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Viaje] FOREIGN KEY([id_Viaje])
REFERENCES [dbo].[Viaje] ([id_Viaje])
GO
ALTER TABLE [dbo].[DetalleDeVenta] CHECK CONSTRAINT [FK_DetalleVenta_Viaje]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Descuento] FOREIGN KEY([id_Descuento])
REFERENCES [dbo].[Descuento] ([id_Descuento])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Descuento]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Ruta] FOREIGN KEY([id_Ruta])
REFERENCES [dbo].[Ruta] ([id_Ruta])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Ruta]
GO
ALTER TABLE [dbo].[ProductoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_PB_Precio] FOREIGN KEY([id_Precio])
REFERENCES [dbo].[Precio] ([id_Precio])
GO
ALTER TABLE [dbo].[ProductoBoleto] CHECK CONSTRAINT [FK_PB_Precio]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Destino] FOREIGN KEY([id_Destino])
REFERENCES [dbo].[Destino] ([id_Destino])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Destino]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Origen] FOREIGN KEY([id_Origen])
REFERENCES [dbo].[Origen] ([id_Origen])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Origen]
GO
ALTER TABLE [dbo].[Salida]  WITH CHECK ADD  CONSTRAINT [FK_Salida_Ruta] FOREIGN KEY([id_Ruta])
REFERENCES [dbo].[Ruta] ([id_Ruta])
GO
ALTER TABLE [dbo].[Salida] CHECK CONSTRAINT [FK_Salida_Ruta]
GO
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Salida] FOREIGN KEY([id_Salida])
REFERENCES [dbo].[Salida] ([id_Salida])
GO
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Salida]
GO
ALTER TABLE [dbo].[Asiento]  WITH CHECK ADD CHECK  (([fila]<(49)))
GO
USE [master]
GO
ALTER DATABASE [BD] SET  READ_WRITE 
GO
