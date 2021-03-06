USE [master]
GO
/****** Object:  Database [BaseDeDatos]    Script Date: 19/05/2020 12:07:24 a. m. ******/
CREATE DATABASE [BaseDeDatos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaseDeDatos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BaseDeDatos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BaseDeDatos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\BaseDeDatos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BaseDeDatos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaseDeDatos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BaseDeDatos] SET ARITHABORT OFF 
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BaseDeDatos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BaseDeDatos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BaseDeDatos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BaseDeDatos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BaseDeDatos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BaseDeDatos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BaseDeDatos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BaseDeDatos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BaseDeDatos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BaseDeDatos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BaseDeDatos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BaseDeDatos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BaseDeDatos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BaseDeDatos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BaseDeDatos] SET  MULTI_USER 
GO
ALTER DATABASE [BaseDeDatos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BaseDeDatos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BaseDeDatos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BaseDeDatos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BaseDeDatos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BaseDeDatos] SET QUERY_STORE = OFF
GO
USE [BaseDeDatos]
GO
/****** Object:  Table [dbo].[Asiento]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asiento](
	[id_Asiento] [int] NOT NULL,
	[letra] [char](1) NOT NULL,
	[fila] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Asiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camion]    Script Date: 19/05/2020 12:07:25 a. m. ******/
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
/****** Object:  Table [dbo].[Chofer]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[id_Chofer] [int] NOT NULL,
	[chNombre] [varchar](20) NOT NULL,
	[chEdad] [int] NOT NULL,
	[chTelefono] [bigint] NOT NULL,
	[chLicencia] [varchar](5) NOT NULL,
	[EmpleadoActivo] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Chofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleDeVenta]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleDeVenta](
	[id_DetalleDeVenta] [int] NOT NULL,
	[id_Salida] [int] NOT NULL,
	[id_ProductoBoleto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_DetalleDeVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaEncabezado]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaEncabezado](
	[id_Factura] [int] NOT NULL,
	[id_RegistroVenta] [int] NOT NULL,
	[id_ProductoBoleto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MunicipiosEstados]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MunicipiosEstados](
	[id_MunicipioEstado] [int] NOT NULL,
	[Municipio] [varchar](20) NOT NULL,
	[Estado] [varchar](18) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_MunicipioEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[id_Pasajero] [int] NOT NULL,
	[pNombre] [varchar](15) NOT NULL,
	[pApellido] [varchar](15) NOT NULL,
	[pCorreo] [varchar](30) NOT NULL,
	[pTelefono] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Pasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrecioDeRuta]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrecioDeRuta](
	[iId_PrecioRuta] [int] NOT NULL,
	[id_Ruta] [int] NOT NULL,
	[PrecioRuta] [float] NOT NULL,
	[iIdPromocion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iId_PrecioRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductoBoleto]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoBoleto](
	[id_ProductoBoleto] [int] NOT NULL,
	[id_Pasajero] [int] NOT NULL,
	[iId_PrecioRuta] [int] NOT NULL,
	[CantidadDeBoletos] [tinyint] NOT NULL,
	[Precio_BoletosFinal] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ProductoBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocion]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocion](
	[iIdPromocion] [int] NOT NULL,
	[dFecInicioPromocion] [date] NOT NULL,
	[dFecFinPromocion] [date] NOT NULL,
	[fPorcentajeDescto] [float] NOT NULL,
	[cGenero] [char](1) NOT NULL,
	[tEdadMin] [tinyint] NOT NULL,
	[tEdadMax] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdPromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroDeVenta]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroDeVenta](
	[id_RegistroVenta] [int] NOT NULL,
	[id_DetalleDeVenta] [int] NOT NULL,
	[CapturaVenta] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_RegistroVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[id_Ruta] [int] NOT NULL,
	[Origen] [int] NOT NULL,
	[Destino] [int] NOT NULL,
	[Distancia_KM] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salida]    Script Date: 19/05/2020 12:07:25 a. m. ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/05/2020 12:07:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_Usuario] [int] NOT NULL,
	[uUsuario] [varchar](20) NOT NULL,
	[uContraseña] [varchar](16) NOT NULL,
	[uNombre] [varchar](15) NOT NULL,
	[uApellido] [varchar](15) NOT NULL,
	[uCorreo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (1, N'A', 1)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (2, N'C', 3)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (3, N'C', 1)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (4, N'D', 1)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (5, N'A', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (6, N'B', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (7, N'C', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (8, N'D', 2)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (9, N'A', 3)
INSERT [dbo].[Asiento] ([id_Asiento], [letra], [fila]) VALUES (10, N'B', 3)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (1, 1, 1)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (2, 2, 2)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (3, 3, 3)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (4, 4, 4)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (6, 6, 6)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (7, 7, 7)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (8, 8, 8)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (9, 9, 9)
INSERT [dbo].[Camion] ([id_Camion], [id_Chofer], [id_Asiento]) VALUES (10, 10, 5)
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (1, N'Mario', 30, 78451203, N'A', N'si')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (2, N'Carlos', 26, 9586301256, N'A', N'no')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (3, N'Melissa', 26, 8845710316, N'A', N'si')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (4, N'Isabela', 25, 2214305696, N'A', N'no')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (5, N'Tomas', 30, 6594730100, N'A', N'si')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (6, N'Miguel', 32, 1132968365, N'A', N'no')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (7, N'Francisco', 28, 8966756428, N'A', N'no')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (8, N'Diego', 35, 9898986674, N'A', N'si')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (9, N'Damian', 38, 6532323210, N'A', N'no')
INSERT [dbo].[Chofer] ([id_Chofer], [chNombre], [chEdad], [chTelefono], [chLicencia], [EmpleadoActivo]) VALUES (10, N'Felipe', 36, 2121219887, N'A', N'si')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (1, N'Aguascalientes', N'Aguascalientes ')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (2, N'Tijuana', N'Baja California')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (3, N'Monclova', N'Coahuila')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (4, N'Monterrey', N'Nuevo Leon')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (5, N'Chihuahua', N'Chihuahua')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (6, N'Guadalajara', N'Jalisco')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (7, N'Tula', N'Hidalgo')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (8, N'Puerto Vallarta', N'Jalisco')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (9, N'Cuernavaca', N'Morelos')
INSERT [dbo].[MunicipiosEstados] ([id_MunicipioEstado], [Municipio], [Estado]) VALUES (10, N'Merida', N'Yucatan')
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (1, N'Anny', N'Martinez', N'anny04@gmail.com', 1234562031)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (2, N'Vivian', N'Lopez', N'vivan06@gmail.com', 8181818181)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (3, N'Mata', N'Salazar', N'mata10@gmail.com', 8150607130)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (4, N'Paola', N'Salazar', N'paola20@gmail.com', 7979797979)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (5, N'Ivan', N'Castillo', N'ivan00@gmail.com', 4795826120)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (6, N'Irwin', N'Lopez', N'irwin78@gmail.com', 8152467985)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (7, N'Efrain', N'Torres', N'efra203@gmail.com', 9632021574)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (9, N'Gustavo', N'Martinez', N'gusgus78@gmail', 2233445566)
INSERT [dbo].[Pasajero] ([id_Pasajero], [pNombre], [pApellido], [pCorreo], [pTelefono]) VALUES (10, N'Monica', N'Castillo', N'monica55@gmail.com', 3310987541)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (1, 1, 550.1, 1)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (2, 2, 500, 2)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (3, 3, 450, 3)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (4, 4, 310.55, 4)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (5, 5, 350.5, 5)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (6, 6, 300, 6)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (7, 7, 350.5, 7)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (8, 8, 120.2, 8)
INSERT [dbo].[PrecioDeRuta] ([iId_PrecioRuta], [id_Ruta], [PrecioRuta], [iIdPromocion]) VALUES (9, 9, 323.88, 9)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (1, CAST(N'2020-01-01' AS Date), CAST(N'2020-02-01' AS Date), 0.1, N'M', 7, 15)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (2, CAST(N'2020-02-01' AS Date), CAST(N'2020-03-01' AS Date), 0.15, N'F', 15, 21)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (3, CAST(N'2020-03-01' AS Date), CAST(N'2020-04-01' AS Date), 0.17, N'M', 12, 18)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (4, CAST(N'2020-04-01' AS Date), CAST(N'2020-05-01' AS Date), 0.17, N'M', 5, 12)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (5, CAST(N'2020-05-01' AS Date), CAST(N'2020-06-01' AS Date), 0.15, N'F', 18, 21)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (6, CAST(N'2020-06-01' AS Date), CAST(N'2020-07-01' AS Date), 0.2, N'F', 13, 21)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (7, CAST(N'2020-07-01' AS Date), CAST(N'2020-08-01' AS Date), 0.2, N'M', 55, 70)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (8, CAST(N'2020-08-01' AS Date), CAST(N'2020-09-01' AS Date), 0.21, N'F', 55, 72)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (9, CAST(N'2020-09-01' AS Date), CAST(N'2020-10-01' AS Date), 0.18, N'M', 60, 80)
INSERT [dbo].[Promocion] ([iIdPromocion], [dFecInicioPromocion], [dFecFinPromocion], [fPorcentajeDescto], [cGenero], [tEdadMin], [tEdadMax]) VALUES (10, CAST(N'2020-10-01' AS Date), CAST(N'2020-11-01' AS Date), 0.18, N'F', 60, 80)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (1, 1, 2, 2329.3)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (2, 2, 4, 2495.3)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (3, 2, 10, 1452.3)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (4, 3, 4, 1010.6)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (5, 7, 8, 804.9)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (6, 9, 8, 1346.8)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (7, 10, 1, 1790.1)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (8, 6, 3, 714.9)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (9, 7, 4, 769.2)
INSERT [dbo].[Ruta] ([id_Ruta], [Origen], [Destino], [Distancia_KM]) VALUES (10, 6, 9, 1844)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (1, CAST(N'07:00:00' AS Time), CAST(N'2020-03-30' AS Date), 1, 1)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (2, CAST(N'09:15:02' AS Time), CAST(N'2020-03-21' AS Date), 2, 2)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (3, CAST(N'10:00:00' AS Time), CAST(N'2020-03-22' AS Date), 3, 3)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (4, CAST(N'10:30:17' AS Time), CAST(N'2020-03-23' AS Date), 4, 4)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (6, CAST(N'12:00:00' AS Time), CAST(N'2020-03-25' AS Date), 6, 6)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (7, CAST(N'13:20:33' AS Time), CAST(N'2020-03-26' AS Date), 7, 7)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (8, CAST(N'13:21:10' AS Time), CAST(N'2020-03-27' AS Date), 8, 8)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (9, CAST(N'14:00:00' AS Time), CAST(N'2020-03-28' AS Date), 9, 9)
INSERT [dbo].[Salida] ([id_Salida], [HoraSalida], [FechaSalida], [id_Camion], [id_Ruta]) VALUES (10, CAST(N'16:00:00' AS Time), CAST(N'2020-03-29' AS Date), 10, 10)
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (2, N'patricio965', N'pato100', N'Patricio', N'Vazquez', N'pato965@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (3, N'isabel89', N'fuentes65', N'Isabel', N'Castañeda', N'issa98@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (4, N'patty336', N'sol98bri', N'Patricia', N'Lopez', N'patty336@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (5, N'betty@88', N'BettylaFea', N'Beatriz', N'Pinzon', N'bettyF02@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (6, N'esteban33', N'ASNjnnsa', N'Esteban', N'Huerta', N'esteban@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (7, N'armando99', N'ApwwwA', N'Armando', N'Mendoza', N'armbet99@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (8, N'michel30', N'P88wQa', N'Michel', N'Martinez', N'michelfran30@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (9, N'malcom98', N'98AHjjen', N'Malcom', N'Rodriguez', N'malcom@gmail.com')
INSERT [dbo].[Usuarios] ([id_Usuario], [uUsuario], [uContraseña], [uNombre], [uApellido], [uCorreo]) VALUES (10, N'fernado15', N'q0014Qpn', N'Fernando', N'De La Cruz', N'fer15@gmail.com')
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
ALTER TABLE [dbo].[DetalleDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_ProductoBoleto] FOREIGN KEY([id_ProductoBoleto])
REFERENCES [dbo].[ProductoBoleto] ([id_ProductoBoleto])
GO
ALTER TABLE [dbo].[DetalleDeVenta] CHECK CONSTRAINT [FK_DetalleVenta_ProductoBoleto]
GO
ALTER TABLE [dbo].[DetalleDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Salida] FOREIGN KEY([id_Salida])
REFERENCES [dbo].[Salida] ([id_Salida])
GO
ALTER TABLE [dbo].[DetalleDeVenta] CHECK CONSTRAINT [FK_DetalleVenta_Salida]
GO
ALTER TABLE [dbo].[FacturaEncabezado]  WITH CHECK ADD  CONSTRAINT [FK_Factura_ProductoBoleto] FOREIGN KEY([id_ProductoBoleto])
REFERENCES [dbo].[ProductoBoleto] ([id_ProductoBoleto])
GO
ALTER TABLE [dbo].[FacturaEncabezado] CHECK CONSTRAINT [FK_Factura_ProductoBoleto]
GO
ALTER TABLE [dbo].[FacturaEncabezado]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Registro] FOREIGN KEY([id_RegistroVenta])
REFERENCES [dbo].[RegistroDeVenta] ([id_RegistroVenta])
GO
ALTER TABLE [dbo].[FacturaEncabezado] CHECK CONSTRAINT [FK_Factura_Registro]
GO
ALTER TABLE [dbo].[PrecioDeRuta]  WITH CHECK ADD  CONSTRAINT [FK_PrecioRuta_Promocion] FOREIGN KEY([iIdPromocion])
REFERENCES [dbo].[Promocion] ([iIdPromocion])
GO
ALTER TABLE [dbo].[PrecioDeRuta] CHECK CONSTRAINT [FK_PrecioRuta_Promocion]
GO
ALTER TABLE [dbo].[PrecioDeRuta]  WITH CHECK ADD  CONSTRAINT [FK_PrecioRuta_Ruta] FOREIGN KEY([id_Ruta])
REFERENCES [dbo].[Ruta] ([id_Ruta])
GO
ALTER TABLE [dbo].[PrecioDeRuta] CHECK CONSTRAINT [FK_PrecioRuta_Ruta]
GO
ALTER TABLE [dbo].[ProductoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Pasajero] FOREIGN KEY([id_Pasajero])
REFERENCES [dbo].[Pasajero] ([id_Pasajero])
GO
ALTER TABLE [dbo].[ProductoBoleto] CHECK CONSTRAINT [FK_Producto_Pasajero]
GO
ALTER TABLE [dbo].[ProductoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_ProductoBoleto_PrecioRuta] FOREIGN KEY([iId_PrecioRuta])
REFERENCES [dbo].[PrecioDeRuta] ([iId_PrecioRuta])
GO
ALTER TABLE [dbo].[ProductoBoleto] CHECK CONSTRAINT [FK_ProductoBoleto_PrecioRuta]
GO
ALTER TABLE [dbo].[RegistroDeVenta]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Detalle] FOREIGN KEY([id_DetalleDeVenta])
REFERENCES [dbo].[DetalleDeVenta] ([id_DetalleDeVenta])
GO
ALTER TABLE [dbo].[RegistroDeVenta] CHECK CONSTRAINT [FK_Registro_Detalle]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Destino] FOREIGN KEY([Destino])
REFERENCES [dbo].[MunicipiosEstados] ([id_MunicipioEstado])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Destino]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Origen] FOREIGN KEY([Origen])
REFERENCES [dbo].[MunicipiosEstados] ([id_MunicipioEstado])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Origen]
GO
ALTER TABLE [dbo].[Salida]  WITH CHECK ADD  CONSTRAINT [FK_Salida_Camion] FOREIGN KEY([id_Camion])
REFERENCES [dbo].[Camion] ([id_Camion])
GO
ALTER TABLE [dbo].[Salida] CHECK CONSTRAINT [FK_Salida_Camion]
GO
ALTER TABLE [dbo].[Salida]  WITH CHECK ADD  CONSTRAINT [FK_Salida_Ruta] FOREIGN KEY([id_Ruta])
REFERENCES [dbo].[Ruta] ([id_Ruta])
GO
ALTER TABLE [dbo].[Salida] CHECK CONSTRAINT [FK_Salida_Ruta]
GO
USE [master]
GO
ALTER DATABASE [BaseDeDatos] SET  READ_WRITE 
GO
