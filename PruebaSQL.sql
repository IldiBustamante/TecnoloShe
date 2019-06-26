USE [master]
GO
/****** Object:  Database [Tecnoloshe]    Script Date: 6/14/2019 9:55:02 PM ******/
CREATE DATABASE [Tecnoloshe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tecnoloshe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\Tecnoloshe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Tecnoloshe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.TRAINING\MSSQL\DATA\Tecnoloshe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Tecnoloshe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tecnoloshe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tecnoloshe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tecnoloshe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tecnoloshe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tecnoloshe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tecnoloshe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tecnoloshe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tecnoloshe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tecnoloshe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tecnoloshe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tecnoloshe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tecnoloshe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tecnoloshe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tecnoloshe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tecnoloshe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tecnoloshe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tecnoloshe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tecnoloshe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tecnoloshe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tecnoloshe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tecnoloshe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tecnoloshe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tecnoloshe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tecnoloshe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tecnoloshe] SET  MULTI_USER 
GO
ALTER DATABASE [Tecnoloshe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tecnoloshe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tecnoloshe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tecnoloshe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Tecnoloshe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Tecnoloshe]
GO
/****** Object:  Table [dbo].[Alumnas]    Script Date: 6/14/2019 9:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnas](
	[DNI] [int] NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
	[Observaciones] [varchar](max) NULL,
 CONSTRAINT [PK_Alumnas] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlumnosCursos]    Script Date: 6/14/2019 9:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumnosCursos](
	[DNIAlumno] [int] NOT NULL,
	[IDCurso] [int] NOT NULL,
 CONSTRAINT [PK_AlumnosCursos] PRIMARY KEY CLUSTERED 
(
	[DNIAlumno] ASC,
	[IDCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 6/14/2019 9:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cursos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Aula] [int] NULL,
	[Profesor] [int] NOT NULL,
	[Modalidad] [bit] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[Turno] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 6/14/2019 9:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesores](
	[DNI] [int] NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[E-mail] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[TipoTelefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alumnas] ([DNI], [Apellido], [Nombre], [FechaNacimiento], [E-mail], [Observaciones]) VALUES (89, N'Hola', N'Chau', CAST(N'1999-01-01' AS Date), N'hola@gom.com', NULL)
GO
INSERT [dbo].[Alumnas] ([DNI], [Apellido], [Nombre], [FechaNacimiento], [E-mail], [Observaciones]) VALUES (36159518, N'Rosales', N'Enrique', CAST(N'1992-09-07' AS Date), N'quique_12_04@hotmail.com', NULL)
GO
INSERT [dbo].[Alumnas] ([DNI], [Apellido], [Nombre], [FechaNacimiento], [E-mail], [Observaciones]) VALUES (39547692, N'Bustamante', N'Maria Ildara', CAST(N'1996-05-20' AS Date), N'ild.sweet@hotmail.com', NULL)
GO
INSERT [dbo].[Alumnas] ([DNI], [Apellido], [Nombre], [FechaNacimiento], [E-mail], [Observaciones]) VALUES (40642080, N'Perez', N'Nicole', CAST(N'1997-08-16' AS Date), N'nicolevaleriaps@hotmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 

GO
INSERT [dbo].[Cursos] ([ID], [Nombre], [Aula], [Profesor], [Modalidad], [FechaInicio], [FechaFin], [Turno]) VALUES (1, N'JAVASCRIPT', 804, 4, 1, CAST(N'2019-05-06' AS Date), CAST(N'2019-07-20' AS Date), N't')
GO
INSERT [dbo].[Cursos] ([ID], [Nombre], [Aula], [Profesor], [Modalidad], [FechaInicio], [FechaFin], [Turno]) VALUES (2, N'SQL', 805, 283, 0, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-14' AS Date), N'm')
GO
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
INSERT [dbo].[Profesores] ([DNI], [Apellido], [Nombre], [E-mail], [Telefono], [TipoTelefono]) VALUES (4, N'Chay', N'asda', N'hola@h.c', 232423, N'm')
GO
INSERT [dbo].[Profesores] ([DNI], [Apellido], [Nombre], [E-mail], [Telefono], [TipoTelefono]) VALUES (5, N'Hola', N'Adios', N'hola@com.ar', 123456, N'F')
GO
INSERT [dbo].[Profesores] ([DNI], [Apellido], [Nombre], [E-mail], [Telefono], [TipoTelefono]) VALUES (283, N'juju', N'juego', N'hile@n.c', 2838, N'f')
GO
INSERT [dbo].[Profesores] ([DNI], [Apellido], [Nombre], [E-mail], [Telefono], [TipoTelefono]) VALUES (3458, N'java', N'script', N'hola@gma.c', 23489324, N'm')
GO
ALTER TABLE [dbo].[AlumnosCursos]  WITH CHECK ADD  CONSTRAINT [FK_AlumnosCursos_Alumnas] FOREIGN KEY([DNIAlumno])
REFERENCES [dbo].[Alumnas] ([DNI])
GO
ALTER TABLE [dbo].[AlumnosCursos] CHECK CONSTRAINT [FK_AlumnosCursos_Alumnas]
GO
ALTER TABLE [dbo].[AlumnosCursos]  WITH CHECK ADD  CONSTRAINT [FK_AlumnosCursos_Cursos] FOREIGN KEY([IDCurso])
REFERENCES [dbo].[Cursos] ([ID])
GO
ALTER TABLE [dbo].[AlumnosCursos] CHECK CONSTRAINT [FK_AlumnosCursos_Cursos]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Profesores] FOREIGN KEY([Profesor])
REFERENCES [dbo].[Profesores] ([DNI])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_Profesores]
GO
USE [master]
GO
ALTER DATABASE [Tecnoloshe] SET  READ_WRITE 
GO
