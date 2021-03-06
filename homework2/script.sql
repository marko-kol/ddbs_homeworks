USE [master]
GO
/****** Object:  Database [Karavan_4529]    Script Date: 25.10.2021 21:39:24 ******/
CREATE DATABASE [Karavan_4529]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karavan_4529', FILENAME = N'/var/opt/mssql/data/Karavan_4529.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Karavan_4529_log', FILENAME = N'/var/opt/mssql/data/Karavan_4529_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Karavan_4529] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Karavan_4529].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Karavan_4529] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Karavan_4529] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Karavan_4529] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Karavan_4529] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Karavan_4529] SET ARITHABORT OFF 
GO
ALTER DATABASE [Karavan_4529] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Karavan_4529] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Karavan_4529] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Karavan_4529] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Karavan_4529] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Karavan_4529] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Karavan_4529] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Karavan_4529] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Karavan_4529] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Karavan_4529] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Karavan_4529] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Karavan_4529] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Karavan_4529] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Karavan_4529] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Karavan_4529] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Karavan_4529] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Karavan_4529] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Karavan_4529] SET RECOVERY FULL 
GO
ALTER DATABASE [Karavan_4529] SET  MULTI_USER 
GO
ALTER DATABASE [Karavan_4529] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Karavan_4529] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Karavan_4529] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Karavan_4529] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Karavan_4529] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Karavan_4529', N'ON'
GO
ALTER DATABASE [Karavan_4529] SET QUERY_STORE = OFF
GO
USE [Karavan_4529]
GO
/****** Object:  Table [dbo].[EMAIL]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL](
	[id_posetitel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_EMAIL] PRIMARY KEY CLUSTERED 
(
	[id_posetitel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAIL_GRUPA]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_GRUPA](
	[ID_GRUPA] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[JAZIK_ID_JAZIKM] [numeric](18, 0) NULL,
	[NAZIV] [nvarchar](50) NULL,
	[aktivna] [numeric](18, 0) NULL,
 CONSTRAINT [PK_EMAIL_GRUPA] PRIMARY KEY CLUSTERED 
(
	[ID_GRUPA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAIL_PORAKA]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_PORAKA](
	[ID_PORAKA] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[GRUPA_ID_GRUPA] [numeric](18, 0) NULL,
	[DATUM] [datetime] NULL,
	[NASLOV] [nvarchar](50) NULL,
	[TEKST] [nvarchar](500) NULL,
 CONSTRAINT [PK_EMAIL_PORAKA] PRIMARY KEY CLUSTERED 
(
	[ID_PORAKA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GALERIJA]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GALERIJA](
	[Id_galerija] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[preview] [numeric](18, 0) NULL,
 CONSTRAINT [PK_GALERIJA] PRIMARY KEY CLUSTERED 
(
	[Id_galerija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GALERIJA_OPIS]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GALERIJA_OPIS](
	[gal_id_galerija] [numeric](18, 0) NULL,
	[jazik_id_jazikg] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GALERIJA_SLIKA]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GALERIJA_SLIKA](
	[id_slika] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[gal_id_galerijas] [numeric](18, 0) NULL,
	[opisslika] [nvarchar](300) NULL,
	[slika] [nvarchar](50) NULL,
	[OPISSLIKAENG] [nvarchar](300) NULL,
 CONSTRAINT [PK_GALERIJA_SLIKA] PRIMARY KEY CLUSTERED 
(
	[id_slika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JAZIK]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JAZIK](
	[id_jazik] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik] [nvarchar](50) NULL,
 CONSTRAINT [PK_JAZIK] PRIMARY KEY CLUSTERED 
(
	[id_jazik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KADMINISTRATOR]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KADMINISTRATOR](
	[Id_admin] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[ime] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_KADMINISTRATOR] PRIMARY KEY CLUSTERED 
(
	[Id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KDOKUMENT]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KDOKUMENT](
	[id_dokument] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[naslov] [nvarchar](50) NULL,
	[jazik_id_jazikd] [numeric](18, 0) NULL,
	[dokument] [nvarchar](50) NULL,
	[prikaz] [numeric](18, 0) NULL,
 CONSTRAINT [PK_kdokument] PRIMARY KEY CLUSTERED 
(
	[id_dokument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KNOVOST]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KNOVOST](
	[id_novost] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[adm_id_admin] [numeric](18, 0) NULL,
	[jazik_id_jazikn] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](1500) NULL,
	[datum_od] [datetime] NULL,
	[datum_do] [datetime] NULL,
 CONSTRAINT [PK_KNOVOST] PRIMARY KEY CLUSTERED 
(
	[id_novost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAILING]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAILING](
	[EMAIL_ID_POSETITEL] [numeric](18, 0) NULL,
	[EMAIL_ID_GRUPA] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EMAIL] ON 

INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(1 AS Numeric(18, 0)), N'Ime1', N'ime1@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(2 AS Numeric(18, 0)), N'Ime2', N'ime2@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(3 AS Numeric(18, 0)), N'Ime3', N'ime3@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(4 AS Numeric(18, 0)), N'Ime4', N'ime4@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(5 AS Numeric(18, 0)), N'Ime5', N'ime5@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(6 AS Numeric(18, 0)), N'Ime6', N'ime6@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(7 AS Numeric(18, 0)), N'Ime7', N'ime7@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(8 AS Numeric(18, 0)), N'Ime8', N'ime8@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(9 AS Numeric(18, 0)), N'Ime9', N'ime9@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(10 AS Numeric(18, 0)), N'Ime10', N'ime10@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(11 AS Numeric(18, 0)), N'Ime1', N'ime1@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(12 AS Numeric(18, 0)), N'Ime2', N'ime2@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(13 AS Numeric(18, 0)), N'Ime3', N'ime3@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(14 AS Numeric(18, 0)), N'Ime4', N'ime4@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(15 AS Numeric(18, 0)), N'Ime5', N'ime5@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(16 AS Numeric(18, 0)), N'Ime6', N'ime6@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(17 AS Numeric(18, 0)), N'Ime7', N'ime7@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(18 AS Numeric(18, 0)), N'Ime8', N'ime8@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(19 AS Numeric(18, 0)), N'Ime9', N'ime9@gmail.com')
INSERT [dbo].[EMAIL] ([id_posetitel], [ime], [mail]) VALUES (CAST(20 AS Numeric(18, 0)), N'Ime10', N'ime10@gmail.com')
SET IDENTITY_INSERT [dbo].[EMAIL] OFF
GO
SET IDENTITY_INSERT [dbo].[EMAIL_GRUPA] ON 

INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'naziv1', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'naziv2', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'naziv3', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'naziv4', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'naziv5', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'naziv6', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'naziv7', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'naziv8', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'naziv9', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_GRUPA], [JAZIK_ID_JAZIKM], [NAZIV], [aktivna]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'naziv10', CAST(0 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[EMAIL_GRUPA] OFF
GO
SET IDENTITY_INSERT [dbo].[EMAIL_PORAKA] ON 

INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2010-09-30T00:00:00.000' AS DateTime), N'Poraka1', N'Tekst1')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'1934-06-01T00:00:00.000' AS DateTime), N'Poraka2', N'Tekst2')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(N'1990-01-30T00:00:00.000' AS DateTime), N'Poraka3', N'Tekst3')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2015-11-12T00:00:00.000' AS DateTime), N'Poraka4', N'Tekst4')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(N'1888-05-28T00:00:00.000' AS DateTime), N'Poraka5', N'Tekst5')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(N'1950-09-08T00:00:00.000' AS DateTime), N'Poraka6', N'Tekst6')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(N'1979-01-03T00:00:00.000' AS DateTime), N'Poraka7', N'Tekst7')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(N'1943-04-17T00:00:00.000' AS DateTime), N'Poraka8', N'Tekst8')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(N'1912-10-25T00:00:00.000' AS DateTime), N'Poraka9', N'Tekst9')
INSERT [dbo].[EMAIL_PORAKA] ([ID_PORAKA], [GRUPA_ID_GRUPA], [DATUM], [NASLOV], [TEKST]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(N'2012-12-12T00:00:00.000' AS DateTime), N'Poraka10', N'Tekst10')
SET IDENTITY_INSERT [dbo].[EMAIL_PORAKA] OFF
GO
SET IDENTITY_INSERT [dbo].[GALERIJA] ON 

INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([Id_galerija], [preview]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[GALERIJA] OFF
GO
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'naslov1', N'opis1')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'naslov2', N'opis2')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'naslov3', N'opis3')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'naslov4', N'opis4')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'naslov5', N'opis5')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'naslov6', N'opis6')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'naslov7', N'opis7')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'naslov8', N'opis8')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'naslov9', N'opis9')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazikg], [naslov], [opis]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'naslov10', N'opis10')
GO
SET IDENTITY_INSERT [dbo].[GALERIJA_SLIKA] ON 

INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'opisslika1', N'slika1', N'opisslikaeng1')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'opisslika2', N'slika2', N'opisslikaeng2')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'opisslika3', N'slika3', N'opisslikaeng3')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'opisslika4', N'slika4', N'opisslikaeng4')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'opisslika5', N'slika5', N'opisslikaeng5')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'opisslika6', N'slika6', N'opisslikaeng6')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'opisslika7', N'slika7', N'opisslikaeng7')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'opisslika8', N'slika8', N'opisslikaeng8')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'opisslika9', N'slika9', N'opisslikaeng9')
INSERT [dbo].[GALERIJA_SLIKA] ([id_slika], [gal_id_galerijas], [opisslika], [slika], [OPISSLIKAENG]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'opisslika10', N'slika10', N'opisslikaeng10')
SET IDENTITY_INSERT [dbo].[GALERIJA_SLIKA] OFF
GO
SET IDENTITY_INSERT [dbo].[JAZIK] ON 

INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(1 AS Numeric(18, 0)), N'jazik1')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(2 AS Numeric(18, 0)), N'jazik2')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(3 AS Numeric(18, 0)), N'jazik3')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(4 AS Numeric(18, 0)), N'jazik4')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(5 AS Numeric(18, 0)), N'jazik5')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(6 AS Numeric(18, 0)), N'jazik6')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(7 AS Numeric(18, 0)), N'jazik7')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(8 AS Numeric(18, 0)), N'jazik8')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(9 AS Numeric(18, 0)), N'jazik9')
INSERT [dbo].[JAZIK] ([id_jazik], [jazik]) VALUES (CAST(10 AS Numeric(18, 0)), N'jazik10')
SET IDENTITY_INSERT [dbo].[JAZIK] OFF
GO
SET IDENTITY_INSERT [dbo].[KADMINISTRATOR] ON 

INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(1 AS Numeric(18, 0)), N'user1', N'pass1', N'ime1', N'949802297')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(2 AS Numeric(18, 0)), N'user2', N'pass2', N'ime2', N'778270501')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(3 AS Numeric(18, 0)), N'user3', N'pass3', N'ime3', N'728925280')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(4 AS Numeric(18, 0)), N'user4', N'pass4', N'ime4', N'425268220')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(5 AS Numeric(18, 0)), N'user5', N'pass5', N'ime5', N'246263454')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(6 AS Numeric(18, 0)), N'user6', N'pass6', N'ime6', N'979219682')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(7 AS Numeric(18, 0)), N'user7', N'pass7', N'ime7', N'291849659')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(8 AS Numeric(18, 0)), N'user8', N'pass8', N'ime8', N'294067340')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(9 AS Numeric(18, 0)), N'user9', N'pass9', N'ime9', N'406870785')
INSERT [dbo].[KADMINISTRATOR] ([Id_admin], [username], [password], [ime], [telefon]) VALUES (CAST(10 AS Numeric(18, 0)), N'user10', N'pass10', N'ime10', N'222245008')
SET IDENTITY_INSERT [dbo].[KADMINISTRATOR] OFF
GO
SET IDENTITY_INSERT [dbo].[KDOKUMENT] ON 

INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(1 AS Numeric(18, 0)), N'naslov1', CAST(1 AS Numeric(18, 0)), N'dokument1', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(2 AS Numeric(18, 0)), N'naslov2', CAST(2 AS Numeric(18, 0)), N'dokument2', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(3 AS Numeric(18, 0)), N'naslov3', CAST(3 AS Numeric(18, 0)), N'dokument3', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(4 AS Numeric(18, 0)), N'naslov4', CAST(4 AS Numeric(18, 0)), N'dokument4', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(5 AS Numeric(18, 0)), N'naslov5', CAST(5 AS Numeric(18, 0)), N'dokument5', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(6 AS Numeric(18, 0)), N'naslov6', CAST(6 AS Numeric(18, 0)), N'dokument6', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(7 AS Numeric(18, 0)), N'naslov7', CAST(7 AS Numeric(18, 0)), N'dokument7', CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(8 AS Numeric(18, 0)), N'naslov8', CAST(8 AS Numeric(18, 0)), N'dokument8', CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(9 AS Numeric(18, 0)), N'naslov9', CAST(9 AS Numeric(18, 0)), N'dokument9', CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([id_dokument], [naslov], [jazik_id_jazikd], [dokument], [prikaz]) VALUES (CAST(10 AS Numeric(18, 0)), N'naslov10', CAST(10 AS Numeric(18, 0)), N'dokument10', CAST(10 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[KDOKUMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[KNOVOST] ON 

INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'naslov1', N'opis1', CAST(N'2010-09-01T00:00:00.000' AS DateTime), CAST(N'2010-09-11T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'naslov2', N'opis2', CAST(N'2010-09-02T00:00:00.000' AS DateTime), CAST(N'2010-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'naslov3', N'opis3', CAST(N'2010-09-03T00:00:00.000' AS DateTime), CAST(N'2010-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'naslov4', N'opis4', CAST(N'2010-09-04T00:00:00.000' AS DateTime), CAST(N'2010-09-14T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'naslov5', N'opis5', CAST(N'2010-09-05T00:00:00.000' AS DateTime), CAST(N'2010-09-15T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'naslov6', N'opis6', CAST(N'2010-09-06T00:00:00.000' AS DateTime), CAST(N'2010-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'naslov7', N'opis7', CAST(N'2010-09-07T00:00:00.000' AS DateTime), CAST(N'2010-09-17T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'naslov8', N'opis8', CAST(N'2010-09-08T00:00:00.000' AS DateTime), CAST(N'2010-09-18T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'naslov9', N'opis9', CAST(N'2010-09-09T00:00:00.000' AS DateTime), CAST(N'2010-09-19T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([id_novost], [adm_id_admin], [jazik_id_jazikn], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'naslov10', N'opis10', CAST(N'2010-09-10T00:00:00.000' AS DateTime), CAST(N'2010-09-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KNOVOST] OFF
GO
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([EMAIL_ID_POSETITEL], [EMAIL_ID_GRUPA]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
GO
ALTER TABLE [dbo].[EMAIL_GRUPA]  WITH CHECK ADD  CONSTRAINT [FK_EMAIL_GRUPA_JAZIK] FOREIGN KEY([JAZIK_ID_JAZIKM])
REFERENCES [dbo].[JAZIK] ([id_jazik])
GO
ALTER TABLE [dbo].[EMAIL_GRUPA] CHECK CONSTRAINT [FK_EMAIL_GRUPA_JAZIK]
GO
ALTER TABLE [dbo].[EMAIL_PORAKA]  WITH CHECK ADD  CONSTRAINT [FK_EMAIL_PORAKA_EMAIL_GRUPA] FOREIGN KEY([GRUPA_ID_GRUPA])
REFERENCES [dbo].[EMAIL_GRUPA] ([ID_GRUPA])
GO
ALTER TABLE [dbo].[EMAIL_PORAKA] CHECK CONSTRAINT [FK_EMAIL_PORAKA_EMAIL_GRUPA]
GO
ALTER TABLE [dbo].[GALERIJA_OPIS]  WITH CHECK ADD  CONSTRAINT [FK_GALERIJA_OPIS_GALERIJA] FOREIGN KEY([gal_id_galerija])
REFERENCES [dbo].[GALERIJA] ([Id_galerija])
GO
ALTER TABLE [dbo].[GALERIJA_OPIS] CHECK CONSTRAINT [FK_GALERIJA_OPIS_GALERIJA]
GO
ALTER TABLE [dbo].[GALERIJA_OPIS]  WITH CHECK ADD  CONSTRAINT [FK_GALERIJA_OPIS_JAZIK] FOREIGN KEY([jazik_id_jazikg])
REFERENCES [dbo].[JAZIK] ([id_jazik])
GO
ALTER TABLE [dbo].[GALERIJA_OPIS] CHECK CONSTRAINT [FK_GALERIJA_OPIS_JAZIK]
GO
ALTER TABLE [dbo].[GALERIJA_SLIKA]  WITH CHECK ADD  CONSTRAINT [FK_GALERIJA_SLIKA_GALERIJA] FOREIGN KEY([gal_id_galerijas])
REFERENCES [dbo].[GALERIJA] ([Id_galerija])
GO
ALTER TABLE [dbo].[GALERIJA_SLIKA] CHECK CONSTRAINT [FK_GALERIJA_SLIKA_GALERIJA]
GO
ALTER TABLE [dbo].[KNOVOST]  WITH CHECK ADD  CONSTRAINT [FK_KNOVOST_JAZIK] FOREIGN KEY([jazik_id_jazikn])
REFERENCES [dbo].[JAZIK] ([id_jazik])
GO
ALTER TABLE [dbo].[KNOVOST] CHECK CONSTRAINT [FK_KNOVOST_JAZIK]
GO
ALTER TABLE [dbo].[KNOVOST]  WITH CHECK ADD  CONSTRAINT [FK_KNOVOST_KADMINISTRATOR] FOREIGN KEY([adm_id_admin])
REFERENCES [dbo].[KADMINISTRATOR] ([Id_admin])
GO
ALTER TABLE [dbo].[KNOVOST] CHECK CONSTRAINT [FK_KNOVOST_KADMINISTRATOR]
GO
ALTER TABLE [dbo].[MAILING]  WITH CHECK ADD  CONSTRAINT [FK_MAILING_EMAIL] FOREIGN KEY([EMAIL_ID_POSETITEL])
REFERENCES [dbo].[EMAIL] ([id_posetitel])
GO
ALTER TABLE [dbo].[MAILING] CHECK CONSTRAINT [FK_MAILING_EMAIL]
GO
ALTER TABLE [dbo].[MAILING]  WITH CHECK ADD  CONSTRAINT [FK_MAILING_EMAIL_GRUPA] FOREIGN KEY([EMAIL_ID_GRUPA])
REFERENCES [dbo].[EMAIL_GRUPA] ([ID_GRUPA])
GO
ALTER TABLE [dbo].[MAILING] CHECK CONSTRAINT [FK_MAILING_EMAIL_GRUPA]
GO
/****** Object:  StoredProcedure [dbo].[FindPic]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FindPic] 
	-- Add the parameters for the stored procedure here
	@idLang AS INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT slika, opisslika, id_galerija
FROM [dbo].GALERIJA_SLIKA AS GS
    INNER JOIN
    [dbo].[GALERIJA] AS G
        ON GS.gal_id_galerijas = G.Id_galerija
    INNER JOIN
    [dbo].[GALERIJA_OPIS] AS GOP
        ON GOP.gal_id_galerija = G.Id_galerija
WHERE gop.jazik_id_jazikg = @idLang

END
GO
/****** Object:  StoredProcedure [dbo].[Procedura2]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Procedura2] 
	-- Add the parameters for the stored procedure here
@idNovost as INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT JAZIK, username, naslov, id_novost
FROM [dbo].JAZIK AS J
    INNER JOIN
    [dbo].KNOVOST AS KN
        ON KN.jazik_id_jazikn = J.id_jazik
    INNER JOIN
    [dbo].KADMINISTRATOR AS K
        ON K.Id_admin = KN.adm_id_admin
WHERE KN.id_novost = @idNovost
END
GO
/****** Object:  StoredProcedure [dbo].[Procedura3]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Procedura3]
	-- Add the parameters for the stored procedure here
	@idPosetitel AS INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT ime, naziv
FROM dbo.EMAIL as E
	INNER JOIN 
	dbo.MAILING as M
		ON E.id_posetitel = M.EMAIL_ID_POSETITEL
	INNER JOIN
	DBO.EMAIL_GRUPA AS EG
		ON EG.ID_GRUPA = M.EMAIL_ID_GRUPA
WHERE E.id_posetitel = @idPosetitel
END
GO
/****** Object:  StoredProcedure [dbo].[Procedura4]    Script Date: 25.10.2021 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Procedura4]
	-- Add the parameters for the stored procedure here
	@idAktiv as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ID_GRUPA, NASLOV, TEKST
FROM DBO.EMAIL_GRUPA AS EG
	INNER JOIN
	DBO.EMAIL_PORAKA AS EP
		ON EG.ID_GRUPA = EP.GRUPA_ID_GRUPA
WHERE aktivna = @idAktiv
END
GO
USE [master]
GO
ALTER DATABASE [Karavan_4529] SET  READ_WRITE 
GO
