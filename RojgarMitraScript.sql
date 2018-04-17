USE [master]
GO
/****** Object:  Database [RojgarMitra]    Script Date: 17-04-2018 18:30:16 ******/
CREATE DATABASE [RojgarMitra]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RojgarMitra', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\RojgarMitra.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RojgarMitra_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\RojgarMitra_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RojgarMitra] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RojgarMitra].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RojgarMitra] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RojgarMitra] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RojgarMitra] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RojgarMitra] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RojgarMitra] SET ARITHABORT OFF 
GO
ALTER DATABASE [RojgarMitra] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RojgarMitra] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RojgarMitra] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RojgarMitra] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RojgarMitra] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RojgarMitra] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RojgarMitra] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RojgarMitra] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RojgarMitra] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RojgarMitra] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RojgarMitra] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RojgarMitra] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RojgarMitra] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RojgarMitra] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RojgarMitra] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RojgarMitra] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RojgarMitra] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RojgarMitra] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RojgarMitra] SET  MULTI_USER 
GO
ALTER DATABASE [RojgarMitra] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RojgarMitra] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RojgarMitra] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RojgarMitra] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RojgarMitra] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RojgarMitra] SET QUERY_STORE = OFF
GO
USE [RojgarMitra]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [RojgarMitra]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17-04-2018 18:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginProvider] [varchar](50) NULL,
	[ProviderKey] [varchar](100) NULL,
	[UserId] [varchar](100) NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [varchar](50) NULL,
	[SecurityStamp] [varchar](100) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnables] [bit] NULL,
	[LockoutEndDateUtc] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityID] [bigint] NOT NULL,
	[CityName] [varchar](250) NOT NULL,
	[StateID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyMaster]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyMaster](
	[CompanyID] [bigint] IDENTITY(100,1) NOT NULL,
	[CompanyName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CompanyMaster] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountriesMaster]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountriesMaster](
	[CountryID] [bigint] IDENTITY(100,1) NOT NULL,
	[CountryName] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesigationMaster]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesigationMaster](
	[DesignationID] [bigint] IDENTITY(100,1) NOT NULL,
	[DesignationName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DesigationMaster] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherMasters]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherMasters](
	[MasterID] [int] IDENTITY(100,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CODE] [varchar](100) NULL,
	[MasterType] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_OtherMasters] PRIMARY KEY CLUSTERED 
(
	[MasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatesMaster]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatesMaster](
	[StateID] [bigint] IDENTITY(100,1) NOT NULL,
	[CountryID] [bigint] NOT NULL,
	[Statename] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StatesMaster] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tokens]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tokens](
	[TokenID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AuthToken] [nvarchar](250) NOT NULL,
	[IssuedOn] [datetime] NOT NULL,
	[ExpiresOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Tokens] PRIMARY KEY CLUSTERED 
(
	[TokenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[University_CollegeMaster]    Script Date: 17-04-2018 18:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[University_CollegeMaster](
	[ID] [bigint] IDENTITY(100,1) NOT NULL,
	[University_CollegeName] [varchar](500) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_University_CollegeMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEducationDetails]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEducationDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Extension] [varchar](50) NULL,
	[ProfileImage] [varchar](200) NULL,
	[ProfessionalExperience] [varchar](500) NULL,
	[HighestQualification] [int] NULL,
	[Course] [int] NULL,
	[Specialization] [int] NULL,
	[University_College] [bigint] NULL,
	[CourseType] [varchar](100) NULL,
	[PassingYear] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[createdDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserEducationDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEmployementDetails]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEmployementDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NULL,
	[CurrentDesignation] [int] NULL,
	[CurrentCompany] [int] NULL,
	[AnualSalaryType] [nvarchar](1) NULL,
	[AnnualSalaryInlakhs] [varchar](10) NULL,
	[AnnualSalaryInThousand] [int] NULL,
	[WorkingSinceYear] [int] NULL,
	[WotkingSinceMonth] [varchar](50) NULL,
	[WorkingTo] [varchar](50) NULL,
	[CurrentLocationID] [int] NULL,
	[CityName] [nchar](10) NULL,
	[OutSideIndia] [bit] NULL,
	[OutSideIndiaCountryID] [int] NULL,
	[OutSideIndiaCity] [nchar](10) NULL,
	[NoticePeriod] [int] NULL,
	[ServeNoticePeriod] [bit] NULL,
	[LastWorkingDay_Year] [int] NULL,
	[Last_Working_Month] [int] NULL,
	[Last_WorkingDate] [int] NULL,
	[NewOfferedSalaryIn] [char](1) NULL,
	[NewOfferedSalaryInLakh] [int] NULL,
	[NewOfferedSalaryInThousand] [int] NULL,
	[OfferedDesignation] [int] NULL,
	[NewCompany] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[PassingYear] [int] NULL,
 CONSTRAINT [PK_UserEmployementDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](200) NULL,
	[EmailID] [varchar](200) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[StdCode] [varchar](5) NULL,
	[MobileNumber] [varchar](20) NOT NULL,
	[TotalExYear] [int] NULL,
	[ToalExMonth] [int] NULL,
	[Resume] [varchar](500) NULL,
	[ProfileImage] [varchar](50) NULL,
	[Extension] [varchar](10) NULL,
	[CurrentLocation] [varchar](50) NULL,
	[LandLineNumber1] [varchar](50) NULL,
	[LandLineNumer2] [varchar](50) NULL,
	[MobileNumber2] [varchar](50) NULL,
	[Role] [varchar](50) NOT NULL,
	[Prefereedocation] [int] NULL,
	[PermanentAddress] [varchar](500) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [varchar](50) NULL,
	[HomeTown] [varchar](50) NULL,
	[PinCode] [int] NULL,
	[MartialStatus] [int] NULL,
	[KeySkills] [varchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPreEmployeementDetails]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPreEmployeementDetails](
	[PreEmpID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Desigation] [int] NULL,
	[Company] [int] NULL,
	[Duration_FromYear] [int] NULL,
	[Duration_FromMonth] [int] NULL,
	[Duration_ToYear] [int] NULL,
	[Duration_ToMonth] [nchar](10) NULL,
	[Active] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_UserPreEmployeementDetails] PRIMARY KEY CLUSTERED 
(
	[PreEmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompanyMaster] ON 

INSERT [dbo].[CompanyMaster] ([CompanyID], [CompanyName], [IsActive]) VALUES (100, N'Gantavy Software services pvt ltd', 1)
SET IDENTITY_INSERT [dbo].[CompanyMaster] OFF
SET IDENTITY_INSERT [dbo].[CountriesMaster] ON 

INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (100, N'INDIA', 1)
INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (101, N'Australia', 1)
INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (102, N'Dubai', 1)
INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (103, N'Srilanka', 1)
INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (104, N'Pakistan', 1)
INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (105, N'INDIAN', 1)
INSERT [dbo].[CountriesMaster] ([CountryID], [CountryName], [IsActive]) VALUES (106, N'Bhutan', 1)
SET IDENTITY_INSERT [dbo].[CountriesMaster] OFF
SET IDENTITY_INSERT [dbo].[DesigationMaster] ON 

INSERT [dbo].[DesigationMaster] ([DesignationID], [DesignationName], [IsActive], [CreatedDate]) VALUES (104, N' Software Developer ', 1, CAST(N'2018-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DesigationMaster] ([DesignationID], [DesignationName], [IsActive], [CreatedDate]) VALUES (105, N' Team Lead / Tech Lead ', 1, CAST(N'2018-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DesigationMaster] ([DesignationID], [DesignationName], [IsActive], [CreatedDate]) VALUES (106, N' System Analyst ', 1, CAST(N'2018-04-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DesigationMaster] OFF
SET IDENTITY_INSERT [dbo].[OtherMasters] ON 

INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (101, N'0 Lakh', N'0 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (102, N'1 Lakh', N'1 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (103, N'2 Lakh', N'2 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (104, N'3 Lakh', N'3 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (205, N'4 Lakh', N'4 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (206, N'5 Lakh', N'5 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (207, N'6 Lakh', N'6 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (208, N'7 Lakh', N'7 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (209, N'8 Lakh', N'8 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (210, N'9 Lakh', N'9 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (211, N'10 Lakh', N'10 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (212, N'11 Lakh', N'11 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (213, N'12 Lakh', N'12 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (214, N'13 Lakh', N'13 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (215, N'14 Lakh', N'14 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (216, N'15 Lakh', N'15 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (217, N'16 Lakh', N'16 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (218, N'17 Lakh', N'17 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (219, N'18 Lakh', N'18 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (220, N'19 Lakh', N'19 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (221, N'20 Lakh', N'20 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (222, N'21 Lakh', N'21 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (223, N'22 Lakh', N'22 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (224, N'23 Lakh', N'23 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (225, N'24 Lakh', N'24 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (226, N'25 Lakh', N'25 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (227, N'26 Lakh', N'26 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (228, N'27 Lakh', N'27 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (229, N'28 Lakh', N'28 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (230, N'29 Lakh', N'29 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (231, N'30 Lakh', N'30 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (232, N'31 Lakh', N'31 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (233, N'32 Lakh', N'32 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (234, N'33 Lakh', N'33 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (235, N'34 Lakh', N'34 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (236, N'35 Lakh', N'35 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (237, N'36 Lakh', N'36 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (238, N'37 Lakh', N'37 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (239, N'38 Lakh', N'38 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (240, N'39 Lakh', N'39 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (241, N'40 Lakh', N'40 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (242, N'41 Lakh', N'41 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (243, N'42 Lakh', N'42 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (244, N'43 Lakh', N'43 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (245, N'44 Lakh', N'44 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (246, N'45 Lakh', N'45 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (247, N'46 Lakh', N'46 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (248, N'47 Lakh', N'47 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (249, N'48 Lakh', N'48 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (250, N'49 Lakh', N'49 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (251, N'50 Lakh', N'50 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (252, N'51 Lakh', N'51 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (253, N'52 Lakh', N'52 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (254, N'53 Lakh', N'53 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (255, N'54 Lakh', N'54 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (256, N'55 Lakh', N'55 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (257, N'56 Lakh', N'56 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (258, N'57 Lakh', N'57 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (259, N'58 Lakh', N'58 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (260, N'59 Lakh', N'59 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (261, N'60 Lakh', N'60 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (262, N'61 Lakh', N'61 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (263, N'62 Lakh', N'62 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (264, N'63 Lakh', N'63 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (265, N'64 Lakh', N'64 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (266, N'65 Lakh', N'65 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (267, N'66 Lakh', N'66 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (268, N'67 Lakh', N'67 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (269, N'68 Lakh', N'68 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (270, N'69 Lakh', N'69 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (271, N'70 Lakh', N'70 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (272, N'71 Lakh', N'71 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (273, N'72 Lakh', N'72 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (274, N'73 Lakh', N'73 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (275, N'74 Lakh', N'74 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (276, N'75 Lakh', N'75 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (277, N'76 Lakh', N'76 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (278, N'77 Lakh', N'77 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (279, N'78 Lakh', N'78 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (280, N'79 Lakh', N'79 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (281, N'80 Lakh', N'80 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (282, N'81 Lakh', N'81 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (283, N'82 Lakh', N'82 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (284, N'83 Lakh', N'83 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (285, N'84 Lakh', N'84 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (286, N'85 Lakh', N'85 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (287, N'86 Lakh', N'86 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (288, N'87 Lakh', N'87 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (289, N'88 Lakh', N'88 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (290, N'89 Lakh', N'89 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (291, N'90 Lakh', N'90 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (292, N'91 Lakh', N'91 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (293, N'92 Lakh', N'92 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (294, N'93 Lakh', N'93 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (295, N'94 Lakh', N'94 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (296, N'95 Lakh', N'95 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (297, N'96 Lakh', N'96 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (298, N'97 Lakh', N'97 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (299, N'98 Lakh', N'98 Lakh', N'ANNUAL SALARY IN LAKH', 1)
GO
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (300, N'99 Lakh', N'99 Lakh', N'ANNUAL SALARY IN LAKH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (301, N'0 Thousand', N'0 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (302, N'1 Thousand', N'1 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (303, N'2 Thousand', N'2 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (304, N'3 Thousand', N'3 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (305, N'4 Thousand', N'4 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (306, N'5 Thousand', N'5 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (307, N'6 Thousand', N'6 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (308, N'7 Thousand', N'7 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (309, N'8 Thousand', N'8 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (310, N'9 Thousand', N'9 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (311, N'10 Thousand', N'10 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (312, N'11 Thousand', N'11 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (313, N'12 Thousand', N'12 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (314, N'13 Thousand', N'13 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (315, N'14 Thousand', N'14 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (316, N'15 Thousand', N'15 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (317, N'16 Thousand', N'16 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (318, N'17 Thousand', N'17 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (319, N'18 Thousand', N'18 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (320, N'19 Thousand', N'19 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (321, N'20 Thousand', N'20 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (322, N'21 Thousand', N'21 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (323, N'22 Thousand', N'22 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (324, N'23 Thousand', N'23 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (325, N'24 Thousand', N'24 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (326, N'25 Thousand', N'25 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (327, N'26 Thousand', N'26 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (328, N'27 Thousand', N'27 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (329, N'28 Thousand', N'28 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (330, N'29 Thousand', N'29 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (331, N'30 Thousand', N'30 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (332, N'31 Thousand', N'31 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (333, N'32 Thousand', N'32 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (334, N'33 Thousand', N'33 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (335, N'34 Thousand', N'34 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (336, N'35 Thousand', N'35 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (337, N'36 Thousand', N'36 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (338, N'37 Thousand', N'37 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (339, N'38 Thousand', N'38 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (340, N'39 Thousand', N'39 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (341, N'40 Thousand', N'40 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (342, N'41 Thousand', N'41 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (343, N'42 Thousand', N'42 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (344, N'43 Thousand', N'43 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (345, N'44 Thousand', N'44 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (346, N'45 Thousand', N'45 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (347, N'46 Thousand', N'46 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (348, N'47 Thousand', N'47 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (349, N'48 Thousand', N'48 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (350, N'49 Thousand', N'49 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (351, N'50 Thousand', N'50 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (352, N'51 Thousand', N'51 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (353, N'52 Thousand', N'52 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (354, N'53 Thousand', N'53 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (355, N'54 Thousand', N'54 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (356, N'55 Thousand', N'55 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (357, N'56 Thousand', N'56 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (358, N'57 Thousand', N'57 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (359, N'58 Thousand', N'58 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (360, N'59 Thousand', N'59 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (361, N'60 Thousand', N'60 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (362, N'61 Thousand', N'61 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (363, N'62 Thousand', N'62 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (364, N'63 Thousand', N'63 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (365, N'64 Thousand', N'64 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (366, N'65 Thousand', N'65 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (367, N'66 Thousand', N'66 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (368, N'67 Thousand', N'67 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (369, N'68 Thousand', N'68 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (370, N'69 Thousand', N'69 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (371, N'70 Thousand', N'70 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (372, N'71 Thousand', N'71 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (373, N'72 Thousand', N'72 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (374, N'73 Thousand', N'73 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (375, N'74 Thousand', N'74 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (376, N'75 Thousand', N'75 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (377, N'76 Thousand', N'76 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (378, N'77 Thousand', N'77 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (379, N'78 Thousand', N'78 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (380, N'79 Thousand', N'79 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (381, N'80 Thousand', N'80 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (382, N'81 Thousand', N'81 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (383, N'82 Thousand', N'82 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (384, N'83 Thousand', N'83 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (385, N'84 Thousand', N'84 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (386, N'85 Thousand', N'85 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (387, N'86 Thousand', N'86 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (388, N'87 Thousand', N'87 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (389, N'88 Thousand', N'88 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (390, N'89 Thousand', N'89 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (391, N'90 Thousand', N'90 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (392, N'91 Thousand', N'91 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (393, N'92 Thousand', N'92 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (394, N'93 Thousand', N'93 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (395, N'94 Thousand', N'94 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (396, N'95 Thousand', N'95 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (397, N'96 Thousand', N'96 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (398, N'97 Thousand', N'97 Thousand', N'ANNUAL SALARY IN THOUSAND', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (399, N'1970', N'1970', N'WORKING', 1)
GO
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (400, N'1971', N'1971', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (401, N'1972', N'1972', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (402, N'1973', N'1973', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (403, N'1974', N'1974', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (404, N'1975', N'1975', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (405, N'1976', N'1976', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (406, N'1977', N'1977', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (407, N'1978', N'1978', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (408, N'1979', N'1979', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (409, N'1980', N'1980', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (410, N'1981', N'1981', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (411, N'1982', N'1982', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (412, N'1983', N'1983', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (413, N'1984', N'1984', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (414, N'1985', N'1985', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (415, N'1986', N'1986', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (416, N'1987', N'1987', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (417, N'1988', N'1988', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (418, N'1989', N'1989', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (419, N'1990', N'1990', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (420, N'1991', N'1991', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (421, N'1992', N'1992', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (422, N'1993', N'1993', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (423, N'1994', N'1994', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (424, N'1995', N'1995', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (425, N'1996', N'1996', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (426, N'1997', N'1997', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (427, N'1998', N'1998', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (428, N'1999', N'1999', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (429, N'2000', N'2000', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (430, N'2001', N'2001', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (431, N'2002', N'2002', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (432, N'2003', N'2003', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (433, N'2004', N'2004', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (434, N'2005', N'2005', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (435, N'2006', N'2006', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (436, N'2007', N'2007', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (437, N'2008', N'2008', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (438, N'2009', N'2009', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (439, N'2010', N'2010', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (440, N'2011', N'2011', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (441, N'2012', N'2012', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (442, N'2013', N'2013', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (443, N'2014', N'2014', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (444, N'2015', N'2015', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (445, N'2016', N'2016', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (446, N'2017', N'2017', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (447, N'2018', N'2018', N'WORKING', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (449, N'1', N'1', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (450, N'2', N'2', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (451, N'3', N'3', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (452, N'4', N'4', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (453, N'4', N'4', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (454, N'5', N'5', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (455, N'6', N'6', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (456, N'7', N'7', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (457, N'8', N'8', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (458, N'9', N'9', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (459, N'10', N'10', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (460, N'11', N'11', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (461, N'12', N'12', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (462, N'13', N'13', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (463, N'14', N'14', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (464, N'15', N'15', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (465, N'Jan', N'1', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (466, N'Feb', N'2', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (467, N'March', N'3', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (469, N'April', N'4', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (470, N'May', N'5', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (471, N'June', N'6', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (472, N'July', N'7', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (473, N'August', N'8', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (474, N'Sepetmber', N'9', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (475, N'October', N'10', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (476, N'November', N'11', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (477, N'December', N'12', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (478, N'Doctorate/Phd', N'1', N'QUALIFICATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (479, N'Masters/Post-Graduation', N'2', N'QUALIFICATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (480, N'Graduation/Diploma', N'3', N'QUALIFICATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (481, N'12 th', N'4', N'QUALIFICATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (482, N'10 th', N'5', N'QUALIFICATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (483, N'Below 10 th', N'6', N'QUALIFICATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (484, N'B.A', N'1', N'COURSE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (485, N'B.Arch', N'2', N'COURSE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (486, N'B.Des.', N'3', N'COURSE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (487, N'Animation Film Design', N'1', N'SPECIALIZATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (489, N'Ceramic & Glass Drsign', N'1', N'SPECIALIZATION', 1)
SET IDENTITY_INSERT [dbo].[OtherMasters] OFF
SET IDENTITY_INSERT [dbo].[StatesMaster] ON 

INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (138, 100, N'DELHI', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (139, 100, N'ASSAM', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (140, 100, N'MAHARASHTRA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (141, 100, N'RAJASTHAN', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (142, 100, N'TAMIL NADU', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (143, 100, N'KARNATAKA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (144, 100, N'KERALA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (145, 100, N'MADHYA PRADESH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (146, 100, N'UTTAR PRADESH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (147, 100, N'GUJARAT', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (148, 100, N'PUNJAB', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (149, 100, N'WEST BENGAL', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (150, 100, N'ANDHRA PRADESH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (151, 100, N'Haryana', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (152, 100, N'ODISHA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (153, 100, N'JHARKHAND', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (154, 100, N'CHHATTISGARH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (155, 100, N'GOA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (156, 100, N'ARUNACHAL PRADESH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (157, 100, N'BIHAR', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (158, 100, N'HIMACHAL PRADESH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (159, 100, N'JAMMU AND KASHMIR', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (160, 100, N'MANIPUR', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (161, 100, N'MEGHALAYA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (162, 100, N'MIZORAM', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (163, 100, N'NAGALAND', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (164, 100, N'SIKKIM', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (165, 100, N'TRIPURA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (166, 100, N'UTTARAKHAND', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (167, 100, N'CHANDIGARH', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (168, 100, N'DAMAN AND DIU', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (169, 100, N'DADRA AND NAGAR HAVELI', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (170, 100, N'LAKSHADWEEP', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (171, 100, N'PONDICHERRY', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (172, 100, N'ANDAMAN AND NICOBAR ISLANDS', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (173, 100, N'TELANGANA', 1)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (174, 100, N'', 0)
INSERT [dbo].[StatesMaster] ([StateID], [CountryID], [Statename], [IsActive]) VALUES (175, 103, N'', 0)
SET IDENTITY_INSERT [dbo].[StatesMaster] OFF
SET IDENTITY_INSERT [dbo].[Tokens] ON 

INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (1, 3, N'60204f87-cc7b-4c4c-9684-4cc32d2dc587', CAST(N'2018-04-10T11:38:11.847' AS DateTime), CAST(N'2018-04-11T11:38:11.847' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (2, 3, N'25580272-86dc-4221-97a9-e5da9e1d2f46', CAST(N'2018-04-10T11:38:42.620' AS DateTime), CAST(N'2018-04-11T11:38:42.620' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (3, 3, N'8f5152a9-b270-49ff-90f1-6ad2a88872d5', CAST(N'2018-04-10T11:41:47.240' AS DateTime), CAST(N'2018-04-11T11:41:47.443' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (4, 2, N'b0ed963e-6b37-48d4-b137-f7e104a34f9d', CAST(N'2018-04-10T12:18:16.560' AS DateTime), CAST(N'2018-04-11T12:18:16.560' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (5, 2, N'd6f12e56-e0cb-45e6-a2b8-220978e05f6e', CAST(N'2018-04-10T12:32:43.157' AS DateTime), CAST(N'2018-04-11T12:32:43.157' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (6, 2, N'f78e18e9-e30e-4600-a70b-4b0c4da34163', CAST(N'2018-04-10T13:10:08.893' AS DateTime), CAST(N'2018-04-11T13:10:08.893' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (7, 2, N'1edfcdcc-59b5-410c-a529-6e86ca5c1fb7', CAST(N'2018-04-10T13:11:17.707' AS DateTime), CAST(N'2018-04-11T13:11:17.707' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (8, 2, N'677ce1d0-3a0b-4ddb-a6d6-a212cbd1b5ce', CAST(N'2018-04-10T13:13:34.217' AS DateTime), CAST(N'2018-04-11T13:13:34.217' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (9, 2, N'8c00270a-2762-432b-bfcd-b398d72ccc46', CAST(N'2018-04-10T13:26:06.090' AS DateTime), CAST(N'2018-04-11T13:26:06.090' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (10, 2, N'9d0eb97d-f914-478a-bb84-e71682275c3c', CAST(N'2018-04-12T16:04:55.420' AS DateTime), CAST(N'2018-04-13T16:04:55.420' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tokens] OFF
SET IDENTITY_INSERT [dbo].[University_CollegeMaster] ON 

INSERT [dbo].[University_CollegeMaster] ([ID], [University_CollegeName], [Type], [IsActive]) VALUES (100, N' GURU GOVIND SINGH COLLEGE OF COMMERECE', N'COLLEGE', 1)
SET IDENTITY_INSERT [dbo].[University_CollegeMaster] OFF
SET IDENTITY_INSERT [dbo].[UserEducationDetails] ON 

INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (3, 42, NULL, N'160ad155-eeb5-49af-a855-daa26b453de1', N'sdfsdfsdfdsf', 3, 2, 1, 100, N'Full Time', 2022, 1, CAST(N'2018-04-17T16:52:45.747' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (4, 42, NULL, N'3cd497fe-5031-4390-b903-4285f76f2a9aweb-api-7-638.jpg', N'sdfsdfsdfdsf', 3, 2, 1, 100, N'Full Time', 2022, 1, CAST(N'2018-04-17T16:56:20.730' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (6, 43, NULL, N'3d45b767-e66c-44bf-8167-79ff383aa0caweb-api-7-638.jpg', N'zxczxczxcxcxz', 4, 2, 1, 100, N'Full Time', 1996, 1, CAST(N'2018-04-17T17:12:17.580' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (7, 43, NULL, N'e6c43004-1309-4521-b365-02782d3a9cc5web-api-7-638.jpg', N'adsasdasd', 2, 2, 1, 0, N'Full Time', 1950, 1, CAST(N'2018-04-17T17:13:55.893' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (8, 44, NULL, N'9e2e820f-3e27-421e-8bd3-743d048bd09bweb-api-7-638.jpg', N'sdfvsdgdfgdfg', 4, 2, 1, 100, N'Full Time', 1945, 1, CAST(N'2018-04-17T18:27:02.227' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserEducationDetails] OFF
SET IDENTITY_INSERT [dbo].[UserEmployementDetails] ON 

INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (1, 17, 104, 100, NULL, N'6 Lakh', NULL, 1979, N'8', NULL, 156, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (2, 18, 105, 100, NULL, N'7 Lakh', NULL, 1972, N'3', NULL, 150, NULL, 0, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (3, 19, 104, 100, NULL, N'12 Lakh', NULL, 1978, N'6', NULL, 150, NULL, 1, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (4, 20, 104, 100, NULL, N'5 Lakh', NULL, 1972, N'2', NULL, 150, NULL, 0, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (5, 21, 104, 100, NULL, N'10 Lakh', NULL, 1971, N'2', NULL, 156, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (6, 22, 105, 100, NULL, N'10 Lakh', NULL, 1970, N'2', NULL, 156, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (7, 23, 104, 100, NULL, N'8 Lakh', NULL, 1977, N'8', NULL, 150, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (8, 24, 104, 100, NULL, N'6 Lakh', NULL, 1976, N'7', NULL, 139, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (9, 25, 104, 100, NULL, N'6 Lakh', NULL, 1972, N'2', NULL, 167, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-16' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (10, 26, 104, 100, NULL, N'4 Lakh', NULL, 1978, N'8', NULL, 138, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (11, 39, 104, 100, NULL, N'8 Lakh', NULL, 1979, N'10', NULL, 169, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (12, 40, 104, 100, NULL, N'9 Lakh', NULL, 1979, N'3', NULL, 150, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (13, 41, 104, 100, NULL, N'2 Lakh', NULL, 1978, N'10', NULL, 138, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (14, 42, 104, 100, NULL, N'6 Lakh', NULL, 1980, N'11', NULL, 138, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (15, 43, 104, 100, NULL, N'1 Lakh', NULL, 1980, N'11', NULL, 156, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (16, 44, 104, 100, NULL, N'9 Lakh', NULL, 1981, N'9', NULL, 156, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-17' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserEmployementDetails] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (2, N'Admin', N'Admin@gmail.com', N'123456', N'91', N'9971080414', 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Admin', NULL, NULL, NULL, N'MALE', NULL, NULL, NULL, NULL, CAST(N'2018-10-04T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (3, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T13:26:19.553' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (4, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T13:32:54.830' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (5, N'virkam', N'kuamr@gmal.com', N'789454', NULL, N'9874612185', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T15:10:51.927' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (6, N'virkam', N'kuamr@gmal.com', N'789454', NULL, N'9874612185', 6, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T15:41:37.913' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (7, N'virkam', N'Admin@gmail.com', N'789454', NULL, N'98746121', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:02:56.950' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (8, N'virkam', N'kuamr@gmal.com', N'123456', NULL, N'9874612185', 7, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:22:50.520' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (9, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:28:21.023' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (10, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:30:20.823' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (11, N'virkam', N'kuamr@gmal.com', N'123456', NULL, N'9874612185', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-13T17:21:28.027' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (12, N'virkam', N'kuamr@gmal.com', N'123456', NULL, N'98746121', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T11:07:39.387' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (13, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 8, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T11:34:29.320' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (14, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 7, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T11:46:30.503' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (15, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'98746121', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T12:22:15.927' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (16, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'98746121', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T12:29:09.913' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (17, N'virkam', N'Admin@gmail.com', N'1234567', NULL, N'9874612185', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T12:34:37.133' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (18, N'virkam', N'kuamr@gmal.com', N'1234567', NULL, N'9874612185', 7, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T15:59:07.413' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (19, N'virkam', N'Admin@gmail.com', N'1234567', NULL, N'9874612185', 7, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T16:16:45.240' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (20, N'virkam', N'vikram@gmail.com', N'123456', NULL, N'9874612185', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T16:45:57.433' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (21, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T16:57:46.717' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (22, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 8, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:16:12.193' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (23, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:20:42.623' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (24, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 9, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:26:59.977' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (25, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:30:44.523' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (26, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T11:01:24.970' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (27, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'Vikram@120', 8, NULL, N'5337XXXXXXXXXX40_17-03-2018.PDF', NULL, N'.PDF', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T13:05:09.640' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (28, N'virkam', N'vikramkumar5208@yahoo.com', N'987456', NULL, N'9874612185', 9, NULL, N'b997c7c4-4973-4c4b-a5e7-c132defe5df1Resume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T13:29:32.413' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (29, N'virkam', N'vikram@gmail.com', N'987456123', NULL, N'98746612', 6, NULL, N'851ff1e6-8ef0-469d-a0e0-e013714385b0angularjs_tutorial.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:33:13.840' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (30, N'virkam', N'satish@gmail.com', N'987456', NULL, N'9874612185', 11, NULL, N'17cd7b84-9dcb-44e4-bd9d-b6478b416777DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:40:58.257' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (31, N'virkam', N'satish@gmail.com', N'987456', NULL, N'9874612185', 11, NULL, N'5150961a-30a1-42d2-8313-18d831c162beDSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:41:29.450' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (32, N'virkam', N'satish@gmail.com', N'987456', NULL, N'9874612185', 11, NULL, N'72598977-5586-4406-b808-201a8cf14296DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:43:01.140' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (33, N'virkam', N'satish@gmail.com', N'987456', NULL, N'9874612185', 11, NULL, N'391b1272-aa59-4997-bf7d-54ab90fc2d79DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Male', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:44:31.147' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (34, N'virkam', N'satish@gmail.com', N'987456', NULL, N'9874612185', 11, NULL, N'dba65671-e827-47db-9d07-8f05afbcefe1DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'Female', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:45:32.750' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (35, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 8, NULL, N'0148e517-a16d-4e04-987f-e6b5921f3f7eDSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:00:14.403' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (36, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 9, NULL, N'cb392936-6e2d-4ded-98d7-b41eaac34c72Resume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:01:52.733' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (37, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 8, NULL, N'1be8ed0a-d60c-41b2-86eb-0254ace2fcfdResume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:02:50.097' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (38, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'9874612185', 4, NULL, N'e7e65038-1511-44e4-bcde-c56840d1959fDSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:48:59.597' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (39, N'virkam', N'Admin@gmail.com', N'Vikram@120', NULL, N'98746121', 4, NULL, N'a2b0a4b7-b15c-435c-99d8-e2b576138e00Resume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:51:11.477' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (40, N'virkam', N'vikram@gmail.com', N'987456', NULL, N'9874561212', 10, NULL, N'9a43f5ac-696b-4f0b-ae2a-9fdcdddec2c5Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T16:38:01.303' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (41, N'virkam', N'vikram@gmail.com', N'987456', NULL, N'9874561212', 10, NULL, N'd7bce17e-84a2-4ff8-a3a3-b68c943bc4b0Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T16:39:12.087' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (42, N'virkam', N'vikramkumar5208@yahoo.com', N'987456', NULL, N'9874612185', 10, NULL, N'8894ad40-b0b0-4ae5-bfff-157a373268a6Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T17:03:47.407' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (43, N'virkam', N'sdfsdfsdf@gmail.com', N'987456', NULL, N'987456', 11, NULL, N'a6bc3a66-837f-4e47-b73c-9c9ca9798eecDoc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T17:12:46.890' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [DateOfBirth], [Gender], [HomeTown], [PinCode], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (44, N'virkam', N'vikram@sfjsdhj.com', N'Vikram@120', NULL, N'9874612185', 9, NULL, N'a970f823-f4fc-4ee0-ae7c-24653689ede2Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2018-04-17T18:25:48.747' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
ALTER TABLE [dbo].[CountriesMaster] ADD  CONSTRAINT [DF_Countries_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DesigationMaster] ADD  CONSTRAINT [DF_DesigationMaster_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StatesMaster] ADD  CONSTRAINT [DF_States_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CityMaster]  WITH CHECK ADD  CONSTRAINT [FK_CityMaster_CityMaster] FOREIGN KEY([CityID])
REFERENCES [dbo].[CityMaster] ([CityID])
GO
ALTER TABLE [dbo].[CityMaster] CHECK CONSTRAINT [FK_CityMaster_CityMaster]
GO
ALTER TABLE [dbo].[StatesMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatesMaster_CountriesMaster] FOREIGN KEY([CountryID])
REFERENCES [dbo].[CountriesMaster] ([CountryID])
GO
ALTER TABLE [dbo].[StatesMaster] CHECK CONSTRAINT [FK_StatesMaster_CountriesMaster]
GO
ALTER TABLE [dbo].[UserEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserEducationDetails_UserMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserMaster] ([UserID])
GO
ALTER TABLE [dbo].[UserEducationDetails] CHECK CONSTRAINT [FK_UserEducationDetails_UserMaster]
GO
ALTER TABLE [dbo].[UserEmployementDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserEmployementDetails_UserMaster] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserMaster] ([UserID])
GO
ALTER TABLE [dbo].[UserEmployementDetails] CHECK CONSTRAINT [FK_UserEmployementDetails_UserMaster]
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoginCheck]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_LoginCheck] @Emaild varchar(200),@passWord varchar(50)
As
begin
declare @id int

select 
 'AuthTocken' = '',
                        A.Role ,
                       A.UserID,
                       A.FullName,
                       A.MobileNumber,
                       A.EmailID					  
					   ,A.password
 from UserMaster A  left join  UserEmployementDetails b on a.UserID=b.UserID left join UserPreEmployeementDetails c on A.UserID=c.UserID where Ltrim(A.EmailID)=Ltrim(@Emaild) and  Ltrim(A.Password)=Ltrim(@passWord) and A.Active=1

end





GO
/****** Object:  StoredProcedure [dbo].[usp_CompanyList]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_CompanyList]
as  begin
select  CompanyId,CompanyName,IsActive from [CompanyMaster] where isactive=1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_CountryList]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_CountryList]
as  begin
select  CountryID,CountryName from CountriesMaster where IsActive=1


end
GO
/****** Object:  StoredProcedure [dbo].[usp_DesignationList]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_DesignationList]
as  begin

select  DesignationID,DesignationName,IsActive from DesigationMaster where isactive=1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_otherMasterList]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_otherMasterList]
as  begin


select  MasterId as MasterID,Name,Code,MasterType,IsActive from othermasters where Isactive=1

end
GO
/****** Object:  StoredProcedure [dbo].[usp_StateList]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[usp_StateList]
as  begin
select  StateID,Statename,IsActive,CountryID from StatesMaster where IsActive=1 order by Statename


end
GO
/****** Object:  StoredProcedure [dbo].[usp_University_CollegeList]    Script Date: 17-04-2018 18:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[usp_University_CollegeList]
as  begin
select  ID,university_CollegeName,Type,IsActive from [University_CollegeMaster] where IsActive=1 order by university_CollegeName


end
GO
USE [master]
GO
ALTER DATABASE [RojgarMitra] SET  READ_WRITE 
GO
