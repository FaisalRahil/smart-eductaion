USE [VAS]
GO
/****** Object:  Table [dbo].[Cutomers]    Script Date: 16/12/2019 03:38:49 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cutomers](
	[CustomerId] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[CompanyName] [nchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Status] [smallint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Cutomers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SentSMS]    Script Date: 16/12/2019 03:38:49 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SentSMS](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShortCode] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_SentSMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoortNumber]    Script Date: 16/12/2019 03:38:49 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoortNumber](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Amount] [int] NULL,
	[From] [datetime] NULL,
	[To] [datetime] NULL,
	[SMSCount] [int] NULL,
	[UsageSMS] [int] NULL,
	[Service] [nvarchar](150) NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[CustomerId] [bigint] NULL,
	[State] [smallint] NULL,
 CONSTRAINT [PK_ShoortNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoortNumberActions]    Script Date: 16/12/2019 03:38:49 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoortNumberActions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShoortNumberId] [bigint] NULL,
	[ActionType] [smallint] NULL,
	[ActionDescription] [nvarchar](100) NULL,
	[Amount] [int] NULL,
	[SMSCount] [int] NULL,
	[From] [datetime] NULL,
	[To] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatecdOn] [datetime] NULL,
 CONSTRAINT [PK_ShoortNumberActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/12/2019 03:38:49 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LoginName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](250) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[Image] [binary](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[State] [smallint] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cutomers] ON 

INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (1, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (2, N'محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'ساربة الجبل                                       ', N'masarat@jk', 9, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (3, N'علاء أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'الخهط الأمامي                                     ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (4, N'علاء محمد ', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'الأمان                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (5, N'محمد ', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'المفوضية                                          ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (6, N'محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'العراقة                                           ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (7, N'علاء أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', 9, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (8, N'أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', 9, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (9, N'علاء ', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (10, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (11, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (12, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (13, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (14, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (15, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (16, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (23, N'GDH', N'42', CAST(N'2019-12-05T22:00:00.000' AS DateTime), N'GH                                                ', N'DGH', 0, 0, CAST(N'2019-12-12T14:38:35.603' AS DateTime))
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (24, N'FSD', N'453', CAST(N'2019-12-02T22:00:00.000' AS DateTime), N'DGH                                               ', N'SDFG', 0, 0, CAST(N'2019-12-12T14:39:45.327' AS DateTime))
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (25, N'TY', N'5', CAST(N'2019-11-28T22:00:00.000' AS DateTime), N'ETY                                               ', N'TY', 0, 0, CAST(N'2019-12-12T14:40:22.490' AS DateTime))
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (26, N'إسم المستخدم بعد التعديل', N'927294572', CAST(N'2019-12-12T22:00:00.000' AS DateTime), N'almadar                                           ', N'ahmedtareckb@gmail.com', 0, 0, CAST(N'2019-12-12T15:37:02.417' AS DateTime))
SET IDENTITY_INSERT [dbo].[Cutomers] OFF
SET IDENTITY_INSERT [dbo].[ShoortNumber] ON 

INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (1, 1616, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'رسائل نصية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (2, 1717, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 50, N'رسائل ترويجية ', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (3, 1818, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'دعاية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (4, 1919, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 100, N'اعلانات', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (5, 2020, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (6, 2121, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 50, N'رسائل قصيرة ', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 6, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (7, 2222, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 50, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 7, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (8, 2323, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 8, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (9, 2424, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 50, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 9, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (10, 2525, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 150, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 10, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (11, 2626, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 11, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (12, 2727, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 450, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 12, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (13, 2828, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 13, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (14, 52, 42, CAST(N'2019-12-19T22:00:00.000' AS DateTime), CAST(N'2019-12-19T22:00:00.000' AS DateTime), 42, 42, N'خدمية', N'خدمية', CAST(N'2019-12-12T14:38:35.607' AS DateTime), 1, 26, 2)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (15, 45, 45, CAST(N'2019-12-25T22:00:00.000' AS DateTime), CAST(N'2019-12-19T22:00:00.000' AS DateTime), 45, 45, N'خدمية', N'خدمية', CAST(N'2019-12-12T14:39:45.330' AS DateTime), 1, 26, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (16, 5, 5, CAST(N'2019-12-26T22:00:00.000' AS DateTime), CAST(N'2019-12-19T22:00:00.000' AS DateTime), 4, 3, N'خدمية', N'خدمية', CAST(N'2019-12-12T14:40:22.493' AS DateTime), 1, 26, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (17, 421, 42, CAST(N'2019-12-19T22:00:00.000' AS DateTime), CAST(N'2019-12-18T22:00:00.000' AS DateTime), 42, 0, N'رسائل نصية', N'', CAST(N'2019-12-12T15:37:02.487' AS DateTime), 1, 26, 3)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId], [State]) VALUES (18, 4275, 1070, CAST(N'2019-12-19T22:00:00.000' AS DateTime), CAST(N'2019-12-11T22:00:00.000' AS DateTime), 1110, 20, N'خدمية', N'dgh', CAST(N'2019-12-12T15:37:02.487' AS DateTime), 1, 26, 1)
SET IDENTITY_INSERT [dbo].[ShoortNumber] OFF
SET IDENTITY_INSERT [dbo].[ShoortNumberActions] ON 

INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (5, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (6, 18, 2, N'إيقاف الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (7, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (8, 18, 2, N'إيقاف الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (9, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (10, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (11, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (12, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (13, 18, 1, N'تجديد الباقة', 50, 150, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (14, 17, 3, NULL, 0, 0, NULL, NULL, 1, CAST(N'2019-12-15T17:31:58.060' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (15, 17, 4, N'إلغاء إيقاف الباقة', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T09:31:52.680' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (16, 17, 4, N'إلغاء إيقاف الباقة', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T09:36:31.800' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (17, 17, 4, N'إلغاء إيقاف الباقة', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T09:41:20.570' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (18, 18, 2, N'إعادة شحن الباقة', 50, NULL, CAST(N'2019-12-22T22:00:00.000' AS DateTime), CAST(N'2019-12-22T22:00:00.000' AS DateTime), 1, CAST(N'2019-12-16T12:15:26.707' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (19, 18, 2, N'إعادة شحن الباقة', 1000, NULL, CAST(N'2019-12-29T22:00:00.000' AS DateTime), CAST(N'2019-12-29T22:00:00.000' AS DateTime), 1, CAST(N'2019-12-16T12:16:05.767' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (20, 18, 2, N'إعادة شحن الباقة', 10, NULL, CAST(N'2019-12-11T22:00:00.000' AS DateTime), CAST(N'2019-12-11T22:00:00.000' AS DateTime), 1, CAST(N'2019-12-16T12:21:47.630' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (21, 16, 3, N'hyrty', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T12:24:47.190' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (22, 16, 4, N'إلغاء إيقاف الباقة', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T12:27:55.613' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (23, 15, 3, N'fhh', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T12:28:21.743' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (24, 15, 4, N'إلغاء إيقاف الباقة', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T12:28:28.280' AS DateTime))
INSERT [dbo].[ShoortNumberActions] ([Id], [ShoortNumberId], [ActionType], [ActionDescription], [Amount], [SMSCount], [From], [To], [CreatedBy], [CreatecdOn]) VALUES (25, 17, 3, N'fhj', 0, 0, NULL, NULL, 1, CAST(N'2019-12-16T12:33:59.940' AS DateTime))
SET IDENTITY_INSERT [dbo].[ShoortNumberActions] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [LoginName], [Email], [Password], [CreatedOn], [CreatedBy], [Image], [Phone], [BirthDate], [State]) VALUES (1, N'احمد طارق بن سليمان', N'Ahmedb', N'ahmedtareckb@gmail.com', N'111', CAST(N'2019-01-01T00:00:00.000' AS DateTime), 1, NULL, N'0927294572', CAST(N'2019-01-01T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[ShoortNumber] ADD  CONSTRAINT [DF_ShoortNumber_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[ShoortNumber]  WITH CHECK ADD  CONSTRAINT [FK_ShoortNumber_Cutomers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Cutomers] ([CustomerId])
GO
ALTER TABLE [dbo].[ShoortNumber] CHECK CONSTRAINT [FK_ShoortNumber_Cutomers]
GO
ALTER TABLE [dbo].[ShoortNumberActions]  WITH CHECK ADD  CONSTRAINT [FK_ShoortNumberActions_ShoortNumber] FOREIGN KEY([ShoortNumberId])
REFERENCES [dbo].[ShoortNumber] ([Id])
GO
ALTER TABLE [dbo].[ShoortNumberActions] CHECK CONSTRAINT [FK_ShoortNumberActions_ShoortNumber]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cutomers', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'hint of service ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoortNumber', @level2type=N'COLUMN',@level2name=N'Service'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-nit active
3-stopped
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoortNumber', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-new product
2-charge
3-stopped
4-canselStopped' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoortNumberActions', @level2type=N'COLUMN',@level2name=N'ActionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-nit active
3-stopped
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'State'
GO
