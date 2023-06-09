USE [ePizzaHubSite]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/26/2023 8:29:59 PM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[Locality] [nvarchar](max) NOT NULL,
	[ZipCode] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [uniqueidentifier] NOT NULL,
	[ItemId] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemTypes]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ItemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[OrderId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [int] NOT NULL,
	[PaymentId] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[ZipCode] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Locality] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 4/26/2023 8:29:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[Id] [nvarchar](450) NOT NULL,
	[TransactionId] [nvarchar](max) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](max) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[CartId] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[GrandTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230331035853_Initial', N'6.0.15')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, NULL, N'Admin', N'ADMIN', N'979797')
INSERT [dbo].[AspNetRoles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, NULL, N'User', N'USER', N'979799')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (8, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (9, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (10, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (11, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (12, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (6, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (7, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (13, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (14, 2)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (6, N'anan', N'anan@gmail.com', N'ANAN@GMAIL.COM', N'anan@gmail.com', N'ANAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEtOlU9P0LGVsqqbJ54oTBsAIEtfJtUK6iPsFdBPiZzPek8gXyVYo1SttxnDSQ+LxA==', N'NOB2UWUO53Q7X2GU6D47HL5WH6RW7DUA', N'07ccf531-9eb0-4791-a1e6-d6904694261e', N'9127321873216', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (7, N'admin', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEcQtDcQiyYBvEeBJHS31OfkMa8LSBW1x0dYpUZYky0/dEfMTfb36bLhPjs8YmZWxw==', N'NAEKWB7HA5FRPFMAZY4TQLCRU466XN4T', N'30f9c03f-597e-473d-9006-f52c7d10807a', N'01238912738', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (8, N'ujang', N'ujang@gmail.com', N'UJANG@GMAIL.COM', N'ujang@gmail.com', N'UJANG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGyvK3e0hY8rWX4otUficqPP9odwZ7v2kkQXruknr8yDTA+56p6JIQ1XZiSihon+5Q==', N'HI2E4NUVQ6QQRC7JP6HGNDH7J33QN6EX', N'c1ec9496-ee68-4c23-9d50-48d71f5dc740', N'0182392183', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (9, N'marcus', N'marcus@gmail.com', N'MARCUS@GMAIL.COM', N'marcus@gmail.com', N'MARCUS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPfPFo05bc5e5QeaN8XvzcZ1ybgfrQZCPeIGWnUv/NWQHeXrt6hwRXs3zdmRNTHifQ==', N'ZMDHMTK3BB2U54ACDVIMGO4UEFOJ2SID', N'd04eb6d9-1baf-4d18-a32b-2b4c4dc94881', N'0812321321', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (10, N'Administrator', N'administrator@gmail.com', N'ADMINISTRATOR@GMAIL.COM', N'administrator@gmail.com', N'ADMINISTRATOR@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFvdi8RpCPRGbQBQZvERBrWcRycohuVc93KDPruJOhDJL9Nzx4PcquxVLSD59uy/8Q==', N'OO4STNMGH2XVM2PMAEBGFOJ3WDQP3ET5', N'ffe87ed4-a85b-4507-9a39-4f9c10b14e3b', N'08123218', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (11, N'Buyer', N'buyer@gmail.com', N'BUYER@GMAIL.COM', N'buyer@gmail.com', N'BUYER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENpnC0S3aXsc35O9W9KuI690pP3uPUFYXF7vzg1izrMRuiJZ8UV2oU0xQNRQbqg1vw==', N'CINYJ76FWGFRKVUEZW7UJEKU3GJJPFPR', N'5219b285-18b7-4f22-bc01-1dd8e0ce032d', N'01283218', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (12, N'User', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBGW2UcG0XKmWmZEc4IQ7YvLZQMJt9tl7t7FZsf/4qtSbNhfjt6fEyDDcLp26v/gJQ==', N'PEKM7HMKNECWB3N2T4VLFH5IZG2VU35P', N'76d46e81-0dca-497f-bd3d-ea71ff7fc8c9', N'01283217812', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (13, N'Rey', N'rey@gmail.com', N'REY@GMAIL.COM', N'rey@gmail.com', N'REY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFagJcJhSrXaEDdxKxkrHjEKbo3l8PskX0pNLFi0uj3ZngkAOJ77IXzum50b1WyLiw==', N'D3DP3FSRIB4NNBY5B4AUMTKYRRYQVU3L', N'e23c3cb1-d499-4f28-927d-634a26edd6fb', N'01283126', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (14, N'Budi', N'budi@gmail.com', N'BUDI@GMAIL.COM', N'budi@gmail.com', N'BUDI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFRnvWEO5qT7uumQXZXqahTXNxtgBwrnpMfGBsxsFJBnzVKqwo1hmbHW9LOy0EdIOQ==', N'B67XDII4ZJTAWXGN4F27OF3D26KGWKWA', N'a12561e0-7f17-43e3-8c82-7b4bd4b36bab', N'012837123817', 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([Id], [CartId], [ItemId], [UnitPrice], [Quantity]) VALUES (2, N'6a264b98-30fa-4b0a-b380-d7b62e70cb79', 6, CAST(100.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[CartItems] ([Id], [CartId], [ItemId], [UnitPrice], [Quantity]) VALUES (5, N'54208281-5c87-473b-9f34-1bd8a766853a', 6, CAST(100.00 AS Decimal(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[CartItems] OFF
GO
INSERT [dbo].[Carts] ([Id], [UserId], [CreatedDate], [IsActive]) VALUES (N'6373ba6e-a571-461a-a3fd-07109f2ef80a', 14, CAST(N'2023-04-25T13:10:21.4256732' AS DateTime2), 1)
INSERT [dbo].[Carts] ([Id], [UserId], [CreatedDate], [IsActive]) VALUES (N'54208281-5c87-473b-9f34-1bd8a766853a', 8, CAST(N'2023-04-03T20:24:26.2734302' AS DateTime2), 1)
INSERT [dbo].[Carts] ([Id], [UserId], [CreatedDate], [IsActive]) VALUES (N'6a264b98-30fa-4b0a-b380-d7b62e70cb79', 6, CAST(N'2023-04-01T16:41:25.3762761' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Pizza', N'Pizza')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Dessert', N'Dessert')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'Beverages', N'Beverages')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (6, N'Cheesy Sausage', N'Domino''s Pizza Sauce, Beef Sausage Cut, Mozzarella Cheese', CAST(11.00 AS Decimal(18, 2)), N'/images/20230413T141551333.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (7, N'Chessy Sausage', N'Domino''s Pizza Sauce, Beef Sausage Cut, Mozzarella Cheese', CAST(10.00 AS Decimal(18, 2)), N'/images/20230413T141522629.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (8, N'Chicken Pepperoni Feast', N'Domino''s Pizza Sauce, Chicken Pepperoni, Mozzarella Cheese', CAST(9.00 AS Decimal(18, 2)), N'/images/20230413T141656925.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (9, N'Margherita', N'Domino''s Pizza Sauce, Tomato, Parsley, Mozzarella Cheese', CAST(10.00 AS Decimal(18, 2)), N'/images/20230413T141721976.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (10, N'Veggie Mania ', N'Domino''s Pizza Sauce, Green Pepper, Corn, Mushroom, Tomato, Black', CAST(10.00 AS Decimal(18, 2)), N'/images/20230413T141848205.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (11, N'Meatzza', N'Domino''s Pizza Sauce, Beef Pepperoni, Beef Sausage Cut, Beef', CAST(10.00 AS Decimal(18, 2)), N'/images/20230413T141926354.png', 1, 1)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (12, N'Ultimate Cheese Melt', N'Liquid Cheese Sauce,Keju Mozzarella, Cheddar Cheese Sauce, Keju Ricotta,', CAST(12.00 AS Decimal(18, 2)), N'/images/20230413T142009835.png', 1, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (13, N'Coca Cola', N'Coca Cola 1 Liter', CAST(2.00 AS Decimal(18, 2)), N'/images/20230413T142112145.png', 3, 2)
INSERT [dbo].[Items] ([Id], [Name], [Description], [UnitPrice], [ImageUrl], [CategoryId], [ItemTypeId]) VALUES (14, N'Fanta', N'Fanta 390 ML', CAST(1.00 AS Decimal(18, 2)), N'/images/20230413T142158829.png', 3, 2)
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemTypes] ON 

INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (1, N'Veg')
INSERT [dbo].[ItemTypes] ([Id], [Name]) VALUES (2, N'NonVeg')
SET IDENTITY_INSERT [dbo].[ItemTypes] OFF
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
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_Carts_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_Carts_CartId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemTypes_ItemTypeId] FOREIGN KEY([ItemTypeId])
REFERENCES [dbo].[ItemTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemTypes_ItemTypeId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
