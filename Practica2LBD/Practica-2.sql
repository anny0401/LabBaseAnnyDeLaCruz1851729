USE [master]
GO
/****** Object:  Database [EXTERNAS_LBD]    Script Date: 25/02/2020 01:15:40 p. m. ******/
CREATE DATABASE [EXTERNAS_LBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EXTERNAS_LBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EXTERNAS_LBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EXTERNAS_LBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EXTERNAS_LBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EXTERNAS_LBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EXTERNAS_LBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EXTERNAS_LBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EXTERNAS_LBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EXTERNAS_LBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EXTERNAS_LBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EXTERNAS_LBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EXTERNAS_LBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EXTERNAS_LBD] SET  MULTI_USER 
GO
ALTER DATABASE [EXTERNAS_LBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EXTERNAS_LBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EXTERNAS_LBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EXTERNAS_LBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EXTERNAS_LBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EXTERNAS_LBD] SET QUERY_STORE = OFF
GO
USE [EXTERNAS_LBD]
GO
/****** Object:  Table [dbo].[Tabla1]    Script Date: 25/02/2020 01:15:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla1](
	[casa_id] [uniqueidentifier] NOT NULL,
	[color] [varchar](50) NOT NULL,
	[numDecasa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[casa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla2]    Script Date: 25/02/2020 01:15:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla2](
	[computadora] [uniqueidentifier] NOT NULL,
	[sistemaO] [varchar](50) NOT NULL,
	[mac_address] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[computadora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla3]    Script Date: 25/02/2020 01:15:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla3](
	[perro] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[raza] [varchar](50) NOT NULL,
	[animal]  AS (([nombre]+'')+[raza]),
PRIMARY KEY CLUSTERED 
(
	[perro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla4]    Script Date: 25/02/2020 01:15:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla4](
	[calle] [varchar](50) NOT NULL,
	[numero] [uniqueidentifier] NOT NULL,
	[municipio] [varchar](50) NOT NULL,
	[direccion]  AS (([calle]+'')+[municipio]),
PRIMARY KEY CLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla5]    Script Date: 25/02/2020 01:15:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla5](
	[artista] [varchar](50) NOT NULL,
	[cancion] [varchar](50) NOT NULL,
	[genero] [varchar](50) NOT NULL,
	[album] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [indx_numDecasa]    Script Date: 25/02/2020 01:15:41 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_numDecasa] ON [dbo].[Tabla1]
(
	[numDecasa] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indx_mac_address]    Script Date: 25/02/2020 01:15:41 p. m. ******/
CREATE NONCLUSTERED INDEX [indx_mac_address] ON [dbo].[Tabla2]
(
	[mac_address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [EXTERNAS_LBD] SET  READ_WRITE 
GO