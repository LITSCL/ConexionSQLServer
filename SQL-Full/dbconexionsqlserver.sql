USE [master]
GO
/****** Object:  Database [dbconexionsqlserver]    Script Date: 06-06-2022 10:34:47 ******/
CREATE DATABASE [dbconexionsqlserver]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbconexionsqlserver', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbconexionsqlserver.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbconexionsqlserver_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbconexionsqlserver_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbconexionsqlserver] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbconexionsqlserver].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbconexionsqlserver] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbconexionsqlserver] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbconexionsqlserver] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbconexionsqlserver] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbconexionsqlserver] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbconexionsqlserver] SET  MULTI_USER 
GO
ALTER DATABASE [dbconexionsqlserver] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbconexionsqlserver] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbconexionsqlserver] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbconexionsqlserver] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbconexionsqlserver] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbconexionsqlserver] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbconexionsqlserver] SET QUERY_STORE = OFF
GO
USE [dbconexionsqlserver]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 06-06-2022 10:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](45) NULL,
	[Edad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([Id], [Nombre], [Edad]) VALUES (1, N'Daniel', 23)
INSERT [dbo].[Persona] ([Id], [Nombre], [Edad]) VALUES (2, N'Esteban', 22)
INSERT [dbo].[Persona] ([Id], [Nombre], [Edad]) VALUES (3, N'Andy', 37)
INSERT [dbo].[Persona] ([Id], [Nombre], [Edad]) VALUES (4, N'Nicolas', 22)
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO
USE [master]
GO
ALTER DATABASE [dbconexionsqlserver] SET  READ_WRITE 
GO
