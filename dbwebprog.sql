USE [master]
GO
/****** Object:  Database [dbwebprog]    Script Date: 07/09/2016 15:34:05 ******/
CREATE DATABASE [dbwebprog] ON  PRIMARY 
( NAME = N'dbwebprog', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\dbwebprog.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbwebprog_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\dbwebprog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbwebprog] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbwebprog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbwebprog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbwebprog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbwebprog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbwebprog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbwebprog] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbwebprog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbwebprog] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbwebprog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbwebprog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbwebprog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbwebprog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbwebprog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbwebprog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbwebprog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbwebprog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbwebprog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbwebprog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbwebprog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbwebprog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbwebprog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbwebprog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbwebprog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbwebprog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbwebprog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbwebprog] SET  MULTI_USER 
GO
ALTER DATABASE [dbwebprog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbwebprog] SET DB_CHAINING OFF 
GO
USE [dbwebprog]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 07/09/2016 15:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[intCityID] [int] IDENTITY(1,1) NOT NULL,
	[strCityName] [nvarchar](50) NULL,
	[strCityMission] [nvarchar](max) NULL,
	[strCityVision] [nvarchar](max) NULL,
	[strCityHistory] [nvarchar](max) NULL,
	[strCityLogo] [nvarchar](50) NULL,
	[strCityBanner] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[intCityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblOfficial]    Script Date: 07/09/2016 15:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOfficial](
	[intOfficialID] [int] IDENTITY(1,1) NOT NULL,
	[strOfficialFirstName] [nvarchar](50) NULL,
	[strOfficialLastName] [nvarchar](50) NULL,
	[strOfficialMiddleName] [nvarchar](50) NULL,
	[intOfficialPositionID] [int] NOT NULL,
 CONSTRAINT [PK_tblOfficial] PRIMARY KEY CLUSTERED 
(
	[intOfficialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPosition]    Script Date: 07/09/2016 15:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPosition](
	[intPositionID] [int] IDENTITY(1,1) NOT NULL,
	[strPositionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPosition] PRIMARY KEY CLUSTERED 
(
	[intPositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblCity] ON 

INSERT [dbo].[tblCity] ([intCityID], [strCityName], [strCityMission], [strCityVision], [strCityHistory], [strCityLogo], [strCityBanner]) VALUES (1, N'Mandaluyong', N'The City of Mandaluyong aims to:   provide public secondary science education emphasizing academic and cultural excellence for the students of the city; guide and help students to develop themselves to the fullest and produce graduates who are self-reliant, committed, responsible, nation-loving and God-fearing citizens.', N'The City of Mandaluyong envisions itself as the center of academic excellence in the city with highly intellectual and competitive faculty that produces graduates who are epitomes of brilliance, responsibility, commitment, discipline and moral ascendancy.', N'The residents of Mandaluyong have always been known for their industry. Men did the laundry to the amusement of non-residents until shortly after the war, while the women ironed the clothes.

These industrious people trace their roots to Emperor Soledan (also known as “Anka Widyaya” of the Great Madjapahit Empire) and Empress Sasaban of the Kingdom of Sapa whose son Prince Balagtas ruled as sovereign of the kingdom in about the year 1300.

More than a century later, in about the year 1470, it expanded and was called the “Kingdom of Namayan” with “Lakan Takhan” as sovereign. The vast Kingdom comprised what are now Quiapo, San Miguel, Sta, Mesa, Paco, Pandacan, Malate, Malate and Sta. Ana in Manila, and Mandaluyong, San Juan, Makati, Pasay, Pateros, Taguig, Parañaque, and portions of Pasig and Quezon City up to Diliman that were then part of Mandaluyong.', N'Uploads/mandalogo.png', N'Uploads/60853150.jpg')
SET IDENTITY_INSERT [dbo].[tblCity] OFF
SET IDENTITY_INSERT [dbo].[tblOfficial] ON 

INSERT [dbo].[tblOfficial] ([intOfficialID], [strOfficialFirstName], [strOfficialLastName], [strOfficialMiddleName], [intOfficialPositionID]) VALUES (1, N'Jom', N'Togueno', N'Janaban', 4)
SET IDENTITY_INSERT [dbo].[tblOfficial] OFF
SET IDENTITY_INSERT [dbo].[tblPosition] ON 

INSERT [dbo].[tblPosition] ([intPositionID], [strPositionName]) VALUES (3, N'Congressman')
INSERT [dbo].[tblPosition] ([intPositionID], [strPositionName]) VALUES (4, N'Zylah')
INSERT [dbo].[tblPosition] ([intPositionID], [strPositionName]) VALUES (5, N'Test')
SET IDENTITY_INSERT [dbo].[tblPosition] OFF
ALTER TABLE [dbo].[tblOfficial]  WITH CHECK ADD  CONSTRAINT [FK_tblOfficial_tblPosition] FOREIGN KEY([intOfficialPositionID])
REFERENCES [dbo].[tblPosition] ([intPositionID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblOfficial] CHECK CONSTRAINT [FK_tblOfficial_tblPosition]
GO
USE [master]
GO
ALTER DATABASE [dbwebprog] SET  READ_WRITE 
GO
