USE [master]
GO
/****** Object:  Database [TechnolosheProyecto]    Script Date: 7/15/2019 12:08:40 AM ******/
CREATE DATABASE [TechnolosheProyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechnolosheProyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TechnolosheProyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechnolosheProyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TechnolosheProyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TechnolosheProyecto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechnolosheProyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechnolosheProyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechnolosheProyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechnolosheProyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TechnolosheProyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechnolosheProyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TechnolosheProyecto] SET  MULTI_USER 
GO
ALTER DATABASE [TechnolosheProyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechnolosheProyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechnolosheProyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechnolosheProyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechnolosheProyecto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechnolosheProyecto] SET QUERY_STORE = OFF
GO
USE [TechnolosheProyecto]
GO
/****** Object:  Table [dbo].[Estrellas]    Script Date: 7/15/2019 12:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estrellas](
	[Nombre] [varchar](50) NOT NULL,
	[Tipo] [varchar](10) NOT NULL,
	[DistanciaParsecs] [int] NOT NULL,
	[MagnitudAbsoluta] [int] NOT NULL,
	[VisibilidadHS] [bit] NOT NULL,
	[TemperaturaK°] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galaxias]    Script Date: 7/15/2019 12:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galaxias](
	[Nombre] [varchar](50) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[DistanciaParsecs] [int] NOT NULL,
	[Binaria] [bit] NOT NULL,
	[PosicionAproximadaMesCorriente] [varchar](50) NOT NULL,
	[MagnitudAbsoluta] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planetas]    Script Date: 7/15/2019 12:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planetas](
	[Nombre] [varchar](50) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[DistanciaUA] [int] NOT NULL,
	[PeriodoOrbital] [int] NOT NULL,
	[MagnitudAbsoluta] [int] NOT NULL,
	[VisibilidadHS] [bit] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TechnolosheProyecto] SET  READ_WRITE 
GO
