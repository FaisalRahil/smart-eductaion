USE [master]
GO
/****** Object:  Database [SmartEducation]    Script Date: 3/24/2020 2:10:22 PM ******/
CREATE DATABASE [SmartEducation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartEducation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SmartEducation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmartEducation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SmartEducation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SmartEducation] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartEducation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartEducation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartEducation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartEducation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartEducation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartEducation] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartEducation] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SmartEducation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartEducation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartEducation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartEducation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartEducation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartEducation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartEducation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartEducation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartEducation] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SmartEducation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartEducation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartEducation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartEducation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartEducation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartEducation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartEducation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartEducation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmartEducation] SET  MULTI_USER 
GO
ALTER DATABASE [SmartEducation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartEducation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartEducation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartEducation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartEducation] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SmartEducation', N'ON'
GO
ALTER DATABASE [SmartEducation] SET QUERY_STORE = OFF
GO
USE [SmartEducation]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[id] [int] NOT NULL,
	[questionID] [int] NOT NULL,
	[ExamAnswer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[id] [int] NOT NULL,
	[lectureID] [int] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[id] [int] NOT NULL,
	[sequance] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[subjectID] [int] NOT NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationLevel]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationLevel](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EducationLevel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationMinister]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationMinister](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[score] [real] NOT NULL,
	[duration] [time](7) NOT NULL,
	[subjectID] [int] NOT NULL,
	[examTypeID] [int] NOT NULL,
	[gradeID] [int] NOT NULL,
	[year] [int] NOT NULL,
	[teacherSubjectID] [int] NOT NULL,
	[examType] [smallint] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamType]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamType](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExamType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[id] [int] NOT NULL,
	[sequance] [int] NOT NULL,
	[chapterID] [int] NOT NULL,
	[subjectID] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipality]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipality](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Municipality] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] NOT NULL,
	[question] [nvarchar](50) NOT NULL,
	[score] [real] NOT NULL,
	[examID] [int] NOT NULL,
	[AnswerId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School](
	[id] [int] NOT NULL,
	[municipalityID] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[schoolTypeID] [int] NOT NULL,
	[educationLevelID] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolType]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolType](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SchoolType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[schoolID] [int] NOT NULL,
	[gradeID] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[nationalID/passport] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAnsewr]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnsewr](
	[Id] [int] NULL,
	[StudentExamId] [int] NULL,
	[QuestionId] [bigint] NULL,
	[AnswerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentExams]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExams](
	[id] [int] NOT NULL,
	[StudentId] [int] NULL,
	[ExamId] [int] NULL,
	[StudentDegree] [float] NULL,
	[FinalDegree] [float] NULL,
 CONSTRAINT [PK_StudentExams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentReport]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentReport](
	[id] [int] NOT NULL,
	[studentID] [int] NOT NULL,
	[examID] [int] NOT NULL,
	[finalScore] [real] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentUser]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentUser](
	[id] [int] NOT NULL,
	[studentID] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [PK_StudentUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gradeID] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectEnrollment]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectEnrollment](
	[id] [int] NOT NULL,
	[subjectID] [int] NOT NULL,
	[studentID] [int] NOT NULL,
	[class] [nvarchar](50) NOT NULL,
	[teacherSubjectID] [int] NOT NULL,
	[year] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakenExam]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakenExam](
	[id] [int] NOT NULL,
	[studentID] [int] NOT NULL,
	[examID] [int] NOT NULL,
	[answerID] [int] NOT NULL,
	[answer] [nvarchar](50) NOT NULL,
	[score] [real] NOT NULL,
 CONSTRAINT [PK_TakenExam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[nationalID/passport] [nchar](10) NULL,
	[phone] [nchar](10) NULL,
	[schoolID] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherSubject]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherSubject](
	[id] [int] NOT NULL,
	[teacherID] [int] NOT NULL,
	[subjectID] [int] NOT NULL,
	[class] [nvarchar](50) NOT NULL,
	[gradeID] [int] NULL,
 CONSTRAINT [PK_TeacherSubject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[level] [int] NOT NULL,
	[state] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLevel]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLevel](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserLevel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/24/2020 2:10:22 PM ******/
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
	[Image] [varbinary](max) NULL,
	[Phone] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[State] [smallint] NULL,
	[LoginTryAttemptDate] [datetime] NULL,
	[LoginTryAttempts] [smallint] NULL,
	[LastLoginOn] [datetime] NULL,
	[Gender] [smallint] NULL,
	[UserType] [smallint] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoAttachment]    Script Date: 3/24/2020 2:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoAttachment](
	[id] [int] NOT NULL,
	[lectureID] [int] NOT NULL,
	[url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_VideoAttachment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [LoginName], [Email], [Password], [CreatedOn], [CreatedBy], [Image], [Phone], [BirthDate], [State], [LoginTryAttemptDate], [LoginTryAttempts], [LastLoginOn], [Gender], [UserType]) VALUES (1, N'احمد طارق بن سليمان', N'Ahmedb', N'ahmedtareckb@gmail.com', N's9s29j8nmkIZkPQ0y1LP+WM0SmcSntd/D/xz+fwfRqu8v9TOnDmYXpe8xuB2k8JjD39xDYMwtgobpCV8ToDiq8aDbVkswA==', CAST(N'2019-01-01T00:00:00.000' AS DateTime), 1, NULL, N'0927294572', CAST(N'2019-01-01T00:00:00.000' AS DateTime), 1, NULL, 0, CAST(N'2020-01-07T10:47:27.600' AS DateTime), 1, 1)
INSERT [dbo].[Users] ([UserId], [Name], [LoginName], [Email], [Password], [CreatedOn], [CreatedBy], [Image], [Phone], [BirthDate], [State], [LoginTryAttemptDate], [LoginTryAttempts], [LastLoginOn], [Gender], [UserType]) VALUES (2, N'احمد بن سليمان', N'Ahmed', N'a@a.com', N's9s29j8nmkIZkPQ0y1LP+WM0SmcSntd/D/xz+fwfRqu8v9TOnDmYXpe8xuB2k8JjD39xDYMwtgobpCV8ToDiq8aDbVkswA==', CAST(N'2019-12-17T09:53:39.847' AS DateTime), 1, NULL, N'0927294578', CAST(N'1990-06-13T22:00:00.000' AS DateTime), 1, NULL, 0, CAST(N'2020-03-11T22:29:18.127' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State_1]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UserType_1]  DEFAULT ((2)) FOR [UserType]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([questionID])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_Attachment_Lecture] FOREIGN KEY([lectureID])
REFERENCES [dbo].[Lecture] ([id])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK_Attachment_Lecture]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Subject] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_Chapter_Subject]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_ExamType] FOREIGN KEY([examTypeID])
REFERENCES [dbo].[ExamType] ([id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_ExamType]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Subject] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Subject]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_TeacherSubject] FOREIGN KEY([teacherSubjectID])
REFERENCES [dbo].[TeacherSubject] ([id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_TeacherSubject]
GO
ALTER TABLE [dbo].[Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Chapter1] FOREIGN KEY([chapterID])
REFERENCES [dbo].[Chapter] ([id])
GO
ALTER TABLE [dbo].[Lecture] CHECK CONSTRAINT [FK_Lecture_Chapter1]
GO
ALTER TABLE [dbo].[Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Subject1] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Lecture] CHECK CONSTRAINT [FK_Lecture_Subject1]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Exam] FOREIGN KEY([examID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Exam]
GO
ALTER TABLE [dbo].[School]  WITH CHECK ADD  CONSTRAINT [FK_School_EducationLevel] FOREIGN KEY([educationLevelID])
REFERENCES [dbo].[EducationLevel] ([id])
GO
ALTER TABLE [dbo].[School] CHECK CONSTRAINT [FK_School_EducationLevel]
GO
ALTER TABLE [dbo].[School]  WITH CHECK ADD  CONSTRAINT [FK_School_Municipality] FOREIGN KEY([municipalityID])
REFERENCES [dbo].[Municipality] ([id])
GO
ALTER TABLE [dbo].[School] CHECK CONSTRAINT [FK_School_Municipality]
GO
ALTER TABLE [dbo].[School]  WITH CHECK ADD  CONSTRAINT [FK_School_SchoolType] FOREIGN KEY([schoolTypeID])
REFERENCES [dbo].[SchoolType] ([id])
GO
ALTER TABLE [dbo].[School] CHECK CONSTRAINT [FK_School_SchoolType]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Grade] FOREIGN KEY([gradeID])
REFERENCES [dbo].[Grade] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Grade]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_School] FOREIGN KEY([schoolID])
REFERENCES [dbo].[School] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_School]
GO
ALTER TABLE [dbo].[StudentAnsewr]  WITH CHECK ADD  CONSTRAINT [FK_StudentAnsewr_Answer] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answer] ([id])
GO
ALTER TABLE [dbo].[StudentAnsewr] CHECK CONSTRAINT [FK_StudentAnsewr_Answer]
GO
ALTER TABLE [dbo].[StudentAnsewr]  WITH CHECK ADD  CONSTRAINT [FK_StudentAnsewr_StudentExams] FOREIGN KEY([StudentExamId])
REFERENCES [dbo].[StudentExams] ([id])
GO
ALTER TABLE [dbo].[StudentAnsewr] CHECK CONSTRAINT [FK_StudentAnsewr_StudentExams]
GO
ALTER TABLE [dbo].[StudentExams]  WITH CHECK ADD  CONSTRAINT [FK_StudentExams_Exam] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[StudentExams] CHECK CONSTRAINT [FK_StudentExams_Exam]
GO
ALTER TABLE [dbo].[StudentExams]  WITH CHECK ADD  CONSTRAINT [FK_StudentExams_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[StudentExams] CHECK CONSTRAINT [FK_StudentExams_Student]
GO
ALTER TABLE [dbo].[StudentReport]  WITH CHECK ADD  CONSTRAINT [FK_StudentReport_Exam] FOREIGN KEY([examID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[StudentReport] CHECK CONSTRAINT [FK_StudentReport_Exam]
GO
ALTER TABLE [dbo].[StudentReport]  WITH CHECK ADD  CONSTRAINT [FK_StudentReport_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[StudentReport] CHECK CONSTRAINT [FK_StudentReport_Student]
GO
ALTER TABLE [dbo].[StudentUser]  WITH CHECK ADD  CONSTRAINT [FK_StudentUser_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[StudentUser] CHECK CONSTRAINT [FK_StudentUser_Student]
GO
ALTER TABLE [dbo].[StudentUser]  WITH CHECK ADD  CONSTRAINT [FK_StudentUser_UserLevel] FOREIGN KEY([level])
REFERENCES [dbo].[UserLevel] ([id])
GO
ALTER TABLE [dbo].[StudentUser] CHECK CONSTRAINT [FK_StudentUser_UserLevel]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Grade] FOREIGN KEY([gradeID])
REFERENCES [dbo].[Grade] ([id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Grade]
GO
ALTER TABLE [dbo].[SubjectEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_SubjectEnrollment_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[SubjectEnrollment] CHECK CONSTRAINT [FK_SubjectEnrollment_Student]
GO
ALTER TABLE [dbo].[SubjectEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_SubjectEnrollment_Subject] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[SubjectEnrollment] CHECK CONSTRAINT [FK_SubjectEnrollment_Subject]
GO
ALTER TABLE [dbo].[SubjectEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_SubjectEnrollment_Teacher] FOREIGN KEY([teacherSubjectID])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[SubjectEnrollment] CHECK CONSTRAINT [FK_SubjectEnrollment_Teacher]
GO
ALTER TABLE [dbo].[TakenExam]  WITH CHECK ADD  CONSTRAINT [FK_TakenExam_Answer] FOREIGN KEY([answerID])
REFERENCES [dbo].[Answer] ([id])
GO
ALTER TABLE [dbo].[TakenExam] CHECK CONSTRAINT [FK_TakenExam_Answer]
GO
ALTER TABLE [dbo].[TakenExam]  WITH CHECK ADD  CONSTRAINT [FK_TakenExam_Exam] FOREIGN KEY([examID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[TakenExam] CHECK CONSTRAINT [FK_TakenExam_Exam]
GO
ALTER TABLE [dbo].[TakenExam]  WITH CHECK ADD  CONSTRAINT [FK_TakenExam_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[TakenExam] CHECK CONSTRAINT [FK_TakenExam_Student]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_School] FOREIGN KEY([schoolID])
REFERENCES [dbo].[School] ([id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_School]
GO
ALTER TABLE [dbo].[TeacherSubject]  WITH CHECK ADD  CONSTRAINT [FK_TeacherSubject_Grade] FOREIGN KEY([gradeID])
REFERENCES [dbo].[Grade] ([id])
GO
ALTER TABLE [dbo].[TeacherSubject] CHECK CONSTRAINT [FK_TeacherSubject_Grade]
GO
ALTER TABLE [dbo].[TeacherSubject]  WITH CHECK ADD  CONSTRAINT [FK_TeacherSubject_Subject] FOREIGN KEY([subjectID])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[TeacherSubject] CHECK CONSTRAINT [FK_TeacherSubject_Subject]
GO
ALTER TABLE [dbo].[TeacherSubject]  WITH CHECK ADD  CONSTRAINT [FK_TeacherSubject_Teacher] FOREIGN KEY([teacherID])
REFERENCES [dbo].[Teacher] ([id])
GO
ALTER TABLE [dbo].[TeacherSubject] CHECK CONSTRAINT [FK_TeacherSubject_Teacher]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserLevel] FOREIGN KEY([level])
REFERENCES [dbo].[UserLevel] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserLevel]
GO
ALTER TABLE [dbo].[VideoAttachment]  WITH CHECK ADD  CONSTRAINT [FK_VideoAttachment_Lecture] FOREIGN KEY([lectureID])
REFERENCES [dbo].[Lecture] ([id])
GO
ALTER TABLE [dbo].[VideoAttachment] CHECK CONSTRAINT [FK_VideoAttachment_Lecture]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-not active
3-stopped
4-admin
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-admin
2-user
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserType'
GO
USE [master]
GO
ALTER DATABASE [SmartEducation] SET  READ_WRITE 
GO
