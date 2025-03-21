USE [Data_Data]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [CK__users__status__6FE99F9F]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [CK__users__status__6E01572D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [CK__users__status__6C190EBB]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [CK__users__role__6EF57B66]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [CK__users__role__6D0D32F4]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [CK__users__role__6B24EA82]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [CK__reviews__rating__6A30C649]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [CK__reviews__rating__693CA210]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [CK__reviews__rating__68487DD7]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [CK__notificat__statu__6754599E]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [CK__notificat__statu__66603565]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [CK__notificat__statu__656C112C]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [CK__enrollmen__statu__6477ECF3]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [CK__enrollmen__statu__6383C8BA]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [CK__enrollmen__statu__628FA481]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__student__619B8048]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__student__5FB337D6]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__student__5DCAEF64]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__course___60A75C0F]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__course___5EBF139D]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [FK__reviews__course___5CD6CB2B]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__stude__5BE2A6F2]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__stude__59FA5E80]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__stude__5812160E]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__cours__5AEE82B9]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__cours__59063A47]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [FK__notificat__cours__571DF1D5]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [FK__enrollmen__stude__5629CD9C]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [FK__enrollmen__stude__5441852A]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [FK__enrollmen__stude__52593CB8]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [FK__enrollmen__cours__5535A963]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [FK__enrollmen__cours__534D60F1]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [FK__enrollmen__cours__5165187F]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [FK__courses__room_id__5070F446]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [FK__courses__room_id__4E88ABD4]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [FK__courses__room_id__4CA06362]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [FK__courses__instruc__4F7CD00D]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [FK__courses__instruc__4D94879B]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [FK__courses__instruc__4BAC3F29]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__status__4AB81AF0]
GO
ALTER TABLE [dbo].[rooms] DROP CONSTRAINT [DF__rooms__capacity__49C3F6B7]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [DF__reviews__created__48CFD27E]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificat__statu__47DBAE45]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificat__sent___46E78A0C]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [DF__enrollmen__statu__45F365D3]
GO
ALTER TABLE [dbo].[enrollments] DROP CONSTRAINT [DF__enrollmen__enrol__44FF419A]
GO
ALTER TABLE [dbo].[courses] DROP CONSTRAINT [DF__courses__max_stu__440B1D61]
GO
/****** Object:  Index [UQ__users__AB6E6164CB565ACE]    Script Date: 3/4/2025 2:07:39 PM ******/
ALTER TABLE [dbo].[users] DROP CONSTRAINT [UQ__users__AB6E6164CB565ACE]
GO
/****** Object:  Index [UQ__users__AB6E6164897C06D4]    Script Date: 3/4/2025 2:07:39 PM ******/
ALTER TABLE [dbo].[users] DROP CONSTRAINT [UQ__users__AB6E6164897C06D4]
GO
/****** Object:  Index [UQ__users__AB6E6164467B38D6]    Script Date: 3/4/2025 2:07:39 PM ******/
ALTER TABLE [dbo].[users] DROP CONSTRAINT [UQ__users__AB6E6164467B38D6]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/4/2025 2:07:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 3/4/2025 2:07:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rooms]') AND type in (N'U'))
DROP TABLE [dbo].[rooms]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 3/4/2025 2:07:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviews]') AND type in (N'U'))
DROP TABLE [dbo].[reviews]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 3/4/2025 2:07:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notifications]') AND type in (N'U'))
DROP TABLE [dbo].[notifications]
GO
/****** Object:  Table [dbo].[enrollments]    Script Date: 3/4/2025 2:07:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[enrollments]') AND type in (N'U'))
DROP TABLE [dbo].[enrollments]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 3/4/2025 2:07:39 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[courses]') AND type in (N'U'))
DROP TABLE [dbo].[courses]
GO
USE [master]
GO
/****** Object:  Database [Data_Data]    Script Date: 3/4/2025 2:07:39 PM ******/
DROP DATABASE [Data_Data]
GO
/****** Object:  Database [Data_Data]    Script Date: 3/4/2025 2:07:39 PM ******/
CREATE DATABASE [Data_Data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Data_Data_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Data_Data.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Data_Data_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Data_Data.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Data_Data] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Data_Data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Data_Data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Data_Data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Data_Data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Data_Data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Data_Data] SET ARITHABORT OFF 
GO
ALTER DATABASE [Data_Data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Data_Data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Data_Data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Data_Data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Data_Data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Data_Data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Data_Data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Data_Data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Data_Data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Data_Data] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Data_Data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Data_Data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Data_Data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Data_Data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Data_Data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Data_Data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Data_Data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Data_Data] SET RECOVERY FULL 
GO
ALTER DATABASE [Data_Data] SET  MULTI_USER 
GO
ALTER DATABASE [Data_Data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Data_Data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Data_Data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Data_Data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Data_Data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Data_Data] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Data_Data', N'ON'
GO
ALTER DATABASE [Data_Data] SET QUERY_STORE = ON
GO
ALTER DATABASE [Data_Data] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Data_Data]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 3/4/2025 2:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[description] [text] NULL,
	[instructor_id] [int] NOT NULL,
	[schedule] [varchar](100) NULL,
	[max_students] [int] NULL,
	[room_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enrollments]    Script Date: 3/4/2025 2:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enrollments](
	[enrollment_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[enrolled_date] [datetime] NULL,
	[status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[enrollment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 3/4/2025 2:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[notification_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[message] [text] NOT NULL,
	[sent_at] [datetime] NULL,
	[status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 3/4/2025 2:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[rating] [int] NULL,
	[comment] [text] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 3/4/2025 2:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[room_id] [int] IDENTITY(1,1) NOT NULL,
	[room_name] [varchar](50) NOT NULL,
	[capacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/4/2025 2:07:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [varchar](10) NOT NULL,
	[status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[courses] ON 

INSERT [dbo].[courses] ([course_id], [title], [description], [instructor_id], [schedule], [max_students], [room_id]) VALUES (111, N'Kien Thuc Co Ban', N'Day cac kien thuc co ban ve toan hoc va lap trinh.', 101, N'2025-02-24 08:00:00', 30, 1)
INSERT [dbo].[courses] ([course_id], [title], [description], [instructor_id], [schedule], [max_students], [room_id]) VALUES (222, N'Toan Cao Cap', N'Day ve toan cao cap va cac phuong phap toan hoc nang cao.', 202, N'2025-02-24 08:00:00', 40, 2)
INSERT [dbo].[courses] ([course_id], [title], [description], [instructor_id], [schedule], [max_students], [room_id]) VALUES (333, N'Anh Van Giao Tiep', N'Day ve giao tiep trong tieng Anh.', 303, N'2025-02-24 08:00:00', 25, 3)
INSERT [dbo].[courses] ([course_id], [title], [description], [instructor_id], [schedule], [max_students], [room_id]) VALUES (444, N'Lap Trinh Ung Dung', N'Day ve lap trinh ung dung.', 404, N'2025-02-24 10:00:00', 30, 1)
INSERT [dbo].[courses] ([course_id], [title], [description], [instructor_id], [schedule], [max_students], [room_id]) VALUES (555, N'Lich Su Viet Nam', N'Day ve lich su viet nam.', 505, N'2025-02-24 10:00:00', 40, 2)
SET IDENTITY_INSERT [dbo].[courses] OFF
GO
SET IDENTITY_INSERT [dbo].[enrollments] ON 

INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (1, 235, 111, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (2, 487, 111, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (3, 561, 111, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (4, 324, 222, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (5, 908, 222, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (6, 102, 222, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'CANCELLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (7, 678, 333, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (8, 543, 333, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (9, 319, 333, CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (10, 786, 444, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (11, 154, 444, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (12, 411, 444, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (13, 829, 555, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (14, 257, 555, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (15, 640, 555, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (16, 235, 111, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (17, 487, 111, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (18, 561, 111, CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (19, 324, 222, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'CANCELLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (20, 908, 222, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (21, 102, 222, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (22, 678, 333, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (23, 543, 333, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (24, 319, 333, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'CANCELLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (25, 786, 444, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (26, 154, 444, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (27, 411, 444, CAST(N'2025-02-24T12:00:00.000' AS DateTime), N'WAITLISTED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (28, 829, 555, CAST(N'2025-02-24T14:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (29, 257, 555, CAST(N'2025-02-24T14:00:00.000' AS DateTime), N'ENROLLED')
INSERT [dbo].[enrollments] ([enrollment_id], [student_id], [course_id], [enrolled_date], [status]) VALUES (30, 640, 555, CAST(N'2025-02-24T14:00:00.000' AS DateTime), N'ENROLLED')
SET IDENTITY_INSERT [dbo].[enrollments] OFF
GO
SET IDENTITY_INSERT [dbo].[notifications] ON 

INSERT [dbo].[notifications] ([notification_id], [student_id], [course_id], [message], [sent_at], [status]) VALUES (1, 235, 111, N'Day la noi dung cua thong bao ve khoa hoc 111', CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'SENT')
INSERT [dbo].[notifications] ([notification_id], [student_id], [course_id], [message], [sent_at], [status]) VALUES (2, 324, 222, N'Day la noi dung cua thong bao ve khoa hoc 222', CAST(N'2025-02-24T08:00:00.000' AS DateTime), N'PENDING')
INSERT [dbo].[notifications] ([notification_id], [student_id], [course_id], [message], [sent_at], [status]) VALUES (3, 786, 444, N'Day la noi dung cua thong bao ve khoa hoc 444', CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'SENT')
INSERT [dbo].[notifications] ([notification_id], [student_id], [course_id], [message], [sent_at], [status]) VALUES (4, 829, 555, N'Day la noi dung cua thong bao ve khoa hoc 555', CAST(N'2025-02-24T10:00:00.000' AS DateTime), N'SENT')
SET IDENTITY_INSERT [dbo].[notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[reviews] ON 

INSERT [dbo].[reviews] ([review_id], [student_id], [course_id], [rating], [comment], [created_at]) VALUES (1, 235, 111, 4, N'Khoa hoc nay tuyet voi! Toi hoc duoc rat nhieu va giang vien rat giup do.', CAST(N'2025-02-24T08:00:00.000' AS DateTime))
INSERT [dbo].[reviews] ([review_id], [student_id], [course_id], [rating], [comment], [created_at]) VALUES (2, 487, 222, 5, N'Khoa hoc xuat sac, rat toan dien va co cau truc tot.', CAST(N'2025-02-24T08:00:00.000' AS DateTime))
INSERT [dbo].[reviews] ([review_id], [student_id], [course_id], [rating], [comment], [created_at]) VALUES (3, 561, 333, 3, N'Khoa hoc hay, nhung toi mong muon co them nhung vi du thuc te.', CAST(N'2025-02-24T08:00:00.000' AS DateTime))
INSERT [dbo].[reviews] ([review_id], [student_id], [course_id], [rating], [comment], [created_at]) VALUES (4, 324, 444, 4, N'Khoa hoc thu vi, giang vien rat hap dan.', CAST(N'2025-02-24T10:00:00.000' AS DateTime))
INSERT [dbo].[reviews] ([review_id], [student_id], [course_id], [rating], [comment], [created_at]) VALUES (5, 908, 555, 5, N'Khoa hoc tuyet, toi da hoc duoc nhieu ve lich su!', CAST(N'2025-02-24T10:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([room_id], [room_name], [capacity]) VALUES (1, N'Room 101', 30)
INSERT [dbo].[rooms] ([room_id], [room_name], [capacity]) VALUES (2, N'Room 102', 40)
INSERT [dbo].[rooms] ([room_id], [room_name], [capacity]) VALUES (3, N'Room 103', 25)
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (101, N'Nguyen Thi Lan', N'nguyenthilan@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (102, N'Hoang Duc Anh', N'hoangducanh@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (154, N'Phan Lan Chi', N'phanlanchi@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (202, N'Tran Minh Tu', N'tranminhtu@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (235, N'Nguyen Minh Anh', N'nguyenminhanh@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (257, N'Cao Trong Nghia', N'caotrongnghia@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (303, N'Le Bao Anh', N'lebaoanh@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (319, N'Duong Ngoc Anh', N'duongngocanh@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (324, N'Pham Quang Huy', N'phamquanghuy@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (404, N'Pham Thi Mai', N'phamthimai@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (411, N'To Anh Dung', N'toanhdung@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (487, N'Tran Gia Bao', N'trangiabao@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (505, N'Hoang Hoang Nam', N'hoanghoangnam@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (543, N'Bui Hoang Nam', N'buihoangnam@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (561, N'Le Khanh Linh', N'lekhainhlinh@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (606, N'Vu Thi Lan Chi', N'vuthilanchi@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (640, N'Do Hai Yen', N'dohaiyen@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (678, N'Vu Phuong Thao', N'vuphuongthao@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (707, N'Bui Minh Tu', N'buiminhtu@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (786, N'Nguyen Thanh Tung', N'nguyenthanhtung@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (808, N'Duong Thi Lan Chi', N'duongthilanchi@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (829, N'Ly Thu Ha', N'lythuha@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (908, N'Dang Bao Ngoc', N'dangbaongoc@example.com', N'password123', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (909, N'Cao Thi Thu Ha', N'caothithuha@example.com', N'password123', N'INSTRUCTOR', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (910, N'Nguy?n Văn A', N'nguyenvana@example.com', N'securepassword', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (913, N'Nguy?n Văn A', N'nguyenvanaq@example.com', N'securepassword', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (914, N'trang xinh', N'trangxinh@gmail.com', N'0508', N'STUDENT', N'ACTIVE')
INSERT [dbo].[users] ([user_id], [full_name], [email], [password], [role], [status]) VALUES (917, N'trang xinh vl', N'he180817nguyenthaihuy@gmail.com', N'1234567', N'STUDENT', N'ACTIVE')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__AB6E6164467B38D6]    Script Date: 3/4/2025 2:07:39 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__AB6E6164897C06D4]    Script Date: 3/4/2025 2:07:39 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__AB6E6164CB565ACE]    Script Date: 3/4/2025 2:07:39 PM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[courses] ADD  DEFAULT ((30)) FOR [max_students]
GO
ALTER TABLE [dbo].[enrollments] ADD  DEFAULT (getdate()) FOR [enrolled_date]
GO
ALTER TABLE [dbo].[enrollments] ADD  DEFAULT ('ENROLLED') FOR [status]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (getdate()) FOR [sent_at]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT ('PENDING') FOR [status]
GO
ALTER TABLE [dbo].[reviews] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[rooms] ADD  DEFAULT ((50)) FOR [capacity]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('ACTIVE') FOR [status]
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD FOREIGN KEY([instructor_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD FOREIGN KEY([instructor_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD FOREIGN KEY([instructor_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([room_id])
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([room_id])
GO
ALTER TABLE [dbo].[courses]  WITH CHECK ADD FOREIGN KEY([room_id])
REFERENCES [dbo].[rooms] ([room_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[courses] ([course_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='WAITLISTED' OR [status]='ENROLLED'))
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='WAITLISTED' OR [status]='ENROLLED'))
GO
ALTER TABLE [dbo].[enrollments]  WITH CHECK ADD CHECK  (([status]='CANCELLED' OR [status]='WAITLISTED' OR [status]='ENROLLED'))
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD CHECK  (([status]='SENT' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD CHECK  (([status]='SENT' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD CHECK  (([status]='SENT' OR [status]='PENDING'))
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD CHECK  (([rating]>=(1) AND [rating]<=(5)))
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD CHECK  (([rating]>=(1) AND [rating]<=(5)))
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD CHECK  (([rating]>=(1) AND [rating]<=(5)))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([role]='INSTRUCTOR' OR [role]='ADMIN' OR [role]='STUDENT'))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([role]='INSTRUCTOR' OR [role]='ADMIN' OR [role]='STUDENT'))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([role]='INSTRUCTOR' OR [role]='ADMIN' OR [role]='STUDENT'))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([status]='BLOCKED' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([status]='BLOCKED' OR [status]='ACTIVE'))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([status]='BLOCKED' OR [status]='ACTIVE'))
GO
USE [master]
GO
ALTER DATABASE [Data_Data] SET  READ_WRITE 
GO
