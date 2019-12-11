USE [VAS]
GO
/****** Object:  Table [dbo].[Cutomers]    Script Date: 11/12/2019 07:46:07 م ******/
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
/****** Object:  Table [dbo].[SentSMS]    Script Date: 11/12/2019 07:46:07 م ******/
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
/****** Object:  Table [dbo].[ShoortNumber]    Script Date: 11/12/2019 07:46:07 م ******/
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
 CONSTRAINT [PK_ShoortNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoortNumberActions]    Script Date: 11/12/2019 07:46:07 م ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/12/2019 07:46:07 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LoginName] [int] NULL,
	[Email] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[CreatedOn] [nchar](10) NULL,
	[CreatedBy] [bigint] NULL,
	[Image] [binary](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cutomers] ON 

INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (1, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (2, N'محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'ساربة الجبل                                       ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (3, N'علاء أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'الخهط الأمامي                                     ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (4, N'علاء محمد ', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'الأمان                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (5, N'محمد ', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'المفوضية                                          ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (6, N'محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'العراقة                                           ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (7, N'علاء أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (8, N'أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (9, N'علاء ', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (10, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (11, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (12, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (13, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (14, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (15, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
INSERT [dbo].[Cutomers] ([CustomerId], [FullName], [Phone], [BirthDate], [CompanyName], [Email], [Status], [CreatedBy], [CreatedOn]) VALUES (16, N'علاء محمد أحمد', N'0927294572', CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'مسارات                                            ', N'masarat@jk', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cutomers] OFF
SET IDENTITY_INSERT [dbo].[ShoortNumber] ON 

INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (1, 1616, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'رسائل نصية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (2, 1717, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 50, N'رسائل ترويجية ', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (3, 1818, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'دعاية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (4, 1919, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 100, N'اعلانات', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (5, 2020, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 5)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (6, 2121, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 50, N'رسائل قصيرة ', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 6)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (7, 2222, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 50, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 7)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (8, 2323, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 8)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (9, 2424, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 50, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 9)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (10, 2525, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 150, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 10)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (11, 2626, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 11)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (12, 2727, 1000, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 500, 450, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 12)
INSERT [dbo].[ShoortNumber] ([Id], [Code], [Amount], [From], [To], [SMSCount], [UsageSMS], [Service], [Description], [CreatedOn], [CreatedBy], [CustomerId]) VALUES (13, 2828, 500, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), 50, 0, N'خدمية', N'خدمية', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 1, 13)
SET IDENTITY_INSERT [dbo].[ShoortNumber] OFF
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'hint of service ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoortNumber', @level2type=N'COLUMN',@level2name=N'Service'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-new product
2-charge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoortNumberActions', @level2type=N'COLUMN',@level2name=N'ActionType'
GO
