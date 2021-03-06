USE [master]
GO
/****** Object:  Database [RojgarMitra]    Script Date: 25-04-2018 15:14:33 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25-04-2018 15:14:34 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[CityMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[CompanyMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[CountriesMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[DesigationMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[OtherMasters]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[StatesMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[Tokens]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[University_CollegeMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[UserEducationDetails]    Script Date: 25-04-2018 15:14:35 ******/
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
/****** Object:  Table [dbo].[UserEmployementDetails]    Script Date: 25-04-2018 15:14:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEmployementDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NULL,
	[CurrentDesignation] [int] NULL,
	[CurrentCompany] [int] NULL,
	[AnualSalaryType] [varchar](50) NULL,
	[AnnualSalaryInlakhs] [varchar](10) NULL,
	[AnnualSalaryInThousand] [int] NULL,
	[WorkingSinceYear] [int] NULL,
	[WotkingSinceMonth] [varchar](50) NULL,
	[WorkingTo] [varchar](50) NULL,
	[CurrentLocationID] [int] NULL,
	[CityName] [varchar](50) NULL,
	[OutSideIndia] [bit] NULL,
	[OutSideIndiaCountryID] [int] NULL,
	[OutSideIndiaCity] [varchar](50) NULL,
	[NoticePeriod] [int] NULL,
	[ServeNoticePeriod] [bit] NULL,
	[LastWorkingDay_Year] [int] NULL,
	[Last_Working_Month] [int] NULL,
	[Last_WorkingDate] [int] NULL,
	[NewOfferedSalaryIn] [varchar](50) NULL,
	[NewOfferedSalaryInLakh] [int] NULL,
	[NewOfferedSalaryInThousand] [int] NULL,
	[OfferedDesignation] [int] NULL,
	[NewCompany] [int] NULL,
	[Active] [bit] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ModifiedDate] [date] NULL,
	[PassingYear] [int] NULL,
 CONSTRAINT [PK_UserEmployementDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 25-04-2018 15:14:35 ******/
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
	[ResumeTitle] [varchar](500) NULL,
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
	[Gender] [varchar](10) NULL,
	[HomeTown] [varchar](50) NULL,
	[PinCode] [int] NULL,
	[DobYear] [int] NULL,
	[DobMonth] [int] NULL,
	[DobDay] [int] NULL,
	[MailingAddress] [varchar](100) NULL,
	[DiffAbled] [varchar](5) NULL,
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
/****** Object:  Table [dbo].[UserPreEmployeementDetails]    Script Date: 25-04-2018 15:14:36 ******/
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
/****** Object:  Table [dbo].[UserSkillsDetails]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkillsDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Skills] [varchar](50) NULL,
	[Version] [decimal](18, 0) NULL,
	[LastUsedYear] [int] NULL,
	[Experience] [int] NULL,
	[Active] [bit] NOT NULL,
	[createdDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserSkillsDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserWokingHistory]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWokingHistory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[DesignationId] [bigint] NULL,
	[CompanyID] [bigint] NULL,
	[WokingSinceYear] [int] NULL,
	[workingSinceMonth] [int] NULL,
	[WorkingSinceTo] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserWokingHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
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
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (449, N'1 Year', N'1 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (450, N'2 Year', N'2 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (451, N'3 Year', N'2 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (452, N'4 Year', N'4 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (453, N'5 Year', N'5 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (454, N'6 Year', N'6 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (455, N'7 Year', N'7 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (456, N'8 Year', N'8 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (457, N'9 Year', N'9 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (458, N'10 Year', N'10 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (459, N'11 Year', N'11 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (460, N'12 Year', N'12 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (461, N'13 Year', N'13 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (462, N'14 Year', N'14 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (463, N'15 Year', N'15 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (464, N'16 Year', N'16 Year', N'EXPERINCE', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (465, N'Jan', N'Jan', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (466, N'Feb', N'Feb', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (467, N'March', N'March', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (469, N'April', N'April', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (470, N'May', N'May', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (471, N'June', N'June', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (472, N'July', N'July', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (473, N'August', N'August', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (474, N'Sepetmber', N'Sepetmber', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (475, N'October', N'October', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (476, N'November', N'November', N'MONTH', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (477, N'December', N'December', N'MONTH', 1)
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
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (489, N'Ceramic & Glass Drsign', N'2', N'SPECIALIZATION', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (491, N'Single', N'1', N'MARITALSTATUS', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (492, N'Married', N'2', N'MARITALSTATUS', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (493, N'Widowed', N'3', N'MARITALSTATUS', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (494, N'Divorced', N'4', N'MARITALSTATUS', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (495, N'Separated', N'5', N'MARITALSTATUS', 1)
INSERT [dbo].[OtherMasters] ([MasterID], [Name], [CODE], [MasterType], [IsActive]) VALUES (496, N'Unspecified', N'6', N'MARITALSTATUS', 1)
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
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (11, 2, N'9b76f1b6-08da-42db-9311-9fed8d2c2ba5', CAST(N'2018-04-18T13:17:01.303' AS DateTime), CAST(N'2018-04-19T13:17:01.303' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (12, 2, N'4a88c2e0-529b-4a09-9256-995a5cdadb02', CAST(N'2018-04-18T15:25:17.600' AS DateTime), CAST(N'2018-04-19T15:25:17.600' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (13, 2, N'e1612ee8-e852-4d6d-8c8e-70dc1a9f3bed', CAST(N'2018-04-18T15:59:31.417' AS DateTime), CAST(N'2018-04-19T15:59:31.417' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (14, 2, N'9c76cf67-2cf9-4c9e-9bde-0510b517177c', CAST(N'2018-04-19T15:54:24.760' AS DateTime), CAST(N'2018-04-20T15:54:24.760' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (15, 2, N'4128c18b-60e5-42fe-b71a-4ccc5d15ba29', CAST(N'2018-04-19T15:56:54.297' AS DateTime), CAST(N'2018-04-20T15:56:54.297' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (16, 2, N'ac6b16d5-c21e-457c-a47b-3275580fee55', CAST(N'2018-04-19T16:00:31.960' AS DateTime), CAST(N'2018-04-20T16:00:31.960' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (17, 2, N'fe917d59-eae1-4960-90e9-cbe7678e5804', CAST(N'2018-04-19T16:14:34.427' AS DateTime), CAST(N'2018-04-20T16:14:34.427' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (18, 2, N'58c48996-6d9a-46ff-8c15-fc4cdc7d9e04', CAST(N'2018-04-19T17:06:58.370' AS DateTime), CAST(N'2018-04-20T17:06:58.370' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (19, 2, N'30970d28-a663-4cf4-abfe-2fc20a6545c4', CAST(N'2018-04-19T17:10:17.977' AS DateTime), CAST(N'2018-04-20T17:10:17.977' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (20, 2, N'2c8c0028-2b80-481b-a854-473635b12ab9', CAST(N'2018-04-19T17:42:16.513' AS DateTime), CAST(N'2018-04-20T17:42:16.513' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (21, 50, N'1792f647-d6eb-4b9e-a3f5-691362db3b80', CAST(N'2018-04-20T13:15:05.523' AS DateTime), CAST(N'2018-04-21T13:15:05.523' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (22, 50, N'33881989-5a88-4230-b49d-e12e99971b87', CAST(N'2018-04-20T14:23:08.697' AS DateTime), CAST(N'2018-04-21T14:23:08.697' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (23, 50, N'71dc017d-d97e-496d-91ee-97970455f8f0', CAST(N'2018-04-20T14:38:08.087' AS DateTime), CAST(N'2018-04-21T14:38:08.087' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (24, 50, N'e1a1b5cf-d5b4-49ea-a315-d167dd548772', CAST(N'2018-04-20T14:50:37.850' AS DateTime), CAST(N'2018-04-21T14:50:37.850' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (25, 50, N'b8e07143-621e-4252-8e8b-8f7a185cf13d', CAST(N'2018-04-20T18:49:46.937' AS DateTime), CAST(N'2018-04-21T18:49:46.937' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (26, 50, N'ed37b52f-69c8-454c-82ab-ffc4e0757e72', CAST(N'2018-04-21T10:44:16.410' AS DateTime), CAST(N'2018-04-22T10:44:16.410' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (27, 50, N'2dc8058b-be24-4873-bc64-483cbbbce247', CAST(N'2018-04-21T12:11:03.247' AS DateTime), CAST(N'2018-04-22T12:11:03.247' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (28, 50, N'934a3771-40f2-4135-b6c3-21de4128459c', CAST(N'2018-04-21T12:21:13.553' AS DateTime), CAST(N'2018-04-22T12:21:13.553' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (29, 50, N'10f9f0e7-9252-48ef-9aa9-923a6cd8ddb2', CAST(N'2018-04-21T12:37:29.390' AS DateTime), CAST(N'2018-04-22T12:37:29.390' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (30, 50, N'f306243c-2c9d-4dda-a7e1-feb57c9c2763', CAST(N'2018-04-21T03:09:33.010' AS DateTime), CAST(N'2018-04-22T03:09:33.010' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (31, 50, N'96d280a4-c415-4d25-a9d0-6af008440534', CAST(N'2018-04-21T03:18:21.093' AS DateTime), CAST(N'2018-04-22T03:18:21.093' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (32, 50, N'e62d502e-5f12-4a26-8957-4e613dfa6d3d', CAST(N'2018-04-21T03:37:15.610' AS DateTime), CAST(N'2018-04-22T03:37:15.610' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (33, 50, N'0b63fbdc-d32d-41e2-8a75-202a0c26e6b1', CAST(N'2018-04-21T04:02:10.100' AS DateTime), CAST(N'2018-04-22T04:02:10.100' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (34, 50, N'fd3b7d48-2e6a-4da4-95c0-82d450f23209', CAST(N'2018-04-21T04:26:07.087' AS DateTime), CAST(N'2018-04-22T04:26:07.087' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (35, 50, N'f434a3c4-58b6-4859-bc18-f27852b9ac5e', CAST(N'2018-04-21T04:29:27.263' AS DateTime), CAST(N'2018-04-22T04:29:27.263' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (36, 50, N'd4ae9c2f-8b9b-4621-9c20-f0e60250540d', CAST(N'2018-04-21T04:50:42.160' AS DateTime), CAST(N'2018-04-22T04:50:42.160' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (37, 50, N'3a6a53ec-5486-45fd-80e7-03ef427ef551', CAST(N'2018-04-21T05:09:04.847' AS DateTime), CAST(N'2018-04-22T05:09:04.847' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (38, 50, N'c4277a2b-5219-42e3-9048-92dbb012690a', CAST(N'2018-04-21T05:27:42.160' AS DateTime), CAST(N'2018-04-22T05:27:42.160' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (39, 50, N'5b3ff204-7119-4181-9459-34b93c5d0a0a', CAST(N'2018-04-21T05:28:07.520' AS DateTime), CAST(N'2018-04-22T05:28:07.520' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (40, 50, N'aa83ae77-cf50-4ce1-b9fa-c5dffd3c2988', CAST(N'2018-04-23T10:51:57.630' AS DateTime), CAST(N'2018-04-24T10:51:57.630' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (41, 50, N'568207d0-5528-4048-b195-23e66cf43df4', CAST(N'2018-04-23T10:55:45.130' AS DateTime), CAST(N'2018-04-24T10:55:45.130' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (42, 50, N'68485519-e557-4e72-a0fe-bf25373f12a0', CAST(N'2018-04-23T18:16:24.657' AS DateTime), CAST(N'2018-04-24T18:16:24.657' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (43, 50, N'b74c43b8-d07b-4e76-abf7-ccb12ffd8b33', CAST(N'2018-04-23T18:25:02.153' AS DateTime), CAST(N'2018-04-24T18:25:02.153' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (44, 50, N'08ed11ab-8a4d-41e5-9829-54bf2ddace79', CAST(N'2018-04-23T18:42:11.120' AS DateTime), CAST(N'2018-04-24T18:42:11.120' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (45, 50, N'46c77428-e396-488e-831b-1104b43e61b2', CAST(N'2018-04-24T14:29:57.250' AS DateTime), CAST(N'2018-04-25T14:29:57.250' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (46, 50, N'90dcd0bb-9de3-49d8-958d-41a2e1275753', CAST(N'2018-04-24T14:31:25.390' AS DateTime), CAST(N'2018-04-25T14:31:25.390' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (47, 50, N'2ba0394a-1350-4dd4-a649-a1dc05812315', CAST(N'2018-04-24T14:34:09.037' AS DateTime), CAST(N'2018-04-25T14:34:09.037' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (48, 50, N'45f67462-217a-400a-8bca-882848632226', CAST(N'2018-04-24T14:49:56.180' AS DateTime), CAST(N'2018-04-25T14:49:56.180' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (49, 50, N'e86faf51-d6b3-4dbf-9728-1dbaf5e8952b', CAST(N'2018-04-24T14:53:22.573' AS DateTime), CAST(N'2018-04-25T14:53:22.573' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (50, 50, N'2875bf57-2a9c-47f2-a6bb-81bb11baf12a', CAST(N'2018-04-24T14:54:04.390' AS DateTime), CAST(N'2018-04-25T14:54:04.390' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (51, 50, N'9133e412-1b6c-4055-8180-1894d76027c0', CAST(N'2018-04-24T15:40:14.547' AS DateTime), CAST(N'2018-04-25T15:40:14.547' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (52, 50, N'f35566ab-acee-4efb-9573-4c058f9ab3cb', CAST(N'2018-04-24T16:43:10.157' AS DateTime), CAST(N'2018-04-25T16:43:10.157' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (53, 50, N'9d47ea91-a2b7-4e6f-8a1f-fb6ed0d1b77e', CAST(N'2018-04-24T17:20:01.877' AS DateTime), CAST(N'2018-04-25T17:20:01.877' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (54, 50, N'a5fb7fcd-5eb0-445c-ba83-1f01bcb2b74c', CAST(N'2018-04-24T17:24:12.587' AS DateTime), CAST(N'2018-04-25T17:24:12.587' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (55, 50, N'483123b0-5009-42c5-b998-cc1cfa3bcef7', CAST(N'2018-04-24T17:54:51.720' AS DateTime), CAST(N'2018-04-25T17:54:51.720' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (56, 50, N'0a919461-81f2-4094-bb6d-e0ff259f4246', CAST(N'2018-04-24T18:04:42.303' AS DateTime), CAST(N'2018-04-25T18:04:42.303' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (57, 50, N'f8e38ad0-073f-40b7-9238-2cb43073adda', CAST(N'2018-04-24T18:36:36.037' AS DateTime), CAST(N'2018-04-25T18:36:36.037' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (58, 50, N'3ea53c99-b5f5-40cd-9a1e-789f33b7138a', CAST(N'2018-04-24T18:37:43.683' AS DateTime), CAST(N'2018-04-25T18:37:43.683' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (59, 50, N'ddf7bd3a-ca26-469c-8f22-d510b71e7d6f', CAST(N'2018-04-24T18:58:03.337' AS DateTime), CAST(N'2018-04-25T18:58:03.337' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (60, 50, N'fe698abc-5e75-48d8-beea-23c43ae0242f', CAST(N'2018-04-24T19:00:41.740' AS DateTime), CAST(N'2018-04-25T19:00:41.740' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (61, 50, N'831c9a2e-296a-47f7-805f-486b35a8ba1a', CAST(N'2018-04-25T10:30:13.107' AS DateTime), CAST(N'2018-04-26T10:30:13.107' AS DateTime))
INSERT [dbo].[Tokens] ([TokenID], [UserID], [AuthToken], [IssuedOn], [ExpiresOn]) VALUES (62, 50, N'6e5ce2b9-9451-4fbd-a525-618fb8d065ba', CAST(N'2018-04-25T11:00:30.577' AS DateTime), CAST(N'2018-04-26T11:00:30.577' AS DateTime))
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
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (9, 45, NULL, N'd97bb919-acd1-4c4a-b24a-81013a56ea40DatabaseSchema.png', N'werwerwer', 3, 2, 1, 100, N'Full Time', 2022, 1, CAST(N'2018-04-18T12:25:14.700' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (10, 49, NULL, N'77ec1ff0-fec9-45eb-87e2-5d7e110683fcnreprojectprocess.png', N'sdfsdfsdf', 4, 2, 1, 100, N'Full Time', 1950, 1, CAST(N'2018-04-18T15:31:34.207' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (11, 50, NULL, N'b2a3f7fd-aad9-4bf2-ae7b-04919b1779e31.png', N'asdasdasdasdsa', 478, 484, 487, 0, N'Full Time', 1940, 1, CAST(N'2018-04-20T11:08:00.240' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (12, 2, NULL, NULL, NULL, 4, 2, 1, 100, N'Full Time', 2023, 1, CAST(N'2018-04-20T18:15:31.703' AS DateTime))
INSERT [dbo].[UserEducationDetails] ([ID], [UserId], [Extension], [ProfileImage], [ProfessionalExperience], [HighestQualification], [Course], [Specialization], [University_College], [CourseType], [PassingYear], [IsActive], [createdDate]) VALUES (13, 52, NULL, N'5c65ea45-1d0b-476a-9765-95b6258df406DatabaseSchema.png', N'i am a develoepr.', 479, 485, 489, 100, N'Full Time', 2021, 1, CAST(N'2018-04-21T13:09:00.967' AS DateTime))
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
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (17, 45, 104, 100, NULL, N'11 Lakh', NULL, 1977, N'10', NULL, 168, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-18' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (18, 47, 104, 100, NULL, N'9 Lakh', NULL, 1979, N'11', NULL, 155, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-18' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (19, 49, 104, 100, NULL, N'10 Lakh', NULL, 1972, N'2', NULL, 150, NULL, 0, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-18' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (20, 2, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-19' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (21, 50, 105, 100, NULL, N'211', 308, 408, N'474', NULL, 172, NULL, 0, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-20' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (22, 51, 105, 100, NULL, N'212', 313, 406, N'476', NULL, 147, NULL, 0, NULL, NULL, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-21' AS Date), NULL, NULL)
INSERT [dbo].[UserEmployementDetails] ([ID], [UserID], [CurrentDesignation], [CurrentCompany], [AnualSalaryType], [AnnualSalaryInlakhs], [AnnualSalaryInThousand], [WorkingSinceYear], [WotkingSinceMonth], [WorkingTo], [CurrentLocationID], [CityName], [OutSideIndia], [OutSideIndiaCountryID], [OutSideIndiaCity], [NoticePeriod], [ServeNoticePeriod], [LastWorkingDay_Year], [Last_Working_Month], [Last_WorkingDate], [NewOfferedSalaryIn], [NewOfferedSalaryInLakh], [NewOfferedSalaryInThousand], [OfferedDesignation], [NewCompany], [Active], [CreatedDate], [ModifiedDate], [PassingYear]) VALUES (23, 52, 105, 100, NULL, N'209', 310, 407, N'469', NULL, 167, NULL, 0, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2018-04-21' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserEmployementDetails] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (2, N'shusheel', N'Admin@gmail.com', N'123456                                            ', N'91', N'9971080414', 5, 5, N'sdfsdfsdfsdfdsfsdfdsf', N'7AA51E83-2816-49BD-BC1C-1243D9AEB588,5337XXXXXXXXXX40_17-03-2018.PDF', NULL, NULL, NULL, NULL, NULL, NULL, N'Admin', NULL, NULL, N'MALE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-10-04T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (3, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T13:26:19.553' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (4, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T13:32:54.830' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (5, N'virkam', N'kuamr@gmal.com', N'789454                                            ', NULL, N'9874612185', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T15:10:51.927' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (6, N'virkam', N'kuamr@gmal.com', N'789454                                            ', NULL, N'9874612185', 6, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T15:41:37.913' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (7, N'virkam', N'Admin@gmail.com', N'789454                                            ', NULL, N'98746121', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:02:56.950' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (8, N'virkam', N'kuamr@gmal.com', N'123456                                            ', NULL, N'9874612185', 7, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:22:50.520' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (9, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:28:21.023' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (10, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T16:30:20.823' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (11, N'virkam', N'kuamr@gmal.com', N'123456                                            ', NULL, N'9874612185', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-13T17:21:28.027' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (12, N'virkam', N'kuamr@gmal.com', N'123456                                            ', NULL, N'98746121', 5, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T11:07:39.387' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (13, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 8, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T11:34:29.320' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (14, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 7, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T11:46:30.503' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (15, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'98746121', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T12:22:15.927' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (16, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'98746121', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T12:29:09.913' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (17, N'virkam', N'Admin@gmail.com', N'1234567                                           ', NULL, N'9874612185', 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T12:34:37.133' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (18, N'virkam', N'kuamr@gmal.com', N'1234567                                           ', NULL, N'9874612185', 7, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T15:59:07.413' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (19, N'virkam', N'Admin@gmail.com', N'1234567                                           ', NULL, N'9874612185', 7, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T16:16:45.240' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (20, N'virkam', N'vikram@gmail.com', N'123456                                            ', NULL, N'9874612185', 3, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T16:45:57.433' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (21, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 3, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T16:57:46.717' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (22, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 8, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:16:12.193' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (23, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 3, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:20:42.623' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (24, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 9, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:26:59.977' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (25, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 3, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-16T17:30:44.523' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (26, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T11:01:24.970' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (27, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'Vikram@120', 8, NULL, NULL, N'5337XXXXXXXXXX40_17-03-2018.PDF', NULL, N'.PDF', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T13:05:09.640' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (28, N'virkam', N'vikramkumar5208@yahoo.com', N'987456                                            ', NULL, N'9874612185', 9, NULL, NULL, N'b997c7c4-4973-4c4b-a5e7-c132defe5df1Resume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T13:29:32.413' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (29, N'virkam', N'vikram@gmail.com', N'987456123                                         ', NULL, N'98746612', 6, NULL, NULL, N'851ff1e6-8ef0-469d-a0e0-e013714385b0angularjs_tutorial.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:33:13.840' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (30, N'virkam', N'satish@gmail.com', N'987456                                            ', NULL, N'9874612185', 11, NULL, NULL, N'17cd7b84-9dcb-44e4-bd9d-b6478b416777DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:40:58.257' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (31, N'virkam', N'satish@gmail.com', N'987456                                            ', NULL, N'9874612185', 11, NULL, NULL, N'5150961a-30a1-42d2-8313-18d831c162beDSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:41:29.450' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (32, N'virkam', N'satish@gmail.com', N'987456                                            ', NULL, N'9874612185', 11, NULL, NULL, N'72598977-5586-4406-b808-201a8cf14296DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:43:01.140' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (33, N'virkam', N'satish@gmail.com', N'987456                                            ', NULL, N'9874612185', 11, NULL, NULL, N'391b1272-aa59-4997-bf7d-54ab90fc2d79DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:44:31.147' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (34, N'virkam', N'satish@gmail.com', N'987456                                            ', NULL, N'9874612185', 11, NULL, NULL, N'dba65671-e827-47db-9d07-8f05afbcefe1DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T14:45:32.750' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (35, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 8, NULL, NULL, N'0148e517-a16d-4e04-987f-e6b5921f3f7eDSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:00:14.403' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (36, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 9, NULL, NULL, N'cb392936-6e2d-4ded-98d7-b41eaac34c72Resume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:01:52.733' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (37, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 8, NULL, NULL, N'1be8ed0a-d60c-41b2-86eb-0254ace2fcfdResume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:02:50.097' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (38, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'9874612185', 4, NULL, NULL, N'e7e65038-1511-44e4-bcde-c56840d1959fDSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:48:59.597' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (39, N'virkam', N'Admin@gmail.com', N'Vikram@120                                        ', NULL, N'98746121', 4, NULL, NULL, N'a2b0a4b7-b15c-435c-99d8-e2b576138e00Resume.doc', NULL, N'.doc', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T15:51:11.477' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (40, N'virkam', N'vikram@gmail.com', N'987456                                            ', NULL, N'9874561212', 10, NULL, NULL, N'9a43f5ac-696b-4f0b-ae2a-9fdcdddec2c5Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T16:38:01.303' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (41, N'virkam', N'vikram@gmail.com', N'987456                                            ', NULL, N'9874561212', 10, NULL, NULL, N'd7bce17e-84a2-4ff8-a3a3-b68c943bc4b0Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T16:39:12.087' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (42, N'virkam', N'vikramkumar5208@yahoo.com', N'987456                                            ', NULL, N'9874612185', 10, NULL, NULL, N'8894ad40-b0b0-4ae5-bfff-157a373268a6Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T17:03:47.407' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (43, N'virkam', N'sdfsdfsdf@gmail.com', N'987456                                            ', NULL, N'987456', 11, NULL, NULL, N'a6bc3a66-837f-4e47-b73c-9c9ca9798eecDoc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T17:12:46.890' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (44, N'virkam', N'vikram@sfjsdhj.com', N'Vikram@120                                        ', NULL, N'9874612185', 9, NULL, NULL, N'a970f823-f4fc-4ee0-ae7c-24653689ede2Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-17T18:25:48.747' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (45, N'virkam', N'admin', N'78945454                                          ', NULL, N'9845454545', 9, NULL, NULL, N'9b6b1cd0-cc9d-44f8-b02c-0029375b6aa7Doc1.docx', NULL, N'.docx', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-18T12:24:02.867' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (46, N'sfsdfsd', N'sdfsdfsdfds', N'sdfsdfsdf                                         ', NULL, N'9854545445', 7, NULL, NULL, N'7dda0be1-4fd8-4217-be45-6beb4daafb57', NULL, NULL, NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-18T12:37:44.420' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (47, N'sasdasds', N'sdasda@yahoo.com', N'987456                                            ', NULL, N'9875445454', 2, NULL, NULL, N'fe434af9-057d-4662-833d-9610eb40bf05DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-18T14:57:42.917' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (48, N'shuseel', N'shusheel@gmail.com', N'123456                                            ', NULL, N'9874561212', 11, NULL, NULL, N'c09a7025-6aa3-4530-8e0e-3b04205c6482DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-18T15:26:33.910' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (49, N'shuseel', N'shusheel@gmail.com', N'123456                                            ', NULL, N'9874561212', 11, NULL, NULL, N'7bcc65ce-8471-4990-a38a-1363a8b955e9DSA880299350.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-18T15:27:26.697' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (50, N'vikram kumar patel', N'shusheel12@gmail.com', N'123456                                            ', NULL, N'9971080414', 457, NULL, N'UI Designer, UI Develper, Experience 10+ years, HTML5, CSS3, Photoshop, Web Designer, Flash, Dreamweaver, Illustrator, WordPress, Magento, Bootstrap', N'451ABC14-9796-44AF-AD25-237B4D647F89,314C24B6-5B22-430C-B1E1-41F9172CBE97,85C4112F-31E9-4F14-AE11-63', NULL, N'.pdf', N'167', NULL, NULL, NULL, N'User', NULL, NULL, N'Male', NULL, NULL, 409, 475, 12, N'', N'Yes', 494, NULL, CAST(N'2018-04-20T11:07:05.150' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (51, N'vikram kumar', N'vikram1@gmail.com', N'123                                               ', NULL, N'5545454545', 459, NULL, NULL, N'a1faa908-350a-4619-bcbc-ac2dee4e222e,angularjs_tutorial.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-21T12:40:51.857' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (52, N'janesh kuamr', N'janesh@gmail.com', N'123                                               ', NULL, N'987456126', 451, NULL, NULL, N'db039009-2e7c-4f0e-8ca5-760c45a83dd3,angularjs_tutorial.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-21T13:05:13.500' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (53, N'sfisdufhsud', N'qdifhjdhfhd@gmail.com', N'123456                                            ', NULL, N'987456123', 453, NULL, NULL, N'f0dde1c1-d0cd-419d-bc94-cd73e4bcb0f7,printTicket.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T11:55:23.873' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (54, N'asdjksjfkdjsk', N'ksdjkfjdskfjk@gmail.com', N'MTIzNDU2', NULL, N'9718545454', 459, NULL, NULL, N'93fbfcb2-ad59-40a3-a269-ac1b142d5b6c,printTicket.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T12:34:40.960' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (55, N'vikram', N'vik@gmail.com', N'svkLRj9nYEgZo7gWDJD5IQ==', NULL, N'9874561545', 460, NULL, NULL, N'c8f80818-e528-46d2-9448-929416c3d6cc,printTicket.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T12:52:09.703' AS DateTime), NULL, 1)
INSERT [dbo].[UserMaster] ([UserID], [FullName], [EmailID], [Password], [StdCode], [MobileNumber], [TotalExYear], [ToalExMonth], [ResumeTitle], [Resume], [ProfileImage], [Extension], [CurrentLocation], [LandLineNumber1], [LandLineNumer2], [MobileNumber2], [Role], [Prefereedocation], [PermanentAddress], [Gender], [HomeTown], [PinCode], [DobYear], [DobMonth], [DobDay], [MailingAddress], [DiffAbled], [MartialStatus], [KeySkills], [CreatedDate], [ModifiedDate], [Active]) VALUES (56, N'virkam', N'vikram123@gmail.com', N'MTIzNDU2', NULL, N'987456321', 462, NULL, NULL, N'8a8dccd6-252d-4cf6-af70-aa11edc3a01a,printTicket.pdf', NULL, N'.pdf', NULL, NULL, NULL, NULL, N'User', NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T13:16:48.520' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
SET IDENTITY_INSERT [dbo].[UserSkillsDetails] ON 

INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (1, 50, N'c', CAST(4 AS Decimal(18, 0)), 2008, 464, 1, CAST(N'2018-04-23T18:42:56.967' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (2, 50, N'c#', CAST(4 AS Decimal(18, 0)), 2008, 464, 1, CAST(N'2018-04-23T18:46:08.190' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (3, 50, N'Asp.net', CAST(5 AS Decimal(18, 0)), 1959, 464, 1, CAST(N'2018-04-23T18:54:31.200' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (4, 50, N'mvc', CAST(5 AS Decimal(18, 0)), 2000, 453, 1, CAST(N'2018-04-23T18:57:45.620' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (5, 50, N'mvc1', CAST(5 AS Decimal(18, 0)), 2000, 453, 1, CAST(N'2018-04-23T18:58:02.047' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (6, 50, N'mvc2', CAST(5 AS Decimal(18, 0)), 2000, 453, 1, CAST(N'2018-04-23T18:59:07.357' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (7, 50, N'mvc6', CAST(4 AS Decimal(18, 0)), 1950, 462, 1, CAST(N'2018-04-24T11:30:14.300' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (8, 50, N'mvc7', CAST(4 AS Decimal(18, 0)), 2008, 453, 1, CAST(N'2018-04-24T11:32:19.750' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (9, 50, N'mvc8', CAST(6 AS Decimal(18, 0)), 2008, 456, 1, CAST(N'2018-04-24T11:33:34.230' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (10, 50, N'mvc10', CAST(6 AS Decimal(18, 0)), 2008, 453, 1, CAST(N'2018-04-24T11:40:46.333' AS DateTime))
INSERT [dbo].[UserSkillsDetails] ([ID], [UserID], [Skills], [Version], [LastUsedYear], [Experience], [Active], [createdDate]) VALUES (11, 50, N'mvc11', CAST(6 AS Decimal(18, 0)), 2008, 453, 1, CAST(N'2018-04-24T11:46:33.873' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserSkillsDetails] OFF
SET IDENTITY_INSERT [dbo].[UserWokingHistory] ON 

INSERT [dbo].[UserWokingHistory] ([ID], [UserId], [DesignationId], [CompanyID], [WokingSinceYear], [workingSinceMonth], [WorkingSinceTo], [IsActive], [CreatedDate]) VALUES (1, 50, 104, 100, 402, 475, 404, 1, CAST(N'2018-04-24T15:26:41.360' AS DateTime))
INSERT [dbo].[UserWokingHistory] ([ID], [UserId], [DesignationId], [CompanyID], [WokingSinceYear], [workingSinceMonth], [WorkingSinceTo], [IsActive], [CreatedDate]) VALUES (2, 50, 105, 100, 414, 477, 414, 1, CAST(N'2018-04-24T15:31:29.587' AS DateTime))
INSERT [dbo].[UserWokingHistory] ([ID], [UserId], [DesignationId], [CompanyID], [WokingSinceYear], [workingSinceMonth], [WorkingSinceTo], [IsActive], [CreatedDate]) VALUES (3, 50, 104, 0, 408, 474, 408, 1, CAST(N'2018-04-24T15:31:57.110' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserWokingHistory] OFF
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
ALTER TABLE [dbo].[UserSkillsDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserSkillsDetails_UserMaster] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserMaster] ([UserID])
GO
ALTER TABLE [dbo].[UserSkillsDetails] CHECK CONSTRAINT [FK_UserSkillsDetails_UserMaster]
GO
ALTER TABLE [dbo].[UserWokingHistory]  WITH CHECK ADD  CONSTRAINT [FK_UserWokingHistory_UserMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserMaster] ([UserID])
GO
ALTER TABLE [dbo].[UserWokingHistory] CHECK CONSTRAINT [FK_UserWokingHistory_UserMaster]
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoginCheck]    Script Date: 25-04-2018 15:14:36 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_CompanyList]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_CompanyList]
as  begin
select  CompanyId,CompanyName,IsActive from [CompanyMaster] where isactive=1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_CountryList]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_CountryList]
as  begin
select  CountryID,CountryName from CountriesMaster where IsActive=1


end
GO
/****** Object:  StoredProcedure [dbo].[usp_DesignationList]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_DesignationList]
as  begin

select  DesignationID,DesignationName,IsActive from DesigationMaster where isactive=1
end
GO
/****** Object:  StoredProcedure [dbo].[usp_otherMasterList]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_otherMasterList]
as  begin


select  MasterId as MasterID,Name,Code,MasterType,IsActive from othermasters where Isactive=1

end
GO
/****** Object:  StoredProcedure [dbo].[usp_StateList]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[usp_StateList]
as  begin
select  StateID,Statename,IsActive,CountryID from StatesMaster where IsActive=1 order by Statename


end
GO
/****** Object:  StoredProcedure [dbo].[usp_University_CollegeList]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[usp_University_CollegeList]
as  begin
select  ID,university_CollegeName,Type,IsActive from [University_CollegeMaster] where IsActive=1 order by university_CollegeName


end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateBasicInfo]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UpdateBasicInfo](@userid bigint,@FullName varchar(500),@EmailID varchar(500),@MobileNumber varchar(500))
as
 BEGIN TRY
declare @NewResumeid varchar(100)=null;
Declare  @response table (Id bigint,Message varchar(100),FileName varchar(500),Status bit)
begin
 if exists(select * from UserMaster where UserID=@userid)
begin
    update UserMaster set FullName=@FullName,EmailID=@EmailID,MobileNumber=@MobileNumber where UserID=@userid
	insert into @response(Id,Message,FileName,Status) values(@userid,'Your Profile has been successfully updated',@NewResumeid,1)
end
else
begin
      insert into @response(Id,Message, FileName,Status) values(1,'Record Not found This ID','',0)
end
 end 
 select * from @response
 return
END TRY
BEGIN CATCH

insert into @response(Id,Message,Status) values(@userid,CONCAT(cast(ERROR_NUMBER() as varchar(max)),',',Cast(ERROR_SEVERITY() as  varchar(max)),cast(ERROR_STATE() as varchar(max)),cast(ERROR_PROCEDURE() as varchar(max)), CAST(ERROR_LINE() as varchar(max)),cast(ERROR_MESSAGE() as varchar(max))),0)
select * from @response
return
	 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateOtherInfo]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[Usp_UpdateOtherInfo](@userid bigint,@Dobyear int,@DobMonth int,@Dobday int,@Gender varchar(10)=Null,@MaritalStatus int,@MailingAddress varchar(100)=null,@CityID int,@DifferAbled varchar(10)=Null)
as
 BEGIN TRY

Declare  @response table (Id bigint,Message varchar(100),FileName varchar(500),Status bit)
begin
 if exists(select * from UserMaster where UserID=@userid)
begin
    update UserMaster set DobYear=@DobYear,DobMonth=@DobMonth,DobDay=@Dobday,Gender=@Gender,
	MartialStatus=@MaritalStatus,CurrentLocation=@CityID,DiffAbled=@DifferAbled,MailingAddress=@MailingAddress where UserID=@userid
	insert into @response(Id,Message,Status) values(@userid,'Your Profile has been successfully updated',1)
end
else
begin
      insert into @response(Id,Message, FileName,Status) values(1,'Record Not found This ID','',0)
end
 end 
 select * from @response
 return
END TRY
BEGIN CATCH

insert into @response(Id,Message,Status) values(@userid,CONCAT(cast(ERROR_NUMBER() as varchar(max)),',',Cast(ERROR_SEVERITY() as  varchar(max)),cast(ERROR_STATE() as varchar(max)),cast(ERROR_PROCEDURE() as varchar(max)), CAST(ERROR_LINE() as varchar(max)),cast(ERROR_MESSAGE() as varchar(max))),0)
select * from @response
return
	 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdatePersonalSkills]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[Usp_UpdatePersonalSkills](@userid bigint,@Skills varchar(500)=null,@Version decimal,@LastUsedYear int,@Experience int )
as
 BEGIN TRY
Declare  @response table (Id bigint,Message varchar(100),FileName varchar(500),Status bit)
begin
 if exists(select * from UserMaster where UserID=@userid)
begin
if Not exists(select * from UserSkillsDetails where UserID=@userid and Skills=TRIM(@Skills))
begin
insert into UserSkillsDetails(UserID,Skills,Version,LastUsedYear,Experience,Active,createdDate)
values(@userid,@Skills,@Version,@LastUsedYear,@Experience,1,GETDATE())
 insert into @response(Id,Message,FileName,Status) values(@userid,'Your Profile has been successfully updated','',1)
end
else
begin
insert into @response(Id,Message,FileName,Status) values(@userid,'This skills already exist','',1)
end
end
else
begin
insert into @response(Id,Message,FileName,Status) values(@userid,'record not foud this id','',1)
end
end
select * from @response
return 

 --select A.ID,a.UserID,a.LastUsedYear,a.Skills,a.Version,B.Name as ExperienceName from UserSkillsDetails A inner join OtherMasters  b on A.Experience=b.MasterID where UserID=@userid and a.Active=1
 --return
END TRY
BEGIN CATCH
insert into @response(Id,Message,Status) values(@userid,CONCAT(cast(ERROR_NUMBER() as varchar(max)),',',Cast(ERROR_SEVERITY() as  varchar(max)),cast(ERROR_STATE() as varchar(max)),cast(ERROR_PROCEDURE() as varchar(max)), CAST(ERROR_LINE() as varchar(max)),cast(ERROR_MESSAGE() as varchar(max))),0)
select * from @response


	 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateuserProfile]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UpdateuserProfile](@userid bigint,@FullName varchar(50)=NULL,@Designationid int,@ResumeTitle varchar(500)=NULL,@ResumeName varchar(500)=NULL)
as
 begin
declare @NewResumeid varchar(100)=null;
Declare  @response table (Id bigint,Message varchar(100),FileName varchar(500),Status bit)
set @NewResumeid=CONCAT(cast(NEWID() as varchar(50)),',',@ResumeName)
 
if exists(select * from UserMaster where UserID=@userid)
begin
    update UserMaster set FullName=@FullName,Resume=@NewResumeid,ResumeTitle=@ResumeTitle where UserID=@userid
	insert into @response(Id,Message,FileName,Status) values(@userid,'Your Profile has been successfully updated',@NewResumeid,1)
end
else
begin
      insert into @response(Id,Message, FileName,Status) values(1,'Record Not found This ID','',0)
end
if(@Designationid <>0)
begin
 if(exists(select * from UserEmployementDetails where UserID=@userid))
 begin
 update UserEmployementDetails set CurrentDesignation=@Designationid where userid=@userid
 end
 else
 begin
 insert into UserEmployementDetails(UserID,CurrentDesignation,Active,CreatedDate) values(@userid,@Designationid,1,GETDATE())
 end
 end 
 select * from @response
 return
end

GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateWorkEducation]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UpdateWorkEducation](@userid bigint,@HighestQualification int,@Course int,@Specialization int,@University_College int,@CourseType varchar(50)=NULL,
@PassingYear int)
as
 BEGIN TRY
declare @NewResumeid varchar(100)=null;
Declare  @response table (Id bigint,Message varchar(100),FileName varchar(500),Status bit)
begin
 if(exists(select * from UserEducationDetails where UserID=@userid))
 begin
 update UserEducationDetails set HighestQualification=@HighestQualification,Course=@Course,Specialization=@Specialization
 ,University_College=@University_College,CourseType=@CourseType,PassingYear=@PassingYear   where userid=@userid

  insert into @response(Id,Message,Status) values(@userid,'Your Profile has been successfully updated',1)
 end
 else
 begin
 insert into UserEducationDetails(UserID,HighestQualification,Course,Specialization,University_College,CourseType,PassingYear,IsActive,createdDate) values(@userid,@HighestQualification,@Course,@Specialization,@University_College,@CourseType,@PassingYear,1,GETDATE())
 insert into @response(Id,Message,Status) values(@userid,'Your Profile has been succuessfully updated',1)
 end
 end 
 select * from @response
 return
END TRY
BEGIN CATCH

insert into @response(Id,Message,Status) values(@userid,CONCAT(cast(ERROR_NUMBER() as varchar(max)),',',Cast(ERROR_SEVERITY() as  varchar(max)),cast(ERROR_STATE() as varchar(max)),cast(ERROR_PROCEDURE() as varchar(max)), CAST(ERROR_LINE() as varchar(max)),cast(ERROR_MESSAGE() as varchar(max))),0)
select * from @response
return
	 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateWorkHistory]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[Usp_UpdateWorkHistory](@userid bigint,@DesignationID int, @Companyid int , @WorkingSinceYear int,@WorkingSinceMonth int,@WorkingTo int )
as
 BEGIN TRY
Declare  @response table (Id bigint,Message varchar(100),FileName varchar(500),Status bit)
begin
 if exists(select * from UserMaster where UserID=@userid)
begin
if Not exists(select * from UserWokingHistory where UserID=@userid and DesignationId=(@DesignationID) and CompanyID=@Companyid)
begin
insert into UserWokingHistory(UserID,DesignationId,CompanyID,WokingSinceYear,workingSinceMonth,WorkingSinceTo,IsActive,createdDate)
values(@userid,@DesignationID,@Companyid,@WorkingSinceYear,@WorkingSinceMonth,@WorkingTo,1,GETDATE())
 insert into @response(Id,Message,FileName,Status) values(@userid,'Your Profile has been successfully updated','',1)
end
else
begin
insert into @response(Id,Message,FileName,Status) values(@userid,'This Company already exist','',1)
end
end
else
begin
insert into @response(Id,Message,FileName,Status) values(@userid,'record not foud this id','',1)
end
end
select * from @response
return 

 --select A.ID,a.UserID,a.LastUsedYear,a.Skills,a.Version,B.Name as ExperienceName from UserSkillsDetails A inner join OtherMasters  b on A.Experience=b.MasterID where UserID=@userid and a.Active=1
 --return
END TRY
BEGIN CATCH
insert into @response(Id,Message,Status) values(@userid,CONCAT(cast(ERROR_NUMBER() as varchar(max)),',',Cast(ERROR_SEVERITY() as  varchar(max)),cast(ERROR_STATE() as varchar(max)),cast(ERROR_PROCEDURE() as varchar(max)), CAST(ERROR_LINE() as varchar(max)),cast(ERROR_MESSAGE() as varchar(max))),0)
select * from @response


	 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UserInfoOnId]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Usp_UserInfoOnId] @Userid bigint
as
begin

select A.UserID as UserId,A.FullName,A.EmailID,A.StdCode,A.MobileNumber,ISNULL(A.TotalExYear,0) as TotalExYear ,isnull(A.ToalExMonth,0) as ToalExMonth,A.ResumeTitle,
A.Resume as ResumeName,A.Role,A.Gender,D.DesignationID,D.DesignationName,E.CompanyID,E.CompanyName,F.Name
,
H.Name  as DobYear,I.Name as DobMonth
,

cast(A.DobDay as varchar(20)) as DobDay ,A.DiffAbled
,j.Name MartialStatus
,K.Name as AnnualSalaryinlakhs
, L.Name as AnnualSalaryinThousand,M.Name as workingSinceYear,N.Name as WorkingSinceMonth,O.Name as workingTo,
P.CityName, case B.NoticePeriod  when 1 Then '15 Days or less' when 2  then '1 Month' when 3 then '2 Months' when 4 then '3 Months' when 5 then 'More than 3 Months' when 0 then 'Select'  end as NoticePeriod,C.ProfileImage,
C.ProfessionalExperience,Q.Name as HighestQualification,R.Name as course ,S.Name as Specialization,
T.Name as University_College,C.CourseType,C.PassingYear

 from UserMaster A 
 left join  UserEmployementDetails  b on A.UserID=b.UserID 
 left join  UserEducationDetails c on A.UserID=c.UserId
 left join  DesigationMaster D on B.CurrentDesignation=D.DesignationID 
 left join  CompanyMaster E on b.CurrentCompany=e.CompanyID
 left join  OtherMasters F on b.AnnualSalaryInlakhs=F.MasterID
 left join  OtherMasters G on b.AnnualSalaryInThousand =G.MasterID 
 left join  OtherMasters H on A.DobYear=H.MasterID 
 left join  OtherMasters i on A.DobMonth=i.MasterID 
 left join  OtherMasters J on A.MartialStatus=j.MasterID
 left join  OtherMasters K on B.AnnualSalaryInlakhs=k.MasterID 
 left join  OtherMasters L on B.AnnualSalaryInThousand=L.MasterID 
 left join  OtherMasters M on B.WorkingSinceYear=M.MasterID 
 left join  OtherMasters N on B.WotkingSinceMonth=N.MasterID
 left join  OtherMasters O on B.WorkingTo =O.MasterID 
 left join  CityMaster P on B.CurrentLocationID=p.CityID
 left join OtherMasters Q on C.HighestQualification=Q.MasterID
 left join OtherMasters R on C.Course=R.MasterID
 left join  OtherMasters S on c.Specialization=s.MasterID 
 left join OtherMasters T on c.University_College=T.MasterID 
 
  where a.UserID=@Userid

end


GO
/****** Object:  StoredProcedure [dbo].[Usp_UserSkillsDetails]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Usp_UserSkillsDetails] @UserId Bigint
as
begin
select UserID,Skills,Version,LastUsedYear,B.Name as ExperienceName  from UserSkillsDetails  A left join 
OtherMasters B on A.Experience=B.MasterID where UserID=@UserId and Active=1
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UserWorkHistory]    Script Date: 25-04-2018 15:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UserWorkHistory] @Userid bigint
as
begin
select A.UserId,B.DesignationName,c.CompanyName,d.Name as WorkingSinceYear,E.Name as workingSinceMonth
,F.Name as WorkignTo from UserWokingHistory A  left join DesigationMaster b on a.DesignationId=b.DesignationID
left join CompanyMaster c on a.CompanyID=c.CompanyID 
left join OtherMasters D on A.WokingSinceYear=d.MasterID
left join OtherMasters E on A.workingSinceMonth=E.MasterID 
left join OtherMasters F on A.WorkingSinceTo=F.MasterID where A.UserId=@Userid
end
GO
USE [master]
GO
ALTER DATABASE [RojgarMitra] SET  READ_WRITE 
GO
