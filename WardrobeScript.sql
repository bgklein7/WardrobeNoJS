USE [master]
GO
/****** Object:  Database [WardrobeByKlein]    Script Date: 3/18/2018 7:33:48 PM ******/
CREATE DATABASE [WardrobeByKlein]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeByKlein', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeByKlein.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeByKlein_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeByKlein_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeByKlein] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeByKlein].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeByKlein] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeByKlein] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeByKlein] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeByKlein] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeByKlein] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeByKlein] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeByKlein] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeByKlein] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeByKlein] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeByKlein] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeByKlein] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeByKlein]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/18/2018 7:33:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](200) NOT NULL,
	[AccessoryType] [nvarchar](50) NOT NULL,
	[AccessoryColor] [nvarchar](50) NOT NULL,
	[AccessorySeason] [nvarchar](20) NULL,
	[AccessoryOccasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/18/2018 7:33:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](200) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](20) NULL,
	[BottomOccasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 3/18/2018 7:33:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [nvarchar](50) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/18/2018 7:33:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](200) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](20) NULL,
	[ShoeOccasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/18/2018 7:33:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](200) NOT NULL,
	[TopType] [nvarchar](50) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](20) NULL,
	[TopOccasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (2, N'Fedora', N'/Content/images/brownFedora.jpg', N'Felt', N'Brown', N'Fall/Winter', N'Archaeological Expeditions')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'Flat Cap', N'/Content/images/tartanFlatCap.jpg', N'Wool', N'Tartan', N'Fall/Winter', N'Everyday')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (4, N'Watch Cap', N'/Content/images/redBeanie.jpg', N'Wool', N'Red', N'Winter', N'Everyday')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Chinos', N'/Content/images/greenPants.jpg', N'Cotton', N'Green', N'Year-Round', N'Everyday')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (2, N'Jeans', N'/Content/images/jeans.jpg', N'Denim', N'Dark Rinse', N'Year-Round', N'Bull Riding')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (3, N'Tartans', N'/Content/images/tartanPants.jpg', N'Wool', N'Multi', N'Winter', N'Party')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1, N'Casual Day', 2, 1, 1, 3)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (2, N'Business Casual', 1, 1, 2, 4)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Boots', N'/Content/images/wingtipBoots.jpg', N'Brogue Wingtip', N'Tobacco', N'Fall/Winter', N'Everyday')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Oxford', N'/Content/images/wingtip.jpg', N'Brogue Wingtip', N'Brown', N'Year-Round', N'Everyday')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Moccasins', N'/Content/images/slipons.jpg', N'Drivers', N'Tan', N'Spring/Summer', N'Maxin''/Relaxin''')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (1, N'Oxford', N'/Content/images/blueShirt.jpg', N'Cotton', N'Blue', N'Year-Round', N'Everyday')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (2, N'Gingham', N'/Content/images/gingham.jpg', N'Cotton', N'Blue', N'Spring/Summer', N'Derby Parties')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (3, N'Tattersall', N'/Content/images/orangeBlueShirt.jpg', N'Cotton', N'Orange/Blue', N'Summer', N'Game Day')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeByKlein] SET  READ_WRITE 
GO
