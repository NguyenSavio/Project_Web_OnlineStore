USE [master]
GO
/****** Object:  Database [Project_Web]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE DATABASE [Project_Web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_Web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_Web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_Web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Project_Web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Project_Web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_Web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_Web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project_Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_Web] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_Web] SET  MULTI_USER 
GO
ALTER DATABASE [Project_Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_Web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_Web] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Project_Web] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_Web', N'ON'
GO
ALTER DATABASE [Project_Web] SET QUERY_STORE = OFF
GO
USE [Project_Web]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_OrderProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Status] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[QuanityTotal] [int] NULL,
	[ShippingAddress] [nvarchar](max) NULL,
	[Total] [decimal](18, 2) NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20/07/2023 3:21:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
	[DateCreate] [datetime2](7) NULL,
	[DateUpdate] [datetime2](7) NULL,
	[BestSellers] [bit] NULL,
	[Remains] [int] NULL,
	[Rating] [float] NULL,
	[Vote] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221025084506_db', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221025093348_db1', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122114927_db', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122115218_db', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122115441_db', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122115544_db', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221125163534_db1', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221214102131_db2', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221216110220_db3', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221216110626_db4', N'6.0.12')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Administrator', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'User', N'User', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08206096-9675-4743-a9f9-490d3b128b35', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [LastName], [FirstName], [Phone]) VALUES (N'08206096-9675-4743-a9f9-490d3b128b35', N'admin@gmail.com', N'ADMIN@GMAIL.COM', NULL, NULL, 1, N'AQAAAAEAACcQAAAAEOtwIhpXMG+bTHxZpJyRv6dzEyTYMeXhtC2UitLRTvrrSPscDOvAYX8/oXSf0CDI6g==', N'J3JBJ5FD6O3IDMQXG3GHWFYL4PCD4RCX', N'5263298e-3f5d-4d71-94bf-b14960430242', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'admin', N'admin', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [LastName], [FirstName], [Phone]) VALUES (N'a843edbb-1edf-4403-a0b8-79f484080d3c', N'nguyen020301@gmail.com', N'NGUYEN020301@GMAIL.COM', N'nguyen020301@gmail.com', N'NGUYEN020301@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAjkT34/xh7C6HAQMOLi0RaOSr2+2j6dRNI1/LLo4qtqwabgAUvEKjywLIYDNo4ZRA==', N'IP6QAXKAVY3D3M2TGO6B3D5MEHU4EL3M', N'd57c821b-5025-4f26-859d-5cc2ce0987e0', NULL, 0, 0, NULL, 1, 0, N'District 12, HCM', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Age], [LastName], [FirstName], [Phone]) VALUES (N'b3d94637-e396-4f29-8188-6222e941df29', N'nguyen2@gmail.com', N'NGUYEN2@GMAIL.COM', NULL, NULL, 1, N'AQAAAAEAACcQAAAAENO/9bc5bGIMmdvzVobZG0AoTmK3qeiH+EgSJ3CbGs0/kH4gJvHEFB0NxrrUy6lp1w==', N'ZIY2VI5EOEODMVZ7272L2OET3J2XXAFO', N'b1b21c71-b47c-44f4-a2e6-a4b36492a159', NULL, 0, 0, NULL, 1, 0, N'Q1, HCM', 21, N'ádfà', N'âsdf', N'1121212121')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Gaming Furniture', N'Perform like the pro gamer you were born to be with the Furniture Shop range of gaming furniture. Experience ergonomic and gamer-friendly furniture such as desks for gaming, gaming chairs, and gaming accessories designed to increase performance while also blending into your home.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Sofas', N'Sit back and relax. It’s one of life’s simple pleasures, and it’s all about personal comfort. With a sofa and armchair, everyone in the family can get comfortable. We have all sorts of cozy and affordable sofas to choose from, so you can find a seating solution to sink into that matches a look you love, too.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Tables & Desks', N'Gather around the table and hear the family news, play a game, help with homework or set your stuff down. With our desks & tables in a wide range of sizes and styles, you’ll find one that fits whatever you want to do in whatever space you have. You can find a table online or test them out in our stores.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Chairs & Stools', N'Ensure that you, your family, friends, and guests always have a multitude of comfortable seating options throughout your home with Furniture Shop''s extensive collection of chairs. Our selection features chairs to match the décor and size of every room in your home, including stylish accent chairs, super comfortable recliners, space-saving folding chairs, elegant dining chairs, and much more. Browse our collection today and make sure the floor is never anyone’s favorite place to sit in your home.')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1002, N'Beds', N'There are lots of beds, but feeling good when you wake up starts with finding the right one. Choose one that’s big enough to stretch out, but cozy enough to snuggle up tight. Our affordable beds and bed frames are built to last for years – in a style that you’ll love just as long.')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProducts] ON 

INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3005, 7, 3006, 1, 2000, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3006, 6, 3006, 1, 300, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3007, 1015, 3006, 1, 3000, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3008, 6, 3007, 1, 300, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3009, 6, 3008, 1, 300, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (3011, 6, 3010, 1, 300, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (4004, 7, 4005, 3, 6000, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (4005, 7, 4006, 1, 2000, NULL)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price], [Total]) VALUES (4007, 1008, 4008, 3, 900, NULL)
SET IDENTITY_INSERT [dbo].[OrderProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (3006, N'a843edbb-1edf-4403-a0b8-79f484080d3c', NULL, CAST(N'2022-12-21T17:02:32.5705141' AS DateTime2), NULL, NULL, CAST(3670.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (3007, N'a843edbb-1edf-4403-a0b8-79f484080d3c', NULL, CAST(N'2022-12-21T17:05:44.5224865' AS DateTime2), NULL, NULL, CAST(270.00 AS Decimal(18, 2)), N'nguyen020301@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (3008, N'08206096-9675-4743-a9f9-490d3b128b35', NULL, CAST(N'2022-12-21T17:18:02.5161538' AS DateTime2), NULL, NULL, CAST(270.00 AS Decimal(18, 2)), N'admin@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (3009, N'a843edbb-1edf-4403-a0b8-79f484080d3c', NULL, CAST(N'2022-12-21T17:46:14.5031767' AS DateTime2), NULL, N'District 12, HCM', CAST(1120.00 AS Decimal(18, 2)), N'nguyen020301@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (3010, N'a843edbb-1edf-4403-a0b8-79f484080d3c', NULL, CAST(N'2022-12-21T17:52:27.2979861' AS DateTime2), NULL, N'District 12, HCM', CAST(270.00 AS Decimal(18, 2)), N'nguyen020301@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (4005, N'b3d94637-e396-4f29-8188-6222e941df29', NULL, CAST(N'2022-12-22T15:23:21.0089904' AS DateTime2), NULL, N'Q1, HCM', CAST(3000.00 AS Decimal(18, 2)), N'nguyen2@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (4006, N'b3d94637-e396-4f29-8188-6222e941df29', NULL, CAST(N'2022-12-22T15:24:12.0010345' AS DateTime2), NULL, N'Q1, HCM', CAST(1000.00 AS Decimal(18, 2)), N'nguyen2@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (4007, N'b3d94637-e396-4f29-8188-6222e941df29', NULL, CAST(N'2022-12-22T15:30:51.0083048' AS DateTime2), NULL, N'Q1, HCM', CAST(560.00 AS Decimal(18, 2)), N'nguyen2@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (4008, N'a843edbb-1edf-4403-a0b8-79f484080d3c', NULL, CAST(N'2023-01-13T13:14:23.3242180' AS DateTime2), NULL, N'District 12, HCM', CAST(900.00 AS Decimal(18, 2)), N'nguyen020301@gmail.com')
INSERT [dbo].[Orders] ([Id], [UserId], [Status], [CreatedAt], [QuanityTotal], [ShippingAddress], [Total], [UserName]) VALUES (4009, N'a843edbb-1edf-4403-a0b8-79f484080d3c', NULL, CAST(N'2023-01-19T01:51:24.8829749' AS DateTime2), NULL, N'District 12, HCM', CAST(1680.00 AS Decimal(18, 2)), N'nguyen020301@gmail.com')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (6, N'Gaming Chair', N'cheap', N'normal', 1, 300, 10, N'https://www.ikea.com/us/en/images/products/matchspel-gaming-chair-bomstad-black__0985645_pe816716_s5.jpg?f=s', NULL, CAST(N'2021-07-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-21T00:00:00.0000000' AS DateTime2), NULL, NULL, 5, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (7, N'Leather Sofa', N'Leather', N'good', 2, 2000, 50, N'https://www.ikea.com/us/en/images/products/morabo-sofa-grann-bomstad-golden-brown-wood__0602112_pe680181_s5.jpg?f=l', NULL, NULL, NULL, NULL, NULL, 5, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1007, N'Fabric Sofa', N'Fabric', N'Good', 2, 700, 0, N'https://www.ikea.com/us/en/images/products/kivik-sofa-with-chaise-tibbleby-beige-gray__1056147_pe848280_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1008, N'Cafe Table', N'Wood', NULL, 3, 300, 0, N'https://www.ikea.com/us/en/images/products/stensele-table-anthracite-anthracite__0662009_pe711689_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1009, N'Dinning Table', N'Wood', NULL, 3, 250, 0, N'https://www.ikea.com/us/en/images/products/mariedamm-table-black-marble-effect__0933647_pe792161_s5.jpg?f=xxs', NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1010, N'Kid Desk', N'Wood, Iron', NULL, 3, 140, 10, N'https://www.ergolife.vn/image/cache/catalog/4-ban-ghe-tre-em/H3/H3-P-62-1000x1000.png', NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1011, N'Home Desk', N'Wood, Iron', NULL, 3, 200, 0, N'https://www.ikea.com/us/en/images/products/micke-desk-black-brown__0736019_pe740346_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1012, N'Woody Stool', N'Wood', NULL, 4, 50, 0, N'https://www.ikea.com/us/en/images/products/ingolf-bar-stool-with-backrest-white__0728062_pe736035_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1013, N'Steel Stool', N'Steel', NULL, 4, 70, 0, N'https://www.ikea.com/us/en/images/products/stig-bar-stool-with-backrest-black-black__0948110_pe798867_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1014, N'Kid Bed', N'For 1 people', NULL, 1002, 500, 0, N'https://www.ikea.com/us/en/images/products/slaekt-bed-frame-with-slatted-bed-base-white__0637774_pe698536_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1015, N'Big Bed', N'For 2 people', NULL, 1002, 3000, 20, N'https://www.ikea.com/us/en/images/products/malm-bed-frame-high-black-brown-luroey__0638608_pe699032_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Products] ([Id], [Name], [ShortDesc], [Description], [CategoryId], [Price], [Discount], [Image], [Video], [DateCreate], [DateUpdate], [BestSellers], [Remains], [Rating], [Vote]) VALUES (1016, N'Bunk Bed', N'For small area', NULL, 1002, 1000, 10, N'https://www.ikea.com/us/en/images/products/tuffing-bunk-bed-frame-dark-gray__0638044_pe698660_s5.jpg?f=s', NULL, NULL, NULL, NULL, NULL, 5, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderProducts_OrderId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_OrderProducts_OrderId] ON [dbo].[OrderProducts]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderProducts_ProductId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_OrderProducts_ProductId] ON [dbo].[OrderProducts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 20/07/2023 3:21:04 CH ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Discount]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [Project_Web] SET  READ_WRITE 
GO
