﻿USE [WMTest2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/18/2020 4:30:59 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckTasks]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckTasks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Function] [nvarchar](max) NULL,
 CONSTRAINT [PK_CheckTasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentDetails]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Seen] [bit] NOT NULL,
 CONSTRAINT [PK_CommentDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[TaskCode] [nvarchar](max) NULL,
	[Level] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deputies]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deputies](
	[UserID] [int] NOT NULL,
	[TaskID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Deputies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Follows]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Follows](
	[UserID] [int] NOT NULL,
	[TaskID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Follows] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FromWhos]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FromWhos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[TaskID] [int] NOT NULL,
 CONSTRAINT [PK_FromWhos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Histories]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Histories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskCode] [nvarchar](max) NULL,
	[TaskID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Deadline] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifyDateTime] [nvarchar](max) NULL,
 CONSTRAINT [PK_Histories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTypes]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_JobTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[UserID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationDetails]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[NotificationID] [int] NOT NULL,
	[Seen] [bit] NOT NULL,
 CONSTRAINT [PK_NotificationDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[TaskID] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[Function] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OCs]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OCs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Level] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
 CONSTRAINT [PK_OCs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OCUsers]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OCUsers](
	[UserID] [int] NOT NULL,
	[OCID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_OCUsers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[OCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
 CONSTRAINT [PK_Participants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Room] [int] NOT NULL,
	[CreatedByName] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [bit] NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[UserID] [int] NOT NULL,
	[TaskID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[JobName] [nvarchar](max) NULL,
	[ParentID] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[ProjectID] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[OCID] [int] NULL,
	[FromWhoID] [int] NOT NULL,
	[Priority] [nvarchar](2) NULL,
	[ModifyDateTime] [nvarchar](max) NULL,
	[FinishedMainTask] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[periodType] [int] NOT NULL,
	[JobTypeID] [int] NOT NULL,
	[DueDateTime] [datetime2](7) NOT NULL,
	[GroupCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamMembers]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamMembers](
	[UserID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TeamMembers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutorials]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutorials](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Level] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[URL] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[ProjectID] [int] NULL,
	[TaskID] [int] NULL,
 CONSTRAINT [PK_Tutorials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadImages]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NOT NULL,
	[ChatID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_UploadImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserJoinHubs]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserJoinHubs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionId] [nvarchar](max) NULL,
	[CreatedDate] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserJoinHubs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/18/2020 4:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[OCID] [int] NOT NULL,
	[LevelOC] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[RoleID] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ImageBase64] [varbinary](max) NULL,
	[isLeader] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200507064753_InitialDb', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200507071620_version1.0.0', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200507074622_version1.0.1', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200507081150_version1.0.2', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200508010603_version1.0.3', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200508084103_version1.0.4', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200508091745_version1.0.5', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200511031654_version1.0.6', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200511032458_version1.0.7', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200514053215_version1.0.8', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200514081249_version1.0.9', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200518012514_update1.1.0', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200518012731_update1.1.1', N'3.1.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200518092354_update1.1.2', N'3.1.1')
GO
SET IDENTITY_INSERT [dbo].[Chats] ON 
GO
INSERT [dbo].[Chats] ([ID], [RoomID], [ProjectID], [UserID], [Message], [CreatedTime]) VALUES (1, 35, 57, 45, N'justin', CAST(N'2020-05-11T17:26:27.9898218' AS DateTime2))
GO
INSERT [dbo].[Chats] ([ID], [RoomID], [ProjectID], [UserID], [Message], [CreatedTime]) VALUES (2, 36, 58, 2, N'Hi Peter', CAST(N'2020-05-18T14:37:35.5346579' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Chats] OFF
GO
SET IDENTITY_INSERT [dbo].[CheckTasks] ON 
GO
INSERT [dbo].[CheckTasks] ([ID], [CreatedDate], [Function]) VALUES (28, CAST(N'2020-05-07T16:31:57.4076788' AS DateTime2), N'1314.2026')
GO
INSERT [dbo].[CheckTasks] ([ID], [CreatedDate], [Function]) VALUES (29, CAST(N'2020-05-07T16:32:00.6406170' AS DateTime2), N'1108.0132')
GO
INSERT [dbo].[CheckTasks] ([ID], [CreatedDate], [Function]) VALUES (30, CAST(N'2020-05-07T16:32:03.9233605' AS DateTime2), N'1216.5468')
GO
INSERT [dbo].[CheckTasks] ([ID], [CreatedDate], [Function]) VALUES (31, CAST(N'2020-05-07T16:32:06.5299749' AS DateTime2), N'1122.8215')
GO
SET IDENTITY_INSERT [dbo].[CheckTasks] OFF
GO
SET IDENTITY_INSERT [dbo].[CommentDetails] ON 
GO
INSERT [dbo].[CommentDetails] ([ID], [CommentID], [UserID], [Seen]) VALUES (1, 1, 45, 1)
GO
INSERT [dbo].[CommentDetails] ([ID], [CommentID], [UserID], [Seen]) VALUES (2, 2, 45, 1)
GO
INSERT [dbo].[CommentDetails] ([ID], [CommentID], [UserID], [Seen]) VALUES (3, 3, 45, 1)
GO
INSERT [dbo].[CommentDetails] ([ID], [CommentID], [UserID], [Seen]) VALUES (4, 4, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[CommentDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 
GO
INSERT [dbo].[Comments] ([ID], [TaskID], [UserID], [ParentID], [Content], [TaskCode], [Level], [CreatedTime]) VALUES (1, 3693, 45, 0, N'aaaaaa', N'', 1, CAST(N'2020-05-11T17:27:43.6203501' AS DateTime2))
GO
INSERT [dbo].[Comments] ([ID], [TaskID], [UserID], [ParentID], [Content], [TaskCode], [Level], [CreatedTime]) VALUES (2, 3693, 45, 0, N'', N'', 1, CAST(N'2020-05-11T17:28:03.9549346' AS DateTime2))
GO
INSERT [dbo].[Comments] ([ID], [TaskID], [UserID], [ParentID], [Content], [TaskCode], [Level], [CreatedTime]) VALUES (3, 3693, 45, 2, N'21121🤮', N'', 2, CAST(N'2020-05-11T17:28:20.7923637' AS DateTime2))
GO
INSERT [dbo].[Comments] ([ID], [TaskID], [UserID], [ParentID], [Content], [TaskCode], [Level], [CreatedTime]) VALUES (4, 3732, 2, 0, N'Demo', N'', 1, CAST(N'2020-05-18T11:46:32.6821290' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Deputies] ON 
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (2, 3510, 1)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (2, 3511, 2)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (40, 3544, 3)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (41, 3342, 4)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (41, 3438, 5)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (41, 3509, 6)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (2, 3685, 13)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (40, 3701, 14)
GO
INSERT [dbo].[Deputies] ([UserID], [TaskID], [ID]) VALUES (40, 3702, 15)
GO
SET IDENTITY_INSERT [dbo].[Deputies] OFF
GO
SET IDENTITY_INSERT [dbo].[Follows] ON 
GO
INSERT [dbo].[Follows] ([UserID], [TaskID], [ID]) VALUES (45, 3693, 1)
GO
INSERT [dbo].[Follows] ([UserID], [TaskID], [ID]) VALUES (2, 3432, 30)
GO
INSERT [dbo].[Follows] ([UserID], [TaskID], [ID]) VALUES (2, 3433, 31)
GO
INSERT [dbo].[Follows] ([UserID], [TaskID], [ID]) VALUES (2, 3432, 33)
GO
INSERT [dbo].[Follows] ([UserID], [TaskID], [ID]) VALUES (2, 3433, 34)
GO
SET IDENTITY_INSERT [dbo].[Follows] OFF
GO
SET IDENTITY_INSERT [dbo].[Histories] ON 
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (120, N'3344-Weekly-Routine', 3344, 0, 1, N'25 Apr, 2020 12:00:00 AM', CAST(N'2020-04-24T16:08:57.4647861' AS DateTime2), N'24 Apr, 2020 04:08:57 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (121, N'3345-Weekly-Routine', 3345, 0, 1, N'25 Apr, 2020 12:00:00 AM', CAST(N'2020-04-24T16:10:40.5004621' AS DateTime2), N'24 Apr, 2020 04:10:40 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (122, N'3342-Weekly-Routine', 3342, 0, 1, N'27 Apr, 2020 12:00:00 AM', CAST(N'2020-04-24T16:10:40.5075447' AS DateTime2), N'24 Apr, 2020 04:10:40 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (123, N'3402-Daily-Routine', 3402, 0, 1, N'24 Apr, 2020 03:24:04 PM', CAST(N'2020-04-24T16:11:30.5572365' AS DateTime2), N'24 Apr, 2020 04:11:30 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (124, N'3400-Weekly-Routine', 3400, 0, 1, N'27 Apr, 2020 12:00:00 AM', CAST(N'2020-04-24T16:11:35.6487817' AS DateTime2), N'24 Apr, 2020 04:11:35 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (125, N'3427-Daily-Routine', 3427, 0, 1, N'25 Apr, 2020 10:45:40 AM', CAST(N'2020-04-25T10:46:18.8501424' AS DateTime2), N'25 Apr, 2020 10:46:18 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (126, N'3402-Daily-Routine', 3420, 0, 1, N'25 Apr, 2020 03:24:04 PM', CAST(N'2020-04-25T11:04:28.4051072' AS DateTime2), N'25 Apr, 2020 11:04:28 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (127, N'3424-Daily-Project', 3424, 0, 1, N'25 Apr, 2020 08:48:35 AM', CAST(N'2020-04-25T11:05:35.3801246' AS DateTime2), N'25 Apr, 2020 11:05:35 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (128, N'3345-Weekly-Routine', 3419, 0, 1, N'28 Apr, 2020 12:00:00 AM', CAST(N'2020-04-25T11:12:12.6574064' AS DateTime2), N'25 Apr, 2020 11:12:12 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (129, N'3344-Weekly-Routine', 3418, 0, 1, N'28 Apr, 2020 12:00:00 AM', CAST(N'2020-04-25T11:15:04.8028829' AS DateTime2), N'25 Apr, 2020 11:15:04 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (130, N'3342-Weekly-Routine', 3417, 0, 1, N'4 May, 2020 12:00:00 AM', CAST(N'2020-04-25T11:15:04.8166273' AS DateTime2), N'25 Apr, 2020 11:15:04 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (131, N'3438-Daily-Routine', 3438, 0, 1, N'27 Apr, 2020 07:38:42 AM', CAST(N'2020-04-27T15:54:00.2691269' AS DateTime2), N'27 Apr, 2020 03:54:00 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (132, N'3439-Daily-Routine', 3439, 0, 1, N'27 Apr, 2020 07:39:34 AM', CAST(N'2020-04-27T15:54:03.0661769' AS DateTime2), N'27 Apr, 2020 03:54:03 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (138, N'3439-Daily-Routine', 3444, 0, 0, N'28 Apr, 2020 09:00:00 AM', CAST(N'2020-04-29T08:48:28.3271482' AS DateTime2), N'29 Apr, 2020 08:48:28 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (139, N'3439-Daily-Routine', 3462, 0, 1, N'29 Apr, 2020 04:00:00 PM', CAST(N'2020-04-29T08:51:10.3404014' AS DateTime2), N'29 Apr, 2020 08:51:10 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (142, N'3441-Weekly-Routine', 3441, 0, 1, N'28 Apr, 2020 06:00:00 PM', CAST(N'2020-05-04T10:35:19.9665427' AS DateTime2), N'4 May, 2020 10:35:19 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (143, N'3424-Daily-Project', 3448, 0, 0, N'28 Apr, 2020 08:48:35 AM', CAST(N'2020-05-04T10:35:26.5194114' AS DateTime2), N'4 May, 2020 10:35:26 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (144, N'3424-Daily-Project', 3445, 0, 0, N'27 Apr, 2020 08:48:35 AM', CAST(N'2020-05-04T10:35:28.9489261' AS DateTime2), N'4 May, 2020 10:35:28 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (145, N'3424-Daily-Project', 3430, 0, 0, N'26 Apr, 2020 08:48:35 AM', CAST(N'2020-05-04T10:35:31.1627555' AS DateTime2), N'4 May, 2020 10:35:31 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (146, N'3424-Daily-Project', 3485, 0, 0, N'27 Apr, 2020 08:48:35 AM', CAST(N'2020-05-04T10:35:40.7939945' AS DateTime2), N'4 May, 2020 10:35:40 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (147, N'3478-SpecificDate-Project', 3478, 0, 0, N'29 Apr, 2020 12:00:00 AM', CAST(N'2020-05-04T10:35:46.1724583' AS DateTime2), N'4 May, 2020 10:35:46 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (148, N'3438-Daily-Routine', 3463, 0, 0, N'29 Apr, 2020 07:38:42 AM', CAST(N'2020-05-04T10:36:06.3003888' AS DateTime2), N'4 May, 2020 10:36:06 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (149, N'3438-Daily-Routine', 3443, 0, 0, N'29 Apr, 2020 07:38:42 AM', CAST(N'2020-05-04T10:36:08.4702204' AS DateTime2), N'4 May, 2020 10:36:08 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (150, N'3439-Daily-Routine', 3479, 0, 0, N'29 Apr, 2020 04:00:00 PM', CAST(N'2020-05-04T10:36:13.4924666' AS DateTime2), N'4 May, 2020 10:36:13 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (151, N'3424-Daily-Project', 3484, 0, 0, N'29 Apr, 2020 08:48:35 AM', CAST(N'2020-05-04T10:36:26.1576999' AS DateTime2), N'4 May, 2020 10:36:26 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (152, N'3435-SpecificDate-Project', 3435, 0, 0, N'29 Apr, 2020 04:30:00 PM', CAST(N'2020-05-04T10:36:38.8915839' AS DateTime2), N'4 May, 2020 10:36:38 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (153, N'3438-Daily-Routine', 3477, 0, 0, N'30 Apr, 2020 07:38:42 AM', CAST(N'2020-05-04T10:36:42.2478676' AS DateTime2), N'4 May, 2020 10:36:42 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (154, N'3434-SpecificDate-Project', 3434, 0, 0, N'30 Apr, 2020 08:00:00 AM', CAST(N'2020-05-04T10:36:54.8853006' AS DateTime2), N'4 May, 2020 10:36:54 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (155, N'3424-Daily-Project', 3488, 0, 0, N'30 Apr, 2020 08:48:35 AM', CAST(N'2020-05-04T10:38:09.0713664' AS DateTime2), N'4 May, 2020 10:38:09 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (156, N'3424-Daily-Project', 3489, 0, 0, N'1 May, 2020 08:48:35 AM', CAST(N'2020-05-04T10:38:25.3524086' AS DateTime2), N'4 May, 2020 10:38:25 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (157, N'3424-Daily-Project', 3490, 0, 0, N'2 May, 2020 08:48:35 AM', CAST(N'2020-05-04T10:38:32.1941180' AS DateTime2), N'4 May, 2020 10:38:32 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (158, N'3424-Daily-Project', 3491, 0, 0, N'3 May, 2020 08:48:35 AM', CAST(N'2020-05-04T10:38:35.2256241' AS DateTime2), N'4 May, 2020 10:38:35 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (159, N'3442-Weekly-Routine', 3442, 0, 1, N'30 Apr, 2020 06:00:00 PM', CAST(N'2020-05-04T10:39:57.1342582' AS DateTime2), N'4 May, 2020 10:39:57 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (160, N'3422-Daily-Project', 3422, 0, 0, N'30 Apr, 2020 04:30:00 PM', CAST(N'2020-05-04T10:41:27.4534033' AS DateTime2), N'4 May, 2020 10:41:27 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (161, N'3439-Daily-Routine', 3480, 0, 0, N'30 Apr, 2020 04:00:00 PM', CAST(N'2020-05-04T10:42:01.2055661' AS DateTime2), N'4 May, 2020 10:42:01 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (162, N'3439-Daily-Routine', 3487, 0, 0, N'1 May, 2020 04:00:00 PM', CAST(N'2020-05-04T10:42:04.1815646' AS DateTime2), N'4 May, 2020 10:42:04 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (163, N'3439-Daily-Routine', 3494, 0, 0, N'2 May, 2020 04:00:00 PM', CAST(N'2020-05-04T10:42:06.5456993' AS DateTime2), N'4 May, 2020 10:42:06 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (164, N'3439-Daily-Routine', 3495, 0, 0, N'3 May, 2020 04:00:00 PM', CAST(N'2020-05-04T10:42:09.4798620' AS DateTime2), N'4 May, 2020 10:42:09 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (165, N'3439-Daily-Routine', 3496, 0, 1, N'4 May, 2020 04:00:00 PM', CAST(N'2020-05-04T10:42:12.2390831' AS DateTime2), N'4 May, 2020 10:42:12 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (166, N'3438-Daily-Routine', 3486, 0, 0, N'1 May, 2020 07:38:42 AM', CAST(N'2020-05-04T10:42:21.3458992' AS DateTime2), N'4 May, 2020 10:42:21 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (167, N'3438-Daily-Routine', 3498, 0, 0, N'2 May, 2020 07:38:42 AM', CAST(N'2020-05-04T10:42:25.2850403' AS DateTime2), N'4 May, 2020 10:42:25 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (168, N'3438-Daily-Routine', 3499, 0, 0, N'3 May, 2020 07:38:42 AM', CAST(N'2020-05-04T10:42:27.9213292' AS DateTime2), N'4 May, 2020 10:42:27 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (169, N'3424-Daily-Project', 3492, 0, 0, N'4 May, 2020 08:48:35 AM', CAST(N'2020-05-04T10:45:25.0331775' AS DateTime2), N'4 May, 2020 10:45:25 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (171, N'3512-SpecificDate-Project', 3512, 0, 0, N'4 May, 2020 12:00:00 AM', CAST(N'2020-05-04T11:10:54.4558371' AS DateTime2), N'4 May, 2020 11:10:54 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (172, N'3438-Daily-Routine', 3500, 0, 0, N'4 May, 2020 07:38:42 AM', CAST(N'2020-05-04T11:12:44.4532360' AS DateTime2), N'4 May, 2020 11:12:44 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (173, N'3509-Weekly-Routine', 3509, 0, 0, N'4 May, 2020 10:00:00 AM', CAST(N'2020-05-04T12:09:18.2591551' AS DateTime2), N'4 May, 2020 12:09:18 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (174, N'3510-Weekly-Routine', 3510, 0, 0, N'4 May, 2020 12:00:00 AM', CAST(N'2020-05-04T12:10:54.8175070' AS DateTime2), N'4 May, 2020 12:10:54 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (175, N'3506-Weekly-Project', 3506, 0, 1, N'4 May, 2020 06:00:00 PM', CAST(N'2020-05-04T12:11:38.4055522' AS DateTime2), N'4 May, 2020 12:11:38 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (178, N'3423-Daily-Project', 3423, 0, 0, N'30 Apr, 2020 12:00:00 AM', CAST(N'2020-05-05T10:39:59.7971228' AS DateTime2), N'5 May, 2020 10:39:59 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (179, N'3440-Weekly-Routine', 3440, 0, 0, N'2 May, 2020 03:00:00 AM', CAST(N'2020-05-05T10:41:07.4211380' AS DateTime2), N'5 May, 2020 10:41:07 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (180, N'3439-Daily-Routine', 3497, 0, 1, N'5 May, 2020 04:00:00 PM', CAST(N'2020-05-05T11:04:12.4124221' AS DateTime2), N'5 May, 2020 11:04:12 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (181, N'3439-Daily-Routine', 3524, 0, 1, N'6 May, 2020 04:00:00 PM', CAST(N'2020-05-05T11:21:31.7112655' AS DateTime2), N'5 May, 2020 11:21:31 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (182, N'3538-Daily-Routine', 3538, 0, 0, N'5 May, 2020 09:00:00 AM', CAST(N'2020-05-05T16:15:26.1102602' AS DateTime2), N'5 May, 2020 04:15:26 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (183, N'3535-Daily-Routine', 3535, 0, 0, N'1 Jan, 0001 12:00:00 AM', CAST(N'2020-05-05T16:16:00.4058603' AS DateTime2), N'5 May, 2020 04:16:00 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (184, N'3543-Daily-Routine', 3543, 0, 0, N'2 Jan, 0001 12:00:00 AM', CAST(N'2020-05-05T16:16:30.8955111' AS DateTime2), N'5 May, 2020 04:16:30 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (185, N'3539-Monthly-Routine', 3539, 0, 1, N'5 May, 2020 04:30:00 PM', CAST(N'2020-05-05T16:18:01.5983304' AS DateTime2), N'5 May, 2020 04:18:01 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (186, N'3438-Daily-Routine', 3513, 0, 0, N'5 May, 2020 07:38:42 AM', CAST(N'2020-05-06T07:54:26.8823358' AS DateTime2), N'6 May, 2020 07:54:26 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (187, N'3441-Weekly-Routine', 3483, 0, 0, N'5 May, 2020 06:00:00 PM', CAST(N'2020-05-06T07:56:30.7712454' AS DateTime2), N'6 May, 2020 07:56:30 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (188, N'3504-Monthly-Project', 3504, 0, 0, N'5 May, 2020 12:00:00 AM', CAST(N'2020-05-06T07:56:37.4585329' AS DateTime2), N'6 May, 2020 07:56:37 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (189, N'3438-Daily-Routine', 3523, 0, 0, N'6 May, 2020 07:38:42 AM', CAST(N'2020-05-06T11:48:46.2461252' AS DateTime2), N'6 May, 2020 11:48:46 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (190, N'3542-Daily-Routine', 3542, 0, 0, N'6 May, 2020 09:00:00 AM', CAST(N'2020-05-06T11:49:02.2938296' AS DateTime2), N'6 May, 2020 11:49:02 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (191, N'3440-Weekly-Routine', 3515, 0, 1, N'9 May, 2020 03:00:00 AM', CAST(N'2020-05-08T07:54:09.2479166' AS DateTime2), N'8 May, 2020 07:54:09 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (192, N'3438-Daily-Routine', 3657, 0, 0, N'7 May, 2020 07:38:42 AM', CAST(N'2020-05-11T11:41:27.1203016' AS DateTime2), N'11 May, 2020 11:41:27 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (193, N'3542-Daily-Routine', 3658, 0, 0, N'7 May, 2020 09:00:00 AM', CAST(N'2020-05-11T11:41:28.6321364' AS DateTime2), N'11 May, 2020 11:41:28 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (194, N'3511-Weekly-Routine', 3511, 0, 0, N'6 May, 2020 12:00:00 AM', CAST(N'2020-05-11T17:20:49.8400497' AS DateTime2), N'11 May, 2020 05:20:49 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (195, N'3442-Weekly-Routine', 3493, 0, 0, N'7 May, 2020 06:00:00 PM', CAST(N'2020-05-11T17:20:52.8000180' AS DateTime2), N'11 May, 2020 05:20:52 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (196, N'3510-Weekly-Routine', 3518, 0, 0, N'11 May, 2020 12:00:00 AM', CAST(N'2020-05-11T17:21:00.5306917' AS DateTime2), N'11 May, 2020 05:21:00 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (197, N'3685-Weekly-Routine', 3685, 0, 0, N'11 May, 2020 10:00:00 AM', CAST(N'2020-05-11T17:21:10.7810939' AS DateTime2), N'11 May, 2020 05:21:10 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (198, N'3686-Weekly-Routine', 3686, 0, 0, N'11 May, 2020 10:00:00 AM', CAST(N'2020-05-11T17:21:13.4045821' AS DateTime2), N'11 May, 2020 05:21:13 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (199, N'3688-Weekly-Routine', 3688, 0, 0, N'11 May, 2020 10:00:00 AM', CAST(N'2020-05-11T17:21:19.4208953' AS DateTime2), N'11 May, 2020 05:21:19 PM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (200, N'3550-SpecificDate-Project', 3550, 0, 0, N'6 May, 2020 12:00:00 PM', CAST(N'2020-05-14T09:33:19.7165084' AS DateTime2), N'14 May, 2020 09:33:19 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (201, N'3546-Monthly-Routine', 3546, 0, 0, N'8 May, 2020 05:30:00 PM', CAST(N'2020-05-14T09:33:41.0044222' AS DateTime2), N'14 May, 2020 09:33:41 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (202, N'3547-Monthly-Routine', 3547, 0, 0, N'8 May, 2020 05:30:00 PM', CAST(N'2020-05-14T09:33:44.4756359' AS DateTime2), N'14 May, 2020 09:33:44 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (204, N'3545-Monthly-Routine', 3545, 0, 0, N'5 May, 2020 05:30:00 PM', CAST(N'2020-05-14T09:34:35.6549650' AS DateTime2), N'14 May, 2020 09:34:35 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (205, N'3508-Weekly-Routine', 3508, 0, 0, N'6 May, 2020 12:00:00 AM', CAST(N'2020-05-14T09:34:38.6227175' AS DateTime2), N'14 May, 2020 09:34:38 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (206, N'3507-SpecificDate-Project', 3507, 0, 0, N'7 May, 2020 12:00:00 AM', CAST(N'2020-05-14T09:36:38.1813853' AS DateTime2), N'14 May, 2020 09:36:38 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (207, N'3503-Monthly-Project', 3503, 0, 0, N'8 May, 2020 12:00:00 AM', CAST(N'2020-05-14T09:36:40.3572468' AS DateTime2), N'14 May, 2020 09:36:40 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (208, N'3505-Monthly-Project', 3505, 0, 0, N'8 May, 2020 03:00:00 AM', CAST(N'2020-05-14T09:36:42.3648960' AS DateTime2), N'14 May, 2020 09:36:42 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (211, N'3509-Weekly-Routine', 3517, 0, 0, N'11 May, 2020 10:00:00 AM', CAST(N'2020-05-14T09:37:02.9691612' AS DateTime2), N'14 May, 2020 09:37:02 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (213, N'3506-Weekly-Project', 3519, 0, 0, N'11 May, 2020 06:00:00 PM', CAST(N'2020-05-14T09:37:31.5169074' AS DateTime2), N'14 May, 2020 09:37:31 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (214, N'3441-Weekly-Routine', 3530, 0, 0, N'12 May, 2020 06:00:00 PM', CAST(N'2020-05-14T09:37:40.2762447' AS DateTime2), N'14 May, 2020 09:37:40 AM')
GO
INSERT [dbo].[Histories] ([ID], [TaskCode], [TaskID], [UserID], [Status], [Deadline], [CreatedDate], [ModifyDateTime]) VALUES (221, N'3737-SpecificDate-Project', 3737, 0, 1, N'30 May, 2020 12:00:00 AM', CAST(N'2020-05-18T14:10:40.1132531' AS DateTime2), N'18 May, 2020 02:10:40 PM')
GO
SET IDENTITY_INSERT [dbo].[Histories] OFF
GO
SET IDENTITY_INSERT [dbo].[Managers] ON 
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 1, 1)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (3, 1, 2)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 2, 3)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 3, 4)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (3, 3, 5)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 37, 6)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 54, 7)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 55, 8)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (3, 55, 9)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (45, 57, 11)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (44, 57, 12)
GO
INSERT [dbo].[Managers] ([UserID], [ProjectID], [ID]) VALUES (2, 58, 13)
GO
SET IDENTITY_INSERT [dbo].[Managers] OFF
GO
SET IDENTITY_INSERT [dbo].[NotificationDetails] ON 
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (27, 41, 196, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (28, 41, 197, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (29, 2, 198, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (30, 2, 199, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (31, 41, 200, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (32, 2, 201, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (33, 2, 202, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (34, 42, 203, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (35, 2, 204, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (36, 2, 205, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (37, 2, 206, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (38, 2, 207, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (39, 2, 208, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (42, 3, 211, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (43, 7, 212, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (44, 7, 213, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (45, 4, 214, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (46, 4, 215, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (47, 7, 216, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (48, 7, 217, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (49, 7, 218, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (50, 7, 219, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (51, 7, 220, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (52, 7, 221, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (53, 7, 222, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (54, 7, 223, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (55, 2, 230, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (56, 41, 231, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (57, 40, 232, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (58, 41, 233, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (59, 41, 234, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (60, 2, 235, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (61, 41, 236, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (62, 41, 315, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (63, 41, 316, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (64, 2, 356, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (65, 2, 357, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (66, 2, 358, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (67, 2, 359, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (68, 2, 360, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (69, 2, 361, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (70, 45, 362, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (71, 44, 363, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (72, 44, 364, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (73, 44, 365, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (74, 44, 366, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (75, 7, 774, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (76, 43, 775, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (77, 42, 776, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (78, 42, 777, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (79, 42, 778, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (80, 41, 782, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (81, 41, 783, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (82, 7, 784, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (83, 42, 786, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (84, 41, 787, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (85, 41, 788, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (86, 41, 789, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (87, 41, 790, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (88, 41, 791, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (89, 40, 792, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (90, 41, 793, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (91, 41, 794, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (92, 40, 795, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (93, 41, 796, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (94, 3, 797, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (95, 3, 798, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (96, 3, 799, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (97, 3, 800, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (98, 2, 801, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (99, 2, 802, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (100, 2, 803, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (101, 2, 804, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (102, 4, 805, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (103, 3, 806, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (104, 3, 807, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (105, 3, 808, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (106, 3, 809, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (107, 3, 810, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (108, 3, 811, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (109, 3, 812, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (110, 2, 813, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (111, 3, 814, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (112, 3, 815, 0)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (113, 3, 816, 1)
GO
INSERT [dbo].[NotificationDetails] ([ID], [UserID], [NotificationID], [Seen]) VALUES (114, 2, 817, 0)
GO
SET IDENTITY_INSERT [dbo].[NotificationDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (196, NULL, 3503, N'You are late for the task name: ''月份KPI更新'' on 08 May, 2020 12:00:00 AM', N'BeLate', N'/todolist/月份KPI更新', CAST(N'2020-05-08T16:30:06.6048435' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (197, NULL, 3505, N'You are late for the task name: ''廠區月報簡報'' on 08 May, 2020 03:00:00 AM', N'BeLate', N'/todolist/廠區月報簡報', CAST(N'2020-05-08T16:30:06.8400967' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (198, NULL, 3507, N'You are late for the task name: ''提交專案文件'' on 07 May, 2020 12:00:00 AM', N'BeLate', N'/todolist/提交專案文件', CAST(N'2020-05-08T16:30:06.8597904' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (199, NULL, 3550, N'You are late for the task name: ''調膠房一分鐘介紹影片'' on 06 May, 2020 12:00:00 PM', N'BeLate', N'/todolist/調膠房一分鐘介紹影片', CAST(N'2020-05-08T16:30:06.8750320' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (200, NULL, 3493, N'You are late for the task name: ''越語課(週四晚上)'' on 07 May, 2020 06:00:00 PM', N'BeLate', N'/todolist/越語課(週四晚上)', CAST(N'2020-05-08T16:30:06.9105435' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (201, NULL, 3508, N'You are late for the task name: ''主管早會會議記錄Review'' on 06 May, 2020 12:00:00 AM', N'BeLate', N'/todolist/主管早會會議記錄Review', CAST(N'2020-05-08T16:30:06.9263537' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (202, NULL, 3511, N'You are late for the task name: ''主管早會會議紀錄'' on 06 May, 2020 12:00:00 AM', N'BeLate', N'/todolist/主管早會會議紀錄', CAST(N'2020-05-08T16:30:06.9425990' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (203, NULL, 3540, N'You are late for the task name: ''Review'' on 06 May, 2020 10:00:00 AM', N'BeLate', N'/todolist/Review', CAST(N'2020-05-08T16:30:06.9596946' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (204, NULL, 3545, N'You are late for the task name: ''異常費用與消耗用品月報'' on 05 May, 2020 05:30:00 PM', N'BeLate', N'/todolist/異常費用與消耗用品月報', CAST(N'2020-05-08T16:30:06.9741893' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (205, NULL, 3664, N'You are late for the task name: ''Demo daily is late'' on 07 May, 2020 03:04:53 PM', N'BeLate', N'/todolist/Demo-daily-is-late', CAST(N'2020-05-08T16:30:06.9893869' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (206, NULL, 3668, N'You are late for the task name: ''Demo daily is late'' on 08 May, 2020 03:04:53 PM', N'BeLate', N'/todolist/Demo-daily-is-late', CAST(N'2020-05-08T16:30:07.0072051' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (207, NULL, 3670, N'You are late for the task name: ''Demo daily is late'' on 09 May, 2020 03:04:53 PM', N'BeLate', N'/todolist/Demo-daily-is-late', CAST(N'2020-05-11T07:37:20.6033119' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (208, NULL, 3671, N'You are late for the task name: ''Demo daily is late'' on 10 May, 2020 03:04:53 PM', N'BeLate', N'/todolist/Demo-daily-is-late', CAST(N'2020-05-11T07:37:50.8254933' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (211, NULL, 3431, N'You are late for the task name: ''OKR update via email&website'' on 11 May, 2020 12:00:00 AM', N'BeLate', N'/todolist/OKR-update-via-email&website', CAST(N'2020-05-11T08:36:14.6139367' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (212, NULL, 3432, N'You are late for the task name: ''OKR update to Team leader'' on 09 May, 2020 12:00:00 AM', N'BeLate', N'/todolist/OKR-update-to-Team-leader', CAST(N'2020-05-11T08:45:23.1627145' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (213, 2, 3674, N'Peter assigned you the task name '' Demo Daily '' ', N'Assigned', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:18:36.6173417' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (214, 2, 3674, N'Peter has assigned you as deputy of the task name '' Demo Daily ''', N'ChangeDeputy', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:18:36.6439465' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (215, NULL, 3674, N'You are late for the task name: ''Demo Daily'' on 07 May, 2020 09:18:13 AM', N'BeLate', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:18:42.5685904' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (216, NULL, 3675, N'You are late for the task name: ''Demo Daily'' on 08 May, 2020 09:18:13 AM', N'BeLate', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:19:12.7071788' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (217, NULL, 3676, N'You are late for the task name: ''Demo Daily'' on 09 May, 2020 09:18:13 AM', N'BeLate', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:19:43.1592350' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (218, NULL, 3677, N'You are late for the task name: ''Demo Daily'' on 10 May, 2020 09:18:13 AM', N'BeLate', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:20:13.4419557' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (219, NULL, 3678, N'You are late for the task name: ''Demo Daily'' on 11 May, 2020 09:18:13 AM', N'BeLate', N'/todolist/Demo-Daily', CAST(N'2020-05-11T09:20:43.3877634' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (220, NULL, 3680, N'Peter assigned you the task name '' De '' ', N'Assigned', N'/todolist/De', CAST(N'2020-05-11T10:28:09.7424775' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (221, NULL, 3681, N'Peter assigned you the task name '' lo '' ', N'Assigned', N'/todolist/lo', CAST(N'2020-05-11T10:30:42.6584627' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (222, NULL, 3682, N'Peter assigned you the task name '' UI '' ', N'Assigned', N'/todolist/UI', CAST(N'2020-05-11T10:38:57.3186850' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (223, 3, 3683, N'Peter assigned you the task name '' Demo '' ', N'Assigned', N'/todolist/Demo', CAST(N'2020-05-11T10:43:30.6467312' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (230, 40, 3657, N'Stone.Huang has already finished the task name '' 經營日報表(每日12點前寄出) ''', N'Done', N'/history/經營日報表(每日12點前寄出)', CAST(N'2020-05-11T11:41:27.0597503' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (231, 40, 3658, N'Stone.Huang has already finished the task name '' 每日早會(工作計畫、指派、回報) ''', N'Done', N'/history/每日早會(工作計畫、指派、回報)', CAST(N'2020-05-11T11:41:28.6195655' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (232, 2, 3533, N'Swook.Lu assigned you the task name '' 發經營日報表郵件 '' ', N'Assigned', N'/todolist/發經營日報表郵件', CAST(N'2020-05-11T14:04:27.1724067' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (233, 2, 3533, N'Swook.Lu has assigned you as deputy of the task name '' 發經營日報表郵件 ''', N'ChangeDeputy', N'/todolist/發經營日報表郵件', CAST(N'2020-05-11T14:04:27.1930751' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (234, 2, 3685, N'Swook.Lu assigned you the task name '' 主管早會會議紀錄 '' ', N'Assigned', N'/todolist/主管早會會議紀錄', CAST(N'2020-05-11T14:07:04.0199457' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (235, 2, 3685, N'Swook.Lu has assigned you as deputy of the task name '' 主管早會會議紀錄 ''', N'ChangeDeputy', N'/todolist/主管早會會議紀錄', CAST(N'2020-05-11T14:07:04.0275697' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (236, 2, 3686, N'Swook.Lu assigned you the task name '' 主管早會會議紀錄 '' ', N'Assigned', N'/todolist/主管早會會議紀錄', CAST(N'2020-05-11T14:07:37.1252924' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (315, 2, 3688, N'Swook.Lu assigned you the task name '' 主管會議早會會議紀錄 '' ', N'Assigned', N'/todolist/主管會議早會會議紀錄', CAST(N'2020-05-11T15:13:30.0483853' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (316, 2, 3689, N'Swook.Lu assigned you the task name '' 主管早會會議紀錄 '' ', N'Assigned', N'/todolist/主管早會會議紀錄', CAST(N'2020-05-11T15:13:55.9211882' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (356, 41, 3511, N'Damaris.Li has already finished the task name '' 主管早會會議紀錄 ''', N'Done', N'/history/主管早會會議紀錄', CAST(N'2020-05-11T17:20:49.7880274' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (357, 41, 3493, N'Damaris.Li has already finished the task name '' 越語課(週四晚上) ''', N'Done', N'/history/越語課(週四晚上)', CAST(N'2020-05-11T17:20:52.7915095' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (358, 41, 3518, N'Damaris.Li has already finished the task name '' 主管早會會議紀錄 ''', N'Done', N'/history/主管早會會議紀錄', CAST(N'2020-05-11T17:21:00.5229148' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (359, 41, 3685, N'Damaris.Li has already finished the task name '' 主管早會會議紀錄 ''', N'Done', N'/history/主管早會會議紀錄', CAST(N'2020-05-11T17:21:10.7735820' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (360, 41, 3686, N'Damaris.Li has already finished the task name '' 主管早會會議紀錄 ''', N'Done', N'/history/主管早會會議紀錄', CAST(N'2020-05-11T17:21:13.3983161' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (361, 41, 3688, N'Damaris.Li has already finished the task name '' 主管會議早會會議紀錄 ''', N'Done', N'/history/主管會議早會會議紀錄', CAST(N'2020-05-11T17:21:19.4135784' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (362, 45, 0, N'The Anita.Yang account has assigned you as manager of ME 2020 專案 project', N'Manager', N'/project/detail/57', CAST(N'2020-05-11T17:24:48.8101427' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (363, 45, 0, N'The Anita.Yang account has assigned you as member of ME 2020 專案 project', N'Member', N'/project-detail/57', CAST(N'2020-05-11T17:24:55.0634345' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (364, 45, 0, N'The Anita.Yang account has assigned you as manager of ME 2020 專案 project', N'Manager', N'/project/detail/57', CAST(N'2020-05-11T17:25:01.0208202' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (365, 45, 3693, N'Anita.Yang has assigned you the task name '' test '' in ME 2020 專案 project', N'Assigned', N'/todolist/test', CAST(N'2020-05-11T17:25:22.4342055' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (366, 45, 3694, N'Anita.Yang has assigned you the task name '' 12312312 '' in ME 2020 專案 project', N'Assigned', N'/todolist/12312312', CAST(N'2020-05-11T17:27:31.8440849' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (774, 4, 0, N'The Leo account has assigned you as member of Homepage of Lab-Team project', N'Member', N'/project-detail/37', CAST(N'2020-05-14T07:33:53.5563848' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (775, 2, 3550, N'Swook.Lu has already finished the task name '' 調膠房一分鐘介紹影片 '' in FHO special tasks project', N'Done', N'/history/調膠房一分鐘介紹影片', CAST(N'2020-05-14T09:33:19.7027728' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (776, 2, 3546, N'Swook.Lu has already finished the task name '' 月份KPI更新 ''', N'Done', N'/history/月份KPI更新', CAST(N'2020-05-14T09:33:40.9848022' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (777, 2, 3547, N'Swook.Lu has already finished the task name '' 廠區月報 ''', N'Done', N'/history/廠區月報', CAST(N'2020-05-14T09:33:44.4382429' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (778, 2, 3540, N'Swook.Lu has already finished the task name '' Review ''', N'Done', N'/history/Review', CAST(N'2020-05-14T09:33:55.5243901' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (779, 2, 3545, N'Swook.Lu has already finished the task name '' 異常費用與消耗用品月報 ''', N'Done', N'/history/異常費用與消耗用品月報', CAST(N'2020-05-14T09:34:35.6485497' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (780, 2, 3508, N'Swook.Lu has already finished the task name '' 主管早會會議記錄Review ''', N'Done', N'/history/主管早會會議記錄Review', CAST(N'2020-05-14T09:34:38.6175039' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (781, 2, 3507, N'Swook.Lu has already finished the task name '' 提交專案文件 '' in FHO special tasks project', N'Done', N'/history/提交專案文件', CAST(N'2020-05-14T09:36:38.1753151' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (782, 2, 3503, N'Swook.Lu has already finished the task name '' 月份KPI更新 '' in FHO special tasks project', N'Done', N'/history/月份KPI更新', CAST(N'2020-05-14T09:36:40.3500424' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (783, 2, 3505, N'Swook.Lu has already finished the task name '' 廠區月報簡報 '' in FHO special tasks project', N'Done', N'/history/廠區月報簡報', CAST(N'2020-05-14T09:36:42.3580817' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (784, 2, 3432, N'Swook.Lu has already finished the task name '' OKR update to Team leader ''', N'Done', N'/history/OKR-update-to-Team-leader', CAST(N'2020-05-14T09:36:54.7248202' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (785, 2, 3517, N'Swook.Lu has already finished the task name '' 主管早會會議記錄Review ''', N'Done', N'/history/主管早會會議記錄Review', CAST(N'2020-05-14T09:37:02.9642657' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (786, 2, 3541, N'Swook.Lu has already finished the task name '' Review ''', N'Done', N'/history/Review', CAST(N'2020-05-14T09:37:18.9084330' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (787, 2, 3519, N'Swook.Lu has already finished the task name '' 周稽核報告 '' in FHO special tasks project', N'Done', N'/history/周稽核報告', CAST(N'2020-05-14T09:37:31.5071311' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (788, 2, 3530, N'Swook.Lu has already finished the task name '' 越語課(週二晚上) ''', N'Done', N'/history/越語課(週二晚上)', CAST(N'2020-05-14T09:37:40.2694221' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (789, 2, 3689, N'Swook.Lu has changed deadline to 13 May, 2020 10:00:00 AM of the task name '' 主管早會會議紀錄(週三) ''', N'ChangeWeekly', N'/todolist/主管早會會議紀錄(週三)', CAST(N'2020-05-14T09:40:54.3470236' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (790, 2, 3687, N'Swook.Lu has changed deadline to 18 May, 2020 10:00:00 AM of the task name '' 主管早會會議紀錄(周一) ''', N'ChangeWeekly', N'/todolist/主管早會會議紀錄(周一)', CAST(N'2020-05-14T09:41:11.1642335' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (791, 2, 3701, N'Swook.Lu assigned you the task name '' 稽核周報 '' ', N'Assigned', N'/todolist/稽核周報', CAST(N'2020-05-14T09:42:42.1901811' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (792, 2, 3701, N'Swook.Lu has assigned you as deputy of the task name '' 稽核周報 ''', N'ChangeDeputy', N'/todolist/稽核周報', CAST(N'2020-05-14T09:42:42.1998986' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (793, 2, 3701, N'Swook.Lu has changed deadline to 18 May, 2020 04:30:00 AM of the task name '' 稽核周報(每周一下班前發出) ''', N'ChangeWeekly', N'/todolist/稽核周報(每周一下班前發出)', CAST(N'2020-05-14T09:43:01.0528707' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (794, 2, 3702, N'Swook.Lu assigned you the task name '' 每天核對WMS以及MPS稽核報告 '' ', N'Assigned', N'/todolist/每天核對WMS以及MPS稽核報告', CAST(N'2020-05-14T09:44:13.4313086' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (795, 2, 3702, N'Swook.Lu has assigned you as deputy of the task name '' 每天核對WMS以及MPS稽核報告 ''', N'ChangeDeputy', N'/todolist/每天核對WMS以及MPS稽核報告', CAST(N'2020-05-14T09:44:13.4355278' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (796, 2, 3703, N'Swook.Lu assigned you the task name '' 新人工作簡報準備(練習_C201練習) '' ', N'Assigned', N'/todolist/新人工作簡報準備(練習_C201練習)', CAST(N'2020-05-14T09:45:13.2844758' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (797, 2, 3716, N'Swook.Lu assigned you the task name '' Demo routine '' ', N'Assigned', N'/todolist/Demo-routine', CAST(N'2020-05-18T10:25:37.8311742' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (798, 2, 3717, N'Swook.Lu assigned you the task name '' Test routine task '' ', N'Assigned', N'/todolist/Test-routine-task', CAST(N'2020-05-18T10:27:17.9501580' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (799, 2, 3730, N'Swook.Lu assigned you the task name '' Task 1 '' ', N'Assigned', N'/todolist/Task-1', CAST(N'2020-05-18T10:56:37.4404118' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (800, 2, 3731, N'Swook.Lu assigned you the task name '' Task 1.1 '' ', N'Assigned', N'/todolist/Task-1.1', CAST(N'2020-05-18T11:04:16.6903802' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (801, 3, 3731, N'Peter has already finished the task name '' Task 1.1 ''', N'Done', N'/history/Task-1.1', CAST(N'2020-05-18T11:08:32.1705330' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (802, 3, 3731, N'Peter has already finished the task name '' Task 1.1 ''', N'Done', N'/history/Task-1.1', CAST(N'2020-05-18T11:37:34.6425475' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (803, 3, 3731, N'Peter has already finished the task name '' Task 1.1 ''', N'Done', N'/history/Task-1.1', CAST(N'2020-05-18T11:41:27.5469163' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (804, 2, 0, N'The Swook.Lu account has assigned you as manager of Demo project', N'Manager', N'/project/detail/58', CAST(N'2020-05-18T13:31:46.2823730' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (805, 2, 0, N'The Swook.Lu account has assigned you as member of Demo project', N'Member', N'/project-detail/58', CAST(N'2020-05-18T13:31:55.0126040' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (806, 2, 3735, N'Swook.Lu has assigned you the task name '' Task of project 1 '' in Demo project', N'Assigned', N'/todolist/Task-of-project-1', CAST(N'2020-05-18T13:51:31.2376231' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (807, 2, 3735, N'Swook.Lu has assigned you as deputy of the task name '' Task of project 1 '' in Demo project', N'ChangeDeadline', N'/todolist/Task-of-project-1', CAST(N'2020-05-18T13:51:31.3169280' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (808, 2, 3736, N'Swook.Lu has assigned you the task name '' Sub task of project '' in Demo project', N'Assigned', N'/todolist/Sub-task-of-project', CAST(N'2020-05-18T13:54:38.1318858' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (809, 2, 3736, N'Swook.Lu has assigned you as deputy of the task name '' Sub task of project '' in Demo project', N'ChangeDeadline', N'/todolist/Sub-task-of-project', CAST(N'2020-05-18T13:55:19.9777746' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (810, 2, 3737, N'Swook.Lu has assigned you the task name '' Demo Main Task of Project 2 '' in Demo project', N'Assigned', N'/todolist/Demo-Main-Task-of-Project-2', CAST(N'2020-05-18T14:07:12.1471135' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (811, 2, 3738, N'Swook.Lu has assigned you the task name '' Demo Sub task '' in Demo project', N'Assigned', N'/todolist/Demo-Sub-task', CAST(N'2020-05-18T14:08:35.9351351' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (812, 2, 3739, N'Swook.Lu has assigned you the task name '' Demo task 2 '' in Demo project', N'Assigned', N'/todolist/Demo-task-2', CAST(N'2020-05-18T14:09:05.9856806' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (813, 3, 3737, N'Peter has already finished the task name '' Demo Main Task of Project 2 '' in Demo project', N'Done', N'/history/Demo-Main-Task-of-Project-2', CAST(N'2020-05-18T14:10:40.0957658' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (814, 2, 3740, N'Swook.Lu assigned you the task name '' Main 1 '' ', N'Assigned', N'/todolist/Main-1', CAST(N'2020-05-18T14:46:52.3427125' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (815, 2, 3740, N'Swook.Lu assigned you the task name '' Main 1 '' ', N'Assigned', N'/todolist/Main-1', CAST(N'2020-05-18T14:49:21.0790938' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (816, 2, 3741, N'Swook.Lu assigned you the task name '' Sub 1 '' ', N'Assigned', N'/todolist/Sub-1', CAST(N'2020-05-18T14:49:24.9778387' AS DateTime2))
GO
INSERT [dbo].[Notifications] ([ID], [UserID], [TaskID], [Message], [Function], [URL], [CreatedTime]) VALUES (817, 3, 3741, N'Peter has already finished the task name '' Sub 1 ''', N'Done', N'/history/Sub-1', CAST(N'2020-05-18T14:50:20.2848898' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[OCs] ON 
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (1, N'SHC', 1, 0)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (19, N'Lab Team', 2, 18)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (20, N'FHO (Factory Head Office)', 2, 1)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (21, N'Lab Team', 3, 20)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (22, N'Affair Admin Team', 3, 20)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (33, N'Lab Team 2', 3, 30)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (35, N'SHC 1.1', 2, 34)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (36, N'shc 1.3', 3, 35)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (38, N'Lab Team 3', 3, 37)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (40, N'Lab Team 3', 3, 39)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (41, N'ADM', 2, 1)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (42, N'人事組', 3, 41)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (43, N'行政組', 3, 41)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (44, N'稽核專案組', 3, 41)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (45, N'ME', 2, 1)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (46, N'TD', 3, 45)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (47, N'IE', 3, 45)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (52, N'SHC1', 1, 0)
GO
INSERT [dbo].[OCs] ([ID], [Name], [Level], [ParentID]) VALUES (53, N'Department Center 2', 2, 52)
GO
SET IDENTITY_INSERT [dbo].[OCs] OFF
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (2, 20, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (3, 21, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (4, 21, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (7, 21, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (36, 22, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (40, 22, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (41, 22, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (44, 46, 1)
GO
INSERT [dbo].[OCUsers] ([UserID], [OCID], [Status]) VALUES (45, 45, 1)
GO
SET IDENTITY_INSERT [dbo].[Participants] ON 
GO
INSERT [dbo].[Participants] ([ID], [UserID], [RoomID]) VALUES (1, 44, 35)
GO
INSERT [dbo].[Participants] ([ID], [UserID], [RoomID]) VALUES (2, 45, 35)
GO
INSERT [dbo].[Participants] ([ID], [UserID], [RoomID]) VALUES (3, 2, 36)
GO
INSERT [dbo].[Participants] ([ID], [UserID], [RoomID]) VALUES (4, 3, 36)
GO
INSERT [dbo].[Participants] ([ID], [UserID], [RoomID]) VALUES (5, 7, 36)
GO
INSERT [dbo].[Participants] ([ID], [UserID], [RoomID]) VALUES (6, 4, 36)
GO
SET IDENTITY_INSERT [dbo].[Participants] OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (1, N'KPI System v1', 1, 2, 2, N'Swook.Lu', CAST(N'2020-02-29T09:54:55.8236417' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (2, N'Mixing Room v1', 1, 2, 3, N'Peter', CAST(N'2020-02-29T09:54:55.8236417' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (3, N'Work Mangement System v1', 1, 2, 5, N'Swook.Lu', CAST(N'2020-02-29T09:54:55.8236417' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (37, N'Homepage of Lab-Team', 1, 2, 15, N'Swook.Lu', CAST(N'2020-03-02T15:23:35.4284758' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (54, N'FHO special tasks', 1, 2, 32, N'Swook.Lu', CAST(N'2020-03-12T14:21:13.4443693' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (55, N'Mixing Room v2', 1, 2, 33, N'Swook.Lu', CAST(N'2020-04-11T15:22:08.3499881' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (57, N'ME 2020 專案', 1, 45, 35, N'Anita.Yang', CAST(N'2020-05-11T17:24:38.3107068' AS DateTime2))
GO
INSERT [dbo].[Projects] ([ID], [Name], [Status], [CreatedBy], [Room], [CreatedByName], [CreatedDate]) VALUES (58, N'Demo', 1, 2, 36, N'Swook.Lu', CAST(N'2020-05-18T13:31:35.2297350' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (1, N'admin')
GO
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (2, N'user')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (2, 1, N'KPI System', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (3, 2, N'Mixing Room', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (5, 3, N'Work Mangement System', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (15, 37, N'Home Lab-Team', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (32, 54, N'FHO specail tasks', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (33, 55, N'Electronic Scale', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (35, 57, N'ME 2020 專案', 0)
GO
INSERT [dbo].[Rooms] ([ID], [ProjectID], [Name], [Type]) VALUES (36, 58, N'Demo', 0)
GO
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3435, 1)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3436, 2)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3441, 3)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3442, 4)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3478, 5)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3483, 6)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3493, 7)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3502, 8)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3503, 9)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3505, 10)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3507, 11)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3508, 12)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3509, 13)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3512, 14)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3517, 15)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3530, 16)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3545, 20)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3550, 21)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3551, 22)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3342, 23)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3400, 24)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3402, 25)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3417, 26)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3420, 27)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3431, 30)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3440, 31)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3515, 35)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3345, 44)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3419, 45)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3423, 46)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3433, 48)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3440, 49)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3515, 51)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3344, 52)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3418, 54)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3422, 55)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3424, 56)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3427, 58)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3430, 60)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3432, 61)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3434, 62)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3440, 63)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3445, 64)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3448, 65)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3484, 69)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3485, 70)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3488, 71)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3489, 72)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3490, 73)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3491, 74)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3492, 75)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3515, 78)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3438, 89)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3439, 90)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3443, 91)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3444, 92)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3462, 93)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3463, 94)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3477, 95)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3479, 96)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3480, 97)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3486, 98)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3487, 99)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3494, 100)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3495, 101)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3496, 102)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3497, 103)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3498, 104)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3499, 105)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3500, 106)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3506, 107)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3512, 108)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3513, 109)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3519, 110)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3523, 111)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3524, 112)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3542, 115)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3657, 116)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (40, 3658, 117)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3439, 118)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3441, 119)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3442, 120)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3444, 121)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3462, 122)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3479, 123)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3480, 124)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3483, 125)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3487, 126)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3493, 127)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3494, 128)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3495, 129)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3496, 130)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3497, 131)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3502, 132)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3503, 133)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3504, 134)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3505, 135)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3506, 136)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3510, 137)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3511, 138)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3512, 139)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3518, 140)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3519, 141)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3522, 142)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3524, 143)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3530, 144)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3542, 146)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3544, 147)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3658, 148)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (42, 3535, 151)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (42, 3544, 156)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (42, 3546, 157)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (42, 3547, 158)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3665, 171)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3665, 172)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3666, 173)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3666, 174)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3667, 175)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3667, 176)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3679, 188)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3685, 195)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3686, 196)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3687, 197)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3688, 198)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3689, 199)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (44, 3693, 203)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (44, 3694, 204)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3695, 205)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3695, 206)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3696, 207)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3700, 212)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3700, 213)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3701, 214)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3702, 215)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3703, 216)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3704, 217)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3705, 218)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (2, 3706, 219)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (41, 3706, 220)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3707, 222)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3708, 223)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3709, 224)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3710, 225)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3711, 226)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (4, 3712, 227)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3713, 228)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3714, 229)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3732, 230)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (7, 3733, 242)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3735, 243)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3736, 244)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3737, 245)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3738, 246)
GO
INSERT [dbo].[Tags] ([UserID], [TaskID], [ID]) VALUES (3, 3740, 249)
GO
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3342, N'3342-Weekly-Routine', N'OKR update via email&website', 0, 1, 0, NULL, 2, 21, 3, N'H', N'24 Apr, 2020 04:10:40 PM', 1, 1, CAST(N'2020-04-10T14:56:59.8404742' AS DateTime2), 2, 2, CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3344, N'3344-Weekly-Routine', N'OKR update to Team leader', 3342, 2, 0, NULL, 2, 21, 3, N'H', N'24 Apr, 2020 04:08:47 PM', 0, 1, CAST(N'2020-04-10T15:00:29.5278382' AS DateTime2), 2, 2, CAST(N'2020-04-25T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3345, N'3345-Weekly-Routine', N'OKR update to Team leader', 3342, 2, 0, NULL, 2, 21, 3, N'H', N'24 Apr, 2020 04:10:40 PM', 1, 1, CAST(N'2020-04-10T15:00:56.1821813' AS DateTime2), 2, 2, CAST(N'2020-04-25T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3400, N'3400-Weekly-Routine', N'Demo weekly', 0, 1, 0, NULL, 3, 21, 3, N'M', N'24 Apr, 2020 04:11:35 PM', 0, 1, CAST(N'2020-04-24T15:07:42.4555691' AS DateTime2), 2, 2, CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3402, N'3402-Daily-Routine', N'Daily Test', 0, 1, 0, NULL, 3, 21, 3, N'H', N'24 Apr, 2020 04:11:30 PM', 0, 1, CAST(N'2020-04-24T15:24:15.7661511' AS DateTime2), 1, 2, CAST(N'2020-04-24T15:24:04.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3417, N'3342-Weekly-Routine', N'OKR update via email&website', 0, 1, 0, NULL, 2, 21, 3, N'H', N'25 Apr, 2020 11:15:04 AM', 1, 1, CAST(N'2020-04-10T14:56:59.8404742' AS DateTime2), 2, 2, CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3418, N'3344-Weekly-Routine', N'OKR update to Team leader', 3417, 2, 0, NULL, 2, 21, 3, N'H', N'25 Apr, 2020 11:15:04 AM', 1, 1, CAST(N'2020-04-10T15:00:29.5278382' AS DateTime2), 2, 2, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3419, N'3345-Weekly-Routine', N'OKR update to Team leader', 3417, 2, 0, NULL, 2, 21, 3, N'H', N'25 Apr, 2020 11:12:12 AM', 0, 1, CAST(N'2020-04-10T15:00:56.1821813' AS DateTime2), 2, 2, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3420, N'3402-Daily-Routine', N'Daily Test', 0, 1, 0, NULL, 3, 21, 3, N'H', N'25 Apr, 2020 11:04:28 AM', 0, 1, CAST(N'2020-04-24T15:24:15.7661511' AS DateTime2), 1, 2, CAST(N'2020-04-25T15:24:04.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3422, N'3422-Daily-Project', N'Analyzing Data', 0, 1, 0, 1, 2, NULL, 3, N'H', N'04 May, 2020 10:41:27 AM', 1, 1, CAST(N'2020-04-25T07:49:50.0249683' AS DateTime2), 6, 1, CAST(N'2020-04-30T16:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3423, N'3423-Daily-Project', N'Design UI', 0, 1, 0, 1, 2, NULL, 3, N'H', N'05 May, 2020 10:39:59 AM', 1, 1, CAST(N'2020-04-25T07:50:19.6614474' AS DateTime2), 6, 1, CAST(N'2020-04-30T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3424, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'25 Apr, 2020 11:05:35 AM', 0, 1, CAST(N'2020-04-25T08:48:48.0373148' AS DateTime2), 1, 1, CAST(N'2020-04-25T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3427, N'3427-Daily-Routine', N'Demo daily 4-25-2020', 0, 1, 0, NULL, 3, 21, 3, N'M', N'25 Apr, 2020 10:46:18 AM', 0, 1, CAST(N'2020-04-25T10:45:55.9150548' AS DateTime2), 1, 2, CAST(N'2020-04-25T10:45:40.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3430, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:35:31 AM', 0, 1, CAST(N'2020-04-25T08:48:48.0373148' AS DateTime2), 1, 1, CAST(N'2020-04-26T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3431, N'3342-Weekly-Routine', N'OKR update via email&website', 0, 1, 0, NULL, 2, 21, 3, N'H', N'14 May, 2020 09:36:54 AM', 0, 0, CAST(N'2020-04-10T14:56:59.8404742' AS DateTime2), 2, 2, CAST(N'2020-05-11T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3432, N'3344-Weekly-Routine', N'OKR update to Team leader', 3431, 2, 0, NULL, 2, 21, 3, N'H', N'14 May, 2020 09:36:54 AM', 0, 0, CAST(N'2020-04-10T15:00:29.5278382' AS DateTime2), 2, 2, CAST(N'2020-05-09T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3433, N'3345-Weekly-Routine', N'OKR update to Team leader', 3431, 2, 0, NULL, 2, 21, 3, N'H', N'05 May, 2020 10:16:19 AM', 0, 0, CAST(N'2020-04-10T15:00:56.1821813' AS DateTime2), 2, 2, CAST(N'2020-05-05T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3434, N'3434-SpecificDate-Project', N'Guidane', 0, 1, 0, 55, 3, NULL, 3, N'H', N'04 May, 2020 10:36:54 AM', 1, 1, CAST(N'2020-04-25T15:29:49.1561727' AS DateTime2), 6, 1, CAST(N'2020-04-30T08:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3435, N'3435-SpecificDate-Project', N'生產規劃準備系統review', 0, 1, 0, 54, 2, NULL, 2, N'M', N'04 May, 2020 10:36:38 AM', 1, 1, CAST(N'2020-04-27T07:28:58.2215441' AS DateTime2), 6, 1, CAST(N'2020-04-29T16:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3436, N'3436-SpecificDate-Project', N'異常費用與消耗用品製作SOP', 0, 1, 0, 54, 2, NULL, 2, N'M', NULL, 0, 0, CAST(N'2020-04-27T07:29:57.5577718' AS DateTime2), 6, 1, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3438, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'27 Apr, 2020 03:54:00 PM', 0, 1, CAST(N'2020-04-27T07:39:28.2926475' AS DateTime2), 1, 2, CAST(N'2020-04-27T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3439, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'27 Apr, 2020 03:54:03 PM', 0, 1, CAST(N'2020-04-27T07:39:57.8600947' AS DateTime2), 1, 2, CAST(N'2020-04-27T07:39:34.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3440, N'3440-Weekly-Routine', N'DEMO meeting per week', 0, 1, 0, NULL, 2, 21, 2, N'M', N'05 May, 2020 10:41:07 AM', 0, 1, CAST(N'2020-04-27T07:46:25.7861196' AS DateTime2), 2, 2, CAST(N'2020-05-02T03:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3441, N'3441-Weekly-Routine', N'越語課(週二晚上)', 0, 1, 0, NULL, 2, 22, 2, N'L', N'04 May, 2020 10:35:19 AM', 0, 1, CAST(N'2020-04-27T07:51:58.7404234' AS DateTime2), 2, 2, CAST(N'2020-04-28T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3442, N'3442-Weekly-Routine', N'越語課(週四晚上)', 0, 1, 0, NULL, 2, 22, 2, N'L', N'04 May, 2020 10:39:57 AM', 0, 1, CAST(N'2020-04-27T07:52:33.9044947' AS DateTime2), 2, 2, CAST(N'2020-04-30T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3443, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:36:08 AM', 0, 1, CAST(N'2020-04-27T07:39:28.2926475' AS DateTime2), 1, 2, CAST(N'2020-04-30T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3444, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'29 Apr, 2020 08:48:28 AM', 0, 1, CAST(N'2020-04-27T07:39:57.8600947' AS DateTime2), 1, 2, CAST(N'2020-04-28T09:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3445, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:35:28 AM', 0, 1, CAST(N'2020-04-27T16:01:50.1892547' AS DateTime2), 1, 1, CAST(N'2020-04-28T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3448, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:35:26 AM', 0, 1, CAST(N'2020-04-27T16:13:35.6970918' AS DateTime2), 1, 1, CAST(N'2020-04-28T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3462, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'29 Apr, 2020 08:51:10 AM', 0, 1, CAST(N'2020-04-28T07:55:23.3677743' AS DateTime2), 1, 2, CAST(N'2020-04-29T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3463, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:36:06 AM', 0, 1, CAST(N'2020-04-28T07:55:23.3795923' AS DateTime2), 1, 2, CAST(N'2020-04-30T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3477, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:36:42 AM', 0, 1, CAST(N'2020-04-28T11:05:13.1938155' AS DateTime2), 1, 2, CAST(N'2020-04-30T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3478, N'3478-SpecificDate-Project', N'專案文件(TPM)製作', 0, 1, 0, 54, 2, NULL, 2, N'M', N'04 May, 2020 10:35:46 AM', 1, 1, CAST(N'2020-04-28T11:58:24.6879410' AS DateTime2), 6, 1, CAST(N'2020-04-29T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3479, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:36:13 AM', 0, 1, CAST(N'2020-04-29T08:48:28.3304853' AS DateTime2), 1, 2, CAST(N'2020-04-30T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3480, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:01 AM', 0, 1, CAST(N'2020-04-29T08:51:10.3435945' AS DateTime2), 1, 2, CAST(N'2020-04-30T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3483, N'3441-Weekly-Routine', N'越語課(週二晚上)', 0, 1, 0, NULL, 2, 22, 2, N'L', N'06 May, 2020 07:56:30 AM', 0, 1, CAST(N'2020-05-04T10:35:19.9817750' AS DateTime2), 2, 2, CAST(N'2020-05-05T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3484, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:36:26 AM', 0, 1, CAST(N'2020-05-04T10:35:26.5238312' AS DateTime2), 1, 1, CAST(N'2020-04-29T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3485, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:35:40 AM', 0, 1, CAST(N'2020-05-04T10:35:31.1667155' AS DateTime2), 1, 1, CAST(N'2020-04-28T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3486, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:21 AM', 0, 1, CAST(N'2020-05-04T10:36:06.3052936' AS DateTime2), 1, 2, CAST(N'2020-05-01T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3487, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:04 AM', 0, 1, CAST(N'2020-05-04T10:36:13.4970638' AS DateTime2), 1, 2, CAST(N'2020-05-01T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3488, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:38:09 AM', 0, 1, CAST(N'2020-05-04T10:36:26.1608520' AS DateTime2), 1, 1, CAST(N'2020-04-30T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3489, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:38:25 AM', 0, 1, CAST(N'2020-05-04T10:38:09.0746645' AS DateTime2), 1, 1, CAST(N'2020-05-01T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3490, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:38:32 AM', 0, 1, CAST(N'2020-05-04T10:38:25.3556375' AS DateTime2), 1, 1, CAST(N'2020-05-02T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3491, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:38:35 AM', 0, 1, CAST(N'2020-05-04T10:38:32.1970443' AS DateTime2), 1, 1, CAST(N'2020-05-03T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3492, N'3424-Daily-Project', N'Report', 0, 1, 0, 1, 3, NULL, 3, N'H', N'04 May, 2020 10:45:25 AM', 0, 1, CAST(N'2020-05-04T10:38:35.2287111' AS DateTime2), 1, 1, CAST(N'2020-05-04T08:48:35.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3493, N'3442-Weekly-Routine', N'越語課(週四晚上)', 0, 1, 0, NULL, 2, 22, 2, N'L', N'11 May, 2020 05:20:52 PM', 0, 1, CAST(N'2020-05-04T10:39:57.1375028' AS DateTime2), 2, 2, CAST(N'2020-05-07T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3494, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:06 AM', 0, 1, CAST(N'2020-05-04T10:42:04.1846913' AS DateTime2), 1, 2, CAST(N'2020-05-02T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3495, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:09 AM', 0, 1, CAST(N'2020-05-04T10:42:06.5489332' AS DateTime2), 1, 2, CAST(N'2020-05-03T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3496, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:12 AM', 0, 1, CAST(N'2020-05-04T10:42:09.4832977' AS DateTime2), 1, 2, CAST(N'2020-05-04T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3497, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'05 May, 2020 11:04:12 AM', 0, 1, CAST(N'2020-05-04T10:42:12.2424624' AS DateTime2), 1, 2, CAST(N'2020-05-05T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3498, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:25 AM', 0, 1, CAST(N'2020-05-04T10:42:21.3499291' AS DateTime2), 1, 2, CAST(N'2020-05-02T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3499, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 10:42:27 AM', 0, 1, CAST(N'2020-05-04T10:42:25.2896170' AS DateTime2), 1, 2, CAST(N'2020-05-03T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3500, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 11:12:44 AM', 0, 1, CAST(N'2020-05-04T10:42:27.9263145' AS DateTime2), 1, 2, CAST(N'2020-05-04T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3502, N'3502-Monthly-Project', N'中心主管會議資料準備', 0, 1, 0, 54, 2, NULL, 2, N'H', NULL, 0, 0, CAST(N'2020-05-04T10:48:47.0896225' AS DateTime2), 3, 1, CAST(N'2020-05-12T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3503, N'3503-Monthly-Project', N'月份KPI更新', 0, 1, 0, 54, 2, NULL, 2, N'H', N'14 May, 2020 09:36:40 AM', 0, 1, CAST(N'2020-05-04T10:49:44.6229306' AS DateTime2), 3, 1, CAST(N'2020-05-08T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3504, N'3504-Monthly-Project', N'月份稽核報告', 0, 1, 0, 54, 2, NULL, 2, N'H', N'06 May, 2020 07:56:37 AM', 0, 1, CAST(N'2020-05-04T10:50:22.3909037' AS DateTime2), 3, 1, CAST(N'2020-05-05T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3505, N'3505-Monthly-Project', N'廠區月報簡報', 0, 1, 0, 54, 2, NULL, 2, N'H', N'14 May, 2020 09:36:42 AM', 0, 1, CAST(N'2020-05-04T10:51:26.6724200' AS DateTime2), 3, 1, CAST(N'2020-05-08T03:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3506, N'3506-Weekly-Project', N'周稽核報告', 0, 1, 0, 54, 2, NULL, 2, N'M', N'04 May, 2020 12:11:38 PM', 0, 1, CAST(N'2020-05-04T10:52:48.9965093' AS DateTime2), 2, 1, CAST(N'2020-05-04T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3507, N'3507-SpecificDate-Project', N'提交專案文件', 0, 1, 0, 54, 2, NULL, 2, N'H', N'14 May, 2020 09:36:38 AM', 1, 1, CAST(N'2020-05-04T10:54:40.4342795' AS DateTime2), 6, 1, CAST(N'2020-05-07T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3508, N'3508-Weekly-Routine', N'主管早會會議記錄Review', 0, 1, 0, NULL, 2, 22, 2, N'M', N'14 May, 2020 09:34:38 AM', 0, 1, CAST(N'2020-05-04T10:55:58.5543854' AS DateTime2), 2, 2, CAST(N'2020-05-06T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3509, N'3509-Weekly-Routine', N'主管早會會議記錄Review', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 12:09:18 PM', 0, 1, CAST(N'2020-05-04T10:56:22.1521178' AS DateTime2), 2, 2, CAST(N'2020-05-04T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3510, N'3510-Weekly-Routine', N'主管早會會議紀錄', 0, 1, 0, NULL, 2, 22, 2, N'M', N'04 May, 2020 12:10:54 PM', 0, 1, CAST(N'2020-05-04T10:57:42.5998576' AS DateTime2), 2, 2, CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3511, N'3511-Weekly-Routine', N'主管早會會議紀錄', 0, 1, 0, NULL, 2, 22, 2, N'M', N'11 May, 2020 05:20:49 PM', 0, 1, CAST(N'2020-05-04T10:58:07.0762773' AS DateTime2), 2, 2, CAST(N'2020-05-06T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3512, N'3512-SpecificDate-Project', N'123', 0, 1, 0, 54, 2, NULL, 2, N'M', N'04 May, 2020 11:10:54 AM', 1, 1, CAST(N'2020-05-04T11:10:46.2376290' AS DateTime2), 6, 1, CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3513, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'06 May, 2020 07:54:26 AM', 0, 1, CAST(N'2020-05-04T11:12:29.4208872' AS DateTime2), 1, 2, CAST(N'2020-05-05T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3515, N'3440-Weekly-Routine', N'DEMO meeting per week', 0, 1, 0, NULL, 2, 21, 2, N'M', N'08 May, 2020 07:54:09 AM', 0, 1, CAST(N'2020-05-04T12:07:15.5188999' AS DateTime2), 2, 2, CAST(N'2020-05-09T03:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3517, N'3509-Weekly-Routine', N'主管早會會議記錄Review', 0, 1, 0, NULL, 2, 22, 2, N'M', N'14 May, 2020 09:37:02 AM', 0, 1, CAST(N'2020-05-04T12:09:11.8272860' AS DateTime2), 2, 2, CAST(N'2020-05-11T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3518, N'3510-Weekly-Routine', N'主管早會會議紀錄', 0, 1, 0, NULL, 2, 22, 2, N'M', N'11 May, 2020 05:21:00 PM', 0, 1, CAST(N'2020-05-04T12:09:11.8566541' AS DateTime2), 2, 2, CAST(N'2020-05-11T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3519, N'3506-Weekly-Project', N'周稽核報告', 0, 1, 0, 54, 2, NULL, 2, N'M', N'14 May, 2020 09:37:31 AM', 0, 1, CAST(N'2020-05-04T12:11:38.4091474' AS DateTime2), 2, 1, CAST(N'2020-05-11T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3522, N'3504-Monthly-Project', N'月份稽核報告', 0, 1, 0, 54, 2, NULL, 2, N'H', NULL, 0, 0, CAST(N'2020-05-05T10:36:50.1138944' AS DateTime2), 3, 1, CAST(N'2020-06-05T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3523, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 1, 0, NULL, 2, 22, 2, N'M', N'06 May, 2020 11:48:46 AM', 0, 1, CAST(N'2020-05-05T11:03:19.1689841' AS DateTime2), 1, 2, CAST(N'2020-05-06T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3524, N'3439-Daily-Routine', N'事務組早會', 0, 1, 0, NULL, 2, 22, 2, N'M', N'05 May, 2020 11:21:31 AM', 0, 1, CAST(N'2020-05-05T11:04:12.4168203' AS DateTime2), 1, 2, CAST(N'2020-05-06T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3530, N'3441-Weekly-Routine', N'越語課(週二晚上)', 0, 1, 0, NULL, 2, 22, 41, N'L', N'14 May, 2020 09:37:40 AM', 0, 1, CAST(N'2020-05-06T07:30:50.2537030' AS DateTime2), 2, 2, CAST(N'2020-05-12T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3535, N'3534-Daily-Routine', N'經營日報表', 0, 1, 0, NULL, 2, 22, 2, N'H', N'05 May, 2020 04:16:00 PM', 0, 1, CAST(N'2020-05-05T16:05:00.4947664' AS DateTime2), 1, 2, CAST(N'2020-05-05T09:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3538, N'3538-Daily-Routine', N'每日早會(工作計畫、指派、回報)', 0, 1, 0, NULL, 2, 22, 2, N'H', N'05 May, 2020 04:15:26 PM', 0, 1, CAST(N'2020-05-05T16:07:12.1433596' AS DateTime2), 1, 2, CAST(N'2020-05-05T09:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3539, N'3539-Monthly-Routine', N'稽核月報', 0, 1, 0, NULL, 2, 22, 2, N'H', N'05 May, 2020 04:18:01 PM', 0, 1, CAST(N'2020-05-05T16:07:39.9644033' AS DateTime2), 3, 2, CAST(N'2020-05-05T16:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3542, N'3542-Daily-Routine', N'每日早會(工作計畫、指派、回報)', 0, 1, 0, NULL, 2, 22, 2, N'H', N'06 May, 2020 11:49:02 AM', 0, 1, CAST(N'2020-05-05T16:12:28.0395297' AS DateTime2), 1, 2, CAST(N'2020-05-06T09:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3543, N'3543-Daily-Routine', N'經營日報表', 0, 1, 0, NULL, 2, 22, 2, N'H', N'05 May, 2020 04:16:30 PM', 0, 1, CAST(N'2020-05-05T16:16:00.4086944' AS DateTime2), 1, 2, CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3544, N'3544-Monthly-Routine', N'稽核月報', 0, 1, 0, NULL, 2, 22, 2, N'H', NULL, 0, 0, CAST(N'2020-05-05T16:18:01.6009539' AS DateTime2), 3, 2, CAST(N'2020-06-05T16:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3545, N'3545-Monthly-Routine', N'異常費用與消耗用品月報', 0, 1, 0, NULL, 2, 22, 2, N'H', N'14 May, 2020 09:34:35 AM', 0, 1, CAST(N'2020-05-05T16:23:43.4086447' AS DateTime2), 3, 2, CAST(N'2020-05-05T17:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3546, N'3546-Monthly-Routine', N'月份KPI更新', 0, 1, 0, NULL, 2, 22, 2, N'H', N'14 May, 2020 09:33:40 AM', 0, 1, CAST(N'2020-05-05T16:27:12.2037949' AS DateTime2), 3, 2, CAST(N'2020-05-08T17:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3547, N'3547-Monthly-Routine', N'廠區月報', 0, 1, 0, NULL, 2, 22, 2, N'H', N'14 May, 2020 09:33:44 AM', 0, 1, CAST(N'2020-05-05T16:27:58.1507559' AS DateTime2), 3, 2, CAST(N'2020-05-08T17:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3550, N'3550-SpecificDate-Project', N'調膠房一分鐘介紹影片', 0, 1, 0, 54, 2, NULL, 43, N'H', N'14 May, 2020 09:33:19 AM', 1, 1, CAST(N'2020-05-05T16:32:12.4882151' AS DateTime2), 6, 1, CAST(N'2020-05-06T12:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3551, N'3545-Monthly-Routine', N'異常費用與消耗用品月報', 0, 1, 0, NULL, 2, 22, 2, N'H', NULL, 0, 0, CAST(N'2020-05-06T07:32:58.8032372' AS DateTime2), 3, 2, CAST(N'2020-06-05T17:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3657, N'3438-Daily-Routine', N'經營日報表(每日12點前寄出)', 0, 0, 0, NULL, 2, 22, 2, N'M', N'11 May, 2020 11:41:26 AM', 0, 1, CAST(N'2020-05-06T11:48:46.2632639' AS DateTime2), 1, 2, CAST(N'2020-05-07T07:38:42.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3658, N'3542-Daily-Routine', N'每日早會(工作計畫、指派、回報)', 0, 0, 0, NULL, 2, 22, 2, N'H', N'11 May, 2020 11:41:28 AM', 0, 1, CAST(N'2020-05-06T11:49:02.2989212' AS DateTime2), 1, 2, CAST(N'2020-05-07T09:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3665, N'3442-Weekly-Routine', N'越語課(週四晚上)', 0, 1, 0, NULL, 2, 22, 2, N'L', NULL, 0, 0, CAST(N'2020-05-08T15:31:39.7497698' AS DateTime2), 2, 2, CAST(N'2020-05-14T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3666, N'3503-Monthly-Project', N'月份KPI更新', 0, 1, 0, 54, 2, NULL, 2, N'H', NULL, 0, 0, CAST(N'2020-05-08T15:31:40.2949149' AS DateTime2), 3, 1, CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3667, N'3505-Monthly-Project', N'廠區月報簡報', 0, 1, 0, 54, 2, NULL, 2, N'H', NULL, 0, 0, CAST(N'2020-05-08T15:31:40.6011289' AS DateTime2), 3, 1, CAST(N'2020-06-08T03:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3679, N'3674-Daily-Routine', N'Demo Daily', 0, 1, 0, NULL, 3, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-11T09:20:43.3511603' AS DateTime2), 1, 2, CAST(N'2020-05-12T09:18:13.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3685, N'3685-Weekly-Routine', N'主管早會會議紀錄', 0, 1, 0, NULL, 2, 22, 2, N'H', N'11 May, 2020 05:21:10 PM', 0, 1, CAST(N'2020-05-11T14:07:04.0056361' AS DateTime2), 2, 2, CAST(N'2020-05-11T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3686, N'3686-Weekly-Routine', N'主管早會會議紀錄', 0, 1, 0, NULL, 2, 22, 2, N'H', N'11 May, 2020 05:21:13 PM', 0, 1, CAST(N'2020-05-11T14:07:37.1187052' AS DateTime2), 2, 2, CAST(N'2020-05-11T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3687, N'3685-Weekly-Routine', N'主管早會會議紀錄(周一)', 0, 1, 0, NULL, 2, 22, 2, N'H', NULL, 0, 0, CAST(N'2020-05-11T14:38:51.6308469' AS DateTime2), 2, 2, CAST(N'2020-05-18T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3688, N'3688-Weekly-Routine', N'主管會議早會會議紀錄', 0, 1, 0, NULL, 2, 22, 2, N'M', N'11 May, 2020 05:21:19 PM', 0, 1, CAST(N'2020-05-11T15:13:30.0410125' AS DateTime2), 2, 2, CAST(N'2020-05-11T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3689, N'3689-Weekly-Routine', N'主管早會會議紀錄(週三)', 0, 1, 0, NULL, 2, 22, 2, N'H', NULL, 0, 0, CAST(N'2020-05-11T15:13:55.9128974' AS DateTime2), 2, 2, CAST(N'2020-05-13T10:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3693, N'3693-SpecificDate-Project', N'test', 0, 1, 0, 57, 45, NULL, 45, N'M', NULL, 0, 0, CAST(N'2020-05-11T17:25:22.4232411' AS DateTime2), 6, 1, CAST(N'2020-05-12T16:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3694, N'3694-SpecificDate-Project', N'12312312', 0, 1, 0, 57, 45, NULL, 45, N'L', NULL, 0, 0, CAST(N'2020-05-11T17:27:31.8365385' AS DateTime2), 6, 1, CAST(N'2020-05-14T14:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3695, N'3502-Monthly-Project', N'中心主管會議資料準備', 0, 1, 0, 54, 2, NULL, 2, N'H', NULL, 0, 0, CAST(N'2020-05-12T07:45:07.4360545' AS DateTime2), 3, 1, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3696, N'3674-Daily-Routine', N'Demo Daily', 0, 1, 0, NULL, 3, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-12T09:18:29.4260441' AS DateTime2), 1, 2, CAST(N'2020-05-13T09:18:13.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3700, N'3441-Weekly-Routine', N'越語課(週二晚上)', 0, 1, 0, NULL, 2, 22, 41, N'L', NULL, 0, 0, CAST(N'2020-05-14T09:37:40.2814499' AS DateTime2), 2, 2, CAST(N'2020-05-19T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3701, N'3701-Weekly-Routine', N'稽核周報(每周一下班前發出)', 0, 1, 0, NULL, 2, 22, 2, N'H', NULL, 0, 0, CAST(N'2020-05-14T09:42:42.1790209' AS DateTime2), 2, 2, CAST(N'2020-05-18T04:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3702, N'3702-Daily-Routine', N'每天核對WMS以及MPS稽核報告', 0, 1, 0, NULL, 2, 22, 2, N'M', NULL, 0, 0, CAST(N'2020-05-14T09:44:13.4228878' AS DateTime2), 1, 2, CAST(N'2020-05-14T12:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3703, N'3703-Weekly-Routine', N'新人工作簡報準備(練習_C201練習)', 0, 1, 0, NULL, 2, 22, 2, N'M', NULL, 0, 0, CAST(N'2020-05-14T09:45:13.2738838' AS DateTime2), 2, 2, CAST(N'2020-05-16T08:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3704, N'3674-Daily-Routine', N'Demo Daily', 0, 1, 0, NULL, 3, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-14T15:33:06.6113085' AS DateTime2), 1, 2, CAST(N'2020-05-14T09:18:13.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3705, N'3674-Daily-Routine', N'Demo Daily', 0, 1, 0, NULL, 3, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-14T15:33:36.5282145' AS DateTime2), 1, 2, CAST(N'2020-05-15T09:18:13.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3706, N'3442-Weekly-Routine', N'越語課(週四晚上)', 0, 1, 0, NULL, 2, 22, 2, N'L', NULL, 0, 0, CAST(N'2020-05-17T15:06:26.1202045' AS DateTime2), 2, 2, CAST(N'2020-05-21T18:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3707, N'3342-Weekly-Routine', N'OKR update via email&website', 0, 1, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-11T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3708, N'3344-Weekly-Routine', N'OKR update to Team leader', 3707, 2, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3709, N'3345-Weekly-Routine', N'OKR update to Team leader', 3707, 2, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3710, N'3342-Weekly-Routine', N'OKR update via email&website', 0, 1, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3711, N'3344-Weekly-Routine', N'OKR update to Team leader', 3710, 2, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-11T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3712, N'3345-Weekly-Routine', N'OKR update to Team leader', 3710, 2, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-11T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3713, N'3342-Weekly-Routine', N'OKR update via email&website', 0, 1, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-25T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3714, N'3344-Weekly-Routine', N'OKR update to Team leader', 3713, 2, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3715, N'3345-Weekly-Routine', N'OKR update to Team leader', 3713, 2, 0, NULL, 2, 21, 3, N'H', NULL, 0, 0, CAST(N'2020-05-17T09:18:29.4260441' AS DateTime2), 2, 2, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2), N'3342-Weekly-Routine')
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3732, N'3732-Daily-Routine', N'Task 1', 0, 1, 0, NULL, 2, 21, 2, N'M', NULL, 0, 0, CAST(N'2020-05-18T10:54:29.9946468' AS DateTime2), 1, 2, CAST(N'2020-05-18T17:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3733, N'3733-Daily-Routine', N'Task 1.1', 3732, 2, 0, NULL, 2, 21, 2, N'M', NULL, 0, 0, CAST(N'2020-05-18T10:55:52.1983096' AS DateTime2), 1, 2, CAST(N'2020-05-18T17:30:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3735, N'3735-SpecificDate-Project', N'Task of project 1', 0, 1, 0, 58, 2, NULL, 2, N'M', NULL, 0, 0, CAST(N'2020-05-18T13:42:35.4886899' AS DateTime2), 6, 1, CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3736, N'3736-SpecificDate-Project', N'Sub task of project', 3735, 2, 0, 58, 2, NULL, 2, N'M', NULL, 0, 0, CAST(N'2020-05-18T13:43:12.9860912' AS DateTime2), 6, 1, CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3737, N'3737-SpecificDate-Project', N'Demo Main Task of Project 2', 0, 1, 0, 58, 2, NULL, 2, N'M', N'18 May, 2020 02:10:40 PM', 1, 1, CAST(N'2020-05-18T14:06:48.0918038' AS DateTime2), 6, 1, CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3738, N'3738-SpecificDate-Project', N'Demo Sub task', 0, 1, 0, 58, 2, NULL, 2, N'M', NULL, 0, 0, CAST(N'2020-05-18T14:08:35.9186409' AS DateTime2), 6, 1, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Tasks] ([ID], [Code], [JobName], [ParentID], [Level], [DepartmentID], [ProjectID], [CreatedBy], [OCID], [FromWhoID], [Priority], [ModifyDateTime], [FinishedMainTask], [Status], [CreatedDate], [periodType], [JobTypeID], [DueDateTime], [GroupCode]) VALUES (3740, N'3740-SpecificDate-Abnormal', N'Main 1', 0, 1, 0, NULL, 2, 21, 2, N'M', N'18 May, 2020 02:50:20 PM', 0, 0, CAST(N'2020-05-18T14:45:57.3705924' AS DateTime2), 6, 3, CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamMembers] ON 
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (4, 1, 1)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (7, 1, 2)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (3, 2, 3)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (4, 2, 4)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (7, 2, 5)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (3, 3, 6)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (4, 3, 7)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (7, 3, 8)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (36, 3, 9)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (3, 37, 10)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (4, 37, 11)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (36, 54, 13)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (40, 54, 14)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (41, 54, 15)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (4, 55, 16)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (7, 55, 17)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (44, 57, 21)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (7, 37, 22)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (3, 58, 23)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (7, 58, 24)
GO
INSERT [dbo].[TeamMembers] ([UserID], [ProjectID], [ID]) VALUES (4, 58, 25)
GO
SET IDENTITY_INSERT [dbo].[TeamMembers] OFF
GO
SET IDENTITY_INSERT [dbo].[Tutorials] ON 
GO
INSERT [dbo].[Tutorials] ([ID], [Name], [Level], [ParentID], [URL], [Path], [ProjectID], [TaskID]) VALUES (5, N'OKR update via email&website', 1, 0, N'http://10.4.4.224:106/video/bandicam 2020-04-23 14-24-19-302.mp4', N'\\svproxy\Public\VP\Peter\SOP-WorkingManagementSystem', NULL, 3431)
GO
INSERT [dbo].[Tutorials] ([ID], [Name], [Level], [ParentID], [URL], [Path], [ProjectID], [TaskID]) VALUES (11, N'Create Main Task Project', 1, 0, N'http://10.4.4.224:106/video/CreateMainTaskProject.mp4', N'\\svproxy\Public\VP\Peter\SOP-WorkingManagementSystem', 58, NULL)
GO
INSERT [dbo].[Tutorials] ([ID], [Name], [Level], [ParentID], [URL], [Path], [ProjectID], [TaskID]) VALUES (14, N'Main 1', 1, 0, N'http://10.4.4.224:106/video/CreateMainAbnormal.mp4', N'\\svproxy\Public\VP\Peter\SOP-WorkingManagementSystem', NULL, 3740)
GO
SET IDENTITY_INSERT [dbo].[Tutorials] OFF
GO
SET IDENTITY_INSERT [dbo].[UploadImages] ON 
GO
INSERT [dbo].[UploadImages] ([ID], [CommentID], [ChatID], [Image]) VALUES (1, 2, 0, N'morgan_需求.png')
GO
SET IDENTITY_INSERT [dbo].[UploadImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (1, N'admin', 0xB0AF4547E316883666B161146A0EF9FE3645BD00F326C725BE213819EA6F5576FFAE86E39412AB9BC54A87AF59BE43CB33FB84999E9F106FDE60EA0C49D4E27D, 0x5F12512657030F717495AACB41AC21C3F6FC9B0A5BE1EBCDB193A238247900E2F1DA9F77AE0A6581440F1A82017AE1065064E8AF1026B208DCEACC1875F9CDB83DD2C0DBE86B74F4772F9AB42B320291EBB31D5FEC248DB35CF31C64F149CDCDC4C6FB9C58A014F157551179F9A7646F05AA00EA95E0E915ADBD25A8C9F0AEEA, 0, 0, N'sy.pham@shc.ssbshoes.com', 1, NULL, 0x89504E470D0A1A0A0000000D494844520000006400000064080600000070E295540000200049444154785E8CBD077C1CE5B53EFCCCF6BE5AF52EABDA922CF75E70C336A6844E28E11F0301927B13D20BC94D48688100490809A127A1776C20E06E6C6C5C70EF96645B56EF65FBEECCCE7CBF73DE99952037F9EEFA274B5EAF7667DEF39EF69CE79C577A604FB36632990048D04C16482613E8DF92D90C93D902ABC502BBD506936402340D503528B2024596212765A414195052D034196A4A832AD37349A4941452AA0635A5209592A1A464C80A7D4F2145AF49D1EB1548291566FA744982A499605725D8540912E86182A66A80A642D35290140DAAA28AF75447DF23A9289055055A5281064055356874B9A0F79460B758C0B768966032A560D62468928614DD0F3468744D8A02A434682A7D96F8A26B525515AA9AE2ABD1348DBFE879FACECFD27BD1F350F935FC7EFCBEFC13544D7C19BFABBF08AA24DE8FDE8BD65E52C5FB480FEF6F15BF4D1F2299C4C29050CC66482410B30566121024A874E1495AE0145FA8440B4E173B562024087DB16961522915A91409480824A92459A0B4A0F47E92A2C0A4D15A49306B66D83409D6145F2224DA04AA06132F127D660A0ABF1F2DA2422B0F13527465D0548537839692D3374A0B61B1D2F59B61B2D9F91E69A3F06652532C105E3C5AF4548A05439F6308C458C4FFB3406825A52F0A2445EF6D08C8F83C0029DA2EBA306817D1C66181FCEE401BFD139249024CB4578570483B484BCC9209261212BD092DB69C624DA19D2BF107A8408A6E48E69DA91A3F2BB483C5FF937628BA406425213485FF9F342405132D1C24985513EC202DA10DA06B484A68252D9A5952E1B09A6035A5609252C8CEF4A1B6661C2ACB0A61B759A0A96231F946358D359D6F56D776595171A6A515C78F9F4647572F92720A89A48C50388A7842119AC53B9C76FBE8AE2681D062F126D4B583FFCD1F23F15A9086D0BA4B92AE1DAC35F4872E9FB47CF4FDF877F9B5423BE88BDE9B97FE91839D242AF19F26F15D2381D0CDD0CEA29FF906019534811688359D0442DFBE2410DA7929059A429A441F2CFEAD282924953892C93892A9240B8435441502B1AA122C64B24820C2DE90A56261D8CD80DF63458ECF8689D5A5C8CFCD84D52CC169B7231209A1A9A9111DED1D8884C388C663B05A2D48292A7C3E1F9B418FDF8B404600191901646665C2E174B015B058ED68EDE8C2AEBD07D0D1D98F81E1086289A458468D4C95100209FACBBB5C8840AC0BAFB72E10A4BF0B93450FFA5D5AF6B4C6B1B04823742367FC400279F470B74682108AA1F1856A9259680C597136BE643A241606D958A1624220B460F4B3AA92A9D0EDBB9212B69EED2F6988C2365A961388CB31C49438E454824D8499CC8E4ADA0158491830C14AD79212F6DF65D630B1221FF51579F07B6C9095240E1E3884702882C2C2124422091C3870100303435025339229FABC1454AB0D56BB13196E2F5C6E3BE444144A2C8C9C2C1F72B203B0DBAD282C2A44617E11B2B273301C0C61C7EE033870EC34829118AF329966DEFD6C32F9668590F485240D11BE851458BC46B825FD3F0C87F16561B01CC798B631264DFAC3D11E4D650D116EC810088954A894F01FE425F9A2C608810441BE8C05A2C92C1CDA4DEC63D897088748DA21FC4702F1640C51390A454DB2EF618168241089FD875D32C14A3E25A5C16631634A65362614F9108D84D172BE0385A535683AD78EB6B66EC88914E484AE7D49198AAAF20E4FC80924250936A71B0E9B0D362B05266698684FAB495E608B897E8EC3EB7660FAB4C9689858079BC389351FACC3A1E38D4828A424A39B4A0844688C4A668AFF887523B3A5B2460981B1667FE961387A76F06304623C6F9842E9F1E3BD9A21691680441AC2D2109AA1E9E68C544CC84CD8673627AA6EDFE9E2E80E846FD1D8F1D242890080BE482009398E2869881C438A3444516151536CAA2C9AC47EC42959F867A7C584FAE2002AB3AC683DDF026766311A5B7A212B66A8A4AD8A8A5432C95F5A3209554E22918C21118FF3E7C454335C3E3F9B2F87CD22160E647A8014B9418ACAD404242D0597C38A19D3EA3077D6349C6B69C5BA4DDBD1391086CAAF51F93EF4DB4E0BC4586FB190E4465532566213B2EF1CF525A39646DFCFBA38BF1C79B195FACBA9018A2B74676E6241906D14568F5F22BE48506293A4FD87B0FFACC97A74221C306985100885C0A302892B49D68E58220C259564C159540D3688E0C16936C16576C261B621D763C145930AB1E6F59751306126A29600CC56176F02499121C92916442A1E452A1E478A7C532C86648CDE3F86A86686DB97098BCD04BBC5CC519D9C5290209346C2E4CD428188087103192E5CBA6221AA2BC7E1B9175EC6E9964E6826123E6D2E1155B226B09690995675CB24FC1D456C2C949406450F66842F1AB53CC2E2B097F91781A505FC54E330BDB558671309422C3C09849ED7DF2EAD2DE9088BCC9C4A212B5D1CE50BE4FC84BD2581D0CD2B9C8F28ECBC295C4DAA0A22C90822F111161685CD6693049BD90A9BCD8E0CBB1D3E7B0019760726E79AD1B4E3437CB4652756DDFC3DE41455C12201668D4C9C021387CC323416480C72348A64388C64388A6834820824F8B2B261350136B399FD575496114AC8082764249349FE52540AC169B115CC98341ECB16CDC1E62D9B71F06823222949E452FAA622D3AD9868E13536B5C6DAB0865014AA6B07DD2BEB4B3AF0D14603A631A1AFF03FA35B9FA3E6A79B83ECF35972863DE4170A13C5D1007F173BC11008EB8E9622F1895FD4ED27EF1212086B87086D8590348EFDC3C93042F1112455992DA2D3E680D3E184C7E543A6D38B4C9B0F856615B3F3347CEF8E5B51BBF0322CBEE26658CD66D8240D56899C3FE51F2A24CA4528C98CC7918C84910886101F09211E0C22AA69F0E566F3EFD825152999B45346505631124B62241A47304A410625AB0A47834E9B846B2F5F8980DF8D175F7E035D4311A8924984F214699129369179A2852213AB277F62F979D3A98AF86EE4382212E5CC82FDB3210423CC4D6B06AFB306E9191288EEC085F52107A50B84CC174750C25518F13D67CF2C1045D8308EC0E82254DE6D293259863058DD451E414E37AC4430121F861909B8ED36D85D19307B33E175FA10B0BA90255930DD93C4CE775FC0BE23A771FD5DBF8437331F0E0BC46EE7E89C22750D125D1865EFB4A82494601089C111C4060790D054787233619764584D094829D28814E2B28A605CC15044C64058C6503481703CC99B85B4E4B2150B30636A2D9E7BF66F686AEF034C16BE1F365D8ACCF94E4A056445F80ECE5D210440C18B3059F46F117DA537B04982D96C4E87BE1CC1A53375CE27D9044ACF9E19E13C84435FDA0DEC0F84DFA0F753341532EF104A8A04C422921C118518D001851629CA392863E68B5738AC35A449CFD14D879418FC76058B0BB350EC71A3B16F0067ED7E48D60C38AC7614C9112CCE35E17BDFBC1573565C87B9175DC13E80F20E9359829974D544665282897354BA108AEA14A8F104947008B1FE01C45515DEDC004CA9206CE604904C302AA02414C4E33242D12406C21A7A4329F4866308269248A909E4657B70C5AA0B118B84F0F69A8F31108A40A6755592B8EDC6EB1882A17CE71F2FBF0E38FD9C16D0A62521916F12613E2DB60EE11891292DAF59A41074CD724AE6E855446A945CEA89E1B3E7821AC3252C1461B7344ACCF40451215343FE803E718C93A79C84D54E7F9A2007A11DA4FEE23B6412184B982F3AA9A610431C4BCBB2B1AC201B965412A74F9DC687CD9D704E5F8480D382257E0BB6BCF23CFA0687B0E2BA3BE1CAC880C324C162260722F60DEF1D3DC02035A7B09913374A5C29FC0D8590D45270FBDDD0941198285A521248448761374B482592ECFC2361198341053D41195DC13886637128A904AEBC6439C615E7E2FEFB7F0BC5E68166B2A1AEB21477ACBE01C9441CEFBFF716D6FC731D324BAAA1C2CA8BAF3082240462EC7E232F11264B8F5C393822F3ADC024891B325BAC7A540B48CFB784F44C9D1484761BFD82C0B528FC35423AFE3023CA22C9928A933C74DDA40FE1848C3127324F04D6A504ACC201A786A449836C96B1B2240BF9DD6D70596D70DBEDF8D3BA8DC85E710D26F89D58E03361A8BB077B8F3761CABC65B05A013B636BF4561A2C6601AB30D695F6727A4448AB222BB04085DD6183C96A82491350CFC0402F5EFADB5F71EB6D5FE310594BC6A044A2888712E81F96D14D42198961301C4149612E562E5B88732DCDD8B06D2F7A0786B174DE4C2C5D38077FF9E3EF70E2F811B4F60C62DAC2E5486A56DEC4E45738D2A20086ACC3179CB7B83E914E0881500065B65860B6DA5820268B4D80BA7F3F1F6153C7D6886F904C9299ED994A8AA2A7F8940C71D2938EE44454C5E1858E6951B8474261445793057C427695FED082DA2C50EC5614586414759D41A1D98C86890D184C26B0E7740B164F9F0CBF040C0C0FE144D3590C0F8761B749B870E9128E88644264E98A6C4E682429460CC8EB51569F82DB6C82856F9A369EEE24395D4AE1C8817D78EA893FE217F7FD1276BB85379ED564666D098F8430341C465F308CF6DE210C0D05B172E50A54569660C3E62D202BB168C17CA8D1201EFACD2F71F0F02138B28B5135752E4412471A4A42A13DF8458118A888B040264826332C160B24AB05569B1D66AB1536AB03669B03369B0DD2CB2D514D35A544C8CB0A62084498310A690D5446CF56F464508FA9151D326024969C9A0879D9CC91D6F0F30A6031C3E4B1437112826CC64CAB86D91E0B104DC0E3F3A1A3B303A525258CCC0A93470217F690E0F6AEAE0EC4C241B4B7B630F05950568EA2CA1AC06C8344F63B1E87CF65C3487F0F4E371EE7206162C35498ECF47E1A8E1DF81CBFBDFF3E3CF8D8EF5154548CDEEE5E7476753214E3F5BA919F53005F460092854C9086CEEE6EBECEEC9C1CC4633164646460B8AF1D5FBBF13A64E45423AF620254B34811483BD89DEA669CF3164D24938445D36B4C24089B0D169B03569B0D5633413BF46F1BEC0E072C0E171C763BA4975B639A26091453668DE04056247C2C0B120AB952D24C358D5F717D84C06F45F80886BF6977B0B94A41D621EE04C5F9F44A32212E174C661BCCA62416F86C98EC90E020D8DD6C49DB50230C1CFD2ED0D758248C5D3BB661FB275BD0D6720EE1781C57DEF8752CBA70155C1E3F475D0FDFFB6B6CFDF83DC412515C7FDD4DECDEAA268C4755F5786478BDC80A64C2E3F723A568BC1BF5EC4BC0EDAA86482884679F790693274F467D5D1DBC3E1F62C904320201C462317CF38E3B60B799205903C82EAD869CC6AF44B2688091029DD0B37BF61326CEB36C7607EC4E370BC462B3B2301C4E279C2E276B89854A1E2F9E0B6BE4A828AE4CC90A43D56E8F9B2108F21B16C3B6E9452C864D4848242B81528B3C83A074DA119A8AA40E9B24092EA11098A223A71D29B7939DEA5CB705535C36B82874E558EF5FC5305620D168189FEFDA896D5B36211E8B201E0D6368680825951370C5B537A2A2B61E9AC582E8D010427DBD70BB03F0FB3DB0D82C50252B52260D562DC5100AED56DE00BAFFF9E2278B105A4EC4B163FB76D698929212F40E0EA0B1B909575E710DB66FDD88175F7D0B81827268363B9B4323D7E018C70891494BD815D0C2DBE1703861773861753861D6B5C2E1B0C3E922536581D5648595D0F6DFAEDBA93DFEDDBB3077F912ECDDB219332EBB0E732E5C81F7FFFC089AF6EFC5AC151763D51DDF41A0AC225D232071B006E910B9C84BA86024E0030A9519DD5514C491826233C3E2B0C36B9650E7B6A0C1E784873E5CD473FE8376881B1C1AE8C3B12387D0D3D186503088C6A6D368EFE8C4A2251722AFA010E513EA515635819D2B2107F1580256B3880CCD760F6509484686E0B25BE1F7678AFC40A288486C229389F06591B4893A08D57D926CAAC87CBDF9FA6BD8B173277EFCB39FE3173FF93182C110A6CC5D04C9EBD7FD2A15EF4484258A5B02FDA548849CB6CDEE82C3E5620D21819089723A5D70396C70582DAC19F4F114154B7FD9BC4BBBFBAA9598BAEA0A7CEBB127D916EE7BFF2D9CDCFD29AEBEEBC7F864ED5A64949663CEA557883C841D8DC6153EE1F0F5B2A65E3B302E8AC35F3985A4A622E1B420CB2E61AACF8E2AB7133676B8A38A61F8A62F2B0A09231C0AB19D4FC9097CBEEB331C397C081D1D1D50E4245C4E17FA07FA70DD4DAB316FC94A98ED2E51EE2558454B41492660B239918845909DE185D96286442644872C08DF22536766818CC5EE74C8484D61646800A74E1CC3430F3C80969673F8AFFFFA16D6AC5D8B4BAFBB091D4354DBA1FC83F22D61B245DD4484B8925908C3E974C2E670C1E270C0EEB0C3E5B4B166382D7658C9B77245967E4585F4D4963DDAEFBE752B1EF8680B524E1F2425893DEFBE8EBD5B36E2FABB7F839C927298284E361E7AF6293CCD68D14594738D9A80F859D4AC81805DC5A48003E3DC4E71DBA37F199B72F4FD2520168D201E8F211C0E61F386F5181C1CC0FCB973F9F953274F20180AA1BBAB13E75B5AD0DEDECE7EE4F66F7F1F7945A584E772B84DE12E87B7663B143901A7DD068FCBA99714F48FA59098CC268320FFFB8376FCC8601FFEF1C2F3F86CC7764C993209C5254588CB29A42407BA86A388105A40690045943AA241A6DF6275C2E1F4B09FB0391CAC212E32DB0EC2EEACB0992D222AA4B09E3515909EDAFAB9F6F0B756E3775BF773818776FFC93D3BF0C6A3F723373F1FF3AFB80EE3A6CE843F3BF70B4018D73EC642CCB429749493D5574F08FD160D0D197694F95D0219FB5F4C14DD3499B8C6C6D3E8E9EA4257C779C4A231360DE7CE36C3EFF7A3BE7E22D7F72932EAEDEB61E1F4F5F6A0A3A313732F588AD5777C8705A250744328748A804F15C9743D4783CB6187CDA2F30618793512ABB1BA39FAB3D8EB1A52721CA74F9EC4BB6FBD81DE9E6E349D39890935E39119C84556F138F406E388C8023611298499730C9BC30D87D30BBB934C951D6EA783A117ABDD0A3B455A7AC99C022A0AD3CD746D4F6FDDAFFDF65B5FC723DB0EE82C0D71195D674F63DB9B2FE3ECD183587AC32D9873D9D52229371211B695027549DB1FA3CEAE17766C928A5A9F0535196E66960855D62F5A840518191E422C1A46FBF9B3F8FD238F60EBD6AD70D8ECA89FD4808C40168A8A8A3065EA0C4CACAF474F6F2F868787D884917D27B335303888858B9761E2D4591CB28A4F219C2B05ABD58C1801870C7E8A4492F130AB1936AB086FD391895170A580C5086024404EC470FEEC196CDBBA05E7CE9E81DFE747777F170EED3F00392163C992A5C8C82BC6505C458CAA9C26136356E4B849204E9757D7101BFB0CBBCDCCE12E6D2E2E8DB3A92224C2023325BD4F7FF2B9F6D03757E3779F1E84A492EA684825A8E89F84A4A4F0CEA3F722B7A2062B6FFF3667DB699FA11B7E4ACC8C9D6FC84654815464DB35CCC876C145923704A29BB9D0C8083ADACFE3D081CFD17EFE1C8E1F398C5D9FED82DB9F89D97317A2B2A60A1999011644764E1E334508E41370B5C4B03DDD84D3E5E6B0944248329126B395F312327904069A1D14B25BA081F21132F5E4C81370392C30C102BBC59AAEFB279209C42211D6BA969616B6F7C4783971EC283EDFBB1BF17812595959F0783C088542686B3DCF2586DABA89C829AD826CF582F06F33257D76276C2E0F9C4E375C0E071C4E1B978DED64AA6C5691E3A5056212EC1E0A7B9FDDB65FBBF78E9BF1C48E43AC01F17018273ED98CE3FBF7C2E3F1A2E75C13A65D7419665D7A958E02EBEC0AC31570A62C4C915E05660199532914DA144CCDA51CC130031AE46402A74F1CC3BE3DBB7068DFE7686C3C859EBE5ECC5BB8048545A5A8A8A840656535AB2FEDDEE1C10174F77422120AB336D22E220A109945128CD7E747517109FC5959305BC8597A5050540C5949211A893060181C1E614151C49348C43130D8839C9C0C14E615728445C10A09BABFA71B9F6CDE820D1BD6E3F0A143282E2E446E4E0E2F94D7E745EBF936F4F4F4C06EB72337371759399938DFDA82C1FE7E8CAF6D4065DD34A46C1EC0668795123D971B0E870B2EA7030E871576D20C129645F82CC1572054C1C491163BF7574EB46B3BD7BD8FE5377F83C963F150148D07F6A0FDD8615EC8AC925254CF9E8F404EBE88AAC871EBFE4FD4DA997BC1E126298B8EDAC0A2CA2830C7509FE583D5EA6021054706B1FBB34FF1E1DAF770ECC8615EA8854B96A2B2A60653A7CF64B08D4CC4E103FB9188C538024926131C4A9389B1D9AD222A11C6956F8261089309712EE12A707B7CA89B3809769707C5A565309BAD18ECEB41EBF9B3088E0CC1E37263707818454585C82F284077772FC2E1303C1E37BABBBAF0ECB32FE0E4C993FC398487E56465F202F6F5F561EAD469282B2BC391234778051C2E072C16337ABA3A1922AAAE9B8CE2DA69485A9C9C00BADD2E0E71D977D92D2C487A2F364D6334840461311199CF04E9BDEEA446A11F1562040C240AF7223717F51191BBE9B415A3822FD85C0CAF3334C0A83C65F2C2AC59540539A6286A7C4E785D2EF4747762F3C68FB1EEA30F71AAE934264F9A8679F32E406969292746AD2D2DE8ECECE09095FC83C564E68B673241DA51090D21C74CBBCEE970313B86AF9FD98C14F212D14181C5EE465E61114A2ACA919F57C4511F05089F6CD908A7D58A9AEA2A389C6EE6649D3BD78478228E7852C19A351F22180CC2EFF7A2ADB30B5E8783F95F0303837CAD0B162CC0E12347D91C8A7B06431E8343FDC82B2846C3FC0B61F2E5C1E1F67006EE74D9D97710D182D0011BB32845818B436393A05C91F9A5F282B4A647D6CB593A7665A0C4698720F236864E44E54AD40F1952318045235AD1BF33B52785801443B5DB82F0D020D67DFC3E0EEEDB8B5038825973E761DAF459EC14CF9F6DC6F040BF5E524DF0829B2533FB0851274841321BE43782594C2C28A7C306ABC586243315290BB7C2E7F5C161B521128D23A902AD6D1DB0389DC8CB2F447DC35414978EC3E1238771F4E07E1CDCB707B939D9282D1B8781817EB475B471F1AAF17433E47802D17804DD7D03C8CDCC40416E16BC5E1F9249C18AECEBEBE735C8C9C9C6B973AD8C7751524749DFC4B94B505C33050E8F070EB7134EA70D2E2AC4B140AC69D344A0246B0901A23AD595FFBDB63749A51E61E77514639450A7FF921E5C89FA8728EAB29BD6435F8322231213C384A970AB11D87ACE63EF279BB173D70E94575460C5CA4B58BA7D3DDDE8EC6C677A8F5EA611D45033742E2E5521092D9661B713DFD8C2BB5C96A98E20E9268CA00807DB668BC50A9B8576A0152E82693415FD43C3E8E8EAC1C0D02002D9B968689886F2AAF1B0399D78FFBDB7F1CEEB2F73829B48C8B03B09AE77E05C4B1B86878771EDB5D760706800896818ADE75A5033BE062E971BFDFDFD181919615F443BB5B5BD03AA6642666626B273F33079FE22E497D7C1E9F6C1E575B133779223B79A39D4E5AC9CD789905F2A2B90402861154F4B1FF4C45920C2C1A49545048FBC4BF508892214E6CF1802A1B5172C13860BD2F50961BE7871E321B46CFB27D6BCF402A6CF9E8BCBAFBA0623C383686E3C89D0D00843D5B443C8E4707C47BF43F5EF6494EB1EE4000967232EB0D5E680C7ED853F2380ACAC6CB8DD5E4EB418B676383808305170CDA1B88648780403037D8847C2686DEF445B472707005EBF1F4B565C82BCC21216CA734FFD197D3D3DF0FB7D088663E8E91F0291B729BABBEC92E548C663D8BD7B2F0AF30B104F2678530C0E0EF206A6088BF03A065861C6C4C953513965264CBE5CB83C3EB83DE4436C8CA1D92D743FE4038543A7DAA7C116FD82867CD49DE08A615A4446BAA03B1D51B6D54BA58C59198822F914C1EC1B05420483824C19B1329464048737AEC160F3495C7BF535E8686D4577570722913013B8498519CE2050524EA0BBA315193E0F91D4D98E5391CC49C487CC5C14979422332B0B4EB7076EAF9777AB514FA030935C9B592F9B12BD4726DA4F3C8E782484E3C78FA19312CECE4EF6334EAF0F975D752D0A8A4BF0F1C7EBF0E7C7FF8853274E221A4FB249A20D65B75A71CBD7BF8671E3CA108DC6B069D306B4B777A2667C15A2B1988824F9DE0187C7C51A5C377516BCC59530B9FC707BFDF0785C1C5D91FF20CCCA4AC528931004AF1927E9BAC9D235475A471A32C6E3A70104CEE34709C18636182649084940EF864FE1104007EE38115392C854C350073B71FCE00144822126D4D9ED0EBE10FA085AFC9E8E0E26CE59CD2686ED43A1306B406E7E01CACBAB9193938F8CAC4C1686CD6187D56EE72A5B5B5B3B5E7DF9152CBEF042CC993B0F9BD6AF47683884BD7B76E117BFFA1FB8DD6EC8147DC5C2E8686FC5964D9BD0DBD5C999B4DDEDC5A5575E8DF2AA0958B3660D7EF7D043E8EFE940416E0E4761E49328EC5DB66CB9FE3E29ECD9B3073B3FDB858B2EBB1423A11006FAFB19BDA60A657E51296A67CE43D2EA86DDED87DBE7670D61815848201411DA389AE2F56674768C40F41058DAD0A36B88287D8C4956F4C485235B0326113C5E4ABC0808136198E89DA0DD49C222FB4EC5197A6490720D7662D7E68FA1C949B69504B409B69FCA50FAF9338DC8F078F8B9BEFE3E364D5E7F26C68DAB42D39933F8FAEADBB87EE07279E0F2FBD88C9A2C64878990A1E1F1471FC3B49933B168C912513A55353CF4C0BDF8C10F7F0297C7A36B3EE15A71F4777560CD5B6FA2ADB59537055147575E7A39C6374CC64B2FBD84A7FEF4287ADADA90939703BBD30E8BD506AFC78B152B56E9BC3470ADE74F7F7D1A93A6CFC2C2E5CBD071BE051D679A915F320EE3EA2741333B74FFE183C7E3E4EAA4E8B1218110C42E1002F2950C99E8993D87BC24A80DBD71BD6147772A69EF329A498E66E74220821CC75C52B6FBA4B61426A7F98E9A0A9FC5047B64109FFCF33D24E3718EC1495D8D7CA2B7BB03437D5D70B988089D447FFF007CFE4CE4E41462EAACD970BA0378EEF9E771CF6F7E8DCFF7EFC3D0C010AEFFDAD774BFC6990F5FF01F1EF91DA6CE988EC54B96E9180E70CBD76EC2E37F7E12DE8C0CDD5E0B523869677078009F6C5887BD3B3F6593E2F707B0F2B22B513161221E7BF87EBCF2FCB37CAD15553568EBEC649F515E5E8E69D36630D98E7221BBDB83077FFB7B4C9F7F01E62E5AC6F51E2AF3522593425B02140D936577981944B45AC834FDEF02113E242D90A426DA0DC8A0097604B33AD8978C86B946884B801DD16E0C92B51082D17C42C64B8557D2E057E2D8F3C90674B49E81D96481C34110821D16B386F6D6B38847830C9F874331C41271787D01948EABC4E4A933100864F3E5FCE4A73FC34B6FBC8EE63367B1FEE375B8EB7B3FF817CCFEB5975FC6F8DA0998367D062F5E6353238687863163C67458A8EE3EE6C1551B3989C8F0100EECFD0C9B37AF83DB6943455905162E5D85ACC262FCFA973FC7C76BDFC6F41933E0727BB16FDF7E78BD5ECC92D0F7EA00002000494441549B378F05458B47D53E0A81DF7DEF035C74E54D7015E4133D0C16228A3386E582CBEB86CBE560D347F08CC52AC166B173F26B6684991AA2682793A0A80747F72D1B29ECD51B72285317C8A35EBDFDC2AE17405CBA494777E6E492D35C70264DCBC834A9E86B3E8E9DDBB6F002D0AE61136131A3BBBB1D6A3206B7D38EE1A111269C65646561426D3D2AAB6A905750C4F007D5E17F7AF7DD78EAF9E770F4E871BCFDE65BB8F7FE07BF2010D2DCFD9F7F8EBCFC7C141616A2ABBB1BA71B4F63F6ECD98C377DF94151DDF1A347B063DB565C7FE30D38D37C1A5BD6FD93992AF593A660F6A2A568EBE8C0D37FFE2393F168918E1D3BCE61F0AC59B33831A430956A1E04A7103F6BDF9153B8E2A6D5CC25A65E260A540803737A48204E917F90667C49201CF692D9B210322CC12CE9BE65635F82E420425566A988AA3AFB0ABD9827302AA3374447797505E29C8499280AAC30C3AD2611EB6AC13BAFBD08879D0A34041710434465E84455922C8C70300459D610C8CAC584BA7A548F9F809CDC7CB8C871BB9C88251278EE99E7F0DD1FFD10A74E9CC0DA356B71F72F7E991608F90A02F8CE359F414151217A7B7A70FCF8714C99369577724969292FDA971FFD7DDD3875FC38E62F5A82443C867DBB7762FBE6756C72E72F5E8669B3E7E3F5D75F43577B0BF6EDF99C41C6482482FCFC7C1634690B2D1667DBC4901918446B673F965F793D2229134CBCF96C70B9A9304570BB95C912562B65E3565E78A2C132278B5DA1D010B222AC181B39CA12D10ED33375ED608EA28E161A356351AAD5DBB358107AA4C0C253E1545370CB113CFFA7C7E07088108F54980A469417A86A124E879D8142594E2110C845554D2D6AEB1B7897BBBD1E8EA052928493A74EE1C4D163F8EA4D37E1DC9966ECDFBB0FD7DDF4350137B0E95170A6B99941C0E9336760EB962D683A751AC525251CDADEF9AD6FC14105A92F49A4B9A911EBFEF921FEFBBBDFE31C8BC0CBAD9B3EC4917DBB505A5C86A5175D81ACFC023CFABB07F0FACB2F231E8DC2E3F5A0B8A80835E3C7F3AE75795C029925A2B8DD868EF62EF485125872C95580C3CD053DAA080A9345888205168BC41116AD09AF35D76C75B89EFC0BA1D494F36DE88E6B8630A881D260061A4EC620587340C55C1711DA5294444C746AF6A1E7CC4A0A7936097BB6ACC3D91347919465B89C4EBE88583484687890F1272A770E85A2F07A3330BEA61E75131B905F58C00C0FD20C8A6C366FDA8CF5EBD76362432DAEBFF1FFA1B5E52C867A07307DC17CC182D11B50396C243338DCC50E33C395C151CC68B8FE2F0A8263478FE28DD75EC17D0FFE365DB66D3C751C1B3E7C17897008D367CDC394390B18F17DE481DF60A0A70B2EB71BD5D5559CCB90E9CD2BC867B364B559191127564E301C4545ED6494D44F434C55D93A9040B810A5D7CD29D9A50A21AFB189983694AD93502CB058092EB240DAD815632A9624A574DE2CCB4E64EEFA6E341243D1726008851B1798774482716B0A12DDAD78F7D5BFC36636C1EDF1C2ED707272D6DBDB099B55E20B1B1C0A21124FA1AEBE013366CC66BBECCDF0C3AE0BC364B1E0C927FE0CBBC5815BBFF50DCE82095E61BAB15E3C52A87CCA59BD8481C17EAC3FBD1E5979B99894D980AA924A366599995902AA37EA367AB3E6A99327F1E1FB6BF0E39FDD9D16086D2E325DEB3F780F8585055C12A64CFEBFEFB80DBB776CD5DFC7E8110057FC080221DF48185720908968348EC2B22A4C5FBC02566F80D93B0E1DD6618190592281501586733011977210A503A98C5C6FEC0A0B8180BA5CA9F0431E5F30FF38D0D2FFE6FE41C173111007E3C0449F04AC9A8ACA0C1B9EFADD6FE1A6C28FA432AB82FA2A28118B4583086406D0D73F8881A1307AFB4670D5D5D730FE4370763499C484BA5A646466712B36F577FCF8AEEFE33B3FFC2E0A4A0AB1BF712FB28A0B502815F0C5C7E309BE59BAD6175FFC1B76366EC425575F8D6ADF784C9C3089F126AA3412542188E3E241D9FF076B3F4077571BBEFFC31FA7A3300A0E089B5AF3E62BE8ED38C75A3269C67C7CB0760D1E7FE4010C0F0DA437A8406A09EC1CCD234830DCB56CB163C1859760DAFC0B11A7A88B20139B9D0B53260B6906B1252D1C06538312730E24F21FA21E4288AFB4A92BC49D20F401DC9A4C898AFE6182B9C8FA2188D406855EF7192C2E0DC8B401FD270F61C3076BE0F3BB91E177B37029FC1CE8EB4166C08F70388AC1E13060B663602088ABAFBE06ADADAD98317326E2298593C2CBAFB88AEBCF0945C1DA37DE40E3C9D35876C5C53836740A0A54DCB9FC16A66ED202B2C3D634DCFF9B5FA3F9C4E7B8FB9E7B515155C79DB504DA757777232F2F0F478F1C457D431DE35CC32323D8BC6913DC2E2796AF5CC950C6D8C7E99347B16EED1BA82A2FC334E2153BDCB8E3EB37E1E491838244CEBB992222833B2D7221DAF96451887755396112665EB00A81C232680C0F59D8BC99AD7405C4E2B7085F6240528C92880E3242B9A54D9D61AE87B040A8B62B49B0EAA6CAA8F4D10230DF8A1B5B085A172D8FE4E3CD6A0A13F303B8FBBFBE8182BC4C2EDA78A8ED5853D1D3DB0D3B451726337A7A06790755548DE76CBCBCBC82F3909A09B5F06767E2473FFA117E7DDFFDF0F9FDFC19C1C121FCCF0F7E822517AF40DDEC293873A611B3EA672037BF485F430D234343F8ED030FA2A4C08F9B56DF8E8CACBCB44E53418934F0D8F1A3E873F6C216B161C1E40BC4448A7FFB50F1DE1BFF402A32888AFA19A86D9886471E7C10EFBFF50AA291206F1C420718F661A1E8532FD282A246530F565D79236AA72F4054A68D438E5F946D39C821ED20976EA2A047982B0EB788C64526796B5784303C0EB9F8BF5853441E22200E61844920447CE3A9066308616E2905576C187F7AF85E04FC5E6464F85920343EA3AFAF1B050579E8EB1FC0E04088738C92D27214978D434F770FA64D9B8E7195954C0878F0C10770D7F77FC0CEFDC0FEFDA89D508B375E7C8991D5EFFDFC27E8EDECC070FF10264C9ACC58145DD799E646FCF19187B17CD905B8F8CA6B61B511B3650C6B844C919CC0C3EF3D80A9855330AFE60264E7E5FC078168683FDF84BDDBD6A1AC7202EAA7CE46735333EEFEC17770B6F1145493F4053235071546864DEB475F561B4A2A6B316FD965C82E2CD7B55900A964DAAC66E17FCCC4EDA5BE17CA3FA8E32025F072695B4F8C344BAF168AD0582045227167D8443759044B731B029B2EE143AAB2BDB8FBCED5C8C9F6C26E36F3AE77D8CC48C6E270BBA92EA1E17C7B17EC3617AAAA6B2813C2F8BA3AECDF77008B972CC5A4A953183DDDB2752B962D5F01A7CB85F6D6561414167218FBA7C7FE80FB1E7E90239681EE1E78035908E4E4B219DDB471039E7AFC317CE38E6F60C52557B01D1F65208A75E764B0E5087C561F327DD9F0FA7D5FE0661901CBDAB56BF1E9A7DB3167E65424877B505D338117362B2F1F77DE7233766DDBCA0B43A6929B9798362B303EA33D8DB48FD6C5EEF462D5D537A37CC254C4E362F4073975F27B64266D561B9B5666BF48161E294200086BC8A7BD146591EA887923AC19C6E4017D4E07991F61B254268311C54621D4569230A9301B377CE542545496C3CB8461725ED4E92AA36C5C297A0786D0D1D1CB886D75CD789C6A6CC2CC59B3D1DFD78719B3E7A0B6BE0EAFBFFA1AE62C5880C29262ECD8BA154B56ACE0858D46A2D8B47E0306FABAB1FAF66F60A0AB07A1E0082AEAEB39E27AFAA9BFE0A567FE8A7BEE7B10CB2FB94C9494D3848AB465E37608252923168FA3B1B1113367CEFC423B19BD9212C0EEEE4E9C3FD38CD2BC2CAEC9E4148F43C5F87ADCFD931F61D3C71F201C1A66FF6480828206A5B308F4688E48E7568B1D93672E42C3AC25B03A7D0CC012BA4B593E5539A9E44BE567168C89C6259878200EF91169671FC50380856835BA7935702B631203BD21373CEA356B6EF044123E9B05234D27F0E19A575915290DA31A09F1A1FC195E50087BAEA59D6938E5E555A8AD9F087F4606179808677AEEB9E71089C550545C844B6EFC0AF6A69AB0C85687BC9C12CE64C95A9E696EC2DF9E7E1A3FFCD9DD0C410CF574214049A42F80871E7C106FFEFD093CF2F81358B6EA6A11D7FF1B83C40D458AC2840622DE19E6E68B2FD7B075D306549415E3F4D103983071328ACA6BF0E187EFE3B9279FC0D9E65348241222EED44B168CDCB2900C060915652863F760C9C5D7A2B46AA228E4715842791EB5695BE1B213124C2409BB30635CB6360B81B087D7FBF7981BABD7CE79EA000B830A51C470D709C564C4D42426E467E38E6BAF44554531F7015A52E46708BB32637C4D35864682683A730E3E7F366A6B4512989D93CB3813C11BFD03839C773A7C1ED803763CBBFF55DC356B352C2607B7D5D14D5285F19DD75E67C1FDD777BE8D9ECE0E24E20994D754E3817B7F83233BD6E217F73D8A86D9CBF512F4BF138930BF546FA1E69F2F635D6C9A550D0F3C701F562C5F8691BE4ED4D6D621BBA00423C1117CFB8EDB70B6F964BA9DDA40C04705A2370AB16E9B6073FBB1E22BD723BF6402928AC63D8ADC9BAF778151AE66B30A5889DBC2B9FC6C83B4B327A68938586058AC867A5435B6EF9C3A5E4920D4FF417F4CAA8CE96505985B3F1E53264F82D5AC213F33934BA96EAF0B652525E8E9EB4367571F72720B984C46268B4AB02E628273EC4EEC702BA893E28375EBB064D9050878093217803E9791B5140EEEDB8F375E7D05BF7DF451848747101E1E42666E1E1E7DF421B41CFC183FF9CDA3A89EBA54ECDC7FAB234217E8FE287124C0905A0D8CC0859EFFC3EFFF80AAAA4A5CB46A15FA7BDAD924DB5D5EB832BCB878D92224A221AEA793500DEB61F8100337631A2BB56FBB7C98B560052A27CC846A76424BC6991F20FC8FC2938D382F614E960885C9020881701846A19C5EE36047353A4B8A7703F760D3A0305984BBC904EA723CB874D912545596419515AE1DBB5D36CC9D339DFB011B9BCEC164B1A36C5C2526D44D4441413E7C193E41ADE482BF95E758912652F715E705D461AB37038925343185F3CF7FFC3DAAC78FC71D777E133DEDE731323482175F79034ACF6E7CE767F7A1B8EE02DD9EFF7B0D6181E89451997BEC45EE45F7F5C49F1E4761712927AC5456A685ED6D6F632C2E232B1B2B962E86498B63241814938C785AC5E8B03331D2497407F094235A5CAB172B2EBB0145A5E305F3521673C3525C9B27A1500F2437A273084C453E697B5744982C4E08BF28101E2BA4B71FA4E79750BB9A9C82D7ACA2EDC067B8E7EE9FB276B49FEF4075F5384C9F321117AF5A86FEC1211C3D769A01C4CAEA098CE8E6E6E532FB9B0039C29EB819C86CC1C1438730A1BE9EC72D096205F710EB3B5A90F3767FB603EB3EFA27EEB9FF014486077178FF7EBCFEC69BA8CB8BE0A63B7F8C8CD219BA43FFFF17484BDF59BC7FFA434CAD9C8A85F9F3F1CC534F31C3E5FFADBE057B76EF45554D0D6B4FE3F1A3282C2982CBEDC38DD75E8D446C044939C14800993D31474B9F83C10EDE941EC341F94524A1E1B26B56A3A4B281830A9E6C414221563E750C530A213A6719F9E052C6279D1186EBD86C716B9B40738D3E3FD158A98FCC5088862326C2D5E4FBF1EBEFDE898F3F781F1E17359ED85056568A85F36663FAB449E8EDEFC3E9C673C808E4A0BAA6962B700E2A8BDA2C0804020CAD90406827C5E371467909E3611C879D26D738D37DDD870FEEC7B34F3F894B2EBB02175D7411DE7EF555BCF8B71770CDB2525C73EBF7E129986A74AEFE873C43F0CBA289309A7BCFC029D9505558CD4FD27D9D3FD782A3478E60D6DCB9282E29C3D95327905F54C0FCE17B7FF54BECD9B595ED3E4130E4DCC95FA685A23B774155A2CE76096E4F004B2FB9169985355CD0A2B608FAD278F29DDED34EE341B89F45B451481B5A431A65D20C099898929C1E0C402DCE0613919DBA2C301F2599C4ACAA42DC72D52A1C3AB01F0EBB85D989F9F9B9B8F2F2CB5052988796B636F40F0491959D87DCBC22266F57545761D79E5D281F57864B2EB954D404AC045FB7A3A0A040F4FD19022134543759B460D43FBEE19F1FE2F09163F8D14F7F86575F7C112F3DF70CAE5A3E0ED7DFFE5364964ED74901FF511E62F004549C3F7B964DE1D4193378B01997D9F44AA90123527DDD1FF0C3E1F2E04F8F3D8A751FBDC7769F87B15157B09C4CB7818B318022F6651F4364F39C7C4C9BBF1C99C5E3C560812409242908DFFA80013104876AFE3213D4A58FCE0D6B14721134CC8577612838E4E459267A9F37CF5B54044D9386BD5C505B82AF5FB9129FEFD9CB350E4952909515C00FBFF75D789C4E1C3D7112906CC8CB2B4447670FD7086EBDED361EEC4261EEEC39B3C48C47325B7A17134FE413D81D24423ED33007397705DBB77E820FDE5B8BEB6EBC09470E1DC1FAF7DFC1F285A5B8EAE6EF20AB78924E77A50C4B77EE0222D6D10683782CF89FC48E0F0543ECCF081DD049B4BA871155D0D0E00023170E9F0F7F7BE169BCF7C66B3A9142F09BD92F70359B7C605270C2A8BECEBE2205BF2FC02CC68AFAD9227821DFC1732BC95489F669FE22F34712A3DF7FFFCC08F7D832564F05935191B014CDC420E15058B0062331198847B164E2387CEB6B57E1C0FE7D5C19A34197B9B9D9F8FE5DDFE1C2D5C1C347E174F9515C5C8673AD1D5C1FB9F3CE3BB91DACA4AC048B972CC1403284E1F0084AB20AE1B67B383915BB930465E005FA735A0AC70E1FC36BFF788943E2584246A8FF2C562CAAC5F26B6E47465E156F506A5920012B4971DD94EC1AA8025901825DC8127677F7E01031DCCBCA50DFD0F0A5084D0832323288E0D00032B2F3B066ED3B78EBE517110C0EB203A67095C00E9A60C7E69D60257DE6229B7585E670B9E00C1461D2BC157079BC90E538B7F971FB344F6BA5E9AE0ACFFC6281D0B678B769880B542231243C6B147C230DA15A07CF31A156E76402916802523C86250D65F8EE6D37E1B3CF7672984BD14A6DDD787C63F56A24A2111C3C7214BE8C6C141795214E435F92492C5DB60CEF7FF0010B64F94517637BE3A7D8DEBC13775CB01A4599A53CBC80B9BC54A8D1E782080324EC2D999823870E311674FCE46924A241CC9E32015366CE42766E09548D3A89935C9A8D8482ACEE5440A2048C3A6F05178C2A7D263639FD0303DCC04F0532F6956952B758834870084D278EA1A4B206EBD7AFC3B6CD1BB986EFF1BAF5795B2A67E0845319A025095D9833190E9B03E1941573965F095F5696087BD95CD1745431298936B99A14E1300BE48D93FD1A6B070984D15E8AB6745AB76873613F42C352E84663311248148B2796B24088A2E3723BE0B6BBB0F08279B8FC924B100D0571E4F809787D99282A2A4579650D87C1E7CE9FE70B9D32750A0A4A4A70E0FC61340DB76155ED226479B244E71293ABF5BE7503A2D6CBC6DCE92BD1F4B808BABBFAB1FF4013CE1D3F8CC9952A2ACA274136E7B05038D974BB98C3EB71FB397465BA2C4F2715086D341E475353334C360B26364C149569DDFDB016691AC22383D8BB7307EAA6CEC0FA75EB71F0E07E3CF9E4B3E9E16EC456F73AADCCB674BB9D5C3B17083065EFB41F2C18914DB8E0E2AB919193A7CF7014F36178BEB13E2F988058D210E618BE72B457E39A2FE12C8467516C6E605A7A7B184125722A89583C8A683C01532C820B278DC3776EB911FB0EEC43666680B1995517ADC0858B17201C0AE2D8C9465E8CA2E25214979563607008870F1DC1A449933063C64C11EB13AF971648702A4592C6731F45C15F0FB7C442116D55194274A009D1814EB8DC85F8D563AF60EDCBFFC0AFEFA8457EEE78449C1528AC9CCEADD22E5F06DB6D87DDCD80208FBAD5E711936092A9143A3B3AF9F34BCB4B39832633138F45D1DEDEC175F04086079FEFD889190B17E1DDB7DEE6F0FC99175E36568523521A1BE52490D04688AD8A44220597DB069FC78E91701C664F0E565D7D030B44201FA2144E799B315297097E1406D3BDBF74A45B230C85424E03CFA27A08038EFA479323A2F83B91882146024984B1726A35BEF78D9B71EEDC19A6F748662B2EBDF8222C5BBC00A191204E3436C3E3C94061713177467575F770C838716203739B888F4B8E9B58EA3CA85967F1513B20D79BBFF0203F2023193C8FA1C6ADE83A731AB2AB027F79F3339CFAF47DDC7251161CDE3248D9935031F102E4E415C0E3CF80DD4E5DB0BA408CDE3F8AE2CC162494244E9F6F82963261723DF910312F31168D32D0B8FEA38FB172E552749C6FC5AC858BF1F4934F62E7AE5DF878E327465D8E5B103C0E2BFCD4AE66A331821A97729D4E3B7C1E077A87C3B07873B1FCF26BB86956145CF5D9C68C9C8B5E791E65A50F7993FE7EB04323FBC789A16EB66836150947CCA3110E8804A224125C3E35CB51AC9C568D1FDDB99A3B93AC5C5FB160C1BC79B8F6EACBB9B9FF446313DC6E2190FC8262A6F7901651363E2A103343D8DCF3AEEF601688996843860111736FE91A82039D18693F8AE1FE7EBCFBF167F87CF75E4C2D1C4169B605B26D1CBC2553316EFC4C6466E7C09791C1F4530A59B90953FF627D94249C8F76E1C0C8694CC8AB469DA75C103728A431498C1A3C78EF7D58B4700E2223212C5CBE12BFB8FB6E6CFB743B8E9D6C4AFB1AB2A84E8B193EA7151E1731334DBC617D3E0F02193EB4F50C42756561D1AAAFC01BC84E0B44CC70D4072DF014703141896195E7F6B50AF85DDFA124081EA3C7A644603F1C1128090EDB88F66956925831B50ADFBFED0674749C673689245950555985FFFAE6ED0887C23871BA116E8F1FF985C5DC30E3A606161A2D61B1B183250D514D26B4B6B5223F2F8FEB206CB28C2C5D2F1DCBC924FB008A64680040B0AF1DAD8DC7B07DE33B480D3722D7A72165CE873BA70E59C5139099570A8FD7C7CD96D4DE66A56494F85054F2D52B7B143D7447FA7164E014CAB34A50972592431248EBF9F378FBEDB7515757CBC48C7838860B2FBB14377EF57AEC3F7880B1B9A2DC00EC56E21813CF4A8294A211B90A277F09062E5D707B9CE8E80DC29E5D8C79CB2F81DB9FAD37CC8A1A0D31F4492BE8BB314E9769B94FED3EC302E18A212788E012AE305B06418E1297046402C8E4044F125D31B51ABFFAEE6DE8EEE9D25BB480FCBC7CFCF007DF63DED5493259DE0CE4E61530018E38572410A2F9F0E7B00F313392EAE6B1134EDE9D3CDB514FAE289A624205F554504D3B19871C8F21D8D783485F0B946837B3D0E329179CDE2CB87D59B0B97C3AAC4D1C5C177F0E230263BB5E21A1ADA31D27CF9CC294495350945F9426730C0747B0EFF37D6C2D5A5B9A5152568EF98B9760E9A205686C6C463812E79271B6DFCBB350685E094576C904E15322B7E0A850D3D03D108533BB1413E72E82CB1748E38386408456507E472C1A81A84B7FDDD5CCCC4571C1C413D26BEBBAFF6087CB23F492501231C16207B072E6043CFFFBFBB0FBB39DC8CBCDE1E699E0C8087E7DCF2F78D6C8A9D34DF06764212B2B0701322164D35920C4C0104E9B94E06C4B0B4F9826FA288FCBA37986C904F36779E6158F754D301F96FE9F87AB312614831C4BF0E8728A5204A39CA01887EEC025986D26EECC15C5695103E74FD524E61353C18A5AAA89004E0533826F3C7E1F13F3860606B173FB162C5D71116A6AEBB168DE4C9E132F820FA24C3124CBE367493388882D21257A2069709AC98C6044415EE524944F9AC5ED6E865912A3A78453E7D9625CABD789EB4F7ED62CA65CA6AB6DA2C599A078CA4F587B187A4F424D447931881DB172D644B41EDE89A7FEF204B2FC7EA6F67774B4E3FE07EEE1A6CD53279B59337CFE003232B3E1F1F9311C0C62FB8E1DEC1F962C5B8282822224288922C6A3CBCB98167DA729D934AA83CAC0DCF265B7E9953A2E108899B974039464518E944A32AAC0F57F2A6C517D5AA786F0E0499E67A50A2E14CD904C24792350BE3065EA54161691E04E9C3881E2D2123CFFCCB3CCFD3DBC6F0FE62F5A0A87D3855BBF762D27C054C64E708424044BA6548CF813272B30F39321180D03C321E4554D46F1842930D9A81F7E74523651A4584024107D82106BC8139F366A464B81B16B795831534A058440255B8D61E3284C24109305336A8A5193EBC61F1EBA1FF16888770FD17EEEBEFB272CDCC6D38D2C108FC70F6F2013DE4000EB3FDEC030C3CC9933B8BE9C999B0B32117185864FE6C16EB1B12D0F0E0EF034071BF9156E7BD64965E9D11CA217854FF0E0EF624349C6EC2E7DB800BB21B2805420A27202F94546682524F53093A89E642AC98CD042D306A1E101341765DFEEDD689836035BB66CC6AB2F3ECB3012E5615425E7B7A6A1A162E0AA586C63AC9F2E9084A222BBBC1EAEFC52C67205B74D0C96264031AD313ABD8A11853F6C3D91EEA0A2F1E164BFC4B404030FA2566312461C6A2206532A0993644191CF8A8B164CC643F7FC1C6A2A86E06098F9B9172E5B8A92A242B49D6FE31E093245EE8C003C191E7CF4FE5A383D01548C1F0F8FDBC343F023B128FAFABB5151528EE1FE4178FD5E78FD01D60482E6752EC67F400CF52E2EBA6E639EED98D30878679106191D2C2915DD7DBD387BF61C66CD9EC5C3998D088F077F323142415F77376B697649096EB8EE1A44067B91E17532F3460C691313AC457227B684E8F833C8E81AC2B13872C74F812DBB00AA4A9A2A4E8B1082D0E732F25876A1DDCC037D6CF3B12F0844E48B63068DF3893AE44CA32C149053375BE036A770F3254BF0E68BCF62CFCE6DC8CD29C49C39F361B36B98525F875030CCE77338DC5EF87C19EC43FEF18FBF61FB271BF0DFDFFF31A6CE98CB83BD886AFAF8638FE2AAABAF44C5F85A9128F2B8A4FFE343A0A03AD2AA970E48C3F929113A6B1AD5C14D02B2D039656C8AD370894E79D2110A5AA0AEAE2E6E10A5A69F15172E864D959197416D125419D7478BF3585D51F2A651BA493EFD879CB3A8BEF60D87905533198EAC1C7DDEBC312DC998ADA517FE74E7CE07603CBCFE105F352766FA5079521D2314A68B26FF41D10D65B1AA1C634ABDCB2261F55796C22D29B8EB9BB760E992E558B4F8426466F91009F6F370C981A111EE8AA23074DFF6AD186C3A8AB2B27C7C7CA8114BBFF255E4E6E6C1AA51A63C8EC360E6235192CAB590D105FD1726C9FF2A2B4328627880E816D6A344868F2528121D089040643006ABC9067F864F5062C7A202FA612B26AB159168145D1DED78E8DE5FA1B7B30D195E3B970828F221E45B4ECF8417ADB0D4B4C3332609AF9224740F45E02CA98533235BCC30663A955ED4D21998A2F047639DF4639DEEFFE073319341672B1A6395F4C201634B1A1DC0C23988C845C82C5323CAC5F326617279219EF8E3A35834771EA6CF9A0B55D2D0D5DA0CB3AAF0A49EACBC227894384E6C7817298F0753BE72339EFAEB0BA8282BC3AACB2E859DFB00CD686B6B4576760E77D7F23A7297913139E83FB10D0DE908810832B8D1F9C5EFA44FBA03DAD52E72B4F13500001ADF494441546C3ABF0D75A90ACC9D30839D7F329EE01D4E3E4D10F969BEB002B3D5CED4D13F3DFC30766EDD84683C0C8B55E3FE102AC631BC64A2E22B9D3C2422261A144DBF4B42E10E727736129E3C2424EB9846275D4B18F115C1893059E4835290EE796727C754A26C2AA06A31FC58EFCBD3FD0755BAF86808FD90138A7ECA020EDC72E50AC894B00D0CA0B4AA8A553838D4875474182383439C1FD00D501D7C3012456ED138BCFEDAEBB860C9222C5CB2445F4DA1FAC4C36D6898C8CE91CE8EE28DC288DBFFC57C8DED5D19A35D147D5178296B38DD7D027B9AF6E2AA395720E0F223188CE0D36DDB380F5ABC78B1FE393449553F0147027E7AD7B771EAF8513EB689E7009BC4C93E6E22BD59F4514E3A63857D03D53954A06F280453561152DE1C106B41946B47FD1C5D134785C6243EBD6753FAF9EB9F7C41206297E9C733502442317F929AF7E9441C45275F8B157240C67FDFF01514E766F0EC5B6A2BE0D61D258E91814EA8B12428D3260E15CC568EF3134A8ABFD36016237448C3AC1AD0DED60687CB06BBDB099F93DE6F948CF69FC53246206360171AD42AC7921C3C7CB6E353ACBC6815E75A3420ED93CD5BB9E1E7E28B2FC6540A7F251AD7A7701714F10668D6EF8BCF3D89E6E6469EF640511A396DC2EE88174063331C341087188B69EA141D44A0A1279C40C29303CD95C9239B8CD312B8EEA19B54864A0C76A81E2D4A3F7A7183C695B9F43C8D512E1643C4348D478EB3608CD1D65C4222FA8AC9844BE73660D99C2922E9E2ED4C857E19E1E00092E1118479904B2643E14E8F1F262B9D962606DDF0808E311A40BBE69D77DE41D6943C86FB974FA05DCB2337FF0F2A621C1FA1730084E143DBF916F87C5E0E4D892047D7489BE4F48953CC2FAEACAA628E168D6122EB400B4F3C109A00F7C7DFDE874FB7AEE7938154D5049AB445391997092881B698185C7412A5896177616178B8BF2B13418B0F1199426331DD9B3542D7123AE6891930E911EEFA993DDF7BFE43D61071E3E20DF954194AD81271A85476A40B22BC461F612E0442C3F1AD28F29AF1DD9BAF4186DF9F1E2E46AB4C67198687BA5973CC66073316A9438A9C259D38A0CF24D5A320DDFEEB03249FDFFD320AF3F2315E2D437945A53EA14837ABBA6844DB87088A8D4A869808CAB6960540C5B56D9F6CC7FC450BD0D7DBCF757BBA8FEEAE6EF6595999593C22AABEBE9EC728D10033BA27C2A368D0C0AB2F3C8583FB768B53E5345A5881F9B167E3EA239DD860E20625CA67A87792EEBDAD771861AB1F8A271BB24AE88271648E7EB5FA314FC21A1920AA9E6E7CFBC977443C620884CD95A80E92409843A490EF10C300C461610215A5D8DE6156F0F54B9661EEB449E9815CF43AAE86C543880D0F211A8971338EDDE982999C27A1B96359EAAA8A7F7EF80186468698D1583BB90E45C5C53879E00466CE9E2D0EB34C294CB04B0FFDD43956A3EE85425A1ADA9CC231B91939611FC2DD23A81E5FA3F792080112504A30495B6B1B3ADBDB71E4D0615C71F555A8ADAB452C1EE319ECD4F1F4F62B2F62CD5BAF307392CD302100A2462B5059D197261AFF253A07C5C263986870DA5042C290E446C24273C228A935D2085D20C6816A63F43E3D0BE08EDFBFA47F8E310256242DA4D60C26922327AA0A3925961B85A4068F95104F1326140470D7D7AEE171DCE998479F769D080D233C32CC7349DC5E1FCC367BDA6CA55FAB6A78E1B967D0D3DF8BEECE4EDC72EB6D98D430459CD6A96A5CF0A21A45757535CE769C43480E223F231F4539458C63113E46DD52B4C3359B847B0EFC0537E42D85DCA360E6F4196223A537A2A0C6C6A3311ECBB171E346FCE0473FC4C4490D6926E599D327B1F6D57F60D7AEED3C408D38648A46C366F4730CA9255CEF0DD4A31F365FC4691E1C894276664276678AFE9031936046F90A46383E96AC2D2E50FAC643CF0908287D60A280868909C1341702EE740453688668586036379D9C49C4612D815B2E5982450BE68D618AE8AD0C74325B68982765537D82403693CD2166A21AE71BE8335368273DFCD043F8D9CFEFE69E093103578C00A78E28EA45DF7C7C1B769CD985C919B5583A6531D75E082024D5A190D9E976E2A3935B30BF6226321C5E9110EAB5724E040DC24652C696CD5B981370F9E597A3A2AA92A70AD1A6FBE8ED37B0E68D17D13FD8CFF7480227734519BAD17BC9E7504984420BA29C64A6E43005597240766621042BCF84E7529B4E021F4D7704DF8860F7740EA4DB0CE9374FFE83D15EDA4206F845E6816ADFE27C58FD6016CE0DC4BC77810A8BE3DFA8A6C16D0925B9583C7F368A4ACBD3E64838313A6E288E68708877294D4760C74EBE64CC5063BAD8C3870EA2B7A717CB575E94CE0BC909F3C421DD76B7073BD1D4730659F0A32CB714C984CCA01F5D2F111AA8098696E82F8F3F81F2F212CC993B1F99D959E91281C133A3B1EA34B8ECECD9B3DC0758515D0D97D7831387F6E39D97FF8E430776B32F61BE1AF79D88616306798F1793AF52E07EF4D7482886ECE271C82C2947D7309DF246E411A2E8EAA3AFF42DC81D6BD44C44E8B15E9813ADE912A48F3F7A87811872553CB79CB3757D2832272EC6C1BC62DC9F01D3F38920FA6C3FBA30BFCD8CBC9C6CD44C9AC9D370C6B6C3D17BCBF1084FE5B1D18C73BB0312F17809AB12E1167FFE3DF7FC0AFFF3CB5FFD4BEF9F1E3089D334F9B02DC1A3654281AE65A3E6585072889CDD30712217C6CA2ACA455FB901A71820A0061E534B40A33F3393E705FFF39D37B065C3470807A917443FD6880F0C10432A295914EDFA821022881712C271056EB71F3367CF84279081482C21084DBA9FE1A13CB4B989C943BF46700B911BB8EF53B4C8F130FE93BB3FE280459CA426CEE730D492FB40C60E4BE61D2FFE9F79BFBC2E3A3181F850D44115C8C7B88933D223BD479D4A0AC978046A32C9F47B93D5C667800813086CDDB299078C519B9B31AD736C0E4ED74824E753C78F71DD7BFA9CB96974E18B018282EECE2ED1B8EF76414924B9E59A7B3874813074AF01430303181E1A424E014D2705F66CDF84B75E7B1167CF340B08D724CECFA2B09BA844F4A02338F89A69FC14B76953666E621F33655203E6CD99212C8D91F8E9E31169E3D069A8E2D002FD74548252D8C1EB05421248CBC14D5C3114273B930A099F2D105F63F0253DA9C311C6376A7E4CFB0061EE481515D5C2879D948F9F28682DCCCFD4413E62AFC423E2141C120687C04C5EC5EDB7DF8E3FFEE171AE9BE86CD251597280A461D7CE9DD8FDD967587DEBAD0864650A27F8A58E29D29EBF3DFB3C2E5CBA08478E1CC5B88A72D4354C14F514CEC00522DBD1D68E334DCDDC741AC8C946E3D18378F585BF62DFE7BB90E221A0D457AF475492183E4642257E19F511D2CF749E1509281489B37FFBEA5597C2EFF3087856478299FBCB972FEA255C2EE0F1552252E5938CF441687C8DED47B66A8CC3EB37669CCC2958DD34AC464CA9319A3FC5A96D7A8188F54DA4010C97EB934913AA0DD9A5E35150522E0E0D33A60BE958139DFF44671112150884EC5AAC387FEE3C0FA4E4E7BEF4A0EB20906FE7B66D38DDD8C81344EFB8F30E6E1E1D6B9F85DC34F4F5F6C2EFF3213C12C41D77DC8ED7DF79933B81790284A6A1EDDC391CF87C3FA6CD9881829262349F3E8635AFFD1D3B3FDD86E1E0305710E9B668BE97D05689CBCF74DF64DEF840160B4DA88863284CA3A7DCB8F1AB57213F2743AC953EF6D020621B9014F1B5686331678B0FBB31124611BC93AF92BA8E6FD3D24D8B5C22D50FE5354E3D18D3BA35D62F8872EBE82998F486FC814419A2DD6176A3A8B201DECC9C31819F5869E64025A29C3C52B84AB00A1FEDC0F58F7F85AEE8B94FB66CC67B6FBF8DFBA84D79ED1A1EC177EDF5D7A7CF063464C8AD77B20C33958035E0E295CBF1C1BA8FD30DAC348E76E7F64F3073EE3C945556E35CE3697CF0D64BD8B5F313F4F4F689F14B1C6E8B5C838F21D209200CAB1061826AFC2613C211E2AAA570FDD557A0A2AC8029ACB4A1D9511B512B012774B41297690D42364126FA71167C94DE985326CEED5FCF02A12FBA1863977D211C4B37368E0EE0A7D7A50FBA67C7ACB083E652AA2AF1A82293DD87717553E1F4185D51BA4074BFA4709E4371BE38678388D746EEFD652DD9BC7103DE79EB4DFCE5E967783406E511D75E7F831EF518750F3A9553C6138F3F8ED5AB57E3F8D1A37CA2CEC486061E22B365E326F4747761E10517A0BABE16AD67CE62DD7B6F62F3C68F70E64C139FF1C1432AE93871D2548678247DC49F0C3A89888E2A22A10423719E6F72CD159762CAC4F17CAC1F11ED4416AF071B469D838310327F294684A9EE4E0E98BA6E45E3A85990E6E8E763DBDFE58972A3071D1AFE43C749747200A392062198F20F8A9C743A2467ABE400B95193F019B2D304449A600B14A0BA61165C5ED168A94B5C6802ED2859811C0B0A6C8C663152F445F1FD971E1BD67D8CD75F7B05CFBEF0373CF5D7BF22120EE1C73FBD3B9D63181B896C34B1D21FFFFDEFB16CD162D44D6AE021961FAE598B48348C152B2F423969464B33D6BEF6323EDDBA15C71A1BE9882C3EE993923B0E75E9094DE2CAA6703BC47E915820B1848ACEEE015CFE9555985457018B44E697CE1FD529B8C6D875DEB4A2DB8AB03086EB39C1275481F23B71022A95C445A004482776ACD178A200C762A304028A68B870CF790D2DB4987138562B847D15A01E09C73063B4ABC401BEE2B045BB2F07651326F3B872FAF02FC3E9C4C020BF42EF41D009D5D1892E648C51E3E43012C1E68D9BB0F6BDF7781CC7B5D75D8BEC5CEA571FDD401C0E8B289D932E8AB062F130DE7DFB6D363F975F79154772AD679BB0F6B517D1D8DC8C335D0338DFDE89442404BB4583C326C14D6395EC34FE824046CA974C482504A84887F275750FE2DA2B2F42E5B842A60B19B3260D2C4DF0CBD888F33A88163851A6312C8F4E1313A3D27533CDA1F9C9ED6F6BA26151B43DD3832C906883264684381452A0B87A826638F6349940D71EBE08D124CF4C0C4A7CB8526C866AF5A1ACE6FFEBEACA7EA3BECEE899197BC6E3B1C7E3056F1803B643C596848612082A859650B508043C0429A91AA90F7DEAF277F4A50F55DEAA4AA944DA2611596829A909500A54866096800D260EC618830DB6C7DBECE399EA9CEF5E93F401053BCCF2BBF77EDFFD9673CEF722DA57AD5619E5DB2D8EE7C5C56CC62ACB069CB36041D01B37ACCC1740150D7A837348031FD5A9E7BD54C2FDBB43387DFA14BA7A7AF0A3D7F76A14D3578303F8F483BF60687010B95208C1AA1A4CCDCE63F2E96309E524AA43686E8C21CAB951BC872A1859A9FE8B6CB18CA99905FCF6576FA33951656A489C52A7E9A36EEEBCFB4E84C8D215D9FDE106DFBB568282228750A145EA8E2215949DC65BE7FEAAC1786696B480A2F938422A05E0F205355A01612E7661E9F21269C50DB02F147441537594EFC11D212784E61A8CC4D0D1BD51C9124FD30BEB374968D83260AB062D6F907E705D3537FE9B262E95063B626695AEA16631BFD71F31C57ACAB70E0F0DE18BAB5771E4D04189BFB0757BF1EC199C3DDD8B7317FAF078E2197ABAD6A23191C0E8E371AC59D78DD9E969A4939348C42A1534F07968A9D94200E91CC5FE97F09B5FFF1251CE7C2DE59787441A0EDA9F7387F6B46CDBDD1D16B1F935B360C8B06415A1F07395251EF09B67DE2B0B36EAE84BD64AB437E366705388B4E066F0977405B4247F52CDFF8594544AE1D90BD710B314B251D7ED5D1BD0BD610BFAFB2EE17ADF45C4EB9BF0CA8E9D58D3D523228B09B02C57D19DB92F37F02C6C76A269FE6AF1ED1BDFE4CDA6B3984BCE0AD447F587975E7E19B58938A25595181F1DC1898F8E63707008BD67FE8D5CA0426131BD7E4B63035A5A9A51511D454F4F178607BF44726A12C15019992CF1612195D0376CEAC15E31718BAADF6A5C46A842444EB6B949FED7AC64BA27B78694CBD5FDCA705692E616551A5F3E2FCBF1EB277C16DFF3D69963651231E5DB24386ADD4271E91CF5D70F6F3725372ADC903DC45D2E3A21F9A0A0949E444FD3F38DFB50550D5ABB3621932DE3FCE7A770E16C2F261E4F60FF81FDD8B9FB0768EDE8427D73BB787ECCF497139BE592C8FFC55DAE6ACB1E05C9971C1A46D79A5E48E1F1A331A128EBEA13122F9E7D368993FFF81883837770E9BF57F0E45912B50D0D4A7C3B3B3A3070EB367ABA5663DBD62D42EA1F7EE3281E8C0CE383BFBD27E9A872B18C444D15DE7EF3081289A84CD9D0937E64870D94F4EECA6A81D6BED09DECA6B5F91C8EE41CAB36116BC64D75961D0CE8FE543579ACFFEF8EAA62B45EE96DA8716F235375A17D536BD165EA547EF8A61F17858C378D82036E2CB14B4038D18652388E7F9DFC27CEF47E86E17B43E85CD98A9FBF751889442D16D245249A5761455B076A128D12C5A440CCB7FA087EB6BB070470AE6E2E8727E3E3989878827C212FCA751D2718E432989918C7B9DE5E0CDC1E40FFE01D3C9A98422C1E57057BF3E6173136F640247D4ED2D9BC793D5EDBB6156B56ADC19E1FFF5405C63FFCFE77B871E50A5EDFB50DDFE95E89CA901D50C1525532B67363AEC7DC9235036D435428D43A309A22ACCE3C8BEFA730EF203CC250FD4B3AD492BB62203476ED4499257623ED0745B9F2A80DABF91B6ADC4B6C785059A9C852B4E181791278627D93855F3ECC665475138A913ADC1F19C11FDF7907172E5CC0FA755DF8C5CF0E615D77A792239AEDDC421AC9F91422B1042AAA6AD0D4B6D281A6A36A4A9152A00492F79266E21A358C4D34923739208C5CC09B376FA85CC2C12C230FC7905C4CEB1496CA2195D79F4D3ED1E15A4C2D623E9944BC36A609A0DBBFB715870E1EC4F65DBB912E1471ECCF7FC2FCC428F66CDB88782CA283A9D952410EA6B4BF1B9FC3CAF17E428F42109546ACF2A1685399B965EF829F3A0CB58F4EE9FA08E8E01D2309C3D1AB27CA7453324586AFACD5E8C34DFFC45F9E5C0CFA47D56002218B2E9C160A7758D3A11D5A855DB370BC099D1BB7E3C9D324DE3FF6AE18AC753531BC75F40036AE5BEDCAEB1E5061F3C8D9CF7EF47842997B4515D1F061E4F3245372A693C91A317AE128A3A74F2735F5263933AD62230F14EB4C53C9A40271EAE6E67379343434E1F6ED21CC2FA6740A272627C4976FAC4FA0A3AD050DF13856D4D7E3D56D3BD0D2B10A778787313A3A8AAF076FE0D0BED7D0D9D16A343857E9E649A76B35F76C97B536C4E1ADE4FA1D0ECCC26F6BECD1F370030D035C9638A6D216577EF274DBC0FDBE4F9613435F22909CB8CD9CB0212E0E1642B3E426F3544BC9C08DEBD6EBD887E0654F5A1747B8461368E9DC802FFAAFE3F887EF63E0E675FC64EF4EECDBB3DD947E04BE60B18D406523AF683C85445A02584CCD235758C2FC5C4A5370B8C9BC14C9C47AF8701C33734925528CA06A6B6AD0D4B8026DEDAD22CB68F056A41A97FAAEE2E95C0A63634F30BF388703FBF7211EAF168266617656D9FBEAF636B43537E1D1F81416B336C397AA1314597E61751356D4D7999EA2B30C21D75D04C26CDEE711D6373186AF389AD4836122C84D70C0395F6AE27AB17AEC1135423B5A4285C0C8E54F0525E58BF886FA8065512EB302CDF970610D8B6B4ABA9CBA1C637E7E0BD6F2B959F974465151AE08CCCE65D17FED26FE73A90FF1780C87F6FF10EDCDC4ED06D49C51953318444156600FC09629D3592682B406DFC3E6BF4F67B2989A4EE2D974522135AD863C731272F81AA2D449C4E48148650B387FE132C62726D5C388D756E3D5575E427584E26A06DAE0F4B4C6441CAB56B6602AB9803B4323E8EC5C8DA347DFC4DD7BF770E5F2797475B6AA01C6EC9F5E84CD2CAE8725C586B35A6667398165061482850AEC67D220949415F949A8500798906AAAF5DB59C455FD6CF2D6E9B2DDF0C6517009892B6D38B958598591DC3DBE48A1AFF2114B80D81462291A1438A3AF2F2E61687804273F3B8BC17B0FB0E5BB1BB16DCBA6E7D3361DB03997CDEB52A62973F14941B0D235A19A8C4A08CDC9690348A7632D88FC40760A6921FCEE0C4F8985CAE4F2989D4F6B381881CE333373868B77E50ABA8D784D359A9BEA519F88A1B9B141C99F06AD548631939C4755388AEE9EF5D8B16B97ACF4F3531FA326CAC55C120D839B13E5E9668946FD2347DF909B27F9D3326F6E086D8996A0226545589BCAE7A8626F2558D2E6F2D9044F7528C6C0B3C1B32A2E7227B928E974DA5C8F2205932EE52E8A29EA9A4406BF71DC3F028B4395E25DE7F3199B58A9BC64497A585F0D8F607E21ADF10F1C6CA2E4D37135F865B8C8990C1731AFFB8999BA69854065760D6729902E46720E173FA704339B2B209329209BA342510939BA4A495ED83C5A19AE0540E660749FF2847351A944C4E70B085345172761B170186BD776E3F09137B0B2BD03FDD7AEE27A7F9F6818555564F0DBD41F4A894B4E979CCC4AA3B5913E610C345F302C2354696E9CD5E1484544CFA564D30F06F377088C42A8086DE0E2276513267361AFC4E64B0225984FB4ACDC67D53EDBE48372F73324D5042BC5D065C991D5526E2E4F37379341422A95961510A6A3A8289391CB62684D0B21DD5AA7BF58D43017127768913C4D5480E31F6E0EE3F442A184C5C51452192656E4799491617C4FD7A71CEA797FC6B6C2C196D410B21CC27A122C14B2FBC9E4CC1697770243E7DDBBBE8FB6961518F8F216EE7D3D8C559D6DA8AF8F211C0CEB3473E188E3E2C0185A012D46BA138C2E598B7356494101D3AB34E929AA3F7043E4B65CA9C4ACB3D2E9A32C2170E9D487CA432482A2288AD660D210128371D50A36683415D917EEDC107B4A4330EBE509AE4FD49AEB5A2AD9073BF55286A7DC18738925E50A9A004DB8B8032B3328E0E92721861BC14C960BCFCD636597DF239BB57B841B46ABD2A6158B3A14B496025D1DAD259F972B5098E96A4956AFE3E21BD88DBC7C0EA5F1499E0FE7193DB299D5DADC84B9B94505192DAD0DD2228ED7D6E9744B2B51F252465EE5425753CD887342D8DCE2212660DB4D29A2BBE1807B5A3A5F4360379F8BDA8B5C01BE867911857D02BDC7DF2DF383445A2CDB5D421D72411E59FED0E4340B8373F4EF2E01A2D0BDD1B29610AFADD5EF89DCE3EBE95A18AE52929B0B277FCBCD669F2497D378239125096C5B5AD249A39AB560AF743DF99C1E8AEF31339314CB979F4D3425099C26F361592F3DB5941074580258C8A4A418C74B97AA718CCCC81D971E70B184E9996904E4BF43A88BD76A8108F121A4C763AD22911ABD772AC729D321442A39862228F7C84362FD75F1B71502D7C6381B258A28D5B65DA4A5CD927284D5D71CD64ABF53A0A475B2FB831BCC509C3F07FACF7C548EF0429B99D14431D5955436B7C5B2C187B63176E2ED142AAA72FFF55D35FD7F671D0C8B65791259B14E1923200F2CE369E1A9E11F86656C5631A6E7A9E11C425A01BB7E2A54323FCA52A8A560771743E4B0413E593AA17AA9EE874895C947159F8F5762056131B3E8643B98EBE4F44C39F7795C7935E674001D04B522A23B90D436E27AA9B63D9F5A9025A4163288C688F7322D633F6D943F9B0CAC292BF17237EFC201990473580584C18E6D16EF5A439A70121D931A4A92FF0F89B2D5CC90F5E7870000000049454E44AE426082, 0)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (2, N'Swook.Lu', 0x39F26F67369551391B22EF5930DDFB88FE5B25682BF11DF4D83FB72934A6645A948244679C1BF59E9ADD03EFF5FEAC829FE88DF6FA8526C30AF39A58A6F319DA, 0xAC35E4190F972FD04263EE31ED6E7E99B357F689A43776F041A6D809859FF8217733AE73557CA44A5B1DB42281587DCBEC32994AC7D31D35D942EF67485452726869DFB602998F15CB092F17BBDDEF8228A37358F965D3D636949EE2396C16D53FCD27EE4E7D00A74D2D6620D20815F2F3F1A39E162E46A64844C6F662FD7CDE, 20, 2, N'swook.lu@shc.ssbshoes.com', 2, N'/images/default-150x150', 0x89504E470D0A1A0A0000000D494844520000006400000064080600000070E295540000200049444154785E84BD07985D67752EFCEE727A9D334D238D46BD5AB22C5BAEE006183036A62534F3434272F94320DC4002FCA184844048E526811B42020997D07E2004838118F726E32ECBEA6DD4A79E5E76DFFB3EEFFAF699191B9B8C1F7966CE9CB2F7B7BED5DEF5AEF5692767EC084BBFA21081DB4318F808A0410B034451043E2994FF039AA62DBC425FF26AFEBDFFAB16017C165FCBAF280AC1FFBEF6E5AF62A85CC11BDEF6EB08023FFE1B50AB37D1ED75313A3C8C542AC14F41FC52F93CBE4F1886F24F7E0FF99EEA32B4F822F89C856B8BE2D76B21EF02215F10BF8FBC28F071DBED3FC5DBDEF10E58DD1E02DF05A023E8DF41C4DF16BFF8B99106F9AB1646723D4110C8E785F172A8EB0C17AE5D07AF27C037FEFDFFA0D96AE2AA2B2FC3FA552B91CBE5E2FB5EBC5E2D0AA1E91AB45F120897CD7510062E7C2E6AC465E60DF51796DFF9468B17CBC5EF0B6BA96CF938574D7DE3F7087FF1993FC7AB5F71032EB9E25284A1BA2125B0F86695146571FA82E8BFA7BC477C1D8B82D1B8420B8FABF75A7C1EDF43D77511E4C2E60070C71D77E09A6BAEC3C0D020AC4E47EE290CB1B8B8F1B5C73B5009237E5F0A64E1F3976C54D910BA2ED7CF3DA26911BEF7DD6FE1FCCC395C73E55558BB7A02C55C16A1C6EB8B3793A629A18601F417160810052E42DF811784F2C60BBB265E99FE8D510CFD05E86BCEE2DFE20FE4C57391C3087EE0E34F3FF949BCF7777E17E3132B11863E74DD1481D9962537934824107165624DE4469045958B568FF36BE9CF2F24B8FE7519BA81208810464A1BF9DC9E65E1BFEEFC397EE337DE8DFA7C5536171724D474B95FB9073ED8177EACF9B257022558FEA3A0B936FD9F175E178630B508B7FDE7F771FCC4515C73CD4BB07EF51AE4B31911D282A62DD9D5FD8DF94B1A426DD0420FBE6FC98E41102EEC9AA58BAFCC833CF29CDDF91C01F139343D88104411EAF52A3EFFB9BFC0A73EF5274866B2F2BAFD070EE2D0E1A398AFCDC3D4756CDEB4096BD7AEC5F0D0200C43947EE1FD69222898A542E18DA81D16CA02296101BEEFC1D0754C9E3C0DDBB6B171E3BA85BF3FFCC843B8F1E6D7A1DD6A23705DB93EA5E1BA98237557CAE42E35C3A2ED41BC09F5BE66AB0DD337973459A6A6E1DEBBEEC0E38F3F8AEBAFBF06EBD6AC41A190A534174D7A7CDDF2599A7CB2BCCF0B982CD906087C0741E0295BBDB004EA8745BFD0375F7DDBB9F844B9C025CFE54E7F76DFB3B8EF6777E0437FF8611190633B786ACF1E747A3D249369D18EB1D11179FF65A3C3482693A2355CE8C9E3C771F0F021D0230C0E0D63EBE6CD481AA6BCC6174DE30DA94DCD35ED8BADDBEBC1344C2413A6ECCEB367CFC2721C6CDFB103ED76476E4E09248416E9F2E2FE6B233DDE0CFD8D15FB303E41B61A8512FB16A57D80A1E978F0817BF0F8638FE2A5575D8EF56B57A1982B20D2E8C39EBB90A215F298B200F2D32FFB103E1C20F0628188737C9EDF7FDEEF4A48C1F3C4F65CE15120DFF9F6B751C9E570D32D6F402842F7717E6A0A274F9E86A61B28148AC8653328160B28168B300C03AEEBE0C8D12378FCD147D1E974E06B40369B831E4672A3B96C16B6EB42D301C3344013E53A2EF2B91C46968D2053C863786414A55C0EAEE7E2B1471FC54DAFBD05B5F979D188BE6FE3BEEF6BBDD212E5ACC51CC566ACEF37FABB7AE9AA50D85CD45FEC7E180F3D783FAEBAF2526CDAB00EC57C0EF4A5511C78F435BA6F3E9FFFFD050512453E02CF16BBAAD67E513D976AC82F4BE0B9CE75E9737DDFC7673FF369BCFD2D6FC5A6CD174834D28F9C1CC7C1F4F42C344D47AE9047B95840B7DB45ABD5C6C3BB1FC0D3CFEC81EFF86282E61B75E89A8E742229BA1E052A0AEC390EA0AB9DC6E7512312C924DC28402695C52597ED423A93C2CE0B77A03234085E4FCA48CA2D04B471B109E96F2C6A4BDF918B19EC9BCBBE8FA1395DB231135A840307F6E187B7FD10D75D7335D6AD1AC340A9880006740939974480CF8F54750630F18678610DA140A8213E225E55FCF59C1DF2825AA34CD8F385C65DC105FED8FFF711FCF1273E89C1C1E18510947EA15AABC3761DD03E36EB0DF43A1D3CB3772F4E9F3E0DC7B5E0781EDACD8ED858EAA10E1DBEE7C1F37CA4D369F8AE8B1E5FAF6B48683A32C50212862E8FF36A3CC7436868D00D03997412E94C06A3A323B8F1D5AFC1C8F00872F9BC9845D9C90B9AAEA2BCA5A1767F1D16234375AF74E0B5EA1CFEF717FE1E2F7BD9F558BF6E0D2AA59C04270C1494562CA60C7D2DE907037D2D110D7DBE402800C6CE816B23887390E72F707F672C8D6E96465E7D07D77F1D6FAA5AADE22F3FF7597CEECF3F874422B5A01DD3D333F0021FCD560B274E1CC5F10387509D9F87619AA8D66B9867146498F27CD334C5ECD04EBBB68D5432A37C91E3205B28C0762CE861886C2E8F4C262D1BCAF63DE8912E39034D1ACD642269C20D7CE47314848942A1806BAEBD1AD75C7B9DF27BF423B1A37EBEB97EBE5530F508D3E7CFE1CB5FFADF78F9CB5F860DEBD7A05CCC2B870246A98C320D11C84224B5A08D2A527BCEE32FA8215104DFB310042E1019A26E4B2F4C328BD8803E3F04EE0B81E6472549CAD11E3E7C08DFFDEE77F1C93FFA985CC0CCDC1C264F4E22651A78FAA927E07A1EA66666509F6FC0EAF5E087215CDB831F06706D4B16CA4CA7C44C753B5DD9E5344DFC725C1B76AF8B5CA1845EB78D7CA120E68A3EC8F33C449A26262F954A89E949A49222442A7F3AA7A23DC6829581015C71E555B8E6EA6B904B679E135D2E0A42D4085AA48980CF9F99C4D7BEF6AFB8E6A55761C3FAB5626E4514F4D77114FADFF90DBE3705239EEB4505E2DB126945A12E0259305B12A3C7F64E56FBB97B46E2ECE72491CA07FDECA73F45B7D5C41BDEF426D8B68B53274FE0F0D18392079C397B16F57A035DCB41A7D546AFDB45A15882D5B32531B57A5D11EAE0C888F88C1A43E4444ADED74C30CF08E0F4BAC8970624A2727D4722343EEE330C354D31739EEBC98D27CC84D2166EBC288ED0A0C180868499C4CA8995B8E975B760CDAAD522D4A5C884BA650DA606CC4D9DC537BFF135ECDCB9031B37AE47A55C94F055500689D098EC2D6A40DF34F5FD953CB31F5D4934F962612FF306F121CCD829EA7891FB61E0927076E162633597C87D897F91903200BEF8852FE0C657BE1C63E32B71FACC693CBAFB111C3AB80F3DCB81EF4768753B702C07BD561BC9A489743687D0F5E17A364C33019DA16B2A856EBB8946BD86F240058EEF21994AC2773DE43219D85E8072A98466BB29374A41880FD0804C32253E8701810AE52368A68E200A904826E47949CD60C42FA67A607418B7DE7AABE445DC74B2CBE3FDC7C0A1DB6EE0AB5FFE476CBF683B366E58874AB9247F17812899C8B3FBB9515F4BC4148AF6F0FD5410226BC880848FBC9886D05C05BE2D1AC2107549B0F54B61B0483EBEE805FF2109A58AEF5DDBC19FFDC99FE2B5B7DC84E9F353989F9BC5CCEC34EAF5261ACD8EE4058EEB301E11FB4DA1D287389625AFCD17CBB253CD848ED973E7E0B92E0AA5327C2EAA01184124E1319F27BBDE77258AA259E3C2D06CA59319591C9A2AD9B5309048991261F5A3296A9501439E4361668A59BCEB5DEFC2964D5BC50C70E10C9DDA11E1537FFC09C1A6366E5A8FC14A593499661ACC65C45FBCB0CFE07D4822189B5BFA434122E2DF5F240F6198E7C2737B8818FE11225902F02DA85E6CAD16D46E89F9EA6B0977DBF97367F1B5AF7C15975EBA0BF7DC7337D2A924EC6E178EE3A1DEEDC1B16DD4EB75E40A05645269F4BA1DB971CD88A10C4D97058A7C1FD5F93998BA8130D290A1F3D42344AE2702135341B393484A84E37A8E980E239120DC85A49990C5A2BFD2424D34219DCB2D02A761287E49E09C20849132B06C6C0C6F7ECB9BB176DD06F0136835FEF44F3E89ABAFBC12DB2ED8827C9E197824C1023741C230619ADC3CA6EC7ACDD054C219A70EB219E230573444D7E36B57A0E98B0A240A3D782E7311051EF401C2E74719CF0F05257454564E34C9F15CECDBFB0CEEF8C94F24AF989B9B4314F828178BF29E73B53A1AF53A92C994A0A09D6E17E9740AAD5613034315383D8571F14D7DDB12FFA2139F0A43E4CA4575E35E20FE82C1001342CF0F05DD6594C58494892485C2088DDA934A24E15A9EDC55A1548C9F1FC1349427367413811F20994ECBBFD5EB56E3AD6F798B60515FFED217B065F33A6CDFB20D8303C5459025C6DC18C6F43F5B30327E4AA8924609344CB571F83BCDA7689D116BC98B9A2CAE7218C0F3886729C87B6992F47CA12CC572FA7F93A42F08717EEA3CEEBFEF3E1CDEB75FB2F1C9E3C7904A98C86433B243E76B0D31295C48DBEA497E91482761DB1E4AE532DAED8664DED94C06BECD202380DDEB41A3B34D26902FE4A16B8684C12C19D896231AA2F713B71890A4FF894C95CC1914AE172A1053D3E45A98EBE8CC55746A6342FC1EEF2B93CFC24C9AD8BE7D1B5CC7C2D0401197EEBC10830383CCE55514296E4339F2FE5A880922F4BF806647729F127E539BA348820B8187C48F1065D05F4C4318460562B2F806B2B8BF8468FDB2AEF481C4FE5F7ABD1E8E1C3D8AFFFCC17FA03E3B07C34848A4954E250425ED39365CCB856632BE89509B9941AE5492DF199EA6CC145C871AA1C327CAEA0592DC593D8541194953CC8B2ECFF7E56FA69914ADE275F71DBEDDEE228842640B79A4B35931259EE30B0EC54D436B92A6505813917C2781743A0BC7B191C966C1CA50A190139CEDA657BF0A2BC78625B791FDAF422575CB312A2D30254D55FC30E11C1559C5504C9C84D2C43161A6392626C77F2F6AB2E8A4A821BC31D1927EB81B2716CF0F05FB4E9DCFE3CEE787D12FDCFE939F60CF534F49CD21F043E4334964D26989906ACD0642C7872FC51E1781EBA3383820824A990904AE07BBD39605CC8A0639300C9A1357B2F9CAF010EC9E03CF73643DCC24C3D92402CF55C91DC1470AB0CDCFF6653F53D8A5A10A5CC797109ACFE57B82E6CAD025E9F4FD5004410D4AA453B279E8D39863BCE6D5AFC045176C16E7CF4DAAACDC22DACB6B95C5A765EA07021A814D82917150CC40447E8E232C109DF625987851811060F4E9437C5F221701E16289FF72F64AD58CAF20568F56BB835F3CF208EEBBE71ECCCC4C297565789A4C61A032804EA78B5AB5063D6DC09785F1C5BE663219A9577041D3BA8176AB29EE3000F38984BA09FA8B6E571698FE811116933FDEB04973A503AECB854E88DDE6A6F258E37195C9A04699660649D627825034414FF031B5700C5EA50E03C048E8E24768F393A689CD9BD6E1E6D7BC1CC55C25364990FC6521B03168AA94E9539AA2CC19D747DE8F1264A0A11B3045A34D18096A3A23CC5FE1D4A98EA2211EF1AC5820FD428DE419FD8A418C5DC98DA87F9D7607878F1EC19D3FFF398E1C3828A12B7700A38FA4A1235F2E49B6EDB22895D4E158B6B2D70C53C350201004115211C4A710E175425F1684D10F17913039A175AA39EB1D1466329D42D7B2459B940D6754A4EA245C70FE2CE6CC7190CCE64520F435AE652BDF924CC87766F4BCAB44C214C164322CB9AA9077747400AF7CC5B558BF6683089EC99C5A6A65B2E847C461C709A144B3F2981E3B71A8E851820723DE1CA6043506FDC92FE721AA50438104812D001DEDF3F3A3AC452D891D9964F31A5CD7C7F4D4341E79F4113C70DF7DE8D45B92F051808C720AB90CF4644204C4C566FDDCE70ED5200B1A7881F88BD073412CD664326A18B0597FA7201C17525B66069ECD08242F2602BA38666A52DFDFE57279C967BA9D8E688A2C16AB7C5E00ABDD96303B55C889C964A0C00DD3DF54A9745A9681EF6C1A09D144EEB95C3E8D55E36378C3EB6E11874C2497F9932C599CE42D0843B496357F2500E62914203741BFCE232802FF6E329878218128F05E8C84EF5320CEA2862CCDC0177E565AC1442894326D2899F8B7BFF14D1C3F7A1C9EE32A0823F0E1072EB2A9B438585AD054328974C28011B82848A4A3D059DE1DF1AB4232457B00CB72914A67D16D36A0C78261D8ABA593E2138816D33FA53239098799677071A8390C6BE531D9602AE1349369185120C832731953343382EBD8F2E952F4A2269A1A8AF912423F40269795FB2422303C58C20D375C8F55E31362B64C4D57B817D181186A5948FC4C5D6950BC19682E450071FEC1884B6970023A4DF20BC3EF2AED679425025928D3F66B00FDDAB6D224E5E7151364BE3E8FA7F73C859FFCF8C7A8CDD52432A2EFF13C66FE0182D09752AD164528E40B583D3A8055A383A8144B68351BB0BB36D2E924DC5E0F6EB78B2605E985D043E6803E0C66E2B258547753093102BAB687D95A03816EA2E35A926BF8B627DA458D71021B6EC89C24AF0CAFA63684655B48A4522A52735921D590C8A605B064BE23F9519680618804CD62268394A963F3BA5578D5AB5E8D542625BB5EB69124A72A0B17A72DF0CD62262E5AC1C0819B50A30F31A131B2E273CC3422ED054DD6422601DFB3E13B96ECE8451345A12C658BC4F41CDA7B3FC4E4A913B8E7DEBBB1E7893DF07AB664E1DC203457AAE0C50A5C24F58AA18112362C1BC295176F93DF53A934CC44021D465FB6834CC284AF45387D7A0A61A0505693F9059DB4EBA90B6584666868757B68345A68747A0884C8E0884D9E6B3561472168BE1AED1E4C905411C2F21D111AC36BDE1F731E9A512200AC9DD027B996231AD6C79DD2296AAC8EC18112F26913AFBAF155985831A1CC911EE356B196282DA013571AC0EFF23337128591A420186E31A327ED2943E4EBBFD310EB390251E5CEC5B0BB8F94082324D2D06836B1FB91DDB8FBE777A2D368C2EED912ED088AA9ABD08E1A47B54E9B098C960AB870FD0A5C71D176E4F32CE830073024DCE4A2D114F0333AADAEC025AD5643A2121218BCC083E3B8B22B9938524081C3282A42B5D184EBF9A0C8BAAE8B7AA78BB6ED62BED981CF084AD7D0B37BC8A633727D0CEB9987A43269D8C4B1E8600D139D765B992A2E78A489B6507BF3F90C729924AEB87C172ED8BA4D8A642AB862D6BD2880BE40FAC29068CA30242104814F3389484B410F291003E1AF824EB8F968B23CA7A700B838ECED8387CFFF4EED98AFD570FF7DF7E2C17B1F40B7DD965057D8208CB369B268D30265B2F2A92426460671D18695B8F882CD289606C5BE47BEAACD8B1A1B3A4C232990084D95EBF410FA9E3877CF77E5062CD7136032701DF83D072E85C5FCC575E1C60C11CF0F30DBE862AEDDC14CA38DA6EBC2F37D05B5148AE8D99698BFE1911131AD0C1408EF3327B1030FA94C46CC713291443A69A254C821954E62E58A115C77FDB528168A6A9163FF2326D95068735F2B442812E2A681046361862C2CD42952601F497E111FA2FE4C81D85647423F293631AC537C8BD8AE51507DB840C39973E770EFDD77E3D1871F41BBD5522481204440384463FDC1471878481B8610C6368E0FE3A24D6B71C186B582D4721168424CE6348CCBB9E318BA524811A107F2C53C31A574C29EE417819843C7EE21B0191106B2D82E173C0E4818BA3B6E80B96657FECDB43BA8B7558DC52200C98D1041CC25EB2BDCC5BECB4C3F052770C5D9F2EFD49A7C268D5492D04F1A9BD64DE0A28BB663D9E8328990A80109C92F3411307136FA092508139A68460AA19E841625A045AAA6CF00AACF93FC154E1D025B5822102E7CBF98A27C463F8A582CD76A68349AF8972FFF0B0E1F3800D7F516A077461906CD9ACE4A5B80AC66A2522E60CD681957ECD88ACD6BD7084FCB60E1C850350C7EA71364862DDA490887E1309DBC6D091A4D4A9040ED82BBB1C64EC1B064102A61B99E08871B82CAD2E9D9A8363B98EBD93835330FD70FE085217A9ECB0C509C3CA1143D698AE963484ED44097043325EF5BC8E5903075148A390C1472B8FC8A4BB06EDD3A189A89643A2102A0B610FFA25630621340D14C134A105F81C85C407FFB1EBBFFFD570A8465DC4EA7898030C4732A833186B3E4DD08A51F3C7810DFF9E677D0ACD784F3449F41FFC2EA1A6FD6F61DE45209A4221DE55C066B460770F1D60D5837318E42B92C882C310781322844DA593ADD184F233D87B590D0B3053156193EFD063542994746714C2C8930D027D94C4AF9B81BC0751C747B2E9A96835AD7C6A9DA3C1CD797FBAB32A1CCE7E53D58E2B57A9694842D82960C2692293143994402857C0EC994816CD2C4B5D75F834D1B372069D2EF1029505A46189E7915884633BFD0B28CD3A08B897A5E9975C93AFE4A81B040D56CD424BF78AECF8849D58B8414A9C63DF6D8E3F8E10F7E88F9F939F99D500955D8D023A4D2A60895C229A4D218CAA7B176C5302EDCB41E2B4686E4E67933F4FE9A91503089A07180E7AB45A710045BE38E969F4305EF84A1CA734286D52C50D1AC79F01D5784C6D098F950C40AA4E3A2DDEBA14927DFB3315BAD2191CCA0E97A68079EA0C8DCE18EEB2291CA48F267391E6CCF178D2D14F282C7954A0518518857BCF23A6CDCB0412236554423FD4801857A92FE228D504B0311CD54CC3E59C2E4E9CB426AF0A4B7BF781E4204DE41AD362721A7222C50104CE9148D7469159175F2C3870FE3473FFA314E9C382E65552E009D60269B9228249B4C0ACD9281E758298FCDEB5761FDCA15181D1A443A9D919BE01B2712ACF429D2B23011699258E3270049D4978C4AD11CE59F6852A98D222C729129AC908B4FC8C693EFA11B29D8C4F5D0F31C746C07047C9BB68346BB834CAE88A33353880C13E9445A16B7D16B235FAEC0F6434120E8D3C866C967532816F24819062EBB6C272EBF7C970891212D1D3F51019D21B299418864AC15CC5196424E12BAC48F110BE4B5FBBFA24025D4091FF3B3E711FA0A7EEFD744FAE6EB3902711C3CF4D043F8D98F7F827AAD2EB69EFF72BC814C12A95412CB872A42D3097D1703A904568D2FC3059B588F1E40269D156456B25D2649FDBABDD4C0D5C57ACC89424F9C7CE4BBF03C3ECE02902F0C15D5F21009B59402925098DF3DFA1D17BECB24D387E339A229961FC0878126DB11A0A366F530D3682295CA2227884284D95E0B95652B50AD3604C130D3090C548A027C96F2695C7AC5C5B86CD765304C459E305349E8C90C60B2124961B064AB766FDFA03029E6632C7133D98DC00AA62B35A85FA921AC89CC4C9F553B31A6F4482E1627EA4B515F3AD5DB7EF4433C78DFFDB0BAA4ED44F06C0BC57C16F9740A2BC696A1904922721DA908169206960D96B173FB16E43239D9552A746412A53445E57DAA4026D4539A213A736A08B3FE38A2E2EF34491402210A9A2F0A8D3906AF4B6011CB95DF29102E840888F18DA6A36BB9E85836BA9E879A65C30B34411158B799EFB6D0757D313F8CD4182DE50B59A4341DCB470670F5CBAFC386751B2400A030B464165AAC1980A9DA128866C44CC84577C190849BC881C60DC4EBA259FC55268B929C9A3A23D8501FB0135FB28493D5170A9DEF6DB7FF080FDC7DAF0A79192969112A859C40EEA57C06956206C56C5E0801D9848E352B9763FDEA71948B033069CE0C026DA4DD2C42F921AB11F167D2FC08013C16CE82EF706CA50D81271B47B483C922198BF433F42D3693479AB250B26DC9B3C8F9A2AF0B4271F63DCFC35CB727C923CBC9A4A316CA25F139F39D1EE6DB3D8906934903A395128AC51C5E75E3ABB1626C1C296EB6541A914E64981425F20196404B2470688A3807A6ACB120B8991870309A9B9C3CF9DF680880D3674E2813D1C7B362BABEECDED80CF685F2C4134FE007DFFD2E5A8DA68488BC1C11443E87522E8DA172019E6561B452811679B860F37AAC22213A9397585F65B94A20EA3DA9DA31F42FDA40BA293F9466CF57CE9CD9BF43FFA28A623457A2490C83196189AF89E0B13A692BDCCB48A62447F22958BECEF3852B66791E3A5E20597DB95C41369B42796840F0A693E76771F2FC0C8C54168984810B36ADC5BA8DEBB17ACD6A0C8F8EC9E391C9903615931A626427E6174839979053446480F42A6A850AD74F9F3983A9D959ECDCB98B02B18486B8507E157B47155325C7D3674F29F69F740D49935BCC185722E9077074AC8F3FF6B89019E6A6A711F9A1244803A5028AA924568F2F836B7550CEE79188422C5F56C1BA35AB31363C844C320D4D27A643F0CD54E64A04A21251315B3E2B97714E421340F480282EB3745EDF8263273CC36C9D9544029A2AB2A226505BA46A2788AC2E9A4353E8797C1F0F0EFD4B18C10943A4D219217E27B329648B45584E88DD4F3E2D8E7A786400575C7129D66FD828B59774A90C18B94561A8D6B185644F69047D84033030E1E7791ECE4D9FC7D4EC1C56AD598BF189B5D05859DC7BE45CA4CAB4815A7489A0FA21140456E06E53D18E721EE24865A1C4642F3C7660FF7E7CF79BDF46AB3A0FDF0F2404CFA492182E17B17AF908E821529A86522E8535ABC7B16A7C1CC57C0149E257AC1588865020B1A55D50F9B8E987BB5DF20B9520324C94E88AA68CB98650715C84C4B4C4B153304C161D61962CADEA1116A1D3F6421F5E401A4F2089A2AFE982813149CDE473523321C21B6906EE7BE817702313E32B4770E3CD374BBB832EFCE00210A6546B5D9F28D7F71D203183351CD6733C89D6E6AAB33837751EC5CA30365FB08385E0854451FBC9BD8F324C89336F55061544960825717E4A3A16948A681683B77E6E22A5005DC7A18307F1DD6F7C038D9919D92122904C06A54C0A2B4707514C6760F80EC6572CC3FA35ABB16C7414D9742A665DB07864C8EE55E8B88148CA6DAABF51F03459749A23E5D8D9902AC533314B34611498A7924571FA9E14D8A83124574BC0C08290EC601227029098E94B1D2780CB04544F20A28F314CA43259011C0BE501C9F4EF7DE061D47B162EBE7C17B66EDB81E1E10AF2A53212D98A445406232A31E3344DD4489A584BD5F35D1F2C6B1F3B3929D5CB5D975D054D6734D92FBE2B5BA3FDF8DEC723C21A0BBB272609F7A929D2C2453C89CC9325CD944B23ACFE6B0F1CDC8F1F7FEF3F307FFE9C98145D0F914DA7914B263054C860F3BAD5C86A1126C657607C7C05CAE5725CC7560B44589A4261654FF21016AA02A06B29B2056FCC343549067DCF814E48879DB0FC2F0A04E7921099C289F3120A888292088C9F214266453214E623EB25140889192EF32DC21C4CF224AF3091C91550AA0CC8EBEF7F7837DA818B77FFCEEF63746CBD84DB56BB0A23152093AE20D4F32AB3F03B40688BE9A7865A4E80E3270E63766E1637BEF68D0890907C6E81C0B62473D76EBFEB17D1221F559ADD1676AC443BB176107E58CA7A6704A6DCABFA2244D2E975F07FFEF9CB983E755AEAE814483A99C460218BB18112C6068A58BD6214EBD6AEC250650889547A712330E19422B5CA4508E7B309A7D1B3D06AB7303B3F2B4C147658912942D6BC824762B6A1A6FA34C86ED4E9AC5DB639AB2F2694C242D1158981DA052F82C7E7E9061C0A8F42E10E4D24E5314D404613C96C0E03952124537722D0EA000020004944415409DC73DF8318DFB00EAF7AFDAD48E786A0C99AF05A6D787603520116621C37043B08021C9B3C2A759A1D975E8E427958500F5D5B6296291A1A219D9F1E41FBD19D0F47AC47AB366495BDF48143D62D041F8AFD07B544E506AA58242AD677C0040283000FDF7F2FEEBBE3BFD06BB52466679169A454C4EA65C358315CC2968DABB162D918B229454450EC3E46A271EE21265343BDD3C1E4D9535268EA75BAE8755B48114F9212332D0A01406A87F2636C71637E934D2560D0BFF41B692930DE28C908E4D5C61DBC0C1208CB93BF4858C472149CEF851A5CDA65A10699486533422D2A948B98999BC165D7DE80CD3B5EAA76788C5CD0EB845E07AED5120D658071ECF811E90A5BBB651B56AFDF280E3B2EBC2F6C14C56BEC6FE9783D6FBFFB9188D5B4544AB5EC4A9B98DC30CB8CAA85B8DD6E898DE54B48225011D7224026149698B7F5CC934FE0A94776E3F4E409D19A62368BC16C1AABC68631B17C08975CB805E542190942D0B1360A7EC58C9C1D5261885ABB8323278E49462DB95E04B4EBEC1BE9C822365A6D01FD1ACD96DC12B526C3C452607D86D76514494A20709124FA4A484391D1E8EC993331C2722C0FED8E8D1685EE78541A74021F3DDF43ABD383ED06C8E63228970630345CC6E88A31BCE16DBF0D3D53512306E82B18C272D082674BDED36AD571FADC1954968D61C3966DD25ABE00AD2F8C225820E72E90E716E1F7D95EA4480D8B5F12B471D709B923C0E183FB14A3430A55CC9A99E5C7131594CEC472D6B0FB81FB307DFA340EEEDB2B021D2C14305A2E6078A0800DAB57E0F21DDB9121D42EDC27154C9062CA9097EFDF6C77506DB6D0B5BBA856E760A473E2F8ABB373989B9AC6892347A5BDADDBB345806EE0C1CC66C57C311964245729E79164B76EB18491E10A860707502CE6254425F44281B86E8046BB8BE9B906663B166ABD2EAAAD1EBA0C04C4AC1802B9A7B2290C552A58B16218975FFD52BCEC35BF8E303461448E3435856E47364ECFEAA155AFC1717C6CBDE41284BCA705A3CE0DAB7E53FEF697D15E92DAE5EFCFCDD4FB6AB8885B991170F4F0B3D24CC3DA023581A642C4B064BA81A0955184DD0F3C88E9D3A7307BEEAC246303F9022A853C26960F63F58A61ECDABE0DAC4D53B06CA291484D57FC271695189FB33ECE522AF12B5EE8F9B3A7E908E0B00BD77154799620230D87A1A36DD9E8747B8210F83D5B7C0C2975995C0E856C1603F934C6572E97CA1F17C4731CA98D9C9BAEE2F8F969543B3D5824DFF98170B3A8518542099AB05E14F33E5FCEE39637BC1ED7BCE226C1F842B729B94ECF72313F3F23B59F0DDB2EA21392105E5A2AC41C3FAF1D9A10CAD21120B1D8FAF5266D72B627607028B88B9AD321A16E9CDC50CE278E1C94E213E3759978408D605443583E963A6DAA67F5F0EC337BA467EFF1FBEE41BD5AC77065009167A15CCC62FBE6F5B8E12557099ACA1C82DDBE9138B858203105D421A1CD26EB83F41A53CAC8AEDD45E4B0030AC2C1953636BB8766BD895EB7A712BF08C8A5B270097F303C0E2371C6C38315013969B6E8ECD9F4333DDFC0E4B959CC4A9D1DC23C21923B3A368AA19161B4BA16F61E3B014DA7990B111A4096B85C9615C3A4A00BE5A1118C2E1BC2CE4B2EC286AD5BA56C10C4D0BA0C105868707AEEF08598442A6B4DBF2CFD21E297016D72AA136922554627219AB529D4AA55E40B258C8CAD92A2CAA9E3FB519D9B83C79238E10AD9B9311C2F664D658841B38E55D9B4D43CEEBCFB7E3C7D60BF9813BE179DE2EAF111AC1C2A63E5D030F29904745D5143053267F189891D1DB2A6302DE976828217487E60E67DE6E4691C3A7C1827CF9E9584950CC87E732A33FE743285CD5B366174B022D15618BA48E73248520B3D4F38C68D7A13B5761BF38D1E3AC4B240B275561EA3EF98ABCE61F5DA09AC9A58219D5CF46F663A87F55B2EC09933A7D169B7D00D8816D3799F550B6A18B8E9E61BF1B6B7BF4DE1A2AA1F43454E718B46DF502D4C6EE82B0F13EEBE493B74E27C94C90E21D4D8AD4A1AE8141AF3F3529F181C9D4064647076F220E6A6CFC36154220E91593AEBDC31099B9F1F1AD892D5B18299A999941B3F71F614A61B0D3C7B7A0A41A182E56B266012F3776D64340D795313AC8BCED8608713AB6E6CD0F4234CCFCE6276BE86D99959EC79E6199C983C29B67AF9F020C6C64691123274A0A8A73D5B10664A960025B3F299460D854A09975DBC13DB366E42219B80DDACC3EE7424729B6B3630DBB030D7EC60A65E47BDDEC6F0E828366F5A85ED9BD7C2A4A9D15976267A1CA2DAECE1E4E91969064D6412282E1B427978085D1BD8FDF81EB4BB2E5E73E3CBF0CE77BE75D14FC4F08FF4642EF51F027B2813CFD059B91AD547A2EDD9BB2F2A8FAE17B04D67FB1AF9453180A7DCB58EA9D3C73075FA8430D66D49B8D46C2422B1B4FDF29E51800BBB7504F73F803537DC80706C1C41E462BE5EC7CF1ED88DF920C48ACD9B5412E6BB3253443652E060EEFC3964B3451C3E7402278E1E47B3D11246BB061FC3C51C46868770FDCBAEC125975E0AB616D4E6E6313B3B8B567D1E56BB05CF89A43AC87A02FDD3E0E82046578EA36E59F8C18F7F8AD367A670D9AE4B84B51E311A727D543B5D1C9A3C8333D3F3D2B6BC69E326B49A73C28AA7A9C9669258B96C042B568E616864105D16DCCC8CB46C17CA790C2E1B161FD5EC583837D3C0238FEDC11557ECC2873EF47B02A1F4BF98520811BC3FAE8AFE87B5FF5E0F59CE7B51AD38A2E53207E0D1871F8986D76C81612495D6C43D720A5022C330C0ECF4594C1E3D00CBB3E14826CC0291120ABB5C99C49100BDC16963E8C147509C98807EE92530B229CCB79A78F8A9A77172AE8AF2CA71A1847A9123A68F6125FDD0F1E327E1073A8E1F3E8AE6F4940CBF313D1BAFBBE115D8B866A564E78CF20E1F9DC45CB387A3A74EC3B23DF45A1D0C948B28A653606D6E389FC6D0400EE5C1418C6F5C8781F19548640AD8BBFF30FEE15FBE2ACCF890AD6C4C1ED90A17B1FDCCC4F6AD9B70FCC4247C3D09DDD4A4E56EC7B6ED983F3F43AC0097ECDA86D2D808DEF8CE770A9C229A49CE57AB83C3936731353387AFFFDBD7F1BBEF7B2FAEBD8E398A6CFF45A15018DCF1DCB90417D9B349F49A65655F5561894E485EF5E8EE87A27C6939B243CB55D8B580522E207CA857CFE1E0DE3DB2B3D988CF1AB78C290A42A1C070F4C5A1FDFBF16B975E8CEDA72611383ECAAFBA016E368B56A785FB1E791827CFCF61F3B6CDB870DB36343B6D1C9A3C813A4D8D1F62AAD6C6B103C730757292643084AE8D375EF31294C81F251877BE86E956074E3E83E9769B0FC1766D92BD303A3C82ED176CC2B9C3FB314A88A69447AE9CC7CA1D1762606499683C71AD4FFCD5DFA1DD61636924643D66D27A268BE1916518C866D06AD6D1B63DE80913CBC74671F1B6AD42C8269588FDEB9B776EC1F5AF7B0392E9A4447CAC209E3C7916C3E32B7168EF3EDCF1F33BF0F97FF85F0BC190AC659F8B40AB409887CED2F7509F9F977C88D11CAF8311ECFE2387E17821B4271F7F2422A77468E566C28162D79E5B838FD06E56B1F7C9DD70DD1E5C3F12462163B1A7F73C29457DD264EC9685ACEBE0B7D6AC84FDEC010CBFF52D08CB03A8D6E770F7FDF76266BE8ACBAFBA121B262684F84083355DAF62EFD1A3B8EFB1BD38B0EF30AC668BF82D927617BFF7CE5BD1397716CDD91ABA6120CE37571944D576F1CCC1A3A259E9B481CB77EDC0D06005F533A79093703CC08A75AB31BC66150A45D5034884F533FFF8AFD2F6F0B26D5BB07A6202512285EFFDF4E7480F0C627CB802CDB31031D2340C0C54CAC2D24F24D24817C95CD4B16EFB265CF18A574B303337332B51DA9A4D5B519D9DC6D9C993E8745B78FD1B5FAFDC416CD2FB597BBFD59A9A59130208FBE8D90110E2D8B149B4BB36F44C5E7188F71FD81F91A9B76CD56629C82F2192A889051AD06BD7F1F823F70B418D17BD77FFB332FB6A687818F5460BB6A3A83766D7C13B2EBA00632727B1EACD6F455B0FA585EDFE477763B65AC7C5975C8C8D6BD70A2D546CA78CEA0B717E7A1E77DE7B3F8E9F3C8DDD4F3F8DF1620E1FFD83F7A1353D2794518BD5BEB66A59E8B82E4E4FCFA0D9EAA13254C1D8E82002AB03BFD381CE682C934665620C83CB46E5A6194EF6FC107FF5956F61F3F0103697F2480F9660E48BB8F3E12751F7426C5D3D01ADD78CEB3186B4C2519803C323C894B3C8158A189E18C7E64BAEC0E933E76085EC39BC50D683BBFDD4B163D8BA7D2B0607071531439067FA565F22C7D027FC440A93877DFBF64AB9BAE7AA9A7F867D2AA98CAABF64B3D0F61F3A18D5E76791C90DA354A9C0B19A70AC9ED033095B936FD5218F697E0667CE9DC7DE7DFBB172621C9D36DB9A1DE1D7324923B593A66AEB401EEFDEB105958DDB506BCCA23B37873D9393A87B1EB65DB403AB568CC77D12443B19A8917A9314E61FF39C77FCCE7B9106F0D9CF7E1CBD760796D58367B1A19389610F4DE9E2557314EBB52A02169FD846E0FB829D0DAF5D83CACA31A4C98F323470909C97CBE34F3FF737B865E70E8C164B08D309E8E9148E9DADE2813DCFE055D75F0B6BE6BC7452918C912F1691664D3D9F4761B08862A5824CA582203B84F1D56B31B26C4CD8ED8DF9394C9F3F83BD7B9EC63B7FE39D5203A276485D26463618C6B38FB0DE68E3E4A9D3B2F00976F7C65DC7496943D0C5746553596877DF7F4FD46DB6D0B37C58962A8592CDA7B44335A218A6867DFB0FA0DB63576E24937BB828CC0FC879625188E1B06E87D07C171F7BD3CD583DB60CDDB393E8D49A385E6B605E0BB175FB0E8C0E0EC54DF5AA4C2B111D6B14523534F0979FFF7BEC7DEC31FCFD17FF2A264207E8F52CC5F3B23A701B0DF8A4F3782E5AD5063ACD96624932321A18C0D88675C8E4F3D0340F0638ACC6C1D88557E24F3FF07BB8F1CA5D9858BF56E83AC7F61F42766414FFF89D1FE0B537DD847CD045BBDE520C7B4E0C62963F3C8ACA48453426591CC49ACBAFC7E0F0A8149C22AB8743478EA25E9B96B6BD3FFCF087554EC542172B8FBE8B66BB2BD3F248FC63D2994AA6A5F19495C85C368799E9592C5BB60CC3C3C352B7E17A6A3FBEFD47D1DCECBC300619FFD3460990189703EBCD361E7FFC711407CAC269A2D96082C6DDE0C4446716EFC99F954AA5E6E3E291017CE0D65BD13DBA0FEDD3E7D0AD0CE168B3856DDB2F40A9505459BA00277113247BFBD8276198B8FB8187F1B77FFD97F8F7AF7F15902A1E9B68989BF8E8318F68360511601B5ABBD114C63B4B03A97C1EA5D111E406CAB2E334B6E2C590FA63A7E7613DF138765D7119566DDF02AB59436D761ED3B52A1ED87B04A191C0D5176E45AF5153B59524598719E42A65142B25A98DA4CA43B8F8C65F87AE6710191EDCFA0C1EB8F72ECC57AB5831BE125BB66E152D6FB7BB387AEC9880977A2229FC60E62EC3954111EC997353185DB64C468C249319413E1CAB2BA5070A4CFBE10F7F18EDDFBF1F43947CDC2D2AA86E18E2C8F1491C3A7258FE26E335A8869CA213778DDA0E99E724AF916AC3E083E867804A32C2DF7FF4C3E81EDF8FDEE123C0DAB538D6B03131B11CA56219D054B1885F521324DBC42455D3C4D9D939FC3FBFF59BF8E657FE59BAADD8E7C804943BCEB76DF834A736D1D5006ECF92563472AAD89A96CCE5A4F58CE12D85C906B75690C0DFFDD967F196975C8997BCF1D7606452701AF3D24C7AFCC43104A91CFEFDFB3FC2DBDFF66604F333A2ED1408DBA2B3C5125274EEDCDDE5115C7AF3AFAB7924A18563CF3E8D67F61FC2F1C95378DBDBDF8103870F0BE39E41012746944A451945A8F8612ED2A90CB2B982541F997F68245DB320274C1435A053D6EF81071E8C8E4F9E44A15412488192E21BEFDB7F10CFECDB87556BD62CB03B4872E3180B42E00401E9B0140182BB91B504B60A4492437CF143EF433EB2D17CFC498495019CCD97303C5016BE93A6B346A1DAC048C4A647D00DB2C793F0221D37BFE90DF8F34F7E1C176CDB06BBD7814B663BEBD16497908D2873587CF12DD410B0BA9730A4A52D95CD433752F0230F6EA461F7637B101C7C16D7DE7C0B566DBF080107A275AAE836DB989A9942CB7171F0C4191C3F7B0657EFBA048667AB7926A91412E90C52F9B414ADD2A50AAE78FD5B61CD9FC7D7BEF24F48E44770ECF824D66CD828CD3E1C0935383C824AB9ACEA33C2E0D7501E202B33C5FD21F8974C73906978AAAE44D22089E3D466E953FFE6B7BE13F56C5B548B1542D70BB0FFD0413CF9F4D318195BAEC613454C5A8870B25E4D2190C5A15A8C59DF965A771049833DCD9DE6D878F77597E3E697BF0CF53327A4B4DA4B17A50AC7DA0B9332C2348AB9A7B21FE8BC504EFD49E1FB3FFA11F63FF5243EFA893F826793BEC300A2079743D51C47F2213A4B5539638CAFFABECD7406C95C0991C1E42FC2D113A770FF0F6FC3D5176EC0B56F7937D2C934C2C082D3AA4BDED1E8B43153ABC38389BB1E7C105B77ECC458218FC0E949E82FE4BD4C929DA762D62EBDE135F8D6D7BE0EB358C6BE7D8770DD0DAF4471A024606365A02211936DD9126D15F24589CE08C4F27A1349B656B32792E55B35C8796EEA1C1AF579D96C6C1E2AD0F7FDDBD7BE2E339C439D6D5F454C4DCFE0273FBB43243A3C3AA4E26AA90F30A7F105372298C6966646129C6928531638A791EC159F662BC4F2D0C6DF7CE4C3300B196119D6EBB3F0E9DC5219C98EFBF002932751559D94FFB4D85DC34CE3EDB7BE0DEF7FDFEF60D3A60D32D8995AE2B98A30C00042785F9CF0E02A534AF0512789229343A49B78F0BE87B0FFD93D78C5F6EDB8F0DA976270F93A794E60B5D1ABCFC9A0B3966D63BED1428741836B4953CF4FEFBC1B97ECB8081B36AE15D49A848746B38E93A7CE60CF89490C8FADC05BDFF9DB329B8B8024234D7E0D0D8DC80E67CD2557280B5BBECF5A648D9FEC7CE66B9DB6254264BEC7C0C4EAB661753B2A2AA353FFDA37BF15995093D7E69B0DECFEC51332F69B8E877D73949EAE27551F063B9348CF275D26A66E123A6116DA9FA620141DD743AADDC23F7DF263185A3620BBDFB23B68F73A625F853828A489387B15E08D8C1345960B235D30B00F7CE80FF0A1DF7F2FD64D4C48864B474ED8819A4814985AE63B1E349A4F1A3FE1D426F0AD6F7C5BA6486F5B3D8E52AE80899D57219B60534E88803D2FADAA0CB7B1D82DE5858AADDFEB0AC78B1B822834854B2DC9E4F89D532192980F0318D902968DAFC6E0F072E472259906A446D4EAC866B348A595C924CBC5EEB5D1AC57D16EB630323A2A230BD9D5BE7EC33A413B649080A6E1D4C993523B19280F40FBCEF7BE1F99DC9DA9147E76E75DD87FF028868647E2BEC0487A1E6C97356AC5A058E0CCDA4EDC8FC15600EE584570E63FE25A4CD23EF5B65FC3AECB2F127CAC1738E8763BA269327A2966B5AB628D2AE1F6090E8A8C07546B4DDC71D7DD78F2C9C73032388875EBD761D5C404B2D98C7C0E3B7567A6A63039790AD3B3732815F2D8BA6913D64C8C239F628297C5E8EAB542E4A68F925E13CF82DD6DA2D76BA3E7B870341DE7CF9D4367AECA162935D134998099CBC264659366344198D3C0B367A760851156AD5E876BAF7F25F2C521A4D8032263CA7D615FF233A5DECE0D2643DD8855B1A4D09F5F1FC9BC306A1381D0A4342591AFE5220A22683FFDC9ED9199CAE0D1C79FC43DF73F8C1C8785B1158BC521D6135894D238F4D896490AB6C5FE3CF264C9C0F305E51522843037486063FF86EA0DB976C34A7CE203EF47C0428DEFA3D96BC7E3C599A1AB8C560168F1982266F0424A8ECB997180CC18FDFCD9B33875EA34A6CE9F5304EA2844D23004E2185BBE0203A53C0C0432158E45B5949946960EB550926E5C6E2C5E9FA2947661DB1D58B6831E5BAABB1D9C78E65921C6514BD91362E632303952831D5049039E9EC25D4F3D0327D2248FD8BCF542BCFD1DEF169E1A2949C24190B183D44435354E46E1863EDACD8684BC32B52EC160414D0022CC1B895F54F3C2F63CF534B487EE7F30AAB65AF8E677BF8FB96A53425C9A053529474D706034C4F1476296E8F8A5DF422DBA14AC485063E8CB3C467C0E77AF03CD69E1436F7BB38CF62320DD68B1F98785300A40094FB5582BEA8FCC8F12F68B9A074FE0594522AA9D8DCE91280205494495A558A1F530CAA3B9A13D0F7471DEF97C412225EEF4289D17FF415FC819609EDD85251A62C3266BD13470EED80974AAF3C870B6569AC24821C50EDC780C941B19F8C1838F01CC2BF25914F225BCEE4DBF861D3B76A985A71F9496358E76526DE334EFECC65233B254DB803A1480CF35A480A6B93D9C9A3C8E871FDA8DA7F7EC83F6C82F1E89FEEBCE7B71FBCFEFC6F8AA3512F048C6C9A9075CB4783C6B934DFD96255C253A20E60174D662A6C8ABE52E012751934CAC886A149AE176F1DE5B6EC2F5AFB856B2512DC185A7002471115FC01D4561A88910DC5A6C905437C19D4658810267884807AE22BBA5119E07B01FBEDB1336CBC090E27C91E816B179269D13DF205121C3DE5E474C166119699C605FA0AEE3C0D37B903434A47305E8E9B44C02D233ACAB27D0B43C7CEFBE5F204C2650CAE7E5DAD66FDE84F7BFFF8342BAA0C0A95DE92C67062BFE97F446D23C3FAF1D411A67E5FE3B78F4FE7B71E8E0111C397202D56617DA9D77DD157DE5DFBE897ADB46BE985794CBBE8DE702886A29B6798DD8911F49CB16634D9A2111888CCE60876C3CCA890B4D221A05107930F50083D0B16AF9303EF83FDF8B844C09E585C6459978708D624BC675186A497C4342FBA46F8AD807E2C8E7D2F408214DCCA385B0D341D8EDA150A86060F9381264A27077B1FB55E6FBC6BD261448B7855EA7A5AA870C696313A37921CE1C3B8444268B44AE20100AC1CAD03431DBB2F0FDFB1F87CE3E90788CD3AA35ABF1BA37BC193B775E26966381D7CB84372E87A876F2FE8C77D577CF8D67C2C69D77FC07268F1CC5E953B3383F5315C29EF6D77FF7A5E8B6DB6EC7CA556B623AA5EA051173222D628AB22F7908673A59AA3146856D7E3C18800BC6628B2240086B31D064A22879AEBC584EFC28991EFEEA131F41A548CE142FFAB9134C8965C910022F90AC5D261C2C9C78104AD71435515AA3C56CAAE1386EB78DB0DD11825CB6328AB1F55B60A45494C4566C8EFB6650C2FB2003DFED76D06DD58524E1914AAA71A65617DD5603DD661DC96C41B800C92C05C3D63413E7AA1D7CEFFEC754C33F4299723A3C3A8CCD5BB6E177DFFF07F0E3F930AA9380BD21FDE948AAA5421571E34A62E0E1A1FBEEC1134F3E2AB0CFB12367D0752C413DB437DDFA9EA8DD694BC8D59F0122633028047A7E0E8D2404DEED0A5CDC6DF3341A4F326EE9C388A9412AE38CBB9DF85A42E61C6727B3A178291AF4C0C59F7FF07D5833C128CE90F6B6FE9435D50A9D1081381D4B18E75A32A9765ECC2966E993B384495620BF97F3E9ED4E5741EF8E2D759A64A98265AB37229441670E5CD792B2B1CCC212F0CF85D3694B5DC2726CD5456526D0AED660755A52A033B3792432B9050DA1633F3557C76DBB9F66BC244137C14172B6968D0CE32D6F7917765E7A797CE8851AFFCA3182D22D20FDFDBC7B4533A4984E1E3F86FFFF3BDF811B4598AF37D1AAB505692650AB5D7FD39BA215CB57C8341D3A739A0C464CB68CC96342C33EF0500D0CF35594C0D983F42732AC388EAE22996512375F4A7B969A2224D34485ABCB4A9D85F7BCE1B578E575972111F36CA9259250122D66933D35833722B3A4D889AB1CBC8AE418D93908255BA7502C783DD6427A4225A529246230303206BB55C7E4134FE1D491A328AD1DC796ABAE4682470D11176B36D1AC35D0EE7484364AC2B5D064E311B384361879D23C69CCFE93060E9C9BC34F773F29942502A19C38477A6A79A084F56BD6E1F73FF211E1EC4AF82E1D038A01AF48E79268494041EDF9C217BF84D96A55B2768ECA259589A6D7A640AE79CD1BA389F195026133C111356704257D771D049AEA1564C4C00A97C73A385B01A0067D4908CA262DABA700326A4CDCAEAC5091C599B4E44A6D5FB10C1FFDC06F219F529DAE527FEECF3E241D88A71664E2061EB1BDAA3D5AD8EB149E672360722A5AD283DFEB884F21DE24EC7992AC39A1A1D64087099F01380C85093A665248B1BAD96963FEFC1CBA9CB1984A4A430EE763312A1358466A2B6ABE1605A21911F69E9EC25D8F3E2BDA9696A2524A66C8730D86862AF8C847FF1023C3CBC51AC806A465E03CE16E1BD353E7F09F3FBC0D878E1DC696CDDB70FADC8CF4367206FEFCFCBC9C8125437A3847EBCDBFF5BE883D1CB2B0FDD92004F02C574617B1D99F6A4FAFC899870C8189DDF49A2DD57795E0D41C9B657AC5468FEB246C5DA6C55CE8370FD528BDB46BE32F3FF961AC5C3EAA46BC2AD7AB58F6D232400C89C3C354EB8034C6C5543ED1469A2CE640ECFB702CF12B4230139304247C467C9E681787FC93446D33220B42B8340FD59A30121D5246E9C7A8058474B219498E0987CBC840A1CA02BA9986914DE017472671D7637BC5ACE64A3CDB84BC321D66D240B154C4FA356BF1D18FFC916C40555C083177F62C3EFEF18FA1C6931D0C03D9420EABD7AC47A7CB830ED4C9131C91CB3442FC0769B5EF78DF1F44D40CC222AC75732E2E85C322142319293E49C33D9B13E9C49524CD50D5458C744AC63029C457B59EC96EA6FF9059506AC2285FCBCF48872EFEDF77FC1A5E7AE5259268AA31796C7D564531097F75CE074948242601463CFC86D80FAF87409B041C449A09414830A066A108EB4D5EC384969468755C85E558E872C244B385FCE0205A367DA22F0B288361C80D20C616B707F05A090012364A96B2B8F3A97D7864FF71D9D5C9ACD26ECE89E74C4632693803E58D6FBA05AF78E5AB65614F1C38804F7DE28FD1A4F6CAC4395D4ACE95D2A0689E625686523F2120C952828C6C7AE7FB3F1C916FC505611A6F777BE078570587289FC041F74477A535CCEEC962119D6CD41B624E38024F069DC5C924E164667532564FCE9F6212C75DED88ADBF70ED043EFAC1FF21741B3A62992D15274E327046FA0DD59823794FE17EC56334645C87E02E71B64FCD52250062687DF749304FFA3D8C841C72C6D313DC4E1BF55A0385A161193A23DDC5F2DEAA3D4F7A1209FB98869C43A20BDD8781420E3F7AE849EC3F3D237E88E36965BCBF34AA3257CCA090CB239F4B62EDDAD5D875C92E7CF59FBF8AE9B9790452F3505A73E55557A15E6BAA167326DBBE271389BAED0E3CDB95160BED377FEF2391CD6E24E9EF08650438C35699224ABC28360F32155A0A54B6EC429A08EE26DABF4C8273A6BACA77D031499B819AFB21939EF9B8AD6073FE5C4CE8F8C407DF83B56B56A91146D21F129F0E10CF4F94E69DF8C80B31550CBB8986AAFE393551824E3846103812500D9D09E30E2C26D949B0660D06019E2DC9E0DCD40CB20315D15C968509D31060609756AFD944B7C5211EAE30000019C649444154B1B4BAD4375229424826CC7201DFF8F17D986AF7C422C85438A20AF1704D6EA2726150A627B126DF69B6D16EB7C5DFB0B784F81D73BC0B2FBA08B57A43D6842DD9345334F7140851117EAEF6DBBFF7914871632149214F2EE3107C81956546157B34D41404B619F3A017CE32275C2223581DC542544D966C3B8E9B4659E4E1041D8A8DE68A6AC9B924ECC68B42DC7CFD4BF0D65FBF451828C4CD78D172645E3CBC439A8618645098CCFAE37E4129FA92F0A67378669CE4B55AE29F481EA0E5CB65F3E2A465660A436EA930BAB0AC361A33F3E2B039C68FBC6096C85C86DA4180C6CC1C0E3CFBAC90ADCB9CBF92CFC0D412080A797CF93BB7C36567958C9825393C9409DAC4C8D83A95491715CBC47685C027516514C61386024CAC9990D6381571727E8B2AEE71DC07CD28DBB9C5C4BFFBFD1F8EA8525CC896908D291035E248720C996BABEA107C9C035738618762E62969C4F289E5F0CDA4099EE1672A15EF0E4EC5D10595A586D0D24852A96958395CC29F7DFC43D2A52B336C65C4774C7C9021F5FD13D25436AF5A9D5D31673ACF96A2FD6D34509B9B81CB81639CD4536233FF00D229B23A181D2584A31B5A6D89761AD53981BDE9A3E0783877E68CD8705FE74909593CB977AF8CA31A5BBE1CCBD7AE42A1A40E073830358BDB1E7C0A869858430A60AC9370AE093714C975896456B471767A5AAA9852438AA70231B9BE60FB3624332911144782D07FD03508739F5123D9370C9BDFF3C18F4B0C43FBC96EA956A32121983039E2667C87F3A9A4DF9BE64A0D139343BA884199BA4433CC0B16DAAAE9946532032168CE6A577D1D7242A634916A481A11FEE76FDD8A9D3B2E10B2356F94A66E312AA30FA30D57E3C065C88CF49973149E2EC7B4CE4F4D6176661AD6FCBCD06AD6EDB810C55219E91417C7647BADB054E64F9D8457AF8AB61B1C70190668CE553157ADC9E2B01396BD2153ADBA040B95C1018CAE9E406190C2CDE0BBF73E8C334DCECD8A07C8502B9249094AFA53B109EF134EAFCECCC2E3585C2D3EF540509308975F7985F0A2B9F115D4E4A36BF564C6311D3ACDA050777FF7A37F228D09B479AD6653FAF994995270BA1A73C43090035E688B551B32131939F38FC322F941BE2BCC73E2B04C905827904C55E00A8E0AA4A95B8C8058FCBA76E705F81FBF79ABF4A90BDC60B0A7221E4ECFF338E203BAA881D40E81EC695A3D17D5E9699C3F3689C94347317DE634D66DDA8C9DBB76496328B31BB74D27DE11FFC1BE129201D906C7FA3633E266A3AA4C562A8DD2F27118C5027A7A20EF4BAD2E0C0D2251C843CB16F12FFFF1130489743CAC9F4CFD849414C4EF91D72CD3EF54818AEBC77993527093531D983EF978E9F5D7A2CB1A1281586E528B88075BA579B825C7DAC60279FFC73F1D31C6E1C0C766A38E3639B44C0239FA814E47B023559A657D9B0C79C2F0DCB172004B7CB60827F57051433A3C9D3DDE69317B6485308B67142617273899CA5E570E15F1B93FFE23A9B1736C2A5806A27671F2B364BB8B47BB324CEC9FD4D06DB5307DEC38F6FDE209292B8FAE5B8B89893548591E8CAE836EAD2A053270980BA328DAEA0E39C1CC3D387C8DB006A9A81924578C22B17C145DFAC0848156AD2AAD1484DFCD5C1E0F1D3A8E0327A7A1B3D6C1893FD47A9AD6788235179DD74E01A47279B1224D1E64C6FF883A48EF8B872B5E7A95349772BD248868AAF123F57A4DAD874C2D35A17DE0E37F163162B03A3DD4AB3539D5B8DD6D2B1F422435864468E7282076DACB8484F8B4B484A9892D154C89FE81A11B6D7226ADB44B1238967D3DD110A99F4B061E62F960097FFBE94FB0B15B41F011EDA80A83B94B6926A5DE11977A656E96EBC16A3671EEF8719C397306AB366DC6C8F84AF11DA6EDC3E48C2EDD80D7E921E4A908B53AA2765B804F87AC984C125A96E3F6126AC45F3A890E0274987365791F6D61A438B4088934BE7DE77DD0932CCB2A2148218A23C925E9A587529B49169F79151B47AB347D847F542554D37C5C75CDD542836574C5F769579BE23B581C53C7DB46425FD23EF4E9BF8C4889B7BB16E66666D06A37D16E37155048DB2D499DD208713E3C2C259EAAD09FE9C0D098747BCE75678C2E1DD7F109A1626AE8ECE369A22AECA2E9F1B172F910FEE1339F1224409ECF9E1081FBD50128024AC66463DEA8CC55E4C9088D06AAE7CF0A1634B86A8D4C184A130C2495A8E7C020219C58194B036CCFB6D4F533CB67A6E2C51B82C875B3D341C708D14B4298254C8C85BE1A457870FF711C3933038DCE5C4684AB392C74E2CC19782F524660CAC091E36612A9440ABD7A4B821861D5E89ACC97DC79F92E4CD51A08992853207335783D47D63A2E050942A17DFCAFFF3EB23A16A6CE4E09798C17D3EB318B55365B7C001D3C132D42DE8253710065A85ACE64F45DDC96C6E386FAB98364A3C49F24B412B5052B8C045C38CF420F71C1EA65F8EC1F7F4C3E8BD1AC14B56452755CDA9582553CC8808366A4F6ECC0E3496E9D0EB28315148A6539C9D3E059BA8CF9499761AD84AD4DDC288C08DB5D315DF463B66DC5E8B525C06987A7C0655308F359781A3726FD9D8B338D0E7EFCD0634032258C4471E8268779D224138C54BDEC44B355A55393198B845408E53BDD9E3A8C58D7903635ECBCEA25D2F4E3909CA125D0AAD5657277B7D3961201B54C30BC3FF99B2F46AD4E177333F368CC29461F05226642A202D5674DBA239D0FCD18554CF8574487E3D307188B73A83D478B73113951470DBE77056392F3D9390296C807D97AA18F5B5E7E15DEF39BEF929A0B852E8722CB90311228149DB53FC283D422AA3B7D912F954B43C2DC0CC34D5607C958619EC0289033B5D88DCB334BDA1D44AD8E688BA0109625131C48FD69F36438C2154303304A05C9A318A23BA1819F3DF224CE561B48A4D51955C4DD18B20ABE169F8FC5CF63882AA71C88CF20B695929CADD3AC0B0990F79C3674ECBAEE5AB47B0EA204CBBDA6D060597FE1FDD0C173537398B3F6E9CF7F296A77BB989A9A416BB62A47D231C9126455A6ECD0A1AB035738854D988AF1B063F10BF12C14968164920F435B4612815257867C8CCC6481090C47341B3A72F9017CF683BF89ED9B36C83871E636CC6384241117A2FA87C9485D5DEAF671AD3F543375E99453C4936407ABB2A9B489125C6422CB1DD86CC2E5D081560B56AB2319397BD1EBADB664CC85C141A4070764B03F4D271181235375DCF98B3DE20F39B85F08D8D49078F0991FE36F322C870930C96FF1F149E94C569839ED7A4DD202969E874A456CDC75293A0EA7D97930B594101F9AB5AA581EC227B47FD2B6FDE9FFF54F11E9F273D3A4D64F89296014C5FA879A93AB1233E2FB6A7EA19AF6A92603052080E293E000855DF1CDB97072CE523CA64F2D723C14064079CDE5B86CEB467CF8AD2F81201BE29708C3F0E8095A4992C6D4C49FFE704B2E54CC71149BCD244C6AD704F9A4B0154F8390B0261081307F6AB55AE26479B2429745284E25654E23189C890CA754E7B2E0224BFF793289EFDDBD1BE76B1D618AC8D8284E538DEB3A023EF267895255A7B01C5219072BD4569AFAFAFC9C1AF79130B169F5728C6CD88C8615C20D5C109796C3976B55390582C808D7488A727FF5E5AF476CA29C9F99C3CCF9F368718A42AF23491CC35F66D00AD7529376E467669A02F2499FB402CFBC40B546737A9BEF48B52D74D9DFAD4317C1AAB2706EC3D518DB7C196E199DC7CD2FBB542232E24FDC6996C59926EA4C2699E2130703AA844C1349245E4133421D951DCAEFF130176196327F8914EDD55107559203DCAED5E0B4DB32A7D7A3BF92031EE3133939E09F8C796838DBEAE207773F844063FF61524C9562C2A811540BCC57469332DF8B4E9D61AF22A833AA9263C79985F7BA28241278D9E517C22B5450739506333092163AB6E7595DB85D0B5D97A79B96A17DE68B5F89BACD0E66E7E6707A7252CE6B923C84B69F910D13AB18C59530563A8254D6CC5D2F99051B1739F241D814A654F2480D9509A4C2A44F2035BC1AE50D9723BB7A2B52E74EE02F6EDD8A622E1E42AF9A86C52C31CAA35DE54D290C4B9D3F2235FE7EDF4A7C1A5A4C1A5223D0E3B11F2AEEA793D41519A24B9649174E8B744D72CA38DB973B55CDC722384EC72B1B0806FEF3FEDD38315D5F386C4C112FE2E35363A1C8707E1693E2130FFA05B4FE8842368EBA1DE281B600A9AF7DE54B31EF1B68F80C8B0319BFC1A913ED564392661E38239C2DB2E2FFFA9FBE117170FEE1A3C7C47F34AB5549007933A24A318F48FC80F802CE5CA790E4CE058311E71B328F20749D46D78DA0A772C816CA40B2082D3B8A54713986376C811584189DDE8BCFBDE7A5304C3A6D450610DA8C9CD0634BBB338543CC49468ACBD41F5517919148E253588357C7CF09414F4E855673E2196EF22469391B2A50A0A8D5AC0BA78BBE8D82EE121EE2FB3120E0501AA2017A02FFF8AD1FA0E77376B00A7117042294F6B88562C97739BE281EB4C6F8871AC5C3EC890E304D18CC24F0D637BF0687A61AA83BBAC02D96EFA1CDF31B65F29E23D93A77AECC87FFFC97BF19515AEC06AA55E7D1AAD524D2E19BA9598634412E3412CA88DA32848DF125C92F589812EAA70E233F8264690C66BA02D70AA0A5B24218E0886EAB6961E28A6BE0747D944E3E82CFFFFEB582FD50C032452EA68F9244C65D53ADCDA98215436AC9D855FE23704D6C6E4468D2DFAD6A2262AA988FC9B1771918CC13D85BCFD6B87653919A5962B06DB4BB9610E44C8E17A7C9828E47F71DC2FD4F3CAB0A70445EFBD3DEE8D8780C9EA0D28B837AFA471BF5E94B2218390B16D23D9CD0238C661378F35B6EC6E347CEA1E1327F31045966D8CB96389A7786E24C1F0429FFEC3FFC6B44B374E4D851CC4DCFA0D36CAA1A83E3C87015764A91FC10BA01343F943661EE4C39B1802E2432912D0E23B56C3D5CDF448F933F59D4C90F205DCE23E83401972774BA18DA75AD90E0F2279FC0DFBEE7520C0D0E480D46FA4478667A5C06E08575BB2DB46AB3E27BE85F94ED56141B31709205ABDD2E911D8B4B64C12792D22722DDB70C303A1D315792F075DB725A0FCF39A1A9B2F9B9B9ACD43808E77FE57BB7C3F648CC500371FAD544F2B684AB26DFE203EB6382B54CE3EB9F282D141A268E64D40428654C8C173378F58DD7E3B1C3E7D08E7208B4407CD3CCD434AA73D3E2D419F6EABC4FBEF767BEF4B568EACC19CCCFCDA13A3B2FE77EB06002C1EADB927573B19C1EFB41747811FBEF4A30726598C565280C0CA13633854EAD0E3D30A117CB1858B61CBE13A05B9B92E618CEB0F2CC14F21B5F228D34C9A963F8F3D7ADC0C6CD6B95E9E30DC942ABF05620483F40B7D3427D7E4AA06A39C389F0455CE695931438E43E3E8DCD6ED6846F45CC89213187E9133E694ECF4AA445748C37CFD057CEDFD549FF4902090D83A3C3385A8D70A41661E6DC1178AD19816E14384838271E3D28C33119DAB37D22268733D8229C121F7744AD66820ADFC5A695435851C9E1929D3BF0EC892A663D034192F3E1D3989B9DC1ECD439615172F30B1ACE4DF689BFFB72347DF69C9CAC569DE168094B50C9C00D85799234D2481407A1E587E1E97958968F743A0F6258ACC2D567A7011E738714D29521A42BC3989F6960803D89ED19F46AE7914926E01A6924D7EF40124924EC3ADEB5C9C5CDAFBE7CC17750131839C9F9D2FD81971C16D3EBA8612F9D960A35E311AF8CB0E474671E24CC43EEC9D5ED924C90849630054CEC561BA84ECF4ACD4146C1B63A82CED65D071DCF969D1DEA26D283A378E0F02CC2FFDBD495C5C67596D133CB9D3B9B67F392CD0E5970429C386D1AA18616556C69444A0B6D8A14556511888445840A21A21615DA8722DE40A2BCF18220124A0109095041546AEAB8A1456DD290364EE235E36DBCCC783C77E6DE99F1CC8573FEB1841F2D591ECDBF7DDFF9CE12EB66541CDAF52AA2C10D1467AE8BAC20EF3EBAFB8825C3BF31FCC3CDE83B7E0E56776A1C15AF47A64C0B9FB86F3F76E522D83EB013EF4FAF21EF061190B74B44BCB0D999298DC4F9568BA7CC0539FFB35FF97377E7B05CACC071F8CB18BC16B1196606728784657B51D7D124DD3E22BB25676116AD6A4D738F20FDCE63697A1CA1EAB5143DC146CD2D4CC15BCE6B08E5056C74ED3F8A60D086DD6AE0A3E1499C3FF359DDCDF28AEAF848192AD1E61C84367C0428EB9AA938350ECFEA9D2469DEE986034C3905BB6CCEFCF9B7BC662BA592EE69A7C260B386B4F494E355AB3594BC1A1ACA456482818D1B3305789941AC144BC8E47A100ADB4A6EA339D9FAFC1802CD72C737DF781AB35C562EA1328D9802D4F18914D0C87784048D0D3CFCB183383634A0A49FF1851A269C1082318E956D3D0D772726A42161F5C745117BE6D4B997FD32B30669DAC82BA9B1815AADAEAA8331139C4B87AD9808CBAC809CA579F8D575C9BE9486A320AF88E086809D844D56057769C8427B751ADED2B4C0B316E5017B8FC08AA661F901F495DEC3CB3F38092B4A3F2ABE0D9DECA94D5B7189EF396769A98850588B4B6D47052EF11F3EE2B4B1EDC8AAF9EC13712EAFAC8866C36B6A8DD0890F64EC04CA9AF590676672A958099121BF5058C2C4DC0AFCBE83120A8942C4ACA94C0FAC58121BAD1AFCBA836679098D4A49E4371AE71B4090282FE177F38E8832AA853262CE7B0677E02B4F9C40A552C2AD7C19EF2DB8C8325649DAFA3AA66FDFD69C5FFA1097C4C236021F7FE2A73E77E1661CA35733113FEC1AD914B2BE67241D3D4B583C5008E355D6743AD48B28C084916F6158B1945201108F4BEF575FBC0367715C3B28184AC0DAB21776EF56B45A61D8A531BCF0855D38343C28868AECFE88F8CA58C838056916A308EE8E9FBBE25B3DD357B8552D005DABEB74A7261F8C76E13AB551458533F5534E755517C5C52503BFA8D4B590EC4EE3C891C31879E332AE5CBB837A573FE2B93D585B9E8315335651A40BF18A22F646D63DED6EDBF50ACA8549B41B1563ACA997DE2C826CD135BAB5D09D4BE33BDFFC1AFA333642CD1AAE8F4D62E4837964B60EC8408DA7786662027592114978A0BD14EBD5DCEE2FFA5201A9AD2046144328CAEC71CA11224A208B2458ABD387AAC5944734EB0EDA5E158D9627CF103B928315B03567A6917DBCB70F1B560C8D85DBF096A6F461A35DDDA8B6C2880FEC413B9084DD2CE168E00E5E7CE6347CD6DF844F3A0E3A9A2574C8735C1471983A06CA3CDE0218293C6537ECD650EE980750DEC67909AF0882A064329288C6183E7AF27278C440967DC34348A49308DB01CC8CCFE0C29FFE8E752B8758FF3D7016F288249388A7B33200304D67273636DE053BD611857AAB282DE6116A33B0CCC8D3480E97056C0888C662B8EFFEA3589B9FC2B3DF3D8BE9BB795CFCC715F4EFFE08B2DD291C38388C5FFEFC17A6E7D244D434E081A1E33FF4CD3C9783261BED0D0A5B4C00A4C167C8E8B78DDFA2843BEB08303CB85947B3E52160C5108A64108E26B5CA7C6CED9EED88E432288D5F43BB9817E613E9EA9137626AC75EB4C24CDF6CA1BBB988971EEBC7E0E121E13EEA9A3B5596D8252204B0BA63D2415DD00A916096B75202B3B9638C914398C2D549E0B56642C21A7065626C5895DB760E483B2E9608831D432143D9A954F1EBDF5CC4821384B5EF7ED4E617114F25E0732E1FEF52B5E92C1780B00F2B1147A315403A47FD65404844D8F7E037AB2815E6D06E56549D0D1D18C4E4E4B4348CBB776CC3F1878EE1F38F7D0E17FEF8576C19D885B54A19376EDEC2DC4C1EEBA5659D0CF64632341B7EF8599F68AB442B646AF8941190E74B850F65670D84DBA62C633DE3375C3855C32DD28A866280DD8554F74E343C1F2DAF8A48360BDF8EC199BF8D667156CCBE762829110DE10924B34094093541F497DEC28FBF75125BB66CD58C84D7D5FFFF889ADA81E4B9184C8D132047652EE94AA22CF1B1AEAA23E7DC7F536464271388266346274E1845B3FF9646B1CA255463DAC62B7FF80B6E8C2F21B8E77E1500DC00213B8168574E1BC05D2D68D7075269395D37C8A36AD691485073CFE92895BF41190AA059C1F7CE9C566FF4FC8F9EC38B2FFC04D7AEBE8373DF3E834B236F02D43D6EEDC5DF5E7D0DFFB97E1DD5B5A24EBBFE2F674BC39FFCBEDFE2B89426C5614A985978F2B4846007EA88071D1C3BB413B54A5116E1DDD9140A8B05E5CF161657D41896DD0666E6EAF0B383DA99763481B6154479F616828D358419721234DCD9F5D51222B95E58C95E201443D85DC103C9299CFBFA2388677A54660A22D9CC6B105385A0265371E806E7092322544E2884934E626F4C8E2668A774B44E7EA0093BE781E02CC300A35C70997CFA244D2774D25EFBE708AE5C1DC746DFBD2475C1754A085B3442EB9324BAB9BEA66A2A98C9C04EA4100FDBA89557D1ACB932E957D5150E62FFD087512C16F1E5532790CBA671E177BFC58E9DDB9509FCC0D1C318E8EFC7CDC9693CF4E0315C1A191579FDED3747F52672C36BC674E8C16FF884939B4CB5E10854F1D5216CCBD878FAA993F0CACB187DFD0D14160A989F2B88874AF606BBD9C1BD7BD0D3D3A32FE6C6581E8D1DC7B181B0761E67E695D99B727CB6A25D080763BAD35D978C8C00FC583722A93EBD07292F8F4706DB38FDE4094413462E26D70859E5718E6BA8A8CDA6A7EB489A0F4EFEF4BE18DE9854AC9D0192A07A05B7108535F1DACC5367708AC8129C5F872392AC356A558C8EBE8B916BB7E165861048A6505D5D96770A43C1B8399C955595F676AE17D174DA48EA3C57AA3C63ABC810B3001E7FF433B83CF23ACE3F73166363EFA3B0EC20918AE0CFAF8EE0D3C78EE06E7E5692BEAF3EFD247E7FE1221697E6B1B2B48CB6EB08D6217B27F0FC732F49B0935F58C2BEFD07B0EB4303B0E351BCF3D6BF706B66091F4CAD2399DD6E246C82DD0D43820F7B8B5F2EF37269B5617561DBF0A784A05A91246A4E11F5D549F8CD1A2C9B7737490F2DD8D110AAC56504AD18FC7837029C23B75C44EB053C756F12A71E3F61729C36ADC259EBCB0ECF0CB0B8087475A0FC41965064B50BE231012FEA63280A951FB04164CD3C9EBC647A0F1B8518AF51F63034B3B976F5262EBD7B0B6BDD0761253370560AE84A675452AB6AE39232238BD1158CF5E623EC3A1D3F79528098BD1850036C053770F64B8F229B4963767E59BE2E97DF1E43FFB65EE4E70D8FECF0D07E5C1EFD3712E908DC6A11EDF28A24168DFFA529FC17B6535A7FF61B0A240000000049454E44AE426082, 1)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (3, N'Peter', 0x6BF41536D83CB7F61AC438CABE433BDE3E67869DF9BD23CD67A2E37E0F94C13BFD5943FCDF7949E4B85A9154FC278A9F93D1785CC918592E39087DE913AB8828, 0x7099A876659F775A3B9EB36263E2AE531A5BA2F13D6AFD29C160328E36C140E5419962D0E41CAC58EE42E083E7A69DCAB1BF61DBF3A7B97B21B14AB549A4BC2A55F514DBCDA3393C0A56D6C9D797592E3E3D267191F0F849B64FDF75B79A48B86EE8C8AC5F2EC8558916D77B2B6746C96CF1D72D226CA4082EC52492420461ED, 21, 3, N'peter.tran@shc.ssbshoes.com', 2, N'/images/default-150x150', 0x89504E470D0A1A0A0000000D494844520000006400000064080600000070E295540000200049444154785E7CBD09985CE75926FA9E3AA74EED7B55EFAB5AEA9664C9B664CB6B1C93C4400884CB96CB3619987033030903C984816109CBC00CCB4C2084DC0CDC4086008110E24C121C6771BC2FB22DCBDA77B57AEFAEAEAE7DDFCE39F3BCDF7F4A6A7B786EE751247757579DF37FFBFBBDDF77B4FFFBBDBFE838B605DDF0C0A3018E0338E03F2C40D300E8B01D07FD5E07CD4615BD660DEDDA16F83B7C3D5F6ADB36344D87D7ABC3B22C380E7FC0EF5BF2168661CAFB96EB6D58169049471108F8E1F1FA118FC5E138360C2F5FE3A0DB69A3DE68A2DBA9A35A2E61FFBE598C0DA7E57D34CD0B239840309A866106108AC4E1354D74DB2D542B559C3F770AAFBDF21C7C868EA0DFC481F92924A341B9165DD7E50FBF2E5D5BC676AE045DB3E1F3190885FCF27D4DD3E0F3F9E46F7EF17A34CD03C7064C9F81782281B7BFFD617CDF8FFC5B790D7FCE7B3C71FC697CF3B14791CFE750AB35D0EF5BE8F53AEA771DC899F4FB3D783C3AFABD1E340FAFC50358B6BCC7E04FDFD1A0FDF84FFFA2C337D53D1EF910FEDBE3D1E44D348F07B60DE81E1DAD5603B6D545BB5E46AB9A7505E2C0A3796051201E8F48D323BFE340F3F0BDD4077ABD262C0AA4DA42AFE7607828069FCF44A7AF219D4EC067FAE560FBFD2EFABD3E6AB51A5ACD3A9AF58ABCEE2DF71D8147D3A0794C1881387CA1044C7F5004424975DB0DB49B4D5CB97416C75F7A015ECD41A7DDC26DFB67319C89C3303C300D53EE8FD775E1F20DECE4CB8886037230BAAEAE9B870707A29C5EAF577ED6EFDB72FFC17008E9641CEFFFE08730BBEFCE9B42AB55CBF8A7CF7D0617CF9F42AD5646BBDD41BFDF87DDEFDF3A6C4D43ABD182E9F7A1DFE9C2300C75B622A8BE3A2BC781E10D42FBA9F77FD8E12118BA073D8B1746C9DBF0281D814D130060F57A68F3C61B25F49B05C0EEF3DA6F0AC1A2745D81F0432CAB0FC36BC07634185E0FFA16502AB7D1E95A18198A2310F223184E40830DBF3F24172902E9F7D16AB5502EE5D1EBB460F7BB3874701EE363E3F01826FCE124745F18FE4018FE50140E2C749A4D7860E3DCE957E4F7D7966EA052A9209D0C61622C0DD334E5503D72C07D5CBCB28252A984643CA684E55577CB9F99A657148A9642A5E47FC3F120180A6076760AEFFBE0AF229D1EB96921E7CE9EC4635FFA47AC2E5F41B7DB45AFD753DEA1D7479756A1EBE231F8B380E943BBDD164B1541689A9C77AFD787669830FD1168FFE6FD1F7228006A023D8DDDA7CBA1561BAE84E92B1C38760FBD6E1BAD5A099D46110EFAFCB6FC0EB58B0213B37705A8690E2CCB8661786999703C1EEC14EA80E64534EC43381246349180D3EFC31F0889460E2CA45A2DA1DBAAA3D56CC87BCC4C4F62DFBE5925B8400C861982CF1F822F1481E6D8E8B49B3C019C3BF50ACE9EBF88484069BEE67431948ECAA1FB0C2F3CA60ED87459AB28972A88460208F8FCF0E8744D9AABF574BF1E712F3C389FD740DF0602011377DE7107DEFD9E9FC6C8D88C08AB5AADE24B5FFC472C5D398D7AB98066B3215E81872D4A6CD1DB7860390E2C0A40DCA2F2447DAB0F87FFA637A1678207C1F830B4FFE7673FEC509BE9F77870D4240A68F0C537A4A5308674DA0D741A15D42B3B906F6BD4AA9E68207F996F2CAE4E6291F2BF3C686A8DE331902FB5603B1EC4A201D1D6E1A1B4BC49281446229E84A14314A1DD6902164D5B83AEE988462230BC403C3E04331885E10BC0F0064490954A19E56A11A6AE239588E12F3FF337A8950A30740D91908974328860D00FAF6EC2766C11D4854B2BA8D4EA48C64208F8BCE2A2C45781CA45ADD5E5DA293D837147D3E43EEEBBF718A6F71CC0D4DEDB00CDC4C993A7B1B47809B9F5ABA8570AE8F494CBE539E89A473E8FEE5CE232FFA6FFA74F7054CCE5CFFC12B374F84361F82269681FFC855F7228595E005D1665A10E54B92AA53990F861F53AF2C1ED664982136F42F7289BA000D4EBD5EF306E28D765C9CD74FA0E72853A348F175EDDC6E84806BE800F814008F71EBB1B23C34968765FCEC5B1FBE8F5BBE267F97E8C23DBD92D6486C660FA22D04D3F34C30BC3F0E3B993A7506C36309B8CE1F9A79F156BB976ED3A0C43C7483A8154228C4824048F47B9A176BB87B3976EF086908E05C1F30E874372FDA66988F2A87BD6C5B29458202EEBAD0F3D8C64661C89E119747AC0891327B0B3790395FC1A2CBA578D961416A5E27D331E8BFB77E333CF839FA3827E17B99DB2C4B2DB0FEF87E98FC20CA6A07DF823BFE230885A9623FEDEB21DB9286A3D7DA93821CD46BFD745B7DD84D56B4860B79D9E7CA83A4007A6EBE2948550CB18DC95A5313EF46C4D0442F31F1D4923934EC0347DE216EEBBE708D289982B581B8E456BE5C533A06AD00D03D56A1189E48864578C255E6F00BAE1C599EB37C4757AAD36A6A62671EAF553F8EBCFFE3D3A9D36FCA617D14810E94C4A822CDDA868287404021E04BD3A3C1ADDB3BE2B533444707CDD2033631C313C3A46C7C611CB4C223D36270799CF6DA25E5847AD9C43AFDB111BE3D9F1B02563ECF6D0EDB5C58D7718CCBD5ED8968D1E6393D78756B323AE2A120BC31F4CC11B4843FBDDFFFCDBCEF64E09CD764F04408168D40B4D051B5D3744632DAB2B01B6DBAEA25129C2712C09F96E5C179745E90C7C26033C6F8817C61BECDB0EB6766AE8F481871EB85B2C80EEE0E107EF452A1981575787C2D776BA2D181E0DED660B96DD1337CA1BF587C3701C9ABA8640280A2F83648B41D28657F7A05E2DE0C66A0EFFDF5FFD9D1CA0DF672016F6231432C55DF8FDA6683D53799FDF8425A9A8CAF5799F2A760CB24D15E4F9FE3C079B6EDBF6203D711089E16978341BAD6A1EA5ADEBB07B2D71DF12CCC5453115629CB0C4BEF8D9BD7E071E8F21C953A7DB472A9546ABD5846D7BD0A31B4F4DC1D143D0AE5D3CE17CF99FBF89C5A54D34DA942C351EA285832F7E40AFD782D56DA1D3AA8ADBE2F7549C50B9BB2DA60E49E1CA95BA683FD3BA54328658242ADAB1BC5544B9DCC2D13B17F0F0837723108E487C60CDE035283CD60BCA49488D2377C98C40DED8CDDF4D5852034032B74EAB252E07E8C3EE75D0EEF5F1877FF4A7B878E92A42C1206261FA681BA17000F55AFDA64BA233620644AFE0F7F961FA4C98A68E48382402F0FBFD62D9BC1E263074E1862F84D8C87EC453236835EA6894B750CBAFA0DF698997A082F2D0255EC09678D9E974D068D4D068B6D0EB5AA837DBA2084CA27A1660987EE8661889E159898D5AA753734E9D7819C75F3985C5E55591183D0D2F541D8ED8006CAB07DB6AC3EEB7D16DD6605BCC9F5521496D9018E806C662A98650D0AF8AA27E0F8968187D78506B7424D3A2DF7ED7773D84FDF30B189D9C45221145A59887A11B72034C14AC7E57DE5CFE476B742007C860AEE95E780CAFB264BA2BAF07B56A01DD4615A9E109FCD1C73E81575F7D5D0E27E0D3A5EE8945C3A29D3CE86ABD815EB78F56BB2342578A256A202E920A497BD7755518F7FA7DF4BA5D04A34318DB771702E1285AF50AB22B97B1B972059AD5736303CF84A9B525D921FF2D0AEE58E8767A304CAF58BB2A9EE9E03CD0BD5E04E343480CCFA352AB417BE2EB8F3AE572157DCB91346E71691DE56A5B3206FE0E85A331DBB77A68D4CA70FA1D542B79C9AB59CCB030945841CBA7CB63B163D9080503F0FB7D989A1815F753ACD42505CE15CAE8F71D2CCC0EE1639FFC180C3D0CAF19C4DA8D2BC8E736609A019EBC5897FC71033C6B01BA40AFC90ADF072F0B3DDD10A175BB2D540B5B70AC36524353F8E33FF9244EBC7E16AD56073E53C7DCF408EA8D3A524956F606965677B09EA5DB55EE6050C14B8471D378713B9A476559B60D5BD39018DA83A9037721180C4BDCC82D9D473EB70EDA90288F5B955359C5A2DD14B7DB6D8B272162D1B31977A9C5CC48E9A203484DDF86407402DDDA0EB48FFEFAAF38C3C319E81EAF64337DDBC2F1D7CEC3EAD367F2A07578E483BAE8B41A70AC16FA1DD60784561C6892CE39D0DCE28A3EB854AA231CF4C16FFA44930D7F08D9CD75F47A162C6A0F80642C8CCFFCE527303A7350A5CBFD3E6E5C7C1DBD7613B6AE60141E4ABD5A11FF5BABD4110806A17B19D47D48A6521243E81E3ADD361AF90D842261B45B1D14AB4DFCE17FFB045656D760783C989D4C4BAC602D110C067175298BE5F51D850C49D2A26A29AF6EA06F29D7CB4442C5160FBC86079D9E83D4C401CC2E1C912CAA5ADAC2DA95D3A89577E45AA5A0B6E8A6549ADAEF29B7C59202129B599329B440412EB64A6ABC26F61E7904D5968ED2FA4568EFFDD73FE310A7A1267874D6007DE44B35711BB49A5E8F850E2FD246B35641AFDD40A35652F000FF47EDE933536185AB2E886EA1D96C8B05F1FBCCC0A4D074D3639F57653F470E4EE3D77EFB773132312BEEA7DDA862E5CA69983E1F6A8D261CA78F6AB9886EA703AB6F4BAACBD8D6B734842351446371B43B5D0C0D65B07CF934BADD8E1CB82F14C3CF7DF097912B283738928EC0EF33E1F77911F0FB707D75072B1B14882A06259BD33D1233A818CA52549436BD3A4274734D0B437B0E6276DFED825355F31BD8BC7101CD6A4909542754A4CA8641094021A94C53BD97AAE9A8DC2EA4448535233870CF7723BB5D45F6DA71686FFBCEEF7718D0E8E398923278F1623A8C382C7074033439A675B4905EAB2620232F6250FECBC5BBFE9E661A0A852416D0ADF1672CCC24FB727D272D311CF4633493C04FFFEBF7E0477EE267E0C0908BDD59BF8AF2CEA604D995A5257159525C4147B95A97C097191A118DA5C5303B0B86FCC86DACC2E7B1D1ED75108A24F0F14FFC0F9CBE7015CD5617A95800A1801F6117BB5A5A530219645483349DBEFED6D7ADF8C9D7E9860F5307EEC3C8C40C2AE5225AE52CB2CB57D06ED5A4C651715609432A742AB88B57312761A1C8F3625C53D2D160E82642E959CC2C1CC3C6DA060AABC7A1BDE56DEF722416780C7499DED92A83E11B3238515BDBADA6145CDD4E0BFD36218DDA1BB22C6A8102E754D6158944D06C364520D43A66610AA8B3C45FB3683359B88DA4B0303B860F7DE43F60FEE0DDA20C56AF8AE5F3AF623BB78362A52AD7D4EAD80884E2E8C244D7F2A0DBB3914846512A96100E06B1B47805C5DC167AED9A58C2F8F808BEFCD56FA0D16C235728211E0D221EF1C3677AE5FA563776B0BA991785A3EEF25E45A75C3094D7A8905AE55A2476F943983A783FD24363A89498EE2E6167F39A649782F8A9AC40B92CDA840BB60ECE841F20E74A5FC0C0CF343C104674643F66E70EE1FA95D3286D9C8376D703EF70686ABA87552A355199170FB0D777A089607AE877DB6837EB68372AE8779B6E46C570EFC2EFAE6AD14C63B198807B7C5F953A32A079DD8C8337A85C58221EC1C4D808DEFED011FCC22FFD061C78252E9D79E519BCFADA19E48B15F445081AA2D1182F4A5C54ADC64C8D7547457C375DDD8D6B9725F3636A49E549A59268D4ABF0E8440C5A60C2E4F72B7C6E792D87CD6C5EAE7DB7221151DE7D8003F49A7039053279F07E442371D4AA256C2F5F44ADB8E1C2210A4257F148BDC7E04BB93E15F0C512553A2AB199E06864E40046276671FDDCCBA8E7AF433B74F46187B88FADE9706C467EA5153429FA6D0F7DBFC5B4AD8556A3267508EB1181055C3F2B092FADCCF5BD232323C8E7F32AE7274027780D5D9C055DDCA00E8F6120120A622893C1F4C430EEBA6D061FFEB58FE2CCE90B78FA991771F9EA75CCED5BC0D7BFF90492E934A66766B1BABE21C28CC662E2AA786FE56211F1581497CF9FC5FADAAA200CB440626F23C343826F2D5E5F44B35987D7D461681AB60B55EC14AAE2DA45B179BBAE7F1F1C20FF663DC2F49D356F2092C0C4C107E45E0ADB5B286E5C46AB9617046070FFCAF5F11CDDD2493CD32DDC5CE164CC4AFB08862230426924A68F21E4F363EDC273A81656A01DB8E32167205106711EABA092E2F36DC99D0943F4A5286CC81FAB470BA179DED2848186F02E995ED66BCADDF07D7C7E22AA06AC1E330EF659584F782506A453297CC75BEFC7DD772CA0D168636D2B8F8D0D55A41A5E1F9656D7104FA6D441B3908386E9D93DD8DADC44BBD341A95840B35A4639B78946A381D1E111111461EE783C86909FF58A8395956571A154A25ABD8D4A8D49C3A00F72EB3E06602A158E0E860909DF309A9EC0C8FC511140617B03E5CDCBE8B5EAAA7FE426073C0FA9C934169C2C6E954528AB63BF435928B5800209A6669198BC1D56A3888DABC7D1AE17A11D3AF290D363D528BED07D336952F14D2107D1EEB0CA6C09C0D86DD661F53B522C09AA49AC891089ADD264491F0D1DED564BE012FE8C59170F926921039EF864665F3E13F30B0770E71D87A597426DDDDECE6275751D814000A57209F546434C7B78644CD2445A964114008E54DED552195B6B8BB009C13B0A87E37585C3612453093672E0373DA854ABE876FB1297E8F618EC6F0944C5805DFA256E4641294CA10C24C7F7233DB94F3A9AD59D159437AFA3D751F5857AEDA073AAEA0F15B7DDCA59E294EA7DD085336645E369444716101B9983A7B58DB85141B35187367FE87E47D2550112959F937E08217510CB073AED364CDD8157775011B4B72160190F95B180BFA3905D1500997BF3FDBA7D62614A20B43CA694AADDABC163E89898DE83EF7CDB5BA5CB968847B1B1B121AE8E7D82F5F575044C2F7A962D056B2C39A40A388F015F30282970A35A86C7B1905B5F41AFAD60914C7A58DE9F318C9818E394EED8D8333B8D66AB85F3579654A2D06A2B6D2576E5B65107A9EEEE38204AE7F523397304B14C0656AB81527611D5DCBA4213DCB841C852790D863A3793121483358D8A2DF41684DB23D11886C72630B6EF0842D10C8E4C87512AACA0D56951200F48285040A2EBEF54E1A952608261ED36B367189A857693ED555518AA74509717F342A409C3EFB10B4601D9CA2550DB99BAF67B0A8E1681E83AE6F7CEE1B6438791CCB003E7A0562E89505B9D366E5CBF8EAD8D75A9415A9D2E7C8128CC4010A1580C91781CC1801FB54A595C6829BB21351205DFED756F22CD026CB215EB71A4FD3A333389B5F52C16573624031301B83C828179EC1686A4C58C2D861F43737721914AA15929A096BB817A6907163F8B56E0720B54EAAFE2D1A019A5C0595B8412F4FB100A47303C328CC3771EC177BCED7BB06F6E0A7EBD8B575F7D15FFEDE37F066D76E198236998EB82548052B001B59A16C0962A83A4C4914E03B60B2F0F2C8ABE73E0857943B15818CD866AF61BA6896020287509A1107E5140E9541A070F1E10702D994AA3D96A0BC47FFDDA156C67B7E5E277723B52ECF58957F9C20847A388269248B2B1D5EBC1EE35D169D4B17C63514819B4DA60308046B329D6D4E9F6E0D1884575A43864E6456B29D6BA58DD5415F69BB3A24180169743F7CB36841EC4ECE1FB44091AA52CCADBCB12B778BDA294D29757BD149E854F5A17AAF89304892DE080293DFCE1A124EEBEF7287EEE83BF88A9A939983E3F6AE5323EFA9BBF896F3FF514B47D07EF119E09FD2A4B7B953EBBBEDE63083C4161F0307B0CE6365B912A560CB206B623099AB1C397884625BDA430FA765F1A55836657B3D91294D317F06398C55D9FE9B68E50382699D395AB57B0B9BA0CBBDF43A95874FB3206C2A1308687329818CE60289346281C16C608DBB620B656D842BD5AC3EA4E15ED9E0DC3E743ABD343365F42CF76E4FD865341E4CB4D3C70E77EACE78AB8BA9C73DD340FED8D69EA20C9A1B0BC5E1F3CC138F6DD7EAF103D7AB53C0A9B3750AF56E5C0996810D217C1DAEC0692C1A3BAAE0CF0AA8E312439603DF4C03D87F0EBBFF11BD877E85EF97DBAFFBFFCF49FE3B1C79FC0F51B8BD0EEB9FF1D8E829815538499010F934D1BF18916D0EE12BA607BB22BE92F05C2D70ADA0A07AD764B8044A6CF3FF05D0F221C0EA2526DA2D5AAA150AEA35CEFA0D9EAA052E14DE888C5E30885A268B6BB927DF1A6094FE773596C6FAEC1EE7710F57B110B1AC8C462D2EA1D1B1B463A95413014927EBCCFCBB671174EAF8976BD2416DAE9760561B01C0FBA36B091CDE3F4D5555C5864BAAC89D225A33ECC4D8DE1F54B4B68F1F3999478BC37E91CBC1E2A9B6ADDB297E347283586D1A9BD6285ED6A1E8D720EAD3AD368AFE07514889F440A110E5BC28AE64337EC3715C5889E261CF2E1FDFFF6A771EC81B7C3E331B1B2BC8A33A74EE2B5D75E4136BBA9BCD4FD6FF94E892114824A75C9B430018DA0A1FA7EBB43D8BD2B103CD359C608F6C445288EA2B00C10D348248885E90CFEEB1FFC0122E91158DD361EFBE267F0D8379EC7E2CA36AAB5068E1DBB17A62F88ED5C1EB566430263B95C43AD5C8461F710F339981B8E48CF7B74640899CC88F86F5A923F10442014964C8E82B33AAC8B08A3BB18925B1B311631782F2EAFE3E9939771FCDC35891BEC10DE7D680EDFF9DDDF25190F359A6E4D41E5CAFD484148C5D454E3CAF485257EF1FB04565924B34217285D325237AB526AED62618A6F40CFC20406561FA34329BCED7BDE8DD4D0189E7BE1356C6E1750CA6FA05CDA562D7242F6C7EE7D5862883487A4174CF7730B52F71A040DFB70FA5DE13A11D7A26690F1C64EA22DCD7CFA6F85F1F33C827E2F1EB8630EBFF9FB7F84702C83402882EDF5457CEA137F866AA38366D7C1B98B57A5C1348014CAD51ABCFD26E6D2012C4C65108F041125172A338C5892FDF7207CFE20BC019F288CC3F44FBA983C9C8EAA9819A0594749334B2526BDBE85F58D0D1C3FBF84AF3C751C956A1DC3A928DEF9C85B914AA5DC8255654874BD648828BF6FA1C318A89B08C652D2CB27A740B3D8606A8B6FF01AB46ED5152D576AE8F57BD2B665FB810D2CF66DA627C79048A60535989D9E91F47FA7D28665C42415CF6F5E43B59C43A35197FA48FBF71FFC80C410450C33548FCE05D94CD60A26BFE7884528F2976A1609CDC7B6418111C491F4D06D81D2644DC3909EC8F8E8084627A7E490CE9D398542A184D58D1C5E3B73051BB982F4C5F9869AD5C1DD7B87319D096338954028E8432C1A472C95813F92106623CD9ED999A4D6AC9B4884702C215C5069A8B19484CA8E68B9CCFF897DF5B099DDC6D3AF9EC7A35F7F5AACF4D08139695A95CA1549AD05EE977E775FB241B668D96AF506C2189FDE87446208FD5E03769BCCCD32E289A8200D11029C5E4302B92AFCC800F540D72C895FD57A1D4FBEF0B2D42FC40BC3B124E2A37B104D4E4BAA5ED9BA000F7A300D0D5EC307ED8FFECB6F39A6E99726926279B00EB144080A7A632147E89C68A6E216F1E7CC56882DD19A84614152C0CD0EA25442E24F25E8998ACDD8EF2AF3A6967EF55B2FE0DCE51B0885A3F019C074DA8F87EFDC8BA1640CA1800F91481491701406591CFEB0084ECE7B8015D1BC1DB254D8C4B2C5351032A1409844A8828ED7E115F8A6DB6EE3CC85ABF8E6F3AFE099E327C11ED0683A0ACD63602493C6C87006E94414C16008E140087ED3907B60478F7C3036C3249565DCD2482C54B14694408A40B7A9EED672526F79543C168480029722C503782380C7944ABFD32EA15C2E0AA4140EF9A17DF2BFFF9E3320850DDAD8927BDB7CA30ECAF92DE86C51761B70FA6D9812C0C89DF509E0E7F8A3E8782302DDB301C50B64735F157FB430531A5FAC27E482340F1AAD26BEF4B56770E1EA0A22CCCB13017CD7FDB7E1C0CC28A261151FF83E449AC93221B047A5E85B2CC41462AAD99658322D44982E2A07170B528AC222924A66C0432A6BCFC2D2EA065673257CF3C96771F2B593F89F7FF23BD2A21D7CDDACD6899309D0E588F518661026E11F7A0E5295A43257B8D420F5DFFD1EFCD9807D3360DE4874918BD4E1E83E40338405DAAC1684F0C1802D5CE84FFDF17F71E86AF86AD61B745D24422B6452FD61F0ECB76BB0FB648310DFD14177A69308C100188C8940E81AE8CE98EDF02078A0ECBC05FD01C1990688277F4E0B39736951D2D8B9D1387EF47B1F462A9180211ADF53F08A8F90B9D24E6ABB34765CFFCE1846D6A272A18AF1423204A115110C3128C1E40CE9323273A937BBB8BE96C5854B97F14F8F3E8A4FFDEE2F4BC34B658B6E538A6721C98A3A62523CD90B514ACAFB539091FAE3422BF2BB83A2FA168C228906DDBDD474AA67E2D10CD89A29FFBD74E9049AA52CBA5D321E5D76E367FEEC0F1DA67A832E9922BAD10F2A8C4A644AEA8CCBF7D53D8C172E914EDC832DAEA5D1A84A8ACC3BA9D6EAC2469496ABC41885F3289AA5AA71BEFAAD6770E2F4151CDCBF17C70E4CE291871F84C19BEAB5D9F894D864FA42F0FA03EA56E4771937680D449F3BC2E7158A924B1067FA2ABD0DD648A480F6C92FF643D37DD0745352E1E58D2CB2B91C3EF5C93FC3AFBDFF3D18999957BE7B0010BA3D120A245FD846B954C6C2A1236E21AF82FD40780411257E92E9488B124A912ADCC94150D5BA82946F761169AD9607D9F565745B0571BB045F1D9D0442403B7FF99AC3C2696BF59AF8B146B524C1861F2230806B9AE2925DB5D9DD69538D7C483ACCC01B0A8470FED205ECD9B347DC9138FE9B02517C5FFAFB6F3EF3124E9CBB82DBF6CDE16D0F1CC19D0716E4E298C91022A720842223B8107F8F3F635FA6039B040B290C5D2846AA6A7528A2A87206BA5885AD19D283275BC5D23C58DDDCC2566E079FFEF34FE1937F489725BFA5B4D86569F2C6C932E9F4BB0804C944F48B8532ED9703770F59A3BB73E32E53DB58661866208CFCFAB234CB9874D012A814A4D28A624820A4B2900AD41545E3BD91375DAF37A07DFB99E79D445CD1FAE9AE5AF5AA34F549FE2A6CAE4806205E5B52491A37F12955345123855DE11695E437B5DA6DBCF0E28B3876CF7DF0D3F5B9E64CFF48B31C400AAF9E3A876D92210226DE7AF71D989E9C00FAFC2CA69A4C04586892E84CBF2DAD38F43B24AD75056D963E0449160247113DF629FA96B82EB964B936E1F1D3ED98212942774A25ACAC2EE39927BF8D0FFDBB9F5129BE7B8DCCC86EB6225C1884630F06DBAE423857206C8F015BF78A3B531D4703DE6000D16406B57205569BACFDB6149B044A0D9D85A7F40AE577999D36EA35A1C72EAFADCA44003D6D321681F6EAEB67C45BD659794AFC08C8A1191E4AD627F5C0F6C612345222598FD816F61CBC1D81580AFD56156B371605DB22F47EE6FC0590CFF8F2891312C08FDE7107DEF9DDEF44A35A55A408D106BE0258DFCAE1D2F515A4227EDC7BE4B0A4B832CEA0D992228A26117E2015C90D7A64CAD34532C6286882F59622778BDB7554E3CB91D10345929659159344380AC48366BB85C5A5259C7AFD35FCFCFB7E4A8ADADDA48641D7502C415AB9EC8DB3D6B084B7F6CF4FBD807295CCF90832A9345289B8200FAC93A463C95AA4D914CA28D107B6BF7BFD360AE51AAAAD36CC500AA63F0CAD57C7682288D9C9718CA5E308047CC27AB92990DDD073B95C462C16116D61A08F86C2326C02A70FBB55452212946A3535342C9A5229E4D06D77D23EEEA7000020004944415471FED2258E1A4950E74D302F1F4DA730944A49738A87478DA7A6355A1D5C5F59433CE0C5DCCC1474DD8B728D5AB32D1994A96B02D304BC867074895DA9FE050F897F9382A48878CAEA14A59F84BC6AB32330BD458DECF51188C630313E86803F2074A6B5F5553CF5CCD3F89DFFF42B4AC042EC10C72A2EACD56848EF852E982E979E815F042FCBB53ABA9D2E0AD59AD4308D565B9A61ED76DFEDCDB3BAD784DD12943AC52F0C996040CDC068FC236EAF0F66D69C19F1B9FD779E8D0864200CC90A5C0454119321393433AA5ABD210510216E92051877086D64E241583D4212745FBC7ECE613090B269654B1387F089D5EA4A252CBEB3A704F3F26B27B1B06712F1584C5825AFBE7612E7CF9C9183D85C5D933E3873F3A14C0AB31343A295AAB96540AA0216857D0E1229FF7B636D138EE117FCECFA8D650C8F8E491B77786404F1741A870F1D1697C6BCFFF9E32FE0A107DF82BBEFBA53B039B6693D748D845C48CEF0AAE44002B75BDB5003D88EB045404C8434E917A9FC09E8D33D117C652CE2A17B0DE89C03715372FEBE6186D16DD7B1BE784EE649EAB51ABACD8A089980A8F6FC8BC71D56D603ECFFCDB9F5EE86FD20D7DED9D941329554AD4A8B4C791D6323A38846C2A24DF49DA697FE55719E249FAFE661375A4240A07B648FE3D4E5EBB8FBD082BC96904529B78DCDA56B585ABC817AA38A9D6259B8B02343C34827E2D21F0F850208FAFD525FD13A78536491D71A2DD45A1DECE4F368B63BC82493181E1E1214399A4821313C8E447A48B498F0CFA35FF92AAEAEE6F0F63BE7B0672C8A077EE87D38FDCD2F627B75512011C6316F3886CD9CA20B31D2F0CEA824BE701C7BEFB81756875D5682B284E9BD185B3884ECD21530BD6092101F9B40C01FC6F6CA55E970328A64C6A64420AF3CFDCF189EBB0D7E7F00AF3CF915B43B3D74E97E1FFFDA3F4961D86C74E44DC92AA73F66DACABF552E7DAB0A1D08659039B1C863BB945A4508231A8D4AA01C1B1943326640B3195481CDAB67915D5B128D6872A8D3D250EDE978FBFD774B5B95B1A35129A35AC80BC8D86EB7D068B5D06876E00F27D0B33D70DA2524C201812C487260BADB6AB650AF57516D743135378772AB2F6D669213981430C309128CF407B167FE8014A524597EE3DB4FE0D53357F081F7FE3050CB013CB8C58B9252936C27D99737884ABBE532E4A957E45B6908451338FCD03B51DADA54D89FC1492B1363078E606BF1BCEA9F7B0CA4C62651DDD9BA09F3D38D66462765B2EBC4F34FC063FAB07EE38A8405B6977BB4AE93AFBFE8D05C68F66427329B22CD86DD3B1675B1780CA63F26133E9AC6B6AE5BE08825B88262E0752994D4A69D5C0E07E6F7626A7252DCC1338F7D41320A0268DFFB9E1F43C0B6F0F4534FA3D9B771D7E183821F39BDAEA4B16CFC346A55F45A6DD4AB25343A5D099412643D1E84D2A30874399FC294CA2B5DCA9D7A0F4697422538A8894B254C6F0663080C8D4A06C499BF2009DA3AB3311DA7CE9CC2BE4C087B3229D41A759CB978097D56FE12C4551FDDC7D138D3AB2A7221302804C2170C233D7900A64E06BDF04E11347D98BAE32E6176AA366F16E9A95994729BD098C8783C189E991757EB581D7CEDD1BF46B7DB44BFDB154092BC4429486F2C5F755817B03E90D1364BE5C7C49D58DCF0A04B851D148A45159CA86D263588BE9C801AD9205E450972A7A7981D1D3AB85F11A201E46F9C950B65E03708C3D473D8EE07706A7115D36323984A87D16B35A4DF522F15F1C20B2FA1DC68CBFC0431A628C715BC3A7CA130C204F91C1D219F81B630F00D342B3574F3ABE20A768A45943A16E0F523154F223D3C8A98D6457A7414863F8C4034096F620C1BC51AD2D56B303717119CDC8BF32B6B6065C64A5A5AD2743B8460BC06CC60580879A5DC96D439A62F80F4D44161D3B3F08DC69352264C2CDC868DABE7E06181EAF12035312956C42F5F282414ABA1B1716929BFF8F4B710CF8CE2C2896715ABC776A475AD6D66D7046252BC5B05434BF126A40595C1D01551506C51B238ABD5AA625103308FEDD94E4FD1EFC727A7A490BA6D614104468DDABA7A1276A7ADA8A524253CF179F8F7DE8E8D9E1FFB17F6A1592BA0592A60E9DA456CEDD4D1D48378FEB57338B3B8824C38807BE727B0772CAD683D4313C8847D2AB1B01501A26207D05ABF88ADF5355CDFA9E3D44A1E1B853A8E1DDA8FDB172610B49A38B46F4680C3487A1289B14949A5F5C2069A57CF22303E854BB91DA92B784F026348DA6BC01F0A49EC6139B07AE59CC448A6B8E9B105C99A0C9F1FE9E111B4CA054C2E1CC4DAD58B925DB28488C6E328958AAAF4147CCD80E6F5A1DF6FE2F1AF3C268A5FAD5565BE251C2473B40B2D9BDB103040E5DA2AB31A645A8258BAFCABC1BCA0144702512B4B62FF9A022A14F3585F599191E1DB6EBF0BFBE7F7CAFC20BF362EBE02A7D741B7D317D32C3EFB8FE8C63288EC3D82F4D090F085F3EB2B68757B421B5DBDB188D716D771656D4BD2E3BBF6CC2068D570E7B163F0A5C791F07405D26F9477502E5551D283D04A1BC82EDF40BE5CC58DF52C5E39BD88FB8E1EC2C3F7DF85F4E4B44CDBB29319625F3E9A145A537BF90A3CC52C762C0F36AB6584E209046349A9578810709631188948E0B63A1D05C9783489B5B15846664C5833F1BF896C4FCECF637B65C9AD5F80C4D0B09404C9D4102A951256371BF85FDF78114BD7AF08CB3F1C0A4A1C4CA5C2D83795423CEC85B69DDF72140351C5833708631706B33BDB9262CA2DF2E8FF682D1C65BE7AE5027C6600F30B877170FF82E4F2B490FCF265992B91B4D7B2507AFD595CCF353077EC7ED9B4C0D945A6B09C3FE9D42A2815CAC86E6EA2DE6C49854E8DA33F0F472288A6D218191A42389E9111B6622E8B66CF4669671BED7A0DDD7A431059F6B083D1B08CC179831184E2C3821945E329851C138938FB2AA2A68E4E725814CB1F8D219A1A56E02449727E137DB77BC878AAE653189F82526BD15DD365317110324728261008DF5FE28E6E4277BAE2FECE9FBB84CF7CEE5B585A5946AB4A2A555DC87BE9744ABAA207F78EE387DEFD7668DB3B9BC4406E12110659D4BFC4C618FC8CE14D11031CF4A8D5ED364AA53C16AF5E442A358C7466140BFBE664B0855F7DB65AFB2DF43A35B9E09DAB97F0F8CBD7F0AE773C88B06E49AF824559A75943B5B08D9DAD3534EA75747B90C960323FA2F118623156C549616A30F5E47B753B4D211C10046C7374AC5643BFC3411D0AD1146C89591ADBBF817018E17852AE9B7CE08D132F62747C14F183770887ACD36C4972AAA6A7148CCFC61385410A29B3AF402808331C56237F1A5D32B13A85E6122621F4A3F02E175413FFA3E1E37FFA693CF3D2296CAE67512F6C4A4057E1C192DA2E934CE023FFFEC7A16DEE6C480B571587B72CE5E6E1BF896EF906EA0C2936BD9E40EBA57201CBD7AF2299CE20164D8985103E1776087544FA08B63478726B2BF80FBFF947F89D5FFE05043CB6AC9BE0628201C3BE5E29A394CF097548F7FA100A04E0E5A4D1F0A8D40281585AA658B9E9A1D56EA0D561C260A156AA0A3346C6267A1DB1D000B95CE184CC33EA7EBFCBFD35A4EBB771F63446A62691B35A68D41B181E1997CE20E75E141E46B63C84E5D271A769596927878690DFC9AB069CA1C99A0FE9F507630299F0FB328EC0A5094E57683EBFFFB1BFC4B98B2BC86E6CC0695765CA983593C7E19C7E483AB31F7CFF0F41DBCA6FEEAAD415C6FFE6627050C9BF990B4B6D626CE1E841BE9043767D0DE128E7F992F0B225C9450006A78954039F3898C5C4A1D3C51F7FE27FE003FFE62731928C88D0BAAD96F4333887C21AA4CB092E613E7AE025ADD5EE2312E506870852E373E2CF6BF9ACB8CB526907FD760BA4C472130547B6555B979FEF9594DD1F0CA982CF3461D95D9947EC373BE8986178C7A6E5BE593F49CA2BE3672A53628128DAEFA2B25408C7A3A154AC6073634B0A3E69E70B51D01DC383CA5A79EDF424C542194F3E7F02ED8E83ADB5157159FC19AF5DA6B4844CE8C3EFFED6CF2981DCAACE6F75CF76C7938155EC2E0AA53074148594854DA190439519856E0A50C8A656AB5991BF033E9F6A61BA36E8D5805A362B75C9C103FB845BD56BB72549A05064DE44C6DA6C714BBC63165B5C36931C9A842F9214989E6E8716CA6D0E95C2B66472FC1CB65D69596ADE837005E753540CF008298100600B5E3D80274F5DC593A7CFE3173FF833D26AA8562AF0FA4CA9F465AA8CB1C06D6BCB39B8D5D737BFF50C8CA1C3123743910C74AB258E8BD914B3392EDAA9E7B31233C911B878EE75ACACE550DC5947B35151BB5D7A1D55D593626A029FFBECC7A16D17B36221CA0A06AEEBD6D1EF8E25BBDD15358A616460213B3B59D4AA15F1A9D1584A0EB9DF6D2012F4C2EFB2BE15BB45E5D866AF835EB30E876966B729541E19EE677D239B1A0C09E8DCF4C3CA9BC29E3FFAA0EA60DA7DB41B4D99CF63C145C5C86DAEA1BCB988682C217D787F90300EB57C30D347868C9AFB23DD852B303C1E3F5EBF96C5A71F7D0C7FFAF1DF95D51E64A8B0B77160DF5E19651B7807D5645063DFD4EACF7FE17F61A916C6DCDC01518C52A38791640C972E9DC1F2E54B482433D2EEEEB49A38301646D229E34F1F3B8D726E4592182A9F28086B50C7C1C2441C9FFEEB4F402B540BAE40FECFFEB0DB1A14E98860148E7273F881FF6450A2A6178B7914F29C4AF220164BC1EEB62490C76321982E042337C78047AD6D54252BB2BC1AEC4E53207C0EFBF3E7846C08FDD33ADA7CEFCD154CCE1F963D27E4D6326594C690F424D87767ABD887D52B6701AB85208913C108742E96D1543794989BF427A4EDCBB8C56E62102D5F1C276F6CE2E8B14330344728B06C26ED991811DE00DD896AC4BE91C8F0F92F7C055F7FEE020A8D1E0ECCEF93B898DB5C97069F605ECCCA8484E7413A1EC6BB0E0DE189736B3879E1BAA4CA3DAB237817636BC8A7E17DDF7B0F7EEE577F0D5AA559952ECF2D2B71C7F55DD45709436805AECB112F7A33CED0BD10E0CBE5B22816F2E294A2B1B410CA6077A49823EE34708B8A2DEEA09DCBC2DA5E83964C086758B3089CF3065C1A26E349A7894A6147049E199B41A39493EFA9069962C99058C13E5938C274D540A5B82D81D61F8C41176A8E4F513A6540553154A8967347EF87EE8FC3174E0AB8D9EC3491AB74B0B2BE06436B63762C2320E6605D959CC3A025EB38F8C2A38FE14B5F3B8E1D24F08EFBEE42C8B0F1E8DFFD95B260524CA5F1A59826A9741A1399187EF88149FCDEA7BE806CB10ECF8007001B3FF1C8617CDF8FBC1B77BEE51DD02AADDA4D973598ABBE69118376E5AEE0215A2EEC1125185A08D1DB7C7E1B85FC8EB83DBAAC6EB3CAE5124826E302F2ED7E6F35E265A3D7A8A1CF5E7CAB225359BC48151CBBE8B6B8A080486E1D7ECE17765A38F9D28B5859DBC2BDF71F51240BAF1797CE5DC1FA8D653CF0D0312446E71149C6A45BC73A84F18C8C13E18E0D98FD724CC0DC5B7F10FE6002BADB7594A11BF14936DADDAE0C730EFA2EAA3A567C667EF1FF1FFDF2E3F887AFBC80927F06F7ED1FC770268A978F3F8DED9545D9E0203B4408C713B0F5F971E0B683F8A9EFBF1F7B6FBB4DF02B56F20CF6AB572F22E8A9E1AEEF7E277A8D06B45AA7E1067595F2DEF4F36EB759F9AB9B4B1A6EFEE7C07B11EBE2F29A5C6E4B08D214583892900535C46C281042066A907210ABC489C8C1F42A25742A59589C4FEF7464C0867504B3AE76BB29C13D961997757FCB17CFA1C62507DD2E22A998C4192FC714BC4C3F750448DA4EC425E0DBBDB6B475E9CE3C5E97FC407A0E6943F060F2BE1F90DE04CB0D066F9231E9B2D42081A42C6877C9E06F8B8B159CCEBD695EF7638F7F1B9FFFF2F358D78711AC5D811D523D9E00C7ABFB3AAC32E9B7361E7AEB5B70F7D13BF0E0FDF720954CBA6B0F95750F6200930CD85C9F588756EF361DA5BD833160B789EF7EB828C7CD41B737E759ECE7D8A8D56BD8C96D4B7148FD8984E368548BD00D07A964426A8641ADC35BA61B2072CA00DFAB55D128ACC36AD74520041909B3B41B0DC1BEE2E95198E1A86453DBEB1B585F5C96C92B8F4F4DCEC6385B22953167D0FD0806385CCA18D114DEB1CF1F1081C8010C8E9AA9F36D6F83D70C289EB20CD218F07995C248E6EBA2DACD665911F28884F37FC236D2F0CC73AFE0B3FFF84DAC85E7F1AEFD23B85C4D2061ED207BF149FCAB9FF8BFF0C07DF74B8C0807D96D1DEC8D21DF98D61B9038EC8654755532816541ABB6EB8E62760CB4D7FDB9FB6A45F052C1F85F3016814358186E6F6FC9FC36672142A1085A8D8A6B2149F8FC3E8443114588F07A05A06427D1B63AE8B79A68EDACA3D3284BDA4A2D21ABA4DDAAAB055FE118BCA128DAEDAE08BE53AD8B16726684758D97AB94742F6C6F00B6EE0597C6D155FAD99D93AD705E798DF4D8DDAFD0E83E98630785DA39201CAAF16DAF103C06935E8AB0D791994AB6260482E7BABEBE85E75F3C89BF79FC240AF7FC308E0CA7E08B85F0DE29030B237EE1F6BEFCEACBD83BBB4726B9C6C74685E81D8F4765BE861677E1DC5924932904C3111963B8B1B428308C08E4D606B55DC27873DC18E05CAEED0E52609299C9A0C86EAD4B3DC09B0C0523B2ED8145613A93918927F90C773E90B03A99190EFB1C9685F6CE069AE52D55DC35EBE4E0C8F63AEE2CEC581A1C56EB91189BDA28ADAEC3E9AA8251D5983DC9B87CE120C223C3B2EAA8D9AAC3A73B48C5A2927D31B033EB11462179CCC307101AD9FB06F72C4520AFCFD00521E8B55BF2EF70C8846970B5D260AC8C72F1E2DC854BF8CCDF3E06CB084A7AFCB33FF363C824FCD27C8B84C2C8E5738846A2387BEE2C62919014AD2FBFF43CDEF5CE47E0330CFCD66FFF06BEE3E187313EC151BB8EB4A539692C31E45F7259BBABF5DD716510F007F2A2B6B0A1B4B9B18A7A9D81900209A356D9111712CB8C495E9F4A4504E20885E2A854495A6E0A899350433DB706ABC638D292EF771B35743B0D994BC955EA323D65D0652DADCBE84040776071BF974A7B60738E311840B7D5852F6CC2F23AF0C71318C90C21CC0EA8E15784057E51B833C7640847DDE36055AB3B8AE66E66257CC3C272682889585473B322B551A2D77564B6E3937FF145AC6F6EE3C1FB8FE27DEF7D0F76767282C1B1835AAE9485FA3A363A829DDC1626C73208186ADF0AD935C40029644100E8AAA0CB0E989B0219B8AC5B24877FB96D3B2814E566B8A2B56F09976B73634D607872B508BBD72A8407803602B2CE48E70A00617D5868762A4847423035851595F279781B5BB05B35F41A75214590AC57AD57B0B9B685C5EB6BF0D87E6462099436B6502E56D0B2C9D8F7C9428E743285402C84502A0E8FE941A3BE85D1C9218C4CEF412C4AE6BC5F90570687B2E58395BA4321B5E43DCB4A5856CA1C9F56DB5809692C2FDD10787C7A6A0A99213F7CE8C2A7D7D1D74D5C582CE3BFFED529F4F52AA2DE00EE998DE32DC76E43B998BF492C640B99707A3AE645ADCA9E882D8A5BA91685EC4710920D41396F66963278DA5302516CF15B416F6005FF7F88AFAAD4D5A46DAB5EBB69212AB806512DE74520DCEC1308AB4C4BB4590A2C072683A474FC085754E1E9D4E1A96DA0DF6A089DB4DBAAA1DEA8A156A9C27674E89A8956B50B3F0C081B57581D3E353AC1C06DEAD0FDE4C4F1BA8865B5114F26E10F462478B346E126BADFFBFBD330D273D28164154DA495E0E14826253380B1980F332361DCB87C1E43432961604E4EA410F0F6D0ADBC080B7D947AC3F8BE5FDFC0DDB315BCFF277E04B5F56BD07B353968A2C29CD39F1C0EA255CBA1CD55240D7277B90989DC340EF15010EE2CA7780995E0385A8F75884A7B77F3B206EE6A373D6820A45B4D2C9587B01FDEAC552586888530B07AFD3284C2E0BAB2BE89B6458E16610805B728308D4830E380855434881A5208952F23D0D9969E3377AA901DA2D6CF124F2211A3895EB50BABA15600B2AB279A6E7A25A846D331B5C34BA8C8DCC16B0A735E2A478F8EC79FBB804F7DF502C6E60E49DC6954AA32B2168C04B079FDA2288C2F10C6FCC13B71CFB105CC2581F9BDD34827BCC88CA6D0CC3F0F074DD4EC597CE0933BF89D9F58804FB390CB6665FF0BD3672EDAB9F7F60964D797D0249637D84B4937C529B47E470880BB9B81E26C481A27D76C2090DD48EE9B05F1666128CB516C140AA45EAB607B6B43B02C5A08D35C1D4D29CE02910C229184CA72647C5A91D138327DFDEA3564B737118D0F61BD128067EB0466C20D29EC647D475FA1A1A23D043239E348264AB92C3E98F3ED42EA8E705C3A2EF3EB3EB729C6AB930619F12ECD401D51FCEA1F7F4996CE24271664CC41BA7D86577E6FEDCA09C59CD4758CCCEC97EF8D8F26F1D0C121A4B18E77FCE84F426B9F87AE55A1071670E6720F8918F7A9D491DFC949E644ABDC3B9540C0C31ECD8E2CF251DAAFB65E30ABE49A12FA0905E1DCDAAD426624D104ADDA6EA8257DBB064E7607EEDDD6B21BF51D1C1237A4715C6B737D0DCD464D6208AD646E3281B05F97C591D43C56D5D47402811B1B05BC7EE602D636B2E0642E275CB70A3622C553981F62CFBE211C445DCC9B1B4A2D6884EFB9FB901A27E374328D23C4355D1681A96E1EFBF882ECCA3A6F5D46EE2A6D1D4FAD86F0E2F15771EDDC594447E7E00F4404B7F2B3D7621AD8B87A42C8E6B4B8CCF4029AF5AA6C8DBBF7C1B7612EE3C16FFDC71F46B7750DAFBD7E015F7CEC3A166F6CE303FFEE7D68B5EAB28188AE28E005F64E04D1AA7266505167057196AD7B9CD0227BE6D66E144543562585088816526A54A50EA140065B16DECC641C64596F86E129750EB43086ACAFAF497027E0C778B16F322653A76A319A07D5461B172FAFE1E9E75F47A95A932E1F91D983878F408B8C23B75D83377702F7EFD5B1B6B42CCC9270D02BD5B3DABFA88672A433CA22966BA4184BBCBA9BDAAA5DED8236707D055D9ACD0DA0167EFBCFBF09FFCC5D78E03BDE81BFFD8B4F2131342964BA1E99829A1AEEC92E9D90C28F2E2B39318756B5887A318BC97D47904E25F1FB1FFD71EC2CBF8A5FF9E85FC83C25D77EB06FF3910FFD3C4687D3D2A18C872D4CA5BDA8D78AE26A079C04550CAB1185C18282DDC8F96005549FB3270ACBBA553489EB1A6C27D8D5631F58CDCD892097A9C21DB48C219B9B2CEEEA4274A6951C7FF1591CDC3B86471E79580EE9D9675FC2C5CBCB407018F5B683F1A9598C4DED45AB6B6175238B62AE88FEE639BC654F4F88C8DBFC6F8B4B8E03F0196C1E29C285C43BA1B8B247AFAA5559556E9A9220907AC44E1D8B336E9E63E1F5F3BFF3590447F661FEEE8770FB5D77229988E3D46B2791DDDCC6D28D3594F24564175F5363738689A199FDA8E6B7D0ACEC6072DF51A1E94CCD4E63FF888D7FF8DCDF4A436AB053251808E08107EEC6DEA931FCE80FDE8F467E4D0DC9BABD18E5AED442D1C1F777274BBB9B7FE2B22ACD9A234CF35D5F82FDBB59EF9B2D47762DBA5FF48114085DD6D6E6BAC0E9AC9A592B4C0CF9E43053A9849A1F69D8B8B86EA1E7F8D1A0667A74E4B205746D0715B1981A2EBDF202DE39D7C768D2230340A5720DEDAE252371E4F8726E48C6B4BB2DD1EA66A325D7E9F705849AC3FC91AB612948797A4294F38A21FCAB8FFC0992A3F318DE771873878FE2CE3B6E933164527B3859BC787D09AF3DF7245E78EA499949494DEC45697B0DED5A09233387DD271704B0B0278513CF7E59567ADCDAD4C0717260CF48189FFDF47F4639B7E18EA7A9012529885D460F0522D5BE3B73F3C6C02EDBCD14FCAE04F2C6BA83A9E98099F8C62D39EE3CB83B06D621BFB656C5D6D6C61B04D22B2D231889A1657B114E1D40C5F6C3615BD6E2DA3F0FEACD8ECCA993C4C00B2DEEE4B17AFD2A0EFA9671E76C542DFE6FB56462966B98E4911832F6C7476734E1704A96BD78495148DB218B915077542ADE502429FD746AFC4F7EF863488DCDC24C8C617AE1308EDC75143E2E26884584134517CB1DF0174E9FC4DF7DF66FA1E911AC5D3F2FFB14D313FB15ACA47B30393D83E6CA53B874F92A5A5D3500EBF77A9009EB383417C52FFFFA476407CAAD93E409EAD24514845B46CCD432B3DD6180FAADD25E5A48AB4E98EB667B75D011DB1DE3A571E96259377F5951BA4181308670EB6893953A813E6F0466248D72DDC1F5A52DC1A1B82A291C09497A2773223690CB1770E5CA32A6A62650AF5490CD6EA0BB7519DF31D5403A1941B7CDBD8DE473F5E4F0D5229AB6ECDBE5FC0ADD8226900603BA0FA36363882513B273D1F005A5CFC1BD58EFFDA58F61747A3F42C9714CEC3B883D0BFBA5F62896AA181DCB60CFCC845A974EC85703AE5F5DC4C5D75FC5A39FFB1CE24333E2028928243369243C0594AF3F875A9B63D836A2211F425E0787EEDC8FEF79D72332182B7397B2C981019BABD2BDAE0B6340DFB5B56EB0EC60B0119B41BDDC2496E5760B072D417714E196BB926EF19B7267B5EC8C7893AA433664581E46104E600FAA8D1ED6B7990A375029D7D4CC844B92AE94CB387142F96C2ED89F181F47A190971DBB5AAF85FC6B5FC0BBEEDB0B9FC9AD765D58DDBEACC5E0C00E03A3DAEDC57A46EDC265CF81B1C31F8E201C8DC3CF6D6D1CD2F19A320BF2B3BFFE0924C6F74BFD111B9DC1F0F8340E1E3A8813AF9D12AD5D58D88BF9F959341A2D61F053F8E419FB3407BFFA1F3F2A9046A7D591951E8D7A117BCC6D787ADB327A47FC87F4DE1F7FEF7B1089F865E663B057528D1DB2F560B80F6F51CB6A76971137910F55BB2B97F5E62A7D10230601473858BBD8282AE5557F0634A05C764B52452B30855A874C0D8F3011B947B75AADA987B494CB82ED3CF9ED27F1E05B1EC4502689E3AF9C5548682C284C917AB904A35FC3417311A3312F02ACBCB9F886BCA9161F99A46298FA7C777FA34B8C0EC4E3884462529D33DB63BFBD542EE3939FFE07ACD47C484F2EC09F1A437A6C1A2323A3181D1FC1F1E3EA2130478FDC8170342415F5E8F0902C472357EAF37FF70F78F5A5578445C22656C0E7412DB788F964159E7E4B703A4E25BFEFFD3FA9C630F8880D92B0654B90429B078AADD6A6B316DBE56E76C56E61144B0CB9D938BA85F6EE06170745E0EEC03F98AA25339DE4B45C6E5BA83B957E46F0AD7038229B10B82440563339C0E656162F3DFB1C66666664634F24141217B4BCB289F18931811658816F67D7106D6F627F2887548468ABA12A73176210FA8CBB004706F639716506108C26104B67E00FC5249DD50C5D62D0D7BEFE24BEF6F20D8CECBD03D1911944534348A447303D33898DCD2DAC2C2F4B5C3B7AF44E81F8B9578BB4572EF85F5D5EC1B71FFF3A76B6B6A4908CC4E2A89536B0306A22D45E92675879BD1A7EECBD3F2A1D46AFAE04329860566C7AF7714A2EDF6BB0C574901828D7C6C0C24A7D974006D5FAAD2CEAD64EC25B6CC5817672B586867CB58B6BABDC6BA5C1EF0FA25C56CF8D22E2C983630166A54000001D804944415483686B6B13C160045F7DEC718C6432B2E39C14D4482822033867CE9D472A3382583824191B7BF4EC1A468BC77178CC8BA0CF94A0CB8D43FC92FCDE5DEBAD1E9941729A8E703C218C72DD0C0AFF8AE36C1C8439FEF209FCFD375E437CFC0092E373D083318923DCECC6EBBC72F92A76F2DB3271FBFDDFFB2E2CAEDC409413C47455ED0E1EFFD2A3387FF255C46249A9FC13B11038B474305544C4E17A10E007DEF3034277E5281E13A29BED5E774FEF2D2B11FB963A69A0D483F36671F97F08647751F8E602F196ABD2E47920D7561BA835FB28551A32EDC4F54BA45BFAFD04184D590ECC8A797E7E2F6E2CAD89A9F206B7B259944AE42691AAA99ECD71FEC2554C4D8F4B3B967C25690E596DC4ABAF63C8DB949E0263068522535AB2319F2E80C230D45C3BD76244E2428AE3D819877C981ABFFEFA697CE599B3B0127B11490E23313A239BDDC62627649CAE54A96165651DA5621EE15000F3F3F34867D262914C2A6E5CBA80C7FFE90BAAAFC26697C6985283A97B7170DAC1903787EF7ED7F720CA6B1461282287EAC20E160A2806E760139F5A96B31B3A7160F377AA8DB223AB8906BB03DFF4A2DDD63248D97808D7D6DB28376C1966AC35DBB20D275F280AFF96B47A066E1E2AFB09954A4D9880BC0036F60BA5120A05B5F491826321CA9D5B8B4B2BB2369C98150F8A48EE50C880B6FA2C62DE8ED069B8A29CF5833C7C4BB648F784D5C2C2909D416A3949721C85664156AF3771EEDC457CFDB93348DFF94ED946144A0C61687814F1641CE9745A9897D99D32F23B3B68D42B989D99413CC127C9F924B3E3DE93BFFCF81F4B8F9C4C162A2A4101BAB0FB8FCDC06CAEE07B1F398A78945C665B82BC6AB1F2C0DD56AD60786E6D229B1D5C6A95BB7D88EFC9856F5AAD51162C8B26C62700C87BB939EF6EA88481AF52B590AB316DE5BA56D5BB66DF9B3D6B6252BC816C362B1B71084D1071E5FB6673790C0D0D09A84650902BC36FDC589187A570693F0F8407BCB39317843612E7D377BC32564C76B89DBF8648E50CE23E0DC97804F158D85DA3770BC616A1F84C61B873BF15D8B706A4E8BC7AF506BEF8CF4FC137F7A0D050196B38999B19CA082384B38B4B1B79B9B695E56B027BCCCCCEA05A6960CFDE69D83D0B9343317CF4977F4D8A3CAE78E58A2612B1EF3D3A0EF4EAF89EFB4604BE1F3C266990490911DB4DF5D52AF3376F3F552E585C31EB100A64907A0D82FBEE729EFF2E377AB8BED6C0EB67AFCA3200F28CE2F1B84C04511B4966E3136B98DEADAE6D081B3E168DA2582CDE7C0C1DDD02B566289D423E5FC0A9D367914C0FA3D5A8CAA24A3257289462B1847852A1C3142297FACBB3428A8B48B4AE206A74658F162D85CD2509A0EE6E4461AA73A5943F240B5E584CF2696C5CA4FC95AF3F0773F63E8C1FBC47F6B284A309A49900044C8C0E65A44DD0E9F3896F2D6CAEAD62CFCC0CB673390C0F0DC902B7A989117CF91F3E8FF5D5754582D3357936A2CFDE901D301F7EDFDB309C8E4B9F854887DAFBABE2ADACDC75A194C1E8F520D1BA0545D165B902D99DE6BE11F5D560791CFCCD175F41DFD691DD2E201CF623C9A9D624534C920F7AF0F9D463E6F8C58958D605B4281EAE0CEE6B8E1461F2C806DD239DB813274EC9400CEB0C9AB8B472EB35214CD062C6C6C7119461523E0B904942083EBB84E0FA0B0879BB88F3C93C0172AE3C6219A6BB7988D6EAF38524E160FFBC5828E2EAE5AB78E28533881D781B7A6610A353FBA43F439773F1F4AB286E6FE0A73FF49F506F7027A47A2E623EB78DFD0BEA212B5C34B67FDF1C2E9F3D8D6F7DED1BC2A992B680DDC1BDA359D84E1B3FF29E1F42946470BA34778595026BD5B9ECB6924143709065DD84504420F5D24DE6A2BBAE671714AFE1F5CB5BC89688EAAACCECD4C953A2E91393E3480D676068402E9B472A1D97EE1BE18B7AB3A176F5723350A72BDAC25A848FAAA3C97258F2D499B3522F0CA593E2F6F8F0956271473857BC506E20952DA39CC790C702F9309CC9C0696C21B6FD1CE201139170D04D3B15E44F77273B1475B5E1A7C591B14A0D572E5EC4F9B526ECA9BBB074E92AE66E3F82E34F3F814EB300DD1BC2FC91FB71DF430F4B134BB679736FF0DAAAF43852998C3CC229160DCAECCA535F7F42D27316B1FD4E0DEF3CD84024ECC5DDF7DE272BD1995CA86D10AA0BA862B75A293210C0C07276C76779ED4D81B83F19041AF58C5B0DB516702D6BA15C69AA0DD3A681B58D1CAE5DBF2E75C7C2BE79EC9BDF2BBF9DCDED201A0E229988092C424DA3A6331F67FA4981942A15B9E1903F80EB8B37B09D2F626E7656161ED35D759A6ACE24994CA254A922CA07470A13842B96FC22640E9D06AD3286AD35648C92645F6A0F8BB2523910772B378B51B22A4F9F3E830B453F56CAB6305D86A7F7606C6A0F92996134BBB65843341AC1DCBEBD2857E9424D140B056C6F6C616EEF1EC1A2724C73E7F7E0ABFFF805AC2EAF0931DBD42DCC4456313395C603C7EEC070262D29BF1A7E757B20EEF6BDDDC5F44038BBDB1DFCB954EAF54659365BBFB1385495F9EA760FB926DFDF10E9D2CF178A55AC6F6E6169690956B787BDFBE690C9A4A40064F1978845444BEB0D357BC73438B79D93AC8296C047FC707B3535973B47089B308728160BF2ACAA9D9D6D84FC3E74B90C8D6B3ADA1D044221442271A92DD840E2B524C241A4B51DEC0F6DCB1A0B35B6EC92B9DD3DC4AC83D8567EEAC967B0694CA3171AC3D2E50BC88C4D0AAD2833318B91890914F34579C0F1BE8579F90CC63EDE0C1394582C8A3D33D3387DE62C16E6F7E0DA858B78EE5B4FC8C3611CBB8B40E712E6A6D2F8A1773F844C8A8F7255ABFE768F08DE42166ECD70EEAE41062ECBE6D353ABB5A2047505152B408C3D8A4A5BC3D25613E57213B17854DC0F35AED5EA4A83893E7FE9C60D19DCA75088F36C6C6C0B178B84B0A41BBCF9E0E162496DACE6C42C8B47BE176FBA582ACB0A27B52F5153AD506662FD8E4C2871C46C7C725A965126C82C91EE5E00957A53322D3E84980F8D3C9A2822A9D5642926BF542FC442BFCBFDBF793CF1C48B688E1E45DB88E0CAE54B529CB61D0F8EDCFB16995B6CD49B32D4393D33254BD7D4421A1B5B9BDBC2C81C1B19C6DADA3AF6EFDF273B24FFE0A3BF250281D6C1B0B186A3B7CFE2BE630744A1D419BA9B31DC12C225E8DCCAA664ADD4202D561014CFDD22EBA45A53E308EA9B1EE1085FDDE8A0D9D3A4954AFC8987C09FB190A33613576230E722B0A5EBA4CB84901ECA20128D20BB9515D6055FCB4DD27455D454664DF97C495C61A7DD45A55A9145677C5C12535C3E3A4FB63734D493A2D5E3C1B9FCA6033344E608F7E3724B1D192424B005D5BA27AB874EB58091B08363F3198CF9F9F04B4E08AB075F6EAD6FE0ABDF7A099EBD0FC38CA5512957D1A85530393B0F5F2426AC4AD641B47E369B8EDE7958886B3C2E5EDFD5CB97840EBBB8B828CFC26586F5E867FFA7C041E85730E42FE207DF7917F6CE8E22E0E71805E7DC95FB54D5FA608FA5DA7AB71B2E193C33776041B66631A817A50E19C05D9B850ED68BD40FAF1C642EC70DD06A11F060130F85C720CABEC4FA66564C3B1C8E62727242FE9D88462420A73309F7412E7C921AB7F06CC9C0260F8A37440D64EC504F4A5003FBE42E3135643ACCE232148988E58C4FCDC9F306655118D9F59D8654F95FFCECFF8BCCF028C6A6666018018CA74378F71D51040D47E837AB4B4B78FCA52BF0CDDE036F984870421E8BC4C726952B15A9A188A9C9062347C3F8F82852E994302279CDDB5B5954CB05E48B25CC2F2C48AA3F3D92C09FFEE17F47BBB185A8B7820FFCE42318CA84110A9A42B2188C7750185422A949DC2D73EAF0D5DE2D85A00F1ECEE9C0269655A540543497175CDFECA05873D0751FECC234948FB9238440E90A74C1805FABA3C9951CADB61C6E215F92470D113E612A4A6B61D6C3A701F003C8CE600790372A4FF394DF294A9A4BEBE1C0271FEA484881C940BB594155ACD310F736323A29350FDD161B561EBB8DD79E795C1A4732691B08CAD8035DE57B1ED88BBDC341A9BAAF5FBA84D7B7356CB47C88C4D3C2134E72090D89D091086A8D860C95D205AB71E92EE6F63190B36F0F492E365656A4457DE4AEBB442051BF8EBFFFEBBFC14CB480BD235C7118C1F878460A439E8F0476570C02320A078028AF4B70701F1C265DD94141C2F3970655BD200D2ACA70ABD8C7EA36B7EAF4D4A00BB950CDA6FCA156CB530EDCE714F2B9808443D4AEA8AE00886A31B186ADAD2D4C4E8C21140AAAF579BA8E5AB5AA06EDDD67883015A635B107C105FA9C0DA190D463BC892057502EEE086D48128A4A05C3937B04D95D5BBC8046B92063CEC5EC9AA4AB7CEE95A6FB114F24F0C8B105BC757F12AD5A0517CF9CC42B950C0A0D0BF1D41082E11826F7CCA1582889623045E55E14D941EC534F57602791CB39074F9EDBF8DF455D59731BE6753D00899D58098004491004296EA2285BAC23DB712C3B8D9B7849329DBEB479481E32D31FD0F617B4934E673AD34E93B6D371DB3476E426696A47B59DD8A91DCBB2657989255394448AA44873111780D8776E203AE77C64FA4E12C4B7DCEFDE73CF3D67FDBEC6D0AC36A70ED4406F376E5C7B1F48BF87A8FF4806658958148100713CA78A43434BE00D31F0BBD25A9218D4A73D9EB6D48E1CDB2411C7E2DE15CBB99694D60E9C985F2D293E67F2050174FBFB4D9D70D60F94D63B312DE63F4AAF0F9E28B24ACA54F8A9378CFFB8C38E9D9D2C3A5C4EB8DC4E2DB2C69BD91B68B71965E9AEA891A0CDE551246BB1BD1D352A5BDBDA91CD661089440CABA3563ED6586F133A4080920985DB06E4B69610F00711ED1BC2EAFC34DA9D5EB4135C74D8F0E0C4289E1D6B43B55CC3C29D195CC974A28D5EEC76173C810886868755309E20B2BCC9948165CB801C61DED24838AC362FDF321A98DDB97D07474DD299DA110AF8307F731ACDDA123C6CAAD5B710F5B6E07119E8C658051AB68DE11453D6C984A793CF3433EDE6DD66D5AF0DB336612956F2AD4AE30877D72AC8E64970A67C9EE1271196A033C1092624B5688A921D535C58459F8C89F1F16665DED313C3DAEADA3100B8276D5FDE14CA3211076206C453C4072D97CB0BBF629ACCDCDFB82C1B8F7186250A8D91782D36BB83731E46D39114A283DD321AA58CFECF68AC17955C0A5BEBCB08457BD1D517C70323A3E86B4F63E5D64758683B83CAEE8152F0C1B133EA2AB2CE50A2D2D62608DE49856AA931B8050B111BF374B82515C5F78CC2FD1B1B29F571683DBEBEB48483C25D585BAC9FF2F0DBF7B1757F439B17EF09C3DB41014F63E0C204C788889269692403757FD8E63D567D95F618D3DED5D44EEBCD2BB7F0C1B58FB5407468E63BD39F1C446FFF2082A1903405FD3EAFE29D5826244413C7A26BDAEEAE6E07C3DA4E26ABCABB5428CAA1C01FF06AE6823789B60C1CE6643F9C8BCBEA95B784B789995C30185296C558CB7F9C1BCDE6558B721CFBBB486D6D0A4AA1FD512E9713BE7448E587EC26BC3E1FBAFB12A896B2D85E5F91DA5D38D68F3313A751B8F516329E11345BEDF0078338FDC0437A2F4B859271BC7139A46D459D2F3DB3ED6DB0C975A709EC6CC0DE1D477A7B43262CCB1B294D69D1A79D43AA99D54F705063E66806427FFCE27FEA6D0A873A449E3B77760C9180131E673B9C36CA16B27035C661D296A1AED6F13C3C0FBD4627FFFDBFAFB47EFBD92D91CDFC41133797979654A8E533698C8E8E4B8E6220398860D02F3200E3FA499ACC3F94C9E6D57EE50D62A78D6CBEF9B9794C9E9D44879B8B6F1C77D87F67E642D63AB9BDC48C36B753B2228AC7E3AA73586CD2518D2404A6190C879C5DAC14B3C7033AB45F75608FB645B5AAE4584BD9947AE1D1F8003C2EB76EEACEF62A1A95025C362BFCD101D149C72626D1E6F26A6E5E7DF9165BAE6DA8561BAAD4797864FE080B6C47BBD83FB4A0AB3F8699EBD7717F730B03A7C840819217D2903E9F7917EDAD2A1C943E7479F0E28B2FFDAE9EE310CE85C7CF23D4C92CB1A0747E7A66168968085F981AC7507F1447CD863E5F52EF36631565F9FB1F5F6EB9DC1E78BC3EA36AC62119D60D560EBEEC6A7372E9941C9607064906382524D7085D9ADE311F42828A7CA025D27F78805FBC7209CF3DFB1C3C1EA736504800DF9B32DF230EDC584409A596E34E368B60A0F3B82368B22C36AA68AD44323427B34A054EE392D06C95DB00ED2E68CF4A7923524EE9164D6D152AEF9025CB0396496F6063711A03A71E94A1315363DE68E9A5D8DB35582AB8DC4A9B6DB2454CB38B88C3170E2BB8010786CF9E45A35CC1AF7EF92B04226125265353E764491EEBF6E3E69597F576B0A0FC871F3C7F024F89DC706662141E5B13E71F9AC4CBAFBF2B7B0A16BE838309C42221C4A201744662E84D8C20118FA9B0B5FCFCF2428BC46712D2C89BAD2AA3E2DC20C7B8009F2F8072B9A453FADEDBFFAB07F1D4D8B81E5E156A763B52DB69B83D2EA1A5A9545AD0F8D5F7DEC7B3CF3C239DAD130E123F87934427D914712536B5189A3C6E9FD4EB783BA8D4C9B0C890C61BCB879E42CD55CD59187243982DDFCE280A858226B828707340F93EBB0D3E3F45F53B50AA94B1307D0D8991296D302118F6E6A9B04A8090B03DE33B17D97421D94EA00AAA1B13CD2ACE9697F0FED9E7100D8771F1E24585DA584FB75C0F4E25FA911C1EC68DB77F82DD5A1E73B3B3B8BBB8FCFFD3C62D2BBEFAB5A7102791E2C30F30B7B0A2479C9FFFD823E730363E81446F146FBC751985E22EBEF1CDA7A5CE6AB9F8E68CE64364EA4533625966B7CC58D761138542D128C7510FB7D5C2E2EC6D14F3393C72E18262314F8651F7335F885D372A37CCCF2FA0BF3FAE1343E7CF93AA946CF99342899F454585747A478E3BECA99C2409447D8D40FD914E356F4BB168D060168AAC733AC3DDBAD94C45B9C085424E7348EC5432C3A363F3F2DD9B889F9AD45BC1CC864E388CDD94FC234E65F4C0CC77A734BAC4631C76743B1DF893C5D7F1F3A93F96A0CE0B2FFC48EF4C5F5F9F36241AED42341A4376FD365E79E1FB9AA76483AB54DB53DDC1C377FEFC434826FAB0B4B48A9B33338A147C77BFF9F5AFE18B8F7E512ED77C53DBAC44AE5D421F2CFFF5F6ACBC51345B0DA84BC76C835905D3D08D8D4D3DC6AC0DA87BCB455A595AC2E6FD7524878611E9363A54A2783648F1E40453599916B317CE18F27472C304C5B75ACA644E045DA8C24324999B1F0C06B5A96C9B52EA9B8B6524B9A9FC6C45B190D3DFAE544AEA46FA081076C5A4B3287BBF461DA5424E63D124E531D9B8BFB6263C8C4D2EF64DFA7AE2824B2872C3D0A9F974292E903D6207FDB108D338AC16FCD1D6A7B8EB4FA23E3689BFF9EBEFA13FD10F9BCB85CE7014DDB13EF5696C8735FCCBDFFE39DCF63638DA6DA8EE1A51E968348C279F7C023DBD71BCFB9B7730333B2B149C37FCE9A7FF005F7AEC71A3D24DC1046B1BFC3E7206DA6079E5F27CAB54A36B8C96480B23578363F3473EB45C44F6A679CA09B2515C8553B2B43BEDEDEB476270483037179DF19F9AE78BF796D5F1239CC2C5958D12591C874D9D4C324BBC14692995044BF0F3986EF2F72D9224A7D25A4819186F6763F700956A01D5520199F496DE2ADE2E2E5E774F0FDADA1C62E273C887B47FE26374794B6DACA3BBA7171E7FC8A00C0062B1F87181CB0D312D566E10DD47892A5365949DD187AC7BE82AE5B0D43F82E9CF97F1F9EA2AAA8D3D09A851AC8C754DCC5EC34F7EF877D8CE67C156A4B24A8B05E726C6114F2691CF97F0E98DEB5276D8934C39F0E0D439FCFE850B5AD713E82812094934CD72F1CDDB9C6952F8A182014FD5DE1E55A8F7A5DADCA8D731904C08E23E6C5934DFB7B2B2AA184F55B44C6A0B83C3C3D2D6252AC3B6274D227752690DCCF0D4337612A6E07B11F0F9548B30E3A2E80A17819916B32EBA277381B881AC8CF9E5183AF9B0F3341BA3FBA288D24C83E9409A4CC4F52E054211BD613CF17C574AE58230AA9DFB2BF2C2EA89278D3AF751134EBB4BB79AF5D0DE1E65A18E497FFAFE35BD2BEE0E0F0E770F346616E8F00AA99E99BD2B36643048668B57EAA47FFAA81797AF5EC37FFCEC35541B7C772D32A4F17BE8EC6043B95CD3DB9CE80A49C4606272128B9B199C7FF8516390D33A14EDB5331C340E473F7C75BA45A89A8B4725025A129DF04F195B19BF190F3993A1892837D15688C9C15345BDDDB5CF9791181854C72C9D4E8B9DC8429027F4D4C8B05AB36C3AC9136AFF400BC18DC8E6722A9C580FCC2FDC43BCBF5FAE66E53217DD30C579A5B97844597928D2A9946E49852C492AD51D182236E93F8140E898F6DF14A6C65A6563791E91EE3E8C4CFE1EF285BC267F55EC1EDB71F03BB138E40DE52DE6E751418289022B76261AC4AAAE5DFB00957245135BF4746768FBCA44184F9DF62353ACE12FBEF77D14AB35A5E3D4E5E2A1A20696A3DDAE84647C7000D5C6BE0471C23DFD181D1F8195EAAFF5127CDDFDE88C844D26FAAF97AEB7E431CB6E1B875F08D6C990D7184AB2CACE154A28966A122C265921D219127DE6B3E95BA895F21A8C9FBD734BB50A8740794A49C55C5D5DC5C4C46941D2BC29B2FFD9335675AC4BCAD53A22E1108AF92296575711EFEB53C55EDBA591E5BE606F8E1A33A36355CDDF655A4E1EB024032973B44B3DF692FAFBB19E5E038B03585F5FD7A697335B92FA387DEEBC18F74EA71DF56A4D7815B338169E84F8F919CCE85831532C9387B058CEEB96713DEECDCD61EEF69CC48F39E6F040BF177F78CE87706740A48AE77FFA3FB87A7D1E856A453C6372CBDC6E87D4F2885F0D0C0D61656D5D09D3E8E909C4137DF01191A8EF627D7B134F7EF92B225C589EBF74A3C52C45B60D4C51DBC800215FCAA914983C2B0E32F2741399A5C73A4F0A17990BBBB8704FC0DEAD1B1F2B9633EBA16D118B333A39F7F6F59954D4E7931D38DF22A6D312F03A6C2A4565A8DCD94EFD8E2AEAF576A869454EAF5819162A0CF9CC173D7659A0A77976675B27799F6A421CD8A416237D47F8E6D0C4B27980D4CAA270AAC1B107B0776451BD4324802192E933B3376E8AFAF8F4BCB2D905FBB073C85A8B9B41C53BEA41BE71E95504BD364C0C74E2A9C930427EAA6CD352CF07BBC783EFFCD95FA1B66B840C3AA860C749DFBD86BCAD984952503312E912E325911C42AC27868F3EFC44E6698C0E3DBDDDB0FCE8F51939A1D3F38FE404A67F641E7A5C4EC564665BCC8A08A97051A815B8B777A0D0438B23EE306B94626E07856C1A3DFD49853FD613C48B02C19052D45030A47780B78E7509EB04DE38E24B4283AB649B34D44A155ACA09DF03260306EE6748E13BA4C5A6230167478A39CD35D61B35BD2D7C73B821EC4A120B633F65F3DE4D79A04C3DFC04CABB47F005230885C28283F83799444859629FCADE56D8C8EBA2E9B29DE0A8215F73E4207FEF1394D66E63B0CB8BBE0829B06EB85DF4B6ED80DBE393FAE93B1FDFC10B2FFF1AAD368BD2EB7024247EF0762A2B621DC979C953C3C7DAC04D0C0D8FEB56BE7FE532E8411FE170D33FFDF45A8BCA6C8C9F1C9E616D202880541ED60914C9CF57D486659B3614EC103CC2182DBD77CEA9D729135BC2A757DF4272E40C92C9416C6D6DA158C823168BA99B48AD137E06712842F84C314FECACB9C8D506FF46599420D61A14B1E4E34AF44068AC9D8F69107BEACB18BE136F076B0F9EF272292F45212A4813D0647E4F7ACFCECA4D9C191940727C0A57AF2F22393C8A20ADF85C341AB32AD43179D96F982CF2C49730A49F71A9826FEED5B1BFF86B045087CFE384C36615E5879183B7CAEBF7EB80D170EC2F7F701116BBDDAC0F05421BFBF8F2934FE0D1C71E17D2F1C62F5F939715A351BD4EF0B503C54216A3A3239A1EB0FCE3CF3E6CF14B0B6F6A36A590C93C9D03FB3CC9744160FD90CEE450AA34844D7198538BCAE651D6483231442DDC9946319BC1D8E43991AE191A429D9DE269719087A1E0709F7A8AC6C491378D278D0BC3C7B2902F188F1156DDFB84701A7A0F188A181689F41A8A3FD9836EF3B307FB628D6C6DADA35C2A2A1DA6A80BB1B5E2D63DA4D666F1DD6F7F0BE96C091FDDCDA2AB378E685797DE955C3E8370282C07054E5B51035E693735BF3AE8CCC6C61533A1261AD3AFC3759487D3C1F631558738B2E7D6EDF7FB3924E487A3C387975E7D07577EFB194E9F7D1843A3636A9A55CA4593F955AA92B2159068354534379E1BC1048AEB6379FED2B4DE905AADAEC63E535E862C3EDC3B999C9C0BC8876286C302912DDB52B184CE904F71986F0D4F361793D7F2A57FFB674C3DF225F516D873906C6CC0AF3E0BC380DA93AD9662333755F6467C4CA5D269525C66524C4F7920786A9564C0A2132BE6FE9149A399C930DCE57219948A3935B558C5BB1D84461AC8AECD2116B4E11BCF7C15F31B657C34B7ADB91036D258FC32A4126D8DC662F2536426C74A9D6D05625DCC06592770E83477E335B8EADB70DA2C70B96D725FF07674684382CCC4FC41D962AC65EA78FBFA5D6CA5B31297E67F2EC183A3965069D923399CB0595BCA60EFAFAF6B822C3138A814F9FF0092785C32A2D0DB4C0000000049454E44AE426082, 1)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (4, N'Leo', 0x48CCF8BECFEDE71D86B46E12DDD6284332DBA267E315D38BF80BAC1040952D2E220DC768DC7E4F9B7B12EF980996C57CABFBAA9411CEA072F225D72799627B4C, 0x24860C84CA6BC53D45FF1EC953DAFE01604CCF370A0DBB956A52327D9CD7C89DDB54BFF98C8EF5A36F8662B57C280DF644F7A5D2EF66E89B8FF1622154A3A237AF67AB592F64F1BAFE69433A13B49DCF5AC4A56475AB2129C14E6CD14D99D752D6825CF5E8238CDFDD78CBE0C6BB5EA55724CAFF84BB2016B64068BAC5A91B24, 21, 3, N'leo.doan@shc.ssbshoes.com', 2, N'/images/default-150x150', 0x89504E470D0A1A0A0000000D494844520000006400000064080600000070E295540000200049444154785EBDDD55AC2D59D5FEE1757077777777FB702778087E09095C704380A009349DA669685AA0A105DABD1B1A87E0EEEEEEEEEEF0E5A9F05B99A74EADBDF7E9BFAC646749554D19EF18EF9039ABF6AED7BEF6B5FF590DAF5DBB768D5FA7CF7BFB9BF3FB73FD7FFEF39FF5F7A5DFEB63EC673CAFDF7BFFE73FFFB93AFFF9CFBFFAC73FFEB13AE739CFB9F2DDEBDFFFFEF7F4FB17BFF8C5D509279CB0FAC52F7EB1FAF39FFFBCFAD7BFFE359D631CE738C739A6777FCEF77EEE739F7B6AA7B19EEB5CE79ACEBFD0852EB4BAF295AFBC7AE4231FB9BAC215AE30CDC1F97FFDEB5FA7CFDA3686BFFCE52FAB3FFEF18FD3DF9FFEF4A7E9DDF5DA349EF39CE73CAB0B5FF8C2ABBBDCE52EAB8B5DEC622BEDEBDB58F690CF4E00D92928A3E0E6425CFA1E503B05244D6922263D4EEAEF7FFFFBEADDEF7EF7EA6D6F7BDB24189326B079FB7E03128139473B4021B8847EBEF39D6F6AE32217B9C8EAC637BEF1EAA10F7DE8EAE217BFF804028106B43EE780FCE10F7F98DA741E40B47DD18B5E7475E73BDF790DC838F7717CBBCE3CF3CCC942F6D60A12CEFCBA255012DADCF4E656B09D858CDAE43381126CDAFEFEF7BF7F75EAA9A7AEFEF6B7BF4DBF39EEEF8217BCE0A4A184AC0F1AFCBBDFFD6EF5FBDFFF7E45A0C617B8CE4D583E0385A5DCFCE6375F3DE2118F98A6A04F6D689BF0B59165F8DD6FCE01883E010D1016E2DDEF2308FAF3328E35209B4059FA7D2BF03659C9A66B96CE9F6BF4DCBAD2EE8070FC073FF8C1EA90430E59FDF4A73F9D847BDEF39E7712060DBFCC652EB3BAE215AF3869382102E297BFFCE5EA473FFAD1446B044AE3598BF35DCB8A08C89FEFFA7CC8431EB2BACD6D6E3301EECF31D7A1B028AB77D7B38C2C0455DDF5AE779D009904BF6BD7326565219B347EABDF77621DA315CCDB3A3B16521B264B10B48F500F3AE8A0D557BEF29549E034D03BE102E24A57BAD2F44E18400240A07CFBDBDF5E7DF7BBDF9DBEE78B0285E000A12F6D5EE2129798ACE45297BAD40488FE1D07CA08486D8D805086BBDDED6ED318461F1B45AE7F3BE38C33FE7376E96A93F5CC357A49E3977CCA4E288BA0D33EEFACE475AF7BDDEA8C33CE583BF60471B9CB5D6E75ED6B5F7B75F9CB5F7EB20E60A021C709F4B7BFFDED6459DFFCE637276BF11D58280AC57901C26F17B8C005A6EB58883FFDFADD1F60D094BF28AB31761D300102ECE431A7F2C9720032E7F6F82CCE9EF3DD18358DD72E4546236823080D6613658DD634025594443826CD2A0E3DF4D0D5AF7EF5AB495B1D27C44B5EF292ABEB5DEF7AABAB5EF5AAD36782F13B405090368182BA80F2E52F7F79F5BDEF7D6F1230D069B2CF802C08403FE8EF5EF7BAD7F4BBEB5915FF11187D3616D6DB9F31DCFDEE779FC6A1FD8D4ABB09904D743477AC3BD1EA4DD6B015658D408FE0E53F1C17DDB08CB7BEF5ADEB30941F20CC9BDEF4A6ABAB5FFDEA130034DE3B0BF13970089376FFE637BF597DE31BDF587DF6B39F5D7DFFFBDF9FBAD606D09D9B351420DCFEF6B79FC0D6175050561612208EB91EF8400910E3C8872C2AEB2640964E2E1A58F2059B2C614E6B73FE1CAD6F27C142E71B0BCD3EF0C00327BAC9C113C0652F7BD9D50D6F78C3499B7D778C5002036DF85C3E00949FFCE427AB4F7EF293AB2F7CE10B13D080E02BCA17CA635C0368F4E3330072EA594979883E8BB2B495859C2D40E6C95C9631CF1D3651CB56F43582B274FD9239D77FA1AEC99E75D659ABE38F3F7EA20D9683521C9737A02A02A2FD425C9AAC5D1A7AAD6B5D6BB220491FC13BF6A52F7D69F5DEF7BE77F5D5AF7E751D14F03DDA05AA57B90540EF718F7B4C5A0F10D7E73B7A776E80B83E401AE346A53EFDF4D3177DC89C8A6A202BD989E3DECA92B6F2214B91596DB98ED63AE759CF7AD69495A386288275DCEA56B79AC0107D89AE385461274D4649CE050A2B029C397DEE739F5B7DF8C31F5EFDF0873F9C2C84DFC88AB224D7E5136E72939BAC6E70831B4C208D8961D156C9260B091020026474E67BD0F94E0099D3CE08CA261FB24461737A9A3BF4AD1CFC68B1AC80609FF18C674C82F71D28CE21E4AB5DED6A93D0454A04E3336D060C507EFDEB5F4FD75CF7BAD79D123E02E743D09510F85BDFFAD6A4F5AEE3BCCBF82BB1B816C0288870B39031F42D5C2E1FBAF4A52FBD1B656D52EC5DDB0132FA8D04B614656D17616D07C6922F59F229F98337BFF9CDAB238F3C72D2E42C86D059077A20281622CFE0740953084C63818476D0D66D6F7BDBC9F83EF1894FACDEF7BEF74D60A038E76B0388006305AE2903D7C67DEE739FC9F903798CB4001320FA6315C674CF7BDE735D2DD8C81EA79D76DA8EC2DE31EA1985B7140DCDAD63B7D2C0ACF0B864154BE0765E85C5830F3E78F596B7BC659D0802E69AD7BCE624605A098CAF7DED6B93B000E6EF3AD7B9CE345C9643D000BAC31DEE30D19FFA97F638774014956569404287E60220DFEF74A73B4DD658E9A448CB7BF4060C7FFABBF7BDEFBD0E3296287B92DB26403669E71C8CBDA1ACA530773B40E6E0660DCF7DEE7327ADA681452DB7B8C52D26AD4721F990923D020618CDE5C8D3DA5BDEF29653E2F8F18F7F7C02E53BDFF9CE6451DA740E40D18DEC1B7D15B569173DEA93928C4EDDB9C6195D15B1C95FF8A02D23D29D02B2445DA3801DDF88FA7F4BFA7307360FFF96F295A5B0197D3CE5294F99EA569550683DEB60050019F9DEE7802348632544BF1128C14A1005087CC9D7BFFEF5C9CF54C9E52F1230605D0B3451DAFFFCCFFFEC0148C54580F8032CEB4259C6B21503EC3AF5D453FF9F53D65C2312FC76802C519F6B08F5094F78C224140E9680713940E40885AA151769258196C0011468A2A8DBDDEE76AB1BDDE846932F4273B2757E07DDE5DC5BD7301EFD38D7F52CE78E77BCE324E479D83B46642C6404A4312F5ACA26403651D6262D5EF22B4B7436E6204B1436B788F9A04DE6C73FFEF1EAC94F7EF21A8CAAB422269C8EE309A122A16BD2769A0F506039471080B600CD314B32FD7DEA539F5A7DF4A31F9DC0354EE0A12FB4E505808208FD547E2F390C90B27D0B5CC2DE8A9F1BA3ACFF1F8044674B606CF221F328A4EF844D739FF39CE7AC33E99C28FAE127AAF6068A3E02249A0B00340244E74447924959FB1BDEF08649D0397256215A6A1D042094004885BC3976D7A0AB25405A9D5CB4904D3E644953FDB6A97C325AC888FED8F978CE125DCD13C2B98F723D61CBA6F7DB6FBFC941FA4E73D108EA014835A4AABB8E010728E8C8EF3FFFF9CF27AB407D92413C7F8D6B5C63BD0622DA12C9F12DD5CF0082B25AFAD5E6CD6E76B3898EA2430E1D28C6AE9F4A271254794B49ECC602E329A79CB26DA63E86B6732ADB146595AB8C823F3B80CCC36DED11EABEFBEE3B8592349676AAF6566EAFA26BF22DCD967FD0FE965859060DB75E42D840019A779671D861874D2515C7687BAB8714A0A261D93EBFA45D80188F575116C5110000C4E7791EB79B0CF716904D96333AEA2C69A4A8118C397539B655C16D0485668984944D0803087C823FD672FDEB5F7FCA33E2EA4AEEADA3D06E020514FFC1370044FFADA313A4734E3AE9A4D53BDFF9CE49C8222D42EF1C3445B072195659A89D8518736513205CE52A57990A92FA9DFBDBDD00D9E443E69AB9F47DC9F127D87932D8F51DDF94936C15341026C15A507ADAD39EB6BAF5AD6F3D396EB4A25D425458ACC4DD2683D6502A97D360FD1012CD554A676DF90AEF2848B1F1CC33CF5CFDEC673F5B67E9DA728CFFF0626540590284A565496A6696708D694951D73E7393856C02642BCA1A357DF423F3629A3676EA43E6E300883CE1E94F7FFA5420F4A72F7402188024087DB418E51C1A2ECAA2C57C01A156E31210B036E7D59EC49395F037E535288DF0598CDFF81D63F09B7647CA6A1CC6201CB7C921DFB1948B4C9673F2C9272FFA90AD00D90A94B9856CA2AD4D802C451EF3B1C8159EF7BCE74D3F2B7DA0288E5B6190B617D2B69651895D74E65A5A4AF84071ADDFD0CE031FF8C049E3094D69E4431FFAD0EAC4134F9C2CC24B3BED324175FE24A2AE1901714E9455091E7001521E32678369EE279D74D21E6BEA399DAD686BB1B16127C59C27474107C698D96F69C6B34C9FBF405912399AA7144EF81CB00A6EF5A5A2300010124D27683487AAD088B209BA625D40F2BD8D13EF79CF7BA6F596CAEF006165ACD167892140E41800696B91E3E6C382D027005811CA2AEADC6821671790254D9E0B350A1B81ED9CB92F59F2296B5E1D765356F678F6B39F3DAD83B7F7A9E44FE8CBB75415F6EE18FFE24FD98365B4464273091448E3BA8768ECF5AF7FFDEAE4934F5EAF83038AB08142D0AE639180D17694E51CF32B07D13F3F3352D62626982C643C38CF33B6B39279D8BBE42FE69D2FF990256B990332F6B5CF3EFB4C054193C6EBE50A966D95C5DB35D235ED02F1BB080900AEE5435845F9451CCF9A5EF39AD7ACDEF8C637AE1798B445E8AC8185B0448B542D7E6D05084B024873DF1690AD04BF1D28733A1A05B904D0682523B58D5632BFAE365B1A7DD5AB5EB57AD39BDE3409ABBDB6940975295194B16B33ABA2D504CFD9464FAE15F6F2072C00B0E513CF7FFEF357EF7AD7BBA65C8725E99BE500B74452E8DD9AC81220CE63792C4921D278B6F421279E78E25EF9904D55DFB96013E0A6FC623BCA5A02246D37216000A5357642729C4069AE0C9AF613863FE32E2F6051B41AB57967312591B4DF717475C00107ACD73500E81C515AEBF7680820AC0D8DCD7D088003447E64FDC4ABF12CFA61808C1AEEF376B4353AFD79A39B42DCD16A46CAEAFA39709B00D137C17CFEF39F9FCA27349C005946B405249BD99434AA2795634471AC45964E50AD0A56B7B247F888238E984A34402C2AF39985181B41D37A3E4B1F223180F82BCFA9F4EE7AD4A632EC55F9644B40E6B4B41D283536160EC792C056F463424B91D626FA1ADB1A9DB46CDDDA3AADCE7107A4BC42FD28E7DABA7B94C107A02A8088D4D0912AAF3591C30F3F7C5A6BA9CCE1DC7633B6C99A6501039569B30DDC1517FDE67AC0FB2C3F02C8A8788B81D109279CB05779C8BC0E330252DC3F8FB6E6DA1E207347BE1340B4AD1F5A77D451474DD974D5DE76B01B1340085A1FCEF5A2B184CB223872401258D9BD8453A0A05DD68206DB0F1CADB1043E0540B4BE3A587EA7C4D038F5D76E7A146A83DDB6801C7FFCF17B555C1C33F0390D8DE02CC5D9F39077AB6C7D34E7B12D7DB6DA67CDE2F4D34F9FB4DAAB2AAC7780C849B20CC7510EC1CA41588F97BA981C4108EBF871C71D37D15514E77A42E527AA1EF31D40760D602ABD8F3EC475F910E30788C5B0B30DC85691D508CA5C587367BDC977F87D3BC73EB7B4F998F0B91B7464D3594EFBA1F887B1144F8084D7AD09FC0B3FC02A683DEA9228B2100EDD3B0B0142A008999DA706A6BD6E5B68716A04C4F1B27463339E76B8E4D417296B93856CE743A2AEB1543277D6A39FE9D84853F3CF73AB9A5B491330A1363AE3FDFDF7DF7FE27FED111E9AC1EF34985072ECA22EC22C3B27C8B7BFFDED533446602229942638B067D8FD26AC47E2A71DCE585455886C3CC06C2D646E2195DFCD83C502A40D7D73A659CFF5B8E38EDB2B1F5214163D25D4F1FB5CB347F0467F325AC8F879AE39F300C1A4B230C2B06E215F402BB49800F90FDF13A477560190FC8236AC0C121CF0687FF72E024BD8DB1A4B1B175C0B3463025CA594251F524D4D3F4AFDC2EC6D0139F6D863F71A90390D2DF1FD3C326A1DA028694E75A3052D050A00EB77FDB304F484725464D5B1089CC3E62750535BFFD3547EA3C52BEF2C0350AE2528DACF7A5AFF70AB03AD77BD154496090440A3B3711BA9F3C605AA7C973178B10E6BF7CD7F54BADDE49985CC296A136525FC1A196967294A723E30BA45AC88A7F6B38C4D65E9B945D1DC362AA8D2AA67B5E303182C8496E7845B8FA0AD8E2B8910921C0270E847155871B1C526634DF876D8030B48E622EFD116CB0008EA34A6562201D38DA1F91ED74B0AED191BD92325DB0D90B9856CE73BE68E75296A98475369B377E7B723634909A2B7761B5666A8BC6D27884913202101402ED0ED6D8DA73B97B40720D6C06AB42BE11369F10F7ED716A07CEE9E92EEA4B25C4CF8ED3EA914DF2D07ED5A54816621014209DBFDE2DA1190946C23207B03C2FCDCA866C93A46FF5225B5BCA0BD51691981B74F37501C3361DF69A0ED3FDDCDD4BAB8C828A76D2CD19ADF8A84FCCE1A501A10B4C5BA80261293E40197B05991F3521AD688AEB4DBF22F01B7B1629385548AA10C598865026349C9160139E69863261F72764019CD6FABCF5945B4448B4CB4FAD3DCDFF80E8CEE21242C6000015DD0CE0055B71A6F136BC269686B12AE61219C3A108D419BAD8D68A35D8DFC887E1A9FEDA595EE7B08419BE58AB2805CB6DEE66E7D03846CDDA32E016D19BAA06494FB2487A38F3E7A37A7BE94F8CD692A0D9E5BC5FC7BF4310E02101696B2949C9FF7EA5106C632729CB6E9D855C201FB1D58BED36CC2F35B5B450B7DCB035C83D608D53B3F51A5573BC0D63790F4071416C2B700DD311662DCDD451538DE03C47501E2BA1402205E3638743F498AB96821232073B4B64A0E7712698D0E99907135411A505550E78CD496EF88AE800710DFDB5B659C385F09A30702A40CF9A9B453BFCE014C5B7D58055084BAC258E3F29B7309B5FB12630EA0B100422FB26AC344616F4E9D15FB8D42344FF3B30548580DF431801965BCD142B28031A2EAB363A3152D85AF73A7EE7CA68EB7BB6F62A494310731D1E8CAC4AC9303310A71FDB867D777ED97FD6621001F6F6DD62EBFD2BE2BD4C57F00398A698EEDE5223863689303604454CE4F61BA253ACACA17CD2DE47EF7BBDF7A876440CF697E52AA39658D89DF52ACBC07A20B3BDBE71D1112A1E2ECB4665CEF1E018CB64CB81B6E683610BC133E072DA72850706E2FC7BBC1D33B8DECB924A2A8EE8C02088D650DAC2227AC7F7D9537A12AC2065C143ABF3967BC0B971501A9759828EBFEF7BFFF448BA34CE7CA3C1D7BF5AB5FBD5E0F49F377E247D2A6392D8D9D74CCE468BA898D374236E8DA029617AD2724A57574D26F5573D18B2AABEBBA5FA36D3A04DA9E5E02D48E369C0B84D6C4F91EB9483B1F1D074496646CC66F4F16AD8F62CB4FB48D9EF817B98A7E5A13995396B601A2FF25BF3B0655BB8E3AEAA8C515C3B9FF18E96B13CAA3658C1D03583CDF7D1BD597BC8F0E6E0C02589384AD364DD22B0DE6035C5BF1AFEA2A604AF8BA698740014720A2AB6EC2A1B1FEAA8BA5CDDA0820EB22043DCECD187C375ECAC32A540C040E2C4A7B730B79C0031E30F53F5FA218E53CB98A254046C446E7BD0452408DEF73CA2200BB0DBDBA89A5BB590932479C4599100039730237E942E0D6424442DAD057936FFD81D6BB8EA008B4750F20A24E96E6B3301820FAAFB24B28DAD10F3A53B40C30C71A47C14854E7188BFEC8473E32BD57436BA39E3D5FAC7A7CF0C122651D71C4119385CC2D60EE2B468E9E0B7F7E6E9ADE3B9AA0415EE39314082261E68C4B02DD30C32A4CACFB0409D2F58425818BD7B5116539EE98B6018226B5E9773E845F2214C2719E48AB0AAFBEB4CD52BA9711D5E63B0AD9F587F2B469DCE51A2236F4E55E458A902F22AF073DE84193DF0B9031701AE5BFEBC8238F5CFB9011944D89E2BCA1D182F201CE69DDD8E0510FE1A43526105D55DB727E11180D4359B40BC514FF1B5F352A3948E58C16AC08A745249F2B6B94B597541A4B6513208D4FE8716E8A82F2F810A0F215ED38715CFFAEF5EEFA68985519B327DAF15DC006B2473B01BFED4873E6592B791632A7A3ADBECF7D45E70688EFD18FDF140069FB58E86BE2E379AE23C41E97E49C9E9400E456FC006AE200895EB39028247F93DF02BCEBF903824255CAF4FC0D81EA2B2BD586CF000008E528F4ED96E9B1B4CE52AC4ED68EEB3FFDE94F4FCF6049693C918E55B580360F9CD680B090256BD80985CDA92EE1FA5D9B65DF6EC88F9BF31D849A15D5BFF3713CDF51504080558A09B06A6EAB75596CBE88E01B7B394DC7CA43683B1F4440B4BC75947299781F10FED00FC1E64BB248D641810061231C70B37C0AC84A2ADB3FEC610F9B7C9676B65C318CB2E6A0EC04903192CA2A8A3EDAD046C3AD2BA4B90142C3FC95F9BADE3992479A5989BBEA2A0045292880C0BC4C6E8C5A28C4984FB43D28401C334F80D36A80E07582F5BD105A5FDA661DC60F1034E7C59F69C335ED13666D4576DA49162CC40E7AFD3FFCE10F5FDFF2304F1592E3F47EF8E187EFF801669B22AE2CA58E6800AD267CF4201C8C12B28C4CDEC4D141D193E8AAE40E18AD3F98A889E787B4EF05D094274008A04CDA39A3D3778CD6BB4634A638C95A5AB82A7A3206CA41E85987F76E47083416266263B94590E666DC9E9DF2C10F7E701A678044B1239BEC06C82B5FF9CA3520F31076C98F24FCA5F2894EC61205E1D146A1A341BAD6C44B0E9B14C0A2380140256B42F5D7F6CF9EDEA31F13F61E30954FF45198EC3D904AF4088DE6B7F2D72EF8EED8CD17B9CE58586BFB7EDBE263FC8EB30A40B0DA2A0F955DB4EF76068FEB20138F06045EE3CBDFEE9136006414FC56A0CC696CEE433A5EE4A4D322A62CA3A21F805ABF3671D660E02CCA3102F69B8976E72B6D6EE3591BAC9DD75FE3A95C520257B9263AEDB633EDB20E82B5C835DEE843262C24CB2D0B67A93DC8B26474CCA9B246D7BFE31DEF9876AF18EBA31EF5A83565A57CBB594625A800D9E433967EDF94876486E51FCE1331A1A411101AD5F7D6C52B91284164F204CB1102816094CE8BCE5A973039C79A9CEF15FCF22F65F32D03B461C13528C97864D200275C6D5436C96FB8A63157C9A55CE51A81333288ED44D6EB8DF5318F79CCE477C6B46123205B39F0ADFCC6E8D4D3BEB1139F337B032FECEDC12E01280994C99B54D55C5A4C382DCF8A70849684579442C001325A471690608B7CA2BA6EDE64191481155B62BDEF7DEF3BF5E93C7DA0B6008E1A0B8DCD25808ACA0A0ACC9B45D92FA60DAF11106D04CC1C945D871D76D81EBB4E96A869099891B2464046A064E8D592026504C4E080E1798785AC80A1E5EDA3925D034432D78D35234D8DFE8CB0F17ED199B194E879AF50284B4FFB8D0BD8761726F09C3F802AB977E7D492DF289233164A43118F3DF6D849C1B40910634F49E6F25CB3CE2B5EF18A8D806CA2ABAD28CBB13AF559C86B224520257584D00B5777F38D6B683E3A1096E2795A8687590B618C717C519189FB432D3D01C831BF115051977ED16025193EA4A7CEE913AD54F0A408CE570E914F1028FF51B5A0EC3CBA4AEB299CDBA9DD32D13CB39012C58D51D656806C45574BA0E43B462DC0A1ED08C9CCDBF9E77C823661808CC54282F10700C220688000288A18CD1DA5684BBD895FC85F443F9D5BE1D19802D7D22A90AA4915A25304E0B2E014A49B3DCB772ACB14C8B44673CC31C74CBB5BF27F8F7DEC63D74FA7DBCA8FEC7AF9CB5FBEEDB3DF77125D455F233F120A40082A0BA1AD6DD1A159A84568FCB18F7D6C1D411154C5401A86E309B93B99C62D3E258728AD273A78378EA21FD6A1FF0A9BF99EEA5012CE76B78F0F3AD6AF1288F3397CE7036D0C73C7E228D0F5C32FD94D49890217203DE669135D4D4A73E8A1876E4C0C137280CC738FB1E1CEA95C528E80B2DA84503268529DD71378F8105AEA3AC7BDA3127D4AE40A8B6973FCDF3269F941D5DD0A784541258F6374E758DB4EBBC790F00A1A8CEB031FF8C054CA6199E51C2956F98A79186BCB047EB777ECB4D34E5B5BBCF93CFAD18F5E2F292F01B2661C80ACC9FCBF1F4620E6B9C6DCDC46075E7C5DB809088054FB9903D2AA9BC450A465935AFD993880B441E37A9608906CA4A6FDED40719C554457B4B69A97F6DAC15271320DE70F589D1A5915DB40532E112571F400433D55A9C7A82D9A769C95FAEEFE12B748B0B65630036493726F0464C9378CBF8D5612904BBEC33103C4A3AD2D04487941DB6ED05A37EF9751130C6105080B692F16E0AC6738D7717F59110A2BBCD6AF3104B236456E1DF719182CAE4CBD5A1987EE419B9679091B2865E1F9BA94B1F577B2A1189E2284625B81743D40AA73B96EC98F4CE3CC42B60A75E75630B79A42DE3AC98F1020CD6FD9D500C76C38617B662E2D470D95589CD7235AD14661AC89464995587C6F3FAEC9FBF3D2BFEBD00AA1F99DF05DA79FD13ADA4ED4F8D09FB2478FDE005CC75AE24D398BFAFC2E3839E59453D67D92052064EAC0DE987F94A91F72C8218B4E7D2B47BE04C84873060104C2008857D5DDCCDEF9842882E23F80C3B91672F638701320D83637B783A45544EDB00A82CBA7D477F703E6E00984E07BA40640DADB556E14587C88D0B5DBDFBA8BAA4021A58BA68B18EDC4A760D5B6CC670E48D78E8ABE66A10019FD48C24D03962E2C8E5E3A363AEC966E9B28602A4F10AEC2A33B6A7B32421A54449343463D4021EC71B384FE01E23ABF57213687FA71ACDA1950589EBFE82AAB1A9586B200C479C602982AC285DD73F988CA84BBE353E8580FE54259A385CCA97FADD0071F7CF0DAA92FF98A51E0230873FF518315E308A9B574832A07A9D24BD0E887857080AAAEE501CE317802705ED96E257D5155636999D6B1CAE38DA1CCBF728CEF81D07D24045E5FA3C0B52114A75CF9189A3E5A381938AF44D65ABA1B87F497E3778E3E248663FE343780B59C0F3AE8A0DD286B0465BC689E59CE43DED18FCC2DC4F72540943894186896B50E1A4AC085A4D586CA1BF4117DD1B00A8C404B3001530170541CBF011E65B57C4B7BCB8D5AA4CA69BBA9D435CE2F212C20C86F182FD988F08E3EFAE8C9E28DA5751B631E019987BC01B1FEFD652F7BD9E27AC8E843368134FA8DB1E139205948E1664BA99CB5E55D96246A2A940508018C9148340510FEC3AB2DA701E6B78A8009B5EFC0A3DD965A8150A89BEFF0DE22536BEAF982FC9973C6F512E3CB6AE52C1E7616156521734096E43ACA6E1740E6DABEDB09C356D16D2384A10E45485156359F424A93C2F5627D8000ACC51B034E0B5B8235E936AC4543E51909A00D0F6D2BD5A73164317EE70B02440D2B009CDB3A473ECE388CCDF700E958414B7242A1D6CF597BB5AA96999DCB4264EAFDB624DF35651D78E0818B9435FA8E001B35766E1D9DEF9CEA3984CEA997DD8E352C65055465474A914F3B32AA0F69AB5C82AF4107AC8F80BA6560DCD76B4C40F4027AFBA9DAF528A9448D7C42B5AB16947A4A502575829443E55F8C3D4B1F01013A6A534864B9FAAA7E564E35A7ACA528756D147340F6E0B4FF6EA2239C31CF1801494B0BE7DA4D3207A4DB02F421CEA751C2E29C2661561BAA829A83265C19BDEB0853A2E69C229A0A9ACE2BC2D25E0F85610516B880E2FAC264E71A2F3F4170E3429AA262B953F5B3E82C65D1BE473801CF7CDB46EA788921CB5CB2902557B00B20F3F08DC046273E477493C98D193BC172DA84582903203CB679A500000A9C494441546D40E0046D6830E9B2F222AA369701A3255B02557D558894A9B7CEDDD69CB43660B4DFA667E3D7A6DDEE2C6B699789DFBA2FA41CC26A6791D7586A379F2CC193202CD5F6D019BF1BC3E84380FFF8C73F7E02DE388B1A4740D69F5FFAD2976E59CB1AA96BEE909680CAF408BE7BF9E2E80031200E1D9D99108AEABE3E93E9899FCED1476BEC04D44215ABF2D95F0B4FACA5ED3A2589806829B832886410A051ABF64B16A355C7806F6C2DACB5D055F060ACF6F24A6C7B9A4345D040054080E4FFAAF5CDDDC224CF97BCE425DB1617E7349605CDF396113083A7A5FC04D32D6C6C9996B081C1D45DD7FF7BF299B07B8648FF0ECF752C8406CAE8696E1BE81C030CA0ADAD0085D02B083A0F5D29A1030A65510E9F5D1365B5610E087EB317C078CA3DF20DAE693CCA2BEA68153FAB2414F63ACF581EF7B8C7AD1F2512208B160290AD32F2397DF93E77EE9BA2348070C48594B4D520505374A61A4C98B8DDEF26E0BC221B453E0216C9004778EC267CCED9F9B498868AC2082C9F41E3FBCFCC34BCB2BDB60152C494700B2CAAFA12684F20CD7F8C2B958E4B1C25B5E612202CA544312B1562F32131CA08C8DC8FAC2D644CE537E5208B880E0FA81CFD8EF6BAA5B8A5CF9652692CCEA5CD2664E2DD74D9A4598862A363A21742EC819528405B5109A03856F4C127110EADECE1C83E0B77697ACEBB9A542B8BFA334E20E62F0405FA2FFF88E2282005B1EF4A5194C2B08C6E670B9022386307C81889CE7DF49ABEE69495D037E51C736B98D3D4D82940D04CF52042EC0970DD7D24D6275080146569A3553A20F02F849F0FF2B9AC9A808BEA3EF399CF4CC0788656D55B42B1EB5C20808A5A8D2C272A8AD39E6300294C2703DA5FC83B6A38CB6E79BA4D15E6940FC93AA2C82C64139BAC953D4046DADA94188E8D2D39FBA2ACCEA33D065BDDC844DBC45661910FE1AC717CF7E6A1227EC24254CBAEE526ADA98C495DDADE429447362963543EB1A3A4F5F94A213D993A0B613D015221D43C5A862DA7F01BEBE63B7A68404F6FE8B6B691B2C89532D84A8A8E8B023745AABB0E38E0803D8A8B0974E34543F63E465AE521396E4E31FAE8B1AC381B18B896F5480CAB65B51BD104DC215B245408E95D3B39DFB6DE04166D24149C8D4EAC6BE79FD4B0088AB5058AEBE2739F51539BA681626EDA1B2326EDC99D8C398B88AAE680542DB07DC9FD21D1F1525D706D212F7EF18B77AB658D94B564119B286B346703A1ED39DA221E0369B7BB89010C6549107BC21B4178484BFFFA2ECD742D8072D6F39B6C584E0B6104A31D14A61CEEDCF209E789E8AAAB5572A9C2CC7200EE7A7DB79DB545294AA4C665FC3D5F31607AC2443418E0FC174036F98DDD643A5AC87860274E7E298EAED2C902943B4CAC44CCF980EAF66680C845ECEC405184C23268738EB5A88E407A00725B841292F74ADB63E2652CDA57D6409509BA9B74B2647D103EB002A4B57516AE7D7F2C98459B57AB91E3D31B46401A1339A2CC073FF8C193C545597B4457B14E80FCDFF021016AA206273E2FFF68833230AA37B120A68F5E0082C33DA0A5E4CCA00935270BDCE88A5009B0528B735D6F1E7ECFB9BA8605AAC4B24EE76421AEAD16D612415B8300621CE31DB51488F2B4E9AE0D7985BD2320F935329190BAC730E5D2D7E80E76730DFBEFBFFF96FFA56D2B073FFA8F79D61E20E51426DA7A392BF1270A931CBA8F82805907F336E0B273FD17DE96E8455D4DDA711AD98A1CC0F33B040A50AB92A22F9F09BA67F54659150EA3B7C65DF2E9380513A6B7325958CC87B098EE819FAF870448F5C096A91765FBA217BD68D1A92FAD0E2E9999DFE64E4AC700E94ED42AA9044170348C06D32C94622DC1CB533BD19517C13570ED17EA26A8761D160EB304E73596D1E209C83885A9AC31C79DDFA942AD8D2CA330B8501C302C44EE244C373FED968300646E21F91056EFD11A63117689EEA7DF3659C85CF873673E7E4F70A310688D0914A6560E4973DBF629E4F5246993F45CDB0089B7AB1FC5E9E3722BADF59D56CFD72AE26BD7B7DB9D55A22F8144A593C088EA6AAB2432076D9CDA0100C70EA03661175D65212DE16AC3670FC0F45F3E974A2601B356EAED00D984E452B46552F16303AF7C5DF1AE324456C241BAED8BA5A02BE6ED151D01C6E77193449ADCCA62EBE2CE1BD72AA208E7A1197D13104B51850EECEA59258BA8515B68D6CB79222B20B44BB2B57C963E0202F400C9023D6BD1BFE7DB54E5DD8DFA47CA4AC8736EEB82312B5F3A37CAF08E8EA2AC8A8B1C72E1A7EB0D50AD4AC9435D4849C4E073D48132565CDB1B5501509BAEABDD627D60D048C057F1D55F8E1CF5F0096D152A0C36766D559A096016AC2ED7BF64054814D57BEB2101D29E004F23F5BCACFF234096286AEEB8E7A0384E9B4C8285D0FEB4B808A9ADFC65ADB25CC541BB35BC3C449F40AA0315FE46490111A5B1BC6E6D1E778400A4E5D4364EF4AE6DAFFECDAA7197FC1520A4047E6F131EDA625995FDC7FB46C69D9501E2DA7CA327CA553C9DBB83B1C2B16B93852C59C0485F4BD652C3842D59A251CE8B6E2ADEE5DC1D2324935483622DF85652E818C18D7495A31F5715F902E7A3AD362C449B85B4257804CB0FB86B96F578B16215E3C6396E19729DF1E943DB94CC737E4B042B9D4459E558639445267CA33BB4F43F8FB0E6ECB36BBFFDF6DBAB67BF2F455573A072A4265A799B3001D2A35CCB21B4C7F99F75D6595349C213A6BBC1BEDC209F1120954C4CB6DB16A22D541320095D1F85D82DFF464940E3A41DAFAE65CCFA227080297CB60983BF6B73778E3DCA02761B335A0FD1B7FF8AE09F9705C83C2A1D41D90D904D3E62A4AFB993AF2A5C275989DF71345F528E40B063C809142F13978B580AB5D601B8B6EF8C49613C3F024273A3ADD65D8A9CCC47DF9239FFBEC858545D09A7A225013AAFDDF3D5DA8CB52504EF2AC62C511EA2D25BA68EB68AAED056E32E533737FF8289A2157E8FE1F91EA9C4BEFBEEBB657171C94FCC7DC9F83D60088DD6E1DDEA42E366B334B46B65ECA79E7AEAF4E44E02A6B9456DD1565B3E475F555E82864A20B324164A78809618A220F4F1C4273E712A40A2A212BF4A2E7C9A0AB4B10B30D010874EC00A93CE97609647156D0590E3557B8DC77780B8AD219FB69BCF983D8969D708C8DC124630C6C86B6C705C3D2C44AC5E43A8C259DF4D083080CAC113741A4293DC24A90C4F1303644CDADAD7D48604C7FCD67D7FDE5B7311A67AA0BEDA933E5A8377CE339FF9CC09F80204C7E3FD720D20F0158A9EC60CDCD6563C2E03D0849D1F694FF10888F6810010C96180EC4651FF05646D292F7CE10B77FC688DD1BC467A1B7F37F8B8DB04CA6EF30385A1B427D38DBBED8D25309A9802046E51D658466911A8488830AD18A23F74591B15212BD34BD29EF4A4274DD49812B5033161B10CBE8205A444D5C7580F1A1484F8AD08AB1C2405342E20B8DDDADA4E51963EE795DF3548FBECB3CF22652DF993AD00199DFDE8570CA8C77577DF460959026BE788F30841F1AF10B6B6CAF0132A4B202CA135E10302DDB4A652D95EFFFC562510EDB2C0A73EF5A9534417BD8CE32F5124609620196C1DBEBDBCC6CA0ADBFE5384E5DA31CAF2DDF3167B666F79D2262BD9F58217BC60AF1EAD310FD346275F98582E623004205C144145119529682ECD6C6789B695354C9EA5B8366DD2B6E3B48CD5014174D45319CA6BF205631DCC750507C64431AC4FD82BC54A9A53E037278275BE1548217CFFEAA288D11824B4E8AC8269545B1EA54D80D81356625A056194656EE07F015B5E4AF04ED330930000000049454E44AE426082, 0)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (7, N'Henry', 0x0313CF2E879BE5F2E7D34C19BB98301D3896702A43982F1233FBCF92F9A8B806D6197781B1FE2D5A5F1F220ED5F4F352ACEE34872F1EB33579E92FFB5229ACDE, 0xB834274B9A7A78D1039A53A711C68529756342F0872905336619898257052CEDAB431CD0F42DE69C5FA630DE5ECA816792F7B05E4A5787C7A43C0E9BC29666F20457A120B754758FF67478E3C7FF24EB96197A8AB7F90011E84E54976DFB38971CA280EB2F094DE6F3FB4E31177255ED1C7EC86F73283CF21D3196E33BB08C20, 21, 3, N'sy.pham@shc.ssbshoes.com', 2, N'/images/default-150x150', 0x89504E470D0A1A0A0000000D494844520000006400000064080600000070E295540000200049444154785E74BD07AC6DE9751EF6EDBEF7E9E59EDBCBBBAFBF37BD93331C36899648519444754A4464298EAC660B300404811103010C1B8113255602C79005C75464435224165132498F2896996199E1B4D7EBEDE5F47ECEEE3BF8D63E7766282B07B8B8EF9D7BDAFED7FFAFF5AD6F7D6B1DE54F5EBD96C431301C4F601B26B2A68EC5520E19C3C0EEFDFB08931823770A5555B0509DC35CA902CF8B004D41269B851F0618F4BBF026139C3EB589FA711381EB62D46BA190CFE0F2831710243E62358165DA409C200A6374DB1D688A0E282AC6D3117CDF83E338489204711C4351145896858269607B6B0B3B5BDBF27E672F9E871B85481205B117218A421C1D1DE1E9679E442E9795E719B60D4555902490D7525555EEE72D4A22F9CDFF9FDCC7F754951886EACB73A290CF4BA0281A54559B3D1EE9EB404DDF3B4E3FA7A7F092D2CF9BFE9DFF4FA02680CEF78B4279ACBC87AA40D37428490024E9E7D25415491CA57FD71428FFFB5F7E35314C0B71C4578E91F82EB2A6866236835C268B4C8E8B1ECAE2F4BB5D849E0F5D33910008E200BAA1C39D4E60A8AA18D4B21D0C7B7DB49B0D6CACAFA03A5F459884889218A6A12363DBE0257AE3097428D05405C3F11041142297CD42D334B9205EA0AEEB30D504ED46132F7FF345E4B2393CF9CCD3F0C200F54613B6E560381860796509EBEBEBD03405511822D154792E2F185C28454D8D114750340D4912CB0280CBABA60BA9295C441FC03BC64B8D0268AA26D71B453426975CE17A8A4112557F7B13C551248FD3350DAAA60249248F89A2D460BC36310ADF857F960D03289A2A9F8BAFABFC8B3FF9CB84BB2093C9A2982F206B59C8D8260C4D451004B2909EEFCBE7083C1F93D118BAA289A5BDC847B15440128518F5FBA8148B089204BEEBA179DCC0EA0A0D320F3F0AA1680AE23080656850A300361258AA025353E047010CD340C6C9204122EF6B18865C441207A81F1EE13B2FBE8C8DD535AC6F6C60301AA23BE8C3721CCCCDCD21937590711CD8B6094DD7118401142EB22C40BA0BF95B4C200B25F6F9BE1B174A9753941A81BB3E4922E83A4F0477F8BB0C15F1FFE982F2C4F0164611C2209097E6FBCA7B73C72B0AC230944D4643F173A9314F838E042AC228460415315444F40CBFFFC277121E19CB34619B96EC86423E0F4DD710C6215445919D311E8F65A178EBB53A62F57C290FDBB165A127FD3E0C558353C8603A9AA0DF1BA05AA941B76C28A6896CA1203BC65412C09F22AB017A14400777518462A924BBDAF35C4CA753D8B623BB2B8C3C1CEEEDE370770FD562198E6DA3D3EBE2D499D3985F59C4643241BE9095C7DAB625BFF97A27179FAE1A4F49EAB2144D97BFF1FA4E4E0E3701773C1FAA69341E0DC2D3408368B2A8DCC95C073958745B74BD3C3131777BEAD6C43DF27DB891681A8DA72F7D3E0D74621C53336836847C8D58811B2508662E52F9775F7A31A1DB30B85B4D136194C0CE64C5B747BE87248AB0B4B484C00F309E4C30F55C3967ED560BFD511F954A1959C7819EC4D8DFD945B95CE0A1C7783846AE508299C981DE30532802BA0E4757A1061E326A0C13111C5D87EF8E512C16619826C6A39118842E9217EC644CBCFEEAF7B07DF71E166BF312479E7ECF7B90688093B3E1BA2E74431363F06418BA015D4B77FA89FBE3E2F1FFB2609A313B395CA0776289226E6D1667A260B6A355D9E57C3EFF9E3E8686891106DC4809C2904633E414A52E2D8D352A5D90A2C1F55C882B4B80C1A08F46A381C67103FDE1108661A152AD7117A0DEEAA0DDEA40F9BD3FFE6252AD1661AAA96F0CA218BA9387653988A753444180E58525F1D57E1C49108FC200A6A5E3F0E81093C908CB0B0B30A0A0D36C61E7EE753C70E932BA9D1E2A7335142A550CA763E8B93C22DD86964450020F26625888612849EA26338E04F5D168F4B6CB9240170578E9C517B134BF80B3E7CEE198B1E9F426A6810BDB31609A86F865AEA561A4BBD0310D18BA2E0B9FC68A74A9F9AF581636752534D049804F17310DD8BE1FC8730DC384EFFB88C2485C587A027460F6182EF6DEC1113CCF1303F2F4D225D58F8F71787824D7C28DB5B8B888959515384E46DE8FF7E5F30554AB5558A605CFF311C6116C7A93DFFFB32F268E6D418963989609D3CEC0F513F1C5B1E7C11D8F61AA9AB834C68184A7C934E0FB2E9C0C836A1FFE64827EAB0DDB3070FBCA1B78EED967717C7C8CD5F50DE8A681FE7804BB58C2385225DEE84A8CBC69410D7D04EE14B54A59FCB5633BB2E353FFAF8A4B09A663BCF2CA2BB874E192ACAA43B0512A0AA0701C53DC9C61EA620CC3D0055D59860E43238263909F2118358D270CBB0A375E10C87BD1BFF33934981FF8620CA2402E9EA619180E476877DA180CFBF2B75C268F52A924269E4CC688A008B061FC2B954B2897CB12FF6858866F9E2E7EBE137795820443E2451C07F299E8EAB971F8FACA1FFCA7CF260CE85C00816427818D1F3E8AD1EF77E5F43896216E4D164A4F2F5C23C4146F9860D8EBA159AFE3EE9D3B78FAE9A771FFFE7D9C3D7B162B2BAB724CED6C163DD747A22412281DC344389E20763D542A4578BE27BB92A7849F2193C9C862B57B3D5CBD7A158F3DF6D8DB10B656AB61329D20448442218FE1702006E17DB66D435512717DBC65B379D9D193892B179CCDF234A6AF3D180EE4354BA5A2C42CBAE4D1782CC6E1A2D38DEA862150999B95C041A7A1053945888210512491FDED402E2E8BAE4D55E534F25CA6608F303C82A21010688818D815BAC2044AA4228E006F4A83FCFB3F4CB2D9AC1C23412249221F5802181278EE1449E823E2C53896F868D35065073280E9090DA3C1314DC907BE77F54DD88E23F1880BB7B0B0803008A1E81AA661987E404D45F3F8081A7D7B10603C9DC87DD96C0EB95C0EAD760BD54A15C55211AFBF71059D4E07172F5E14D7C485E442F5077D242A605A06AAD50A2CDB149791CFE7C4E0EE742A7904AF2D8E12B89E27013651B9FB1DD97CBC7137F37A19E48977B82924B808B24AA1B104782E1C616A24783785BA84B3115D20246610CDA537DEA12026A49E6D7009F24A9CBA4E5E471CCA46569208DE989E22441C02CA17FFF44F13D79DA25028C8C5F2B410A5A49F29126B4FC703F93034C6EAF20A343D920BA68BE9B6BA728C99E431B8D120D7AF5F97BC801FBA3F18086A231A0BE2508EF45CA58CC0F790B11D8C067D68A68942B128C798AF5B2A95512C16301C0EF1F56FBE847C3E2F86A57BE2E2F1756970D336C44FAFAFAF6130EC61AE56836599307415BA4648C95D1CC3B02C688681982851DC471A981994797D8292B8526A9A37A49B26757169404FEF13044783D058448074777E6A041AE3C4987C4D828E444BD1159FC3DC4700024181427415C15081C0F530EE0EE14D82D4202F7DE1CF935EAF274794A7824827F07DD88C27469A2D0FFB03B853572EE0D4FA0632E50C26DE442EF6FEFD2DA88A86E9C445B3D1C2CACA1A5E7DE5159C3B770ECBCBCB302D0BF7EFDFC3430F3D8420F4907332F03DC25A5BDCCC71E3184EAE2000800BBEBF7F2001BE902F60776F0F2F7CE5053CF1C4131238797ACE9F3F2F0BC060CBFC2345B309018DC410BA302E96C4F959502730E10EE569F0E248E2233D3CD79E9F5D372D593CC45E8AA4B8190599A58785D856763817564E478C3808E53368718AB0DE4657348CAED3427282E5DF92B4A42FC6E7468996C2E8C0C3A0DFC3B83F42E4C508FD18CA1B7FF5F9A4D16C4882255480E789611818237F0CCBB605F276DA3D4C5C0FA56219AAAD61EABBA8542AF08350821A772C77F6A83DC29B6FBE296E85491C4F0763C0E2E202A2384485860F98509660581ADAFD9EC03E3E9617B6757F4BFC3511C7E73FFF79544A3581DDDC6934F2C9496EB75B02772D335D9030F2E56F041C042827095E9A6FA47E5ED098AA0B5465D0555566F33A927886B8C877486238A341840AA1CBF2E8AB52BA248AC45BD030A445223F7A1B859D2036C6198DE88FF14C5C193F439AEDF3B4686ABAA6FD410FBD6E17AEEB111A0865A3BCF2D93F4E5AADA6B802EE20063E8180C40FB107D3B4601202C740BBDD45A15042A150940098CD399297B882B86C71174A64E0F537DE90DD7EEEEC5938998C0478223206C8422E0B53D760D9163285ACF05244319B9B9BB2CB767676DEFEFDC20B2FE0877FF063729AE6E7E7C5C8273B9106E189E0690A024F7670B55249B3E38439085D11E16D0A2298E0D1257261248F0899370071C8656216AF48F0A6BB4E13444D9E434B1A06733CBAAC0431E320DDD88CB34AC0D7E2737872D2D32AAE4BD311CDB8307A09D24D8C657C6F4B37301D8FD0EEB631712708A2048A3A4366D7FFEAB349BFDF13375529976537890F4C42584CDE0CE27C55E893E1C8456F3846B132F776F09F123A46210C4D836958884D03376FDF11C8B8B6B12EF9C0FEEE8E209462694E782F06DEC97484A59525499CEEEDDCC7C6A94DE1AAAEBE755512A46BD7AEC1733D7CFC133F81D1A087CD8DD594DA505468868946BB2D9BC85281D01D235FCC41B72CF848902133E0D8984E26291C160499D2274C5225AFE0E2843194444D89441286334E85A78031813B5D884E82A6190D328BDA7272E434CD827F4AAFCC80C02C5B27243EE1E4185F05C18AE78B85F9188DC6927FA4E4231FAB41B9FBE5CF259EEBA2DBE90817542A1625C7B088EFD504861076BE248AAE1FE1A8D9C63888519B5F10463308FC945E09428943E324C171A385C1240DCE4B4B8BB8FAFA6B387BF60C14CD94A0ADE92AAA73555274B28B0F9B75F1F74C94B6EE6EA3DDEEE0D5575EC5F3CFBF1F9A69C1D655CC574BB04D128F801F4618B9BEB8836832C2A9E59AB8DAC432707B7B1B957C1E2B8B8B88435F361477BA4E984E284AF42371804C4E2C1B270989A2C827CDB2EC24F5F5744D743791120B5C3F4928D38390C60D6396BDA777BD4392A54968CA1AF3FE197323FF0EC208BEE7CB69E1E94C5D21594605CAD157BF903041A2DBB02C5BFC221746E70E214B1B7A887C5FE0A31F25E80D4768F6A7428E31EE8C0703315EE87B30751D49A1884E7F809DDD03CCD5E6C1A4D39D0CB1BCB488BDA343E89A21B1A7565B90A04894D4EC321EE80220DAADAEEC5306F4C5C525C96D9E7CEC5114F359A144DCC904C7CD165CB2CEBA86F5E545640C1D7EE0A2D1EDA2DE6EA35AC863A15285E358A9EB11179C32AC9A3DDBF534002972454F5D1963091197109A69F0E629601449D4E46D83F0C3D13DCA0961AC999D82130E2BCD4318AB98FEA4F90ADD60CAB1A5482D09D39FF4B10CF0A93BE46750BADFF85C42C631354A17D5EA1C02EEF66201813B411C78D0249E2450754308B183F608FECC17D2C591767788C68643E8E539343B5D1CD49B9257C451808D9565F8FE1489AE0828E051E5CE241F44FF3B9A8CB1BCBC8846B3896EAF27F1653C99CA6E5AAC5651C8E71086848501F2B9ACB88AADADFB12D437D7D7E09836C6E39130C0411C090B50CAE525BE30792573C805263DAF5B84B242C9A6AE4AA531594630C462620CD247B3CC9E0C2E7324BAACB7B7F9AC9E22C6E3BF6970EEEE19959F22B50451C2BC6B06D5DEE5D254A2B5906020455FDC182907AA42997EF34F0533C68982C37A038645625C15D4C4A44D4D023929F4DFF2869A814190A0DD1BA2D56CA2582CA15CAAA480C0F3315634EC1F1D0B9DCC5D4C9737572DC3D455144A79D959CC9AD32D94E603DDD150F21016A99ACDA65C1C5D210B4E4BD52AEC8C8356AB2DF51262F75EB78D307061D93A6AD51A32764ED8801E1967CB40CEB2B14018CD3C80852AA6C1492C4063C61F8A8B1486555531F583F47A1316BEE8A6678C45C493A3888B3D415027452D013EAA8AF0FB08CA342994C7701F48C29ED66424E29CB82F22A430DD8CE2E5667511716DC1D7FF63921A8AE740C5ED7BF7B1B0B822A9BD464A5B5760243E6C833B2A82A26A087413EDFE08D76FDE42BE50C6E699F308626E3A0377F676051ED3B08D668B0C34D6575790B14C711D445DBCC883FD7DACAEAE4AE2D81A8C319C4C6457869E2BB0D5320CACAD2C23EB18E24A7A8391502471E0A394639E6243555938CB224974743A3D790E730642E1AC107969564DC09172484CD4C8232552C4622C0219042F486B29491A0FF91373B1621286747BEF18E464C3CB6E66C63D0BF627863A319CF847C37CBB72C99397C62E12A6610A9D674C0003BA00026E90F81B7F94309750740B5E98A0DEE9613C71512A5610BA531433160A191D49E00AEAE087F0596CD274345A7DDCBABB8385950D14CAF36874BA18BB63B43A5DACAC6F48D238198FF0C8830F6079611EC3EE405C8FE3D8B87EFD2A1E7DECE1D4D5B831BEF3BDD7B0B6B88C52368341A783D5C545D4CA65140A363AFD11760F0F85105C5F5E40A59085A646D014BA1307A3B18FE1600CDBB2605B640CD22C3B8E494784723FDD151D8CA16510B098940053268C3A29721F8E63C0517CA15488CEB8698AB97CBAC39965BFABE4FBEED3E2A9E9293BF9FB490E937073693364F576B531E5B454C2724938D3E4F40466F37594E0AFFF43C29C83797B1001830078F5EA3D9CBF7419463445BE90874DBA81DC8B54D2E867D2046B309EE0CEDE21F46C0E306CBE0A2AB68D1B77EE205F2A61FFE808EEC4C3938F3D8E90CCAE3F925342E6B8D7E9E2FCC5F312778E5B3D8CFD085B3BBB029DF9811F7EE012F259079A6A61EF605798D18CA563A55645D6306048DD1D1846117C43C351A30E5B51B0365743984CA112207426B0AD9CB8B99CA34157D28C3D88744C7DBA220BAE3745127BA8D52A69D129F0A47EA7B3866391EF8AC59D0BF69DA1306E4A09EEDCD52CBFCE5C949C0A2963A41E2756CC1394FCFDBFB9F0B33AFFDB278BAF45134DBFF40789B8C83844A26898441AAEDCDD135AF9FCD97528512464A24D6A9B3E36A263D310268A243EFBF5267809DDD1449E9FD135F4462394E6AAE8F587B875F3162E9EBF88AC6DC03122CC55E6C46590D656754D78262651F5660777B776912F96A4445CC865442C417FCE5A8493B550CA6751CE3AF0C623149D8C10748C46A330C2CEEE2ECEAEAEA0E238E88F7A0812A032B784F1946E08704C05D98C21B51C457370DCEC6134F1502864C5FD85BE2BA081949163EAB00895C94709BFA22239A938CE4E8A9C37128C52464A63C6ACE295522412D8ADBFD3207CCEBB5FEFDD905909FECBFF9D2852BF24C70278098DA262F7E018F9520E856C467698A52B50E240B26CB2B72CCD4EFD1883A98BDE680AA750C6BDAD6D4C8623D8B91C36CE9C46BBDB97448F08ECA14BE7B1319F85AE9BE80FC65075138D4E0FF952115E1008B26BF546E8F487020533549CE47228E51D6191B9F936D656D0EBB424CBBD70F6AC30BE47ED0E469E27EC704ED3B1502C906D1717DC1F4FD1EE0D502A1791CFDA48625F58DDC9241037C89DBFBAB68261AF8538F4C4E0B96C46AE9160842567B98900E11D9F9FE623E99F24F398A1AD93D391FEA61119D3FE8EDB2CD0BF9D48BEEB218AF7A5DF971C954913AB855E9040B333E80CC6D86B34B0B4B480723E27F9880E62739274A66498090C7486238CDC00F952058D661BF95C1E47CD06DC3014B54AE087D8BEB785F7BFF7699C5F2D4B519F3B9349E271AB0BC371042276BA5D64F2151C1E37854464B14B206BE44A0E51ABCDC962DEB87943542619279514357B3DECB0DE5EA9A29CC9E2E2E62951A30CC653749933F57AB0A56C405012204F280ED2DF4093A04383C42AC7D2512C6404183029A46B4D0873244D279FF5FDCA8877CB884E4E0737C289A598A9242204FAAF6F7457BCF135DF9D4C8A6D83AFFC9B94AA9717A33FD4309E4E2526EC363AE2E3CF9D23C31A4980241BCCA3CCC5F623057E10E1E0A805CBCE22932F90E4C4D87571F5E675B87E2090F870EF10F3D5227EE0D9272551E209F182D445864982DE7804279FC770E4A1D7EB8BEA45A56C4855843221B543440655C38BDFFA16DCC8C7DAEA2AD66AF3D8DE3FC060EC62737D03913FC5C25C0586622051555CBF7D1B07F523CC55E79067A5D1C9C0B1C954BB68F73A28168A585A9C87ADE902A3798D4C4E255F99B1B492411B697DE3FB9014E12DEF9BD989C63831485A45E11DE9C9FADB37BAAB13F38A41E8FA4E4ACDD197FF75C2FF84718AD389327CCF8317259826169AED962CDCF2CA1A86A389540B33594B30343FEBC40BB1B77704C370509D5F84A6F85280F9EEF75EC578EA098D4E8AE5E8E010EF7BEF53C86767C865A693EA53D2C31363B0B61C606F7B1B9B6BCB58AC96441FD619F424615A58589478B37D7484DE748CCDB5358CEA6D7894D8282959C91A0AE99283BD7DE1DEA8F5DA38B58ED5A51558BA8961B78FEDDD1D78A18FE5D525393584E35902096AB98C348B971F40484DAE092B936962FE8E514EFE2D5CD6BB5CD7499EC345273FF6771AE4E441B33FBEDB7529E157FEB7B70F235D1F8566E47D18D45D18020F770FEA18BA2172850AEC6C1E95525EC883F178823056D1E9F67170D8C0A5CB0F404580C17888E17884DDFD7D3CF7ECFB90B11CBCFCADEFC8025C387B46CAC194E2F8512471E6FED1B1BC4FBFD7C752AD86472E5F8016BA704C156E0C8C2701BAC3296EDEDF42A3D74365B18A42C686E347A95A50D3444840F694540CFDFFF2F2120AC5BC249B544CB61B6DA93B5CBC7016A6A90BCBCA4C3FEF64255E898881C4AA540C59BE66FC482992904E4EB2F077B275DE9F42D877645E6FAFFF0CD2A6D9771AFCDF7D1303C8F3F916335436735F8AFF5F7E2F498934E6D6B1D0CC4944CE344162E9524C0915135EAC63FBA005AA4817E7AA72DCFBFD112C270B3788F0E6956B585A5A41B95246ABDD44A592C7F6CE362E5EB80CD3CCE0B8DEC49D7B5BB8787A1D73A59C18641C24D83B6EA133E94B0CF1C72E2E9CDAC4DAE21C1C83400248AC125EB972075F79F92DDC3D6C492217C7633C7C7E134F9E3F2BD094C92BF3807CB1280C411CB8C8651DECEC6D616EAE0255B730755956B0B0564AA128CBB82C66F1A651C6C3EA1DAF5F4BC9BE348F49E59E42BDCCEA24E2E7673B5CEEA3804E8ECF3B4B2E088C29C249E43F0104338DD8091B963E2355FB9C1846095EF85DB1918499132B315E107919A41A745970C32920885574FB036173291935CC8CC48395B5536875FB383C6A48DD2393B1B1B6BE8C7BF7EE8AC860716105AD7617D76EDCC4CA4215E736D784DD8C540337EF6EA333ECA35C2AA1D76EE3F4EA32966A25642D15BA1A61AFE3E18B5FFE06EEEC76603A25583C19B6824E631F8F5C3C8B471F7E404E6CA7D3C2C4F525FB0EC62354AA254942CF9C3D836EAF8F7AA38342BE84D55A4E681E9694C9E4A6DA2D965735446A2AF93C3188FC4DB2EBB4A49DAEDF89394EFC4D1AA0FFB6185282FAFF1F132CACD1DB2FF88E51F8AFF8ABFFAB94D344672A1929258E69754D828F3C8FF511FE4AA5906EAC62EFB02E86595CDEC0DE51132B6B9BB87EE32672B9822809B3591BBD7E174787755C387F19A3F1145EE0623CE8E1C9C71F950BED0FC7D8DE3B14828F417A7FF73E1EBA7416A59C21C6D0D518778E46383CEC42D38A2815E7A52865EA31DEBAF23D18962286A76A657BEB3E0E8FEBB09D0C1EB97C59E445B9624148538294C3A33ACE9FBF80ACADC8E9E0FB3366707959589B7A9E48964E02F789ABA1F118EC59884AEDF1FD718109E0F7D3EE27E55AA2B47750D6BB1F93D2F9EF1244087532B377F4F5FF23118A58D4D79AE4172CB18A194E324A6A57C3303DC6490C3FD1A01A26F60E1AA87706881203D942159E1FA2DF1B8A886E6D6D4576D59B6F5EC1030F3C88E3E3062A7315593852F5ABAB2BD00C4BB82C4DB3E43D5BCD43BCF79947512939CC730125C27E37C2A83385ADE6E06819210CA3D04577D086A704507426671116166BA8375B989F5F44D666C954C1D1E11116975630188E512816A42C9C202D51F35A58E062A148A4432C62CD4E0CFFAE53C5C99A394F0E17707606FE2B83B098FFAEDB3BE889867B87CC146271169362269C276E2F4D64663FCCD45FFE83847E53FC9EB0A2525A49253369CD44029A28C759A4998996C91007918A7A7B88EEC8831B28D04D1BBB3B0722CD39756A0DA55201F7EE6DA35A99173675EA0EE5A37FF9AFBE243591C79E7C1CC3C110E3B187A3E303544A597CE0FDCF88A7340D26A0016E6C3531AC0FA04C0147B5301E0E51AAE490ABE4112821FA933E36CF9F467BD0910AE3C2FC1298DAF0848E47AE686727CCF84D1DD95C86EC917C0681B5273B5E812808D3560352252911992A5014A147C4559D64EBB36AA1ACE54C4EF47D5699B9369E9E93DB0992929327CCE249307FC720C2F6F6BEF347090B50A21C347409EC3CC2523B16697E4A23A715B594AD24AF252E0D26FCC440BD354467E8096B3AE88D31990C71F1E279A90AB21C3B1C4E44C6339EF4258FA91F3770FDFA353CF5D453188D86521ADEDEB98F471FBD8C871FBE245933F3819DED3DDCBCBD874B1BE711763D988986C07361E52CA896860001FCC44761A18CFBBB5BA854E6B0B4B0846C01180CBB300D6A940DEC1F1EA03A57866EAA2265E2A2F01470F78B9CC83445D5DF6F77E5E42C2EA5D259A9EFE83A2A84F3646EFF96BBE252C633A1F5497C3959DED480EF6E6D4837427AE33ABE93EAA7FF4EFFAFECBEF885A4D76962346CE2CCC60A0A8E25D097A7012677928A900B64988802564AC8A452B117B0FC062F52D11DB8187B110E0EEB08A654AEB858DB58433697930377F7EE3D6C6C6EC03415D4EB0DE43239B4DB6D785317B95C9EAF88ABD7AEE0B1C71EC5D90BA7A1E88A9464AFDFB88E7269098BB90AFA5BC798B607A9482263609004484A45A85A845CC1841F7970D85F42F1763814A697EE8B954BF22ED4D652CD4210DB6A77447F46F9276F143DD300F76EDFC1C1F10136CF9CC6952B57616A261E7DE8312CAF9F1683308E302510D7239E222D7E89E778371B2C2E8EEE9DB4FF8972256D61483DDF3B213D3D39EF984AF9EE5FFE597274B403DFED637DB9867229875EA783C58525944A55284A08153E2CD6B345B507E846DA3B42384986B8DD1D41351DDCBBB78561A72FB58962B92C5252CA72B6777670FACC266CC7C4DEEE2EDC898B7C3E8BE3C34359A8416F84FBF7EEE3277FEA93E853166A1BD8DADE42B55641756101EDED631CDCD8466BB72E27A7385FC65BF7EF232ECDE1A9C71F44C68A71EAD41209688C27146BFB12172894DBDADEC599B367515D58941E967A7D0F2BCBAB42FF70B1E896990C77BA6D8C2743BCF4AD97C4235CBF7E038BB515FCE44FFC0CE69756C48DC5AC63906E97F896EE686DC657C9069EF59650A1285D56B2D0B3FE92F8241F998923DE75DA4ECABBF2FC97BFF485646F6F0B8DC61E2E5EDCC4783440FDE800972E3C88B9D22A742D41C6E13127023BE928328400A4BC85197BBD4EFE29C5F437AE5D17290F85C7B5F99A48860E0F0F70E1C2456917A0243FE358B87BE7B630AF972E5D408349DB748AA79E7C125420439DC90000200049444154B11C1E1E4AF997C6B2AA0EEE5CBB8B2F7DFE05CC5797E1C7C09B376EE0DABD6D64E79670E6D4121E79601397CFAEC19B74E0D8A9EA9D0922F30B2A25A92DE345532B40C444AE8CD0964661723B9D7AC8643378E3EAEBB872ED2D343B6D3CFCD02318F727F8B18F7F124E2E27CC74DA84435BA46E9B053B3571D26D2F5EE764ABA7BAB07790D50C1ACF8CC226A4F46F3392457460A46254289FFFC37F9BB4DA7574BB0D54AB790C866DB67188E06169E1147C2F443653443E5786A13B028BE916E85B2907A5A08E7E7D3A1D4B9F08CBAC77EEDCC67834C4743AC1D2E2820005561A8BE5B43E7E70B8835EA78D7E9FB94156F2072793C5A38F3C863BF7EE43D72DE40B4531B25274F0175FFC0AFEFCB35F063B4AA641022F8CA15B0E787673191D1F7EFE093CFBC4652C56B2B874661DACC6D2D572037881270BC713CDCFC30E2E9E886C26272784B5F49B376EA158AEA0379EE0C68DABB87AF54D340FEB58A82DE0633FFC713CF2D8E3D02C53603F8B5B5279546309D9D20AC80C3F8DFB72633C4EEB27C60C24A5DD5B29D2E2C3C983A4F098F7A43AB13095A6FE9FFFE277124A7FA8C3EA76EBF0FD11548D12BA4838A96C760EF3D53328165710FA6C19630936159FF18519804936EEED6EC1D40D81964CC846FD1E923884E74E502D97E503E6CA551445B0E0A1D36AA2D93C96FE127641ADAD9F422E5F102ADF72729274B2F7F1A5B76EE06F5EFC36866E24C6F07DE627C48D0934538769A930F50467379670F9CC3A1E7FE8222E9D5B422E63A258CCA50267613C523DAD787E290E69D00D535C3017C2F323BCF6C675DCB97E05473B77612AC0726D1EC55C010F3FF90C8AB505D8C539E6F2D0247F89049A53A0CD654D77B8C8E7662A13F699A869EF87A8E463E1FE041890297F5BB01D49BCA467E06FE577FFE5EF2414C951BDBEBFBB054DF591CF9BB04C550A4CBA9EC7DAEA035858380345CD086AE17A502EA42B093C6F2C02864EBB018AB64D3D2314FCA8DFA578558EB63719C3C965912997512E95A5C845774557C6E650C48188EAC6AE8F58B3A1180E72A51AEEDCDFC27FF87FFF33B8E5C7F4DFCCA23D174618606D7919BAED4869579113ABC2D135AC2D2FE2C3CF5CC603E74FA358646B1EA4ACCB1848B74470C27C8B3BD5757DE99BE4628D271E8EEB75D4B76EA3B7BF858BEBCB70340593411FC5C50D38E54558E5458C420AA9995F243059569C51E9A2FC91FA3AF70A5BF1124CA73C959EC4320AF34EC4DDF46F22049F3502A5CA132A631228FFFE33BF97749A6D749A4D8C071D2CD74AE834F7A4AE9C33AB7032659C3E7D19A695453CEB324AE11C44FECF22CE683C90CF451142AF35C6F2D21206DD3686BD36E64A25310EB1B75D2A0A09C85E4643354461C29ABA3B6C0BC45C3B7D0EB1E160E0C7687407F8EBAFBF84FDD688A91CAC42966D36D0BC092EAD2DE183CF3E8FEFBE7E0DAFBE7503816601BA29B50CA2A0CB4B557CF2E33F2CA567DD50E404AB6A24593E179FEE96FA309E9294FD4EFDFDA057C7D19DEB58CAEA08DA8798CF6750CC65D09A00815D4279ED3C5C25835037535043DE8FEDABC251A54D9D043C52C689434CDCA9C4D8940F235A4D5526EC1B9969B95374C6F336D30A2BFFFA77FF79C223BF75E73A72548668060E8EEA925071A71291ACACAC2397290209450E6C03A68D29F51F2049A6988EFA50D82B01A0CDDE42BA1C4DC3B03740A759C7A54B9744FDD8EEF6842AAFCC2D8A64286B1950A200DEA80F8DCAC888DD5016624DC35F7FEF4D7CFDAD9BF0C304F3C51C8A1907DE648AA2A1E2973EF12139617FF4D53771FFB08E48331189B224963604CB8CF0A94FFC282ECCCF230903AAE1A44269AA86D4CA2984662CA0908E3253043EF424C174D4C6BDFBB71084531162B09E512C5680D842ADB68888AECE3453E57A18434D144C45489D0664C62ABA2711D0094796B69A8B2E38744593C0A29B171A5221751C36EAB8B2A935EAC3D841F5997FFBCF9376F318BD561DD90CBB883C4CFD0896CDDDBC896AB5260F0E022E786A59C968453C4781808BFAE1BE047656EDBC4015C8C9DDC976383674328EB0C7838BC2804C9F970491D0F0D311958F0A0276A38694F21BC8968AF8F3AF7E1357F75B52DDABE46C64D846E7FAC8EB0A7EEE879F1734F8992FBF82490884AA0157E8F2587A4368908F7FF00378786D5DDCAAD489540D06D8F7AE48ECE189A5329F6EDF661D288E31EC37B0BB7B1FB55A491055B3DE16439899AA6C98091368AA33A9C39546A5B4D95CB26F09DAA93A58243F92E591ED48372A750B96C913CAC29E07D7A71281F1CB930D203F810BE55FFD0F7F3FA91F1DA154CC0B99D8E98D51AAAEA0B6B8868C950AE0E8DF4E3A4CF95B6816F23D22448BE14DD932ED4B5D2151B348D8EEAC715778180DBAB0D932C06E2BD3114A46345F04A00165AA9EF48B24AA0155273C4DA06532F8ECD75EC6CDC650E89CA54A110A2FC4A7001CF881A71E1079D117BE75153032F05985915E8F444E80614478EFC30FE2D94B0FC03154446A4A0D523C41D90173238ADF2A65F6D8C7C8675285A53B1960EBFE6DACAD2FA198CB616FE710AA6AA2505B15B84DA353DE3313904A5E6672774BB3689AF09D349A525A456BA7CC40DA324D4680C6194CEA68B4EAC8E5CA69312C99C28F0780EA42F9ED9FFE48E2FA53CC55AB507403EDDE141B671FC4FCFC52AA1712865791A4881E936F2EC23312278629B1863050B0B9E88C2C2009104713684A8841AF2B3BC9723250681005D244EABB13518E131EF3532EAEAC61E206D21BE8148AF8C3BFFA6BBCBED716577271735558E2A997F6CD9F5DAEC873BF7367179162C28F59A4D25397C0D2AF059C5F5EC28F3CFB3E211A432592E29341841427B02C0396A948CD84963274B66087E23EEEDEBD856CD6C4E6DA8674344D463E4AE5253138CBCD6E1888C7E00FF5B9EC2613D5E3AC4FFD645801911BCBDCCC3C456897BC1DFF319CF6647A85AED982FC86E326FCB8871813289FFEF0D349A54A4D522C2E6561E534E696D645A16D6A7C432E7EDA9AC51664118581B33A2054BBE7527E491CCD56624E2920C5E021F007724A266CBE0C15D9615A262F3B3C679386F1D06EB624D0658B05C98607BDA118B33B9EE24FBFF66DBCBEDF43464970F9EC0686BDAE68B7F8194B0E29780557760E91A83662D510BF4EEC4497643B1AE63359FCE28F7C0C96C1457485405723BAA9026C5395FB99A0B15376324DB939450BD16C1CC9A95E595842B558230084014BD86DC2648FAD178609533761281A7C514FA6721FC685948A497335067A6F3A49476C0469D30FABA6816AA233E88BAC8A6063FFE01EE27882722507E5D77FEA236C79171794CB17B1B179011337F581BA9ABE018501D2639D50731B4253A782282C272F4923910B4BA5A4B00D491CD302F078D843BF3B40ADBC806677042D5740C13631E936A55F5D6680A83ADC2446265B9093C4FCE1B0DDC5675F7C0D6F1E8F50D635ACD4E85A2274D9491BD3E83E0C5DC1617F08C3CA21564D786E009B015D4AAD3172AA82DFF8D4CFC3D0228CBD919C10D68929C0702C45847331135B3B8311FBFB00F40775A9963AB68172BE80516F0AC7CCA152A8C809578D93EED974980093603B5748175F4682B05B804210F6C91B293466AD1E11A68336A6C30192C8835E5A11C5E4F1D14DF43AFB40EC4A29991492F20F3EF97C52AB96C557B39BB65C5D44A25A92C4781E957F16E6E717A01B1642266554AD474371596CCD626790EBFB42E665B38E30C6BD5E1311FBF5B83398854E2378016095CA3090A09CB5E14FA672F2D89535F43CD4169644BF457772D81DE04FBFF65DDCEEB8D0430FF3850CF2191BDDA90B8F44937431C5E8BA53E86646CAB6BE1B48A30E6308D78706F927BFFC4BC83A2AFCD81711843F71056131B6D19D7AEE48287EB2D1741D6483A938E9F55AE9F001CD81A35349A3403354984E0E515AC993A4B75CCC235B5810E3B09E24836FE839B259A19584D50D7D4C871DC4DE10FE78004D89308A73983080A3836EEB3E16AB45E4AD1CB6EE6C43F9CD4FBE2FA120AD28884313C2B0585E409470CC11E341844AB9945A5F68021D2A05D80C8CAA8E585A0A7C4CA703D959893B46B3D3928E5B36F63329A41B91A0C7A01D46124479E4D54445AFDD4575610DF30B35E9A4856DE3601CE0337FF10276DA23449187B96C4658E8A13785C7DEC0842D613E26092713A54886B980C939269C0204A06CEAF8C51FFB28E68A64A45D11DDB983091435F5ED53778A4CC642E00D91046304BE0BD5CCCA84054D67A0256A5C421CE5D0EE50A847E1C46929A6B9EE04BD6E5D58665D2DA799784809912D525826C634DCD8E5240C0FE3610B7130C264D41395A4E554851B3B38B885C06D63AEE0A09CC9E0606B07CA6FFFE87349369B91FEBCB98505F486130CBD08A74F9F41316BA364D928DA19F1D18497F70E0E71D06E605304691924117BD927882217BAAEC01FB431F1A6188E86C28C469E27C756E445EC179FB83297A4982B494BF06434C1EAE90BA23E673F45629A787DEB005F7CE975ECF7A7E2AA4A962502EBF6B08F490CE49D22BAED3E7C85AE31A523E8EEE46756E52CEA0A7EFE633F80957966EB0986FD3EB286835EAF2EF0754A77E570C48525FD948C27744B66A2A368AB30CC04E5DA2286AE8276BF8980AE48CFA15A59940CBFDBEF6069791E152B2771961BAE5C9993462641A4AA21E2F37EAF05DB8871F7E65B501217165BA3AD2C022586EB0D3018B4616A1A2AF9228E58CEFE979FFED12497CFA1D7EF6112F888750B9D918BD58D35D95D67E616617B31E6E6E6D1743D5C3F3840BDDBC2FAFA06364F9D8137F5A5B5D7B63438B689D6FE6D9186B21194E45E1284C8D98EB8BE890CB389512ED24502A3C1407677A65C957AB61F7818F921AE1D34F1D28D1D1C8F42696C295B16CA852C06EE143D764EC194CED96948E23096CE2DF1D9B3F49725E49A63E2438F5E46A56040376280B12F525099CB62EFF00089A989FBA2968BAEB9D36DC98959C95550657531AB621287680C3C19E3D1EB76B030BF06D328C2B2F3A26DEE0E06309514CE5207460295D54936C4DA994C8ABE9400A69160DC6F62D4ADA352C8C12EE4D1190D91685A2A188C5569DE614850FE975FF96442684B35C79839015491FCA8B68E3367967169791D650E2C6356AA6BD8E97571EBF62D446E80271E7F0AB669CBC25269C2CCD74A86B871FB16EACD263AEDAE64F0B5CA9C1082D4617137B399666F6F4FA03293C8EAE2B254129BAD06266182BE62E30B2FBE86DDCE046A1863B15442A990C151A70597C8C68BA02B86B845EAA278E122CAE6CE240D12BAF881F73C818F3CF908BC490B9E3F80655848DC004134C53870317007500C0DD57926BE3CC1CC9B26582B2C62399FC374DC121ADE4DB434961A06724E09B5B955A87A1E66BE0A2B534083B3604C1DDD6E073B3B5B328A84D38C027F22A4671079C8E4E9AA27309418B13B95584BB844E567A458188EA6C23E1FEC1E42F9BF7EE757122659F4916CB2E1C087B19F60797D0D4FBDE7092C958B506633AC7C2DC161A7837EB78D839D3D512B6A096598016AF355147279EC6F5FC1C1F1B1248283FE109117A256AE49CC20A292314A812FF25076E092692E542A180C86425B53ECBDD59DE2E59BBBE8050682C9084BA512E62A456C1DED6324B3450CC9BA09B74FBA654F7A0379628A768C1F7EF6299C9E2BA255DF16E521E39D41EA478FA0590A46C1082138E80C52277119EBB4008AAF61B15C41568FA53F26F63514AB458CC703646C0EA471A01805CCAD9E87912D23D0B3B326231F8DA35D0C3B0D246C69D098E024680D7B187823E1ECD827197BBE68E046E3094A55AAF303A95E32B9EEB49B50FED53FF97432A0D0D9E26405EED21EA67E82F58D4D3CF7DC73692E31E90A954D1539E59CAA9E48C3FBB03FC5783445AFDB9376E75EAF8BE1E0101391D4B02C3A46E885982FD750CC719C465AAF6F34EB121839AD8EC2BA308CA586CF8CD62E5571F3B08B6FDD3A4037D0A0FA533C70EE2CD424C4DDC33DF4393A49B56423101189ABE2A998CDAAA2DBBAB45EC2730F9D432D6342897DF42603A89A09C7C8C2B08083C62EC6FE00AA99087D3FEC0F85C72BE54D38A449541DF3C50C6C3F46D8F151F7BB187B43291D28AA8950C92037B781DAEA5964B432107AB09510D1B4073BF1104D8670C952180A765B75F43C17236F024BB7902505E34D4413AD1919D9A40BB52A92708A375FFF2E94DFFCD487128F1533278785B905D1BFD2E793507CF2A9E7D1EB3570EDCA6B281432B0B3B6CC0C31320E2AD5B29479656C9364DC23490E5BF5FBA837EB68773AA24A27054D815ACECAC3D1D9E41F80A33CE8731D272BEA41EEEABC93C3DEFE11561F7C042FDDBA8B6FBE71032337C2F9BC8E4F7DFAD3F8EA8B2FE1B55BB7E125D4DFAAB09DAC245A52109D0DCE14FA080A9EBEB884F73F7C09A7E62AF0BD098EDA0D54E7E63057ACC0B154DCBC7D2BCDB8CD0485B28337AFBE22F43C89C672B904DB32B050AC42F75474F63A38F29A48CC442A8D84B2EC490CA32C1E7EF879047109198B944C8864DA951F5BF1D1ECF730342DECF75A480C1D79DBC1A4DB172FC2348189E678ECCB500632C4CDE6215AAD6328FFF4377E22D9DF3B944EA39C93859128F8D0FB9F85A1DA3877E9115CBFF206AEBEF90A72791B4E3E279DAE14384FA7AE74B9129DCDD7AA38B5B121D37FA805A14F6780E6049EE3461B77EFEEC8D4D271BF2B2D0032922264FC70A4C49ACB97D0AE77605A79A0348797EFDCC377AFDD84EF013FFBFE47B179E122BEF2CD97718DAF9368B0D957389BD2938EDD4B4BA727D2CFF75E5EC5DF7BFA713861846EBB0E1FCCA64D540B45ACAD2D62D09F483C7383095AFD23DCB8F53DD416E62456641D1339DBC2F95367602906EA7B0D34261DE4CA058CC753286A2490D936E7F1EC333F040D15A99672D2A8EBF57174745F64484C9487418CC0D285DC1C377B88D92A582E0B0A2D16CB383A6A88F6E0B8D110017B7FD883F23FFEDA8F27F5464BFC327B39566A357CF0B9674589B1BA711E77EF5CC3AD1B6F4AB2479D2CF9CC1E87A584B1D4302AA5C20CA970185880331BE730BF308FC5A5457147AA6689B697816F3CED60777747027ABDD140B3D1149A81C12D6B15B034BF815B874DFCCD9BD7706B9F2AC402DEFFD02696374EE1DAAD7B78EBC66D49040DC3960D11A9277310BF5FC8F9FCA317F0D0CA82E422BA16A258CEA5F324630576D1C664CC92B38FC5A5794CFD215E7EF9ABB0721A26E114F3A50ACA9902D4C81377C78134ADD10073F3CB52649A4CD96CA4A352DAC0DAF225CC6B15A19358B351B3065EBDF61D8CA3114C15701403ADC948BC4146B3B15C5B9262DA9DAD5B0280783AAE5FBF2924E4FCC29C0C6C507EEB67DF9770A01639220EE32A64B2B874F60C4CCBC67B9FFF106EDD7C0BAFBFF62D1CEE6D6161614EBA5B39B52660669C7124C36772E6B0E62C655245FACE49A3D020B97C19ABAB9B7211857249663452752E62EBC918CD6603DDE1108D8306461D0F37768E71F5A885BB476D289A0DDBF031184E24E97232145268129B387F8B73524E3A5BDF9EB29024B8B0BA80FFF6677E1CD9D8853F6E61FDD4327ACD2EDA874D34DCAEC43226BA1C88B3305F41BD71042F76C5CD2C94AAA866F288A67D683ACBC989F87FB6A7B9EE891E8DADD93E1E7BE4793811D5FF632CAEAE213175DCDEBD05D58C110513849311EADD9E0C030D8764C3B3A8ADAEA03D6AE08DB75E9309492C29703E184F4EBD5E87F24F7FE5A38993CDC30F49B127D21BC2E4A552A9E1277EFA53B879EB2D5C79EBDB383ED845CE3650CCE650724AF026A42352ECCFE0CAA02C1A2E95C3C2A6184FC7526CF2BC5076FA70EC23935B406D7E0EA6A989947461A1865C3E0B2BABC3512CFCC1BFF90C765B23DCEFBBB875DC46A29870C3713A728FF308854D4E85026C06927168278D2EB3093EC2BD21C2AFFCCC8FE154C5823F3A866124C8DB7914CD1CFEF3B7BF2EEC2E910DB9398AAE6BB52A4228184E7C645545C040BF7D002FE8235330E0C62E5C3782932DC2F5268206F7F61A78ECD1E771777F1FF95C0517CF3D240DAEDD4E1D998C82A3E31D283ABBC5A6C2EF55ED2292488151C861108DB17FBC0F8FAEAB9017944AD84B80A4FCB37FF0B1647E61896534E92B675D9C7311D7D636F0133FF569BCFCADBFC12BDFFD3A46BD262A390739CBC2930F3C059B7A5C197E9C118445050AE7A5C4B62E1F9A2D09D4FAB23C635B7934DB23B87E2A6C661276EEDC264AE5820C87595CAEA19A29E3EEF51D6C37867865FB18F7BB238917CC19383D87F90C07D95045C2571521B8482A67038DD9F0CF36389651E3004F9C5BC7431B743D1D41306B0B6B70620357F6B6A4A2477741311BB5CCBC56F6037AD310563404C675C0EFCB34EEA1E722B175942B0BB09D3C76F7EEB3FD5C3A78435FC79D5617E5C202CE6E5E86A59AD8D9BA89F3E756D1EA1CA2DE3E1665901E2428C0C4CAD2325C35C1FEB88F584BD0EB51B644FA458365D8383E6A41F99F7FEB2793726D5EA62FB05A485E8A68E3FCF94BF8D8277E0E7FFC277F885BB7DF048221F28686E5B91A1E39F330D657D671787028032CC974B2BE7E747480CC5C4DC46AAFBFF19A687DB3D982A027263F6C2563AD394F3EC73690C99AF27EEC7F2F1A458CDB2EF63A2EEE8E421CF90986418429870870D0334F1B471925211453971E47254E95E732A878560022A0D09300AB250BEF7F640D6AD8C264D8464ECB603E378720638BF487B31CBD208245F7142B188CD89EA46073DEC0A5F51CE68A641622BC75F31E6EECECE181879F84A698188EDB50F400BEC761993ADABE8185DA1ACE9D7D5020ECD1F11686A306827004975E8246777DAC664B52473AE836E1711A52E4C373C7A26166E12C93C9A34983FC4FBFF1D1A4363F8F56B383C99803296B3219EEC1879FC0877EF0E3F8A3FFE7DFA1D9DAE3707084E1540690399182B585250C3A7D9CD9388395DA12FCA98F5E770067B986D6A88F17FEE6AB38BBB28EF73CFA045EBFFA964C78E873867C18A1681BD858615D7D2233D7BDD8431228E8F413F4B53CAE3747D8ED4D849E601245A5C849A994E42105016112C9146D4A595936968C3DF651B27514341F8B35B625ACC0313C44E158541E2CA932B9A30720A22421387523515FB2FBB79451F1CC6A05CF6DCEC3546374430D570F3BD81D07503336FCC4C3D6FE16B24E0EB96C1175C6BD10585D5D921C2A9D026160BEB6882E61EFB40E438B913533D8DFAE63AE382F2AD04EFF089A53407794C0B1621433897813CD9E83F2CF7EF3A309E127F5439ACA0AA02F43689E7DF603F8C8DFFB04BEF5F2D770F3E61B68B7EA68B79B422D332721DB48DD52AD58C12249B530C1D1FE3E72D5257CEFFA5B32D0E5A1731771F1F4597CFB7BAFE2EEC11E020E161E0E90370C3CF3E423D8BA7F17B6ADC38B2718F65D546A67E167E6F1E72FBE82E331E533E9407B99094F1101E724B21826B56B0AE67CE9C7D4E348E69B702A519993EC16ABF8E0F34F62AEA821F4BB68350FD06C76A4276338EA4BFE92731C41958C9D9C04C15BC556F0814BEBB854C960D86942C957B13B7071BD3B4292B171F5E65569D7E394225BB7D06253ECC8C3858BE7E5A4B366311EBBC83945E8A68ED8F0619A9C3A9AA0D71C4307C14C04CD4EE0C71A869308BD4E1DEBAB15B85E806C7E01CA3FFEA5F7254C78C855753B4399B446B1DB33CF3C87E79EFDB01482C6E3AE0C213B3EAA636F6F1F5B87F7E085132C542A289A164E53C81C03FB3BDB50F532124343BBD5C6A3971E40CE72F0DD375E436B32466744C000CC978A38777A03FB07DBC81772E8F41B28E6E7F0D0A3EFC70BAFDDC1E75F7E1513126EAC77DB8E249F52B196D1E3A4FBD9C10B84C104352BC6730F9D45256B4BD02D2FAE637D7515E74EAFA398E73CDF5004118D461AD3B6F6EFA1DB6ACA29E976BA30F9E50163CE8B6C60A59CC1871FBF8C6547C18DAB6F6161E334DA7E8C97EEED422F1571E7DE1DE967CCE772D23739198CD1EF8EB1B6B62CF355027670B9214AF98A4863032D40A96CCB8C307F1C09094A031936BBC3589FF1B17740D96D1E26BB98AD22947FF80B4F2724F6382A693C7405E3673239BCF73DCFE1CCE94BA22CA4E4E7F4E6A6107A1C76B9737C1FF5C63EEEDDBC89703C12BECB1F8F30190C384917F32B9C73D5C0E99535847E803B7BDB381EF21B1034E975AF950AB870FE0CB677EE62EA4E309CF470F6CC03C8574EE33F7DF925EC0C5DB8EC2AF24394F3F9B7DB074EF453426F2711CA0EF0DE0B8BF8F0A39B28582AEEEED4913865E44B44723ACE5FD8442E6F098261E3A7653A88F418BD764BFCB7EFB932D4667B6717FB87FB08DD3E968A195831CBCBC7A8ADAC621444786BEF508417CD565B6878D656F8D51D8E69A17ED494D8C0566E12AD54CCE79D12C65317AECAD992169AAD26BC112BAD0AEC8C225F0552A6362D08112AE407BB02A917CBF3507EFB979F4F2693A9283A0C9D731333D25BFED453EFC1CACA26DE78FD55BCF6FA2B585D5EC5EACA1A1EBAFC301697AA32DD81FE7D7FEB2EF6B6EE63EBEE6D9102458983EEB09F0EF53739666F0AD700761A0D8CFA9E4CF7595B5AC485F3A7F1C695D7A4D8C5C6FE531B1771D455F0856FBE8E2E0C2922C5AE8BDC8CC696362219D39AD2258B73453CB49AC799AA896527C4E9D505DCDD3944766E05D358C171AB216E636EBE867CBE88AC9DC3E2E20A4AD5052913337649BF7D402509871E27D2BFD2AA1FE3EA9BDF43A37124630499EF0CFD0934E95FE7601A4FA825358E502B15E12B3ADA8D63940A695BC57C794E0677EEECEC41CD10710E64505B7FC80A21F55B3E168A45AC38161C7704D5C960B73BC671BD85074F9D81F28F3EFD5E39212CA59A4646A27DA554C1073FFC114986BEFC95BF44BD7E28E32C58BE65CA7F766303972F5EC4E54B17052D71E412BFD4E5DAD52BD8B9751FF777B765F0724EB76456BB51CAE3B0DF810D5384080F3D70019D6E03C3C940A86906C8E5A5B3F8CE9BFBF8FAB51DB4382E955F0E208198889C4967AA159741648A8ACDF922DE7FBE8CA5A285AC32452963617B6F0F633E972395B2363A83112245159E8E423F16C53EF1A3BF806EBB097756E1CC170AB2E89C89C85E76CD622B38C78C4478EBADD7B1B37D1F576FBD2AB995AEDB12D0591B9F0EFA58999F4394CFA2DB6DA3CCB9C75317F3A51A36564F4B0A71D8DE87EB0FB1B4B88CBD83364CD386EB0D91B375ACE774AC9AC02456D08CC8802798E35774FCA35F7C6F42CB8F391440A59AC2816367F1D18F7D1CD02DFCC5173F8F7AF35078FE85F99A08C4ECD9370C506DF1D8E38F62E3D429991A3A37578511C5B873EF1EF6B777D06BB6717F7B0B8D514FAA7D05D31122F291471EC4CEEE3D4CFC31CE9C3F8D8C53801FD8F88F9FFD060E5D0363852A127EC7081B6488A8008FC527AA04137ECF075032123C77AE84272FAF41F7471DF74E3E0000200049444154505C7E694C82588B315562742723F44684C964841D14F315544B55FCCC4FFF1AFC491FAF7EEB1B60A31255959A698BCAB092AFC22914A0D90E74CB4014B8383CD8C557BEF16768768FE473BEF7A90F62DC1EA1BE7B1BB1DF869F778444E500B61C851A8986ACC5D9C41EC69301749B7D9B0EBA7D578A6ABE37866EC6C8C6139CA9E6A4DCD10D54544A73D0288DFA959F7C3CC915F2920D532A8A4803B9CB9FFDE99FC7D81BE3737FF917D8A53231F2B0B43027C2360E18CB66B2F2A6FC169E52A18862A120636157D6D6B0303F9FB29AD32976F676651CDFDD7B77E53B46787C398B90BD92AA09AC6C2CC17581DBDB1DBC7CE5005DDF46208386A730D4103FF8E039B4C6535CD93E90621107D9EB14E921C1A9051B3FF4CC122E55B250C79664F6C3B885ADD6917C27C770EA8A38CF36B3A07869AE5CC54FFFC26F41F346B8F1CA8B38BC7F07A7364E039A83B7AEDDC4C30F3E8C62751EE3204D68D92349F6E1856F7F0E8DFE0E14D5C60F7DE017B1945DC7FDABDF40FBF8651C8F07285417E1690E06D4954DA6A223C85014A12818FA81C4082A36D7969790B07C3C657DA48F72C1C1C21CD96203557EB507073CFFFD9F7D32E1307A364CF6FB6310BD397619BFF60F7F1D470707F8EC5F7C4EA64FEB96267344287C2342E19C5E26744CD8222F80379D62F3D42634338342362F438F37D6D7B1BCB22262E3C168204AF79DED2DBCF9E6EB6260D5000AE51CDA8310DF7CE516EA238E0FA47E9882B6313657E6F05B3FFE511C76FBF8E2D75EC4DDC3B6D0EF095BB7A310F399101F797A0D4F9D5A40D2E730800CA6491F7BFD360E9A6DF4461C1F5B46A9C4009CC112FB3D7EE4E7918C3B38BA730D9DA35D91DE68761EA3D104CBF33574876319F331BFB42CA42947A15FDFBB82AECBE476880F3EF763C86B7368EFDF858116B6B78FB07EEE120A8B6BA82EAF497342B37E805EB781EEA081EB77EF61FBE010E54A09B54A09937E6FA6B6677DC5462163A50CB365C1346C28FFF8973F404650C6BCF64857D097D556F0DFFDEAAFE3E6ADDB78E1AFBF8CDEA02573A432B62535F158094594E04EA6C833D10A2319974A9968B33B153C5E9B4B35C1E72E9CC7B9F31770E1D2456433E4A3984B0468D68FF0EA6BDF1528D99CEAF8DA77AFA3EB1BF022438A5186DFC14FFDC887F1B34F3F8A83660BF5918FCF7DF545DCA0DE37C3B1E809ECA88F0F3D710A3FF6BEA7306766A0C4117AA3260E065D19C1B177DC00348EF1307166F31CF8CD363FF753FF0DC2610BBBD75FC7DD6BAF0B0A343225990E14793E3285121E7BE269981CD8CF51847B3BD83EBE8783F67D142A36225F45C15942355BC0C25C1ED3912AC9E9C5C79F81912B42A3F24621A2E2D43A178D4E07FB07876836EA180D3BB87DED8A0C9FE6E94B125746F1527A6B9BFC320107CA7FFFA9F7515024479A7586E1348093ABE2977EF557F1BDB75EC7CB2F7D1D210351D641BFCF76B43CC6FE18B97C468CC83178ECE21DF406FF5F4FE71E24D9599EF7E79CEED37DFA7EEF9E9EEE99D999DD9D5DAD76D1A21B200106732BE1284E88449C04277261401063134C910B71259453455C29A712FF932A5739172704648384004996AD0B600916CD5E58EDAE66E77ED9B974F7F4F4BDFB9CD3E7967ADE165155D7EE1FABB99CCBF7BDDFFB3ECFEF918AA86BB80298E146DA6AB6459F447066A6901587EDA98513220F22A59A0A71BAA7BEF9831FE3BFFD9FA7716C708217873A1EE04426887FFE9B9FC0A96810CDE36378010DB5818DBF78E5126EECB561B3130C13A78B717CF6B147319F4FA121E439138D61071BBB7730A6105A0B0B8B65E1C42971647DEA93BF0DAB53C7C1EA750C9AFB02CF1C980E62A9AC70891D5FC5F98BEFC4C9538BB87EEDAA08C657569730348E70EAEC2C0EEB75B84E00F96C0546DF82A3C45028CFA072E20C12991CA28918A2B109CB851D061EBAF91F3BBA4B6FBC86C5530B383C3A44BB7384D5D5B784B2470DD898B3F66802CA9FFDFE6FF8FCA63CE85077C575303355C5C71E7D146F5C7B03D72EFF14E1009523BA589C3947F743148E054442C94921CDF7B4179058DD1C98F22452ED48DC1A5BE70225080650C8C7A5337C627E0EE5EA1CCA1536184BF81F7FF93CFEECA9EFC30A3011CE451C163EF5C8FBF0D107EF067A0D340EF650CCE7E085E278F1F26D3CF5EA124681094CB3140DE1B10FBD17EF5C28C3193691D043A8B51B188C47386CB6640922CBCB733C94A72AF87B9FF834FC510BB72EBD0ADFECE2F8B8012F10126C88ED711AE8E2FE77BD5BAAA9D59565816EDA661D9B5BCB88C6231284463A12F71DDB0E60E805D06AF5651F9C2A4DE3F4A9054C578A28E4B34844D37291499760C9BE74E50DCCCC56509D9B95709CFDBD2DBCF6FAABC865D3E8B64917B7A1FCE03FFE8E4F949EAE8531189A18FB41A4A76770FF7BDE8D9BBF58C2F6FA2D44020E5CD384693908D0E1A46BD2B6A835EA72500A45388FD7C49645352139BE8ACF36415818275CCA88DBC86574F4863DD10D3BBE866C710EA5F23CFEE6B56B587A6B036E38291035DE90AF7FF109BCF7EE1338D85B83D93E42D0B6A00475BC74E5365EBEB587BD810B0A82E2BE8253C5243EFEF07964C21E668A4504429E28036FACACA26F9A424EE5FEC864850F3EF2CFE00E9A385CFB05DAB51DF47A6D01B6714834ECB791486531189918510912D145FCE0B9C7D2ABE2596244B074C083AF912DECC25103681CB610F4C348459213FA5E5845B19847BE5842269D87A26888A7D392463776C7983F755E0EE06D1A840E7671E1C239C96ADCDDD981F2CCD79FF0F9F410E2408DAB1A8963EAC43CEEB9EF5EDCBCBA849DF5DB4884393863A7961D2415637AB3551547CDA6FCC99F96B372F2AEDC6408DDA30EF4400C7A883D3203F91267DB0311483B411D5D99BF7B187B21F4C641DCBAD344BDE3C00D7234EBA21407BEFEA5CFE0430FDC8BEEF0189E3144BB7E289EF31F5FBE26FDA52BABBB309504745FC5542A8A7B17CA38558EE19ED3B352EBB3ABCC34B7A169A176DC422896C2C93367F1F0FBFE211CA381F5E59FA27F7C804EAB8B70288DCAF42C9C6E1351BF87CDDD4DEC9B407E7A113AA53A634A631D58B62237B8678DE49C63B80E3ACD0EACBE095DA180212C72D4603420D926DCE7A841109F087C4C97A6647E94C9951189C511D603180C07985F3889F5F54D341A2D28DFFBC3277CE68098A687402886B11240B13287BBDF711E2B37AF61676319CEB0CB1C94896C9314047AE9022ABA5DBEAA93FAFAFF5BC3E221F49A7D043DCEA61388C7C35034C6EEB5C5FFDDB37CD9376234F5240AD8AAF5716DA781D65081E985A80A43351FC4671EFF38DE75D759C45319714F51694E71C076ED085756D6F1ED679FC356ADC30C16CC1673383995C27D67A6052338EAB7269D57F215C716AE2FAF60E802F73EF8107EED91DF42B3B186F5959FE16077159D661FD5F2A28C90A3D600958403CB37F0B39D062C2503DD56118FFB60A4472C9E821A0AA3D66AA23053C651B789E35607BEE9201B490938932B87E99B084678435C74FA3D4998E0A6CDCC910825B4C1106666E744D949A7165DC78CAA50951094EF7DE3499F757ABE58412295477E6A964E3E71F6ACDCBA8CDDAD55010C0F7AC75225315AA8D123654E95658AE6462AEED82DA6499EF217DB70908A64E05A6C73B8D0A324403BF2BA87E359B14F07082C1B7A58AFF57169FD104357C7D8E1D7B450C9F978F06C15D5541C73B367512D4E8B029D0035470D239CCCE099175EC4779F7F0ED95416BE6541F3FA383D93C1E9B91CA63349EC6E6D434F4490C8E6716375436EC8F97BEEC7FBDFFB28AC511DAFFFF859ACDD7E13955215B95415D3A52A424617D6F12E92D9045EB9B18CF4D449E4A339C1A4331E96A363F65B8E3AC78865E372B0ED3A23B8860B650C0C5A3DC4E254C4EB08C5C230C606FAC321D80DE05E4BE92CCF7014AE73624AADD7E2FC026AFB35E923B21852FEFC6BBFE5DF77FF83A27A0F0463F25A522A49AD2B85C0B42EAFADDD1224D260D815AFA0E98F27B917B623ED00CAF14D837387496C85EA07100FC5C5B6E690F2D3AA4BE064CFA3FC3F0E95B29F50045D43C1467D844B5B4718F96C1FF064DEC7E24C18174F1691D583888492505C92DF5228142AA8CC9E422899C61B57AFE3072FBE846A751626857EDE08779FE68D0B20195431ECF5515D98C34DE232B8B90F2C3CFCBE0FE2231F7E14C78D6D5CFADBE77178671D83CE10BFFEE83F1265E3DAF255741B874817D2B8B4BC8C78AA8887EE7B789239C2367DBF2F52209EA96E6F2EA3DD6BC28D05A1292130F3A5553F1621529A8E2F4D81E5D11530919AD2FA4D95261DCFD44913A33E3F5345A558406DEF00ED5A1B896812CA1F7FEED7FDCACC9CE0C263F10C743D81881E971ADC75A816A785971297018E8E0ED1A8ED637B6F1B8311D76966EFD1A0436F0443B75419B7E6F8D48E5D988391182107831E9C808F78312BE45585FB4D7F8871208E9D2EF0E3E50318DE04451E543A38371FC5B9B90CB8A350C86C0EE87B37E1FB1AAAB32791C917D01998F8F9B515148BD3D2E4B2461DFCC6E38F60AE9245A756C7FEDE3E1CD5C3E537DF949E1655351FFEC823F8E0073E86D6D136AE2DBD829D8DB764567166F1822CC587CD3D398751A978D03C14264AA5B4805C3A8FCE7107AA07CC56AAD20C5DDDB88D3B073BB02890E37243BD1841D4BD1E32B9B410E102A1809CD5B8AC67B339E10CD385D56E4DA4B7854C1AEF387B06F53B0768D58EA55BACFCC9171EF7F3532584D902C96465B65BCA17E5CF50240625A041A598989B3AC5CD8E25D116C429EDED6DA3DB670CAB09CF1FCB7C9CE3D1841E836F338EB52F3117343886A311400B48799714B3E7084A720A4B1B47B8B4D986E94C2CCD31AD8F8B67B398C96848700FB00C287E10EDE321B4800EDBF14171F8C0B051EB7848670A13E89A6DE2897FFA09DC73EEA4FC3BF2E7770F77F1D6DA326EDEBA85617F84C7FFC1277166F122DAC7BB58FAD98BB08D16544E1E99DA49CFA346385B583AC5B1180405150AA50596CC19916B3848E8715972B972588E29DDDD66AB03C31C43D1821263144D44E4218E44E2E244A6EF85209E46EB181E4DBFCE24BC65BA98C3542E83DE711BAD7A13F14802CAFFFDDA93FEE1F11192D934CAD3E549CC8346CD50146A2889483C8D28ADC1C2D3A2B899F618EAA16C58E33E767656B1BDBB86C3DAB6E4D652D5E85B0E34454132466F396541EC94B279A5C8403FAE05D03C6AC0D2B3B8B47184CBDB7DD81E75532EF24917F7DE9543D8E921C9529A5A5E04D1EF18E20B21BF572E86A7C20AA4914E176496D36F1FE3E31F791F1EBCF71C32B90A345A0BE22CCF297C36D138A8892E2B5F98C7A07B886B4B2F61D83B843B1E485B9D93C8EED0C45E6B8CA139C2E9F982986BFA431F77DA75D91BCAB96976394502C5E969A954C485B9452CAFAF63480A4328803B8777443F2C3C2E870F0A8D508A3C90AC4E079681B11B806733344045321A91EA4C71014D0D4179FE4FFF83DF691EA2DBAA4BC3AE54AC229928209D2DC986CD0BCA941AE6DAEA8918548286F92F05226F4BE795FEF0FDFD5D2C2FDF82E534A49E67F4432E9544885118E349447720AC224CF8F2E1114AE50A8CF8149E7AED4D2C6DD4E520E91A6D94B31E1E7AE73C7C6300C5028684227156C3AF43A91211E7121E4C0A5D4234C7ED560DBAC6FC451FA98486F985BB70FEFC458172462229E8B124945014ED1E05D5AEF4995E7FFD65B49AFBE23764BF8A0DD63BF53DD8DCE76221D13A33F6DC19DAA8F7FBD23FAB14A7504AE630EE917017C6CC74056E388C9B372EC3727A882442D8611CADED221A4FC3E52840F023CE2493A5504267688A269ABD43829B28234DF0FB45699733A1FCE51F7DC51F9B7D18830ECCD100A5A919D41A04E59F13A19BA60625F93993CA49FC1081C7E2AB7B9B3C4DB5A2384DA59705D48EB6707BF9965021C802393E3A9266231376C6F608830ED5EC39243359EC8D54FCEF972FE38DF543D15951B53E3F1DC2DDF369844942E898926965F446522C50314E367CD7A0368A496E05C968E72C861E0C3D4CCFF818A9580AC3DE10EF7AE041E40B53289567912D55A0C7492DF5914AC7E07B86E8693737568562516FD6D01A360417A80488CD60F4AC8756A3052BE00B93515742A26AA4FDAC4401792C855EDB80EB8D70679F010451E8A91856B776604AE8D80459EEB98C3F57E1F078A032117B1285410525AF19B559615D5CEB50FEE7573FED3338926679265A72D3B1A1CA0FA08514CC4ECF20128CCA3C4155494000540AAF2351412871B0232DCEB7E3A759CF728918F45AA8739FD9DD1250D904F8CF997A08C5744674C0BB7D177FFEE2252C6DD5451491D15D3C70A18CC54A0CCDBD5DA84E085A24FC364587E2B33A92998C203E4C8B6B3FF3A54252FD30DC25162546B007CDF7904BA72484867B1ADFF65CB18A77DEFF1092B9B2C0732291802451D3D230324C3CF7DC33786BEBEA846AADA9225E0B30B275C0D938BB0401D82352ED82082B6184144D66EA995001B37353500263F48D36468E89A163A3D66811C52C682B5E206EECA6698B348AAB0BA5AC9C3F51F92256EAA02A6FBBF2F4BFFDBC4F9DA947B7843B86C100B064029BDB9B180DDBC8C43398CA4D2193649EE08C08C48CA0271B3D2F465021A826223249B60306260D9574C24E12328D515F0461C7478758B97503D95406D305665015B1DB36F1A7DF7B196FD5BB6030595677F0A1779F4429E1A25DAB21AAA5454C178DC725EE9A5D53F6BA38E1A44AC3F1281AD0D165D202DDB70CA35718264FD7129DB6C4F76908E9E4BD47F077FEEE6328151671D4E4C0ED5888A694401D1CD6F0C3E79F416F5C13E30F3FCCD7BAB3B327E61BE8F4E8BB12341042107A2084A0A7CA4C1D63DA0193D0A3411CB56B303D0B9154025BDB7BB0069CAAB8C8E5D3025918F58770EC49CC1EE7236CD4322EAFD5E94AC7831842E53BFFFAB33EE5F724BCD1E3D71E7650A89445774BC20F9F0ADBA0C25CC5FC895398993B815026217110BCD35C2769C0E4E088B3F854AE206D117E53BE7102FAD726612A0C305E5DB98DC6C1AE94CB033F84675FBB8EDBF58EEC45A59887F7DF5B85EEB5115535E8C114528584543054DC4B44AAA7606B6343BAA894927ABE2A6C162FA04A2EA2C1895C3402CF7790CFC6646440FAB6E7F3863C8ED9E2596C6EAFE1A5575E80391E61767E560C3B376E5D477758C75CE504CE9E3E8FBBCF5E9056D0FAE6269637AFE3B0B687783402A3D74738A00AFC80454E484DE3C2F9F3B0C623DC5E5FC1183606B689C35A1346DB422A15438CCE8170009E6563D4A34E98758A065D8FA33724AB927E4712537D287FFD8D2FFB545FF00C60D906144D95F63AE536612AD7030C230E498B80054FA9328D99058AB12707399B0D4785FC28555E4BA61D5054108F678553281822CF9A503D3922A4ABD9E8E2472FBF882BB7B7B17264628D87A248083309E0BEC534D29A29C540389846CFEE4ACB847DB4B16921CCF682EB49E3CF26F09922837E1F83B125E787DEB00BC3262BBE0805065289283AAD21CC71008F3DF69B989B3F8F95D55B78FAFB4FA1376C11FD005F21B7312EE5E93D67EF45B57412A7E7EF462C99923487E58D1BD8DDDB846B1AD8DE5A15553C8DA28CB570473E2AD315C130451231EC1F35C0AA550B4530188D311875C0633C3DF151128B68C9E3F98D11B4B60F93D17DA190A0686924557EF4C7FFCA17245EAF2B9B8FABB80247A13A301949CB0C8115C241BD2E2E5D2253F9A44EFA33BA5880A956E19566F939E0131A0CCBDD4F243288105F2111726C9F70D2C7080896823EFEEAF537F0DFBFF343D42991818B99A48A8BF3495432AAEC039E1B4073C8686E32BA02704C6722CDF41439FDF6EC81FCE25A348EFA715336645E5CFAF6D87763CB872358C3F2D11D78F8CC93BF87A9F2692CAF5CC7333FFC367AA323046594C068720D014F452699C7427511674E5E902660A65842204C64600FD1485096F1FD3B5BD8DD5E47BD7180E6CE3E928994883F2453C5B63190F4852E1A5DCAA22CA8F4C41B7DCC4D97C16E1D9BABB49FDFD9AB09AA9D37D2F66D29D1959FFCE77FE90B21D4320536CC132405D7ED3643B6D896567172F18CE44A85E944812ACD3B36D2C86BA7C29D67817C7E5A3CEC36E3F1E49CC2B97950D07DC492C7932978C4747844B4B291E8E3FBAFBC8AD77F710D1B0747A2844CAA633C70B68AD9820E3D60C0B67A7095982C7F9CECC5F4A8F4CC0C1A67C8A58AF06C13811A8C08DA88F80A73D84180563612864869733C187610EDA18F2F7DF50F309D9CC5CDD5CB78E6F96FC25526833619340D1DD91B281765993A53A8229E28A0B47006B32716B1B8704A78C4ECD00644E13FC2C1FE3E76D66F893F726B671BB57A43DC61C5328301DAE21AE686AE2AB638B7B2991882AA3F61E99BB44A6F21954823964A507E094F75A0BCF0874FFAA2957538EB60D5A26138180A9689335E7E61BE4133F37332B9A3DBD4B186A856A6D1EF77D12403CB5391CD96509E9A9193B9C8752462942E549660AA8028C934D1F5A8B8572F5DBB2116B5CD8383C974CF1C211D56F16B1F7C0FE6CB691CEEAE0A5385AA45DA8CDBEDAE8C3889D7A31468ECD8624B9B9D5F94A628C393D7566EC2362714EB58328AE3EE311C2EC58E865EDFC797BEF4355115DEDE7813CFBEF06D022FE4007774782C6A9144240CCBB7A4228C052318182EFADCBC63699C9A3F89775C388F779CBB5BA6A48C89250586B179C67028BA839BB76EE2F2D52B6246920CC3A02F5C49811F64E328E6D3D2E15583740CB892AB42E1856131338BBD161FCA337FF04F7CBAA5B829D34C29172F14110D52324582838DB5F515C1E5E54B05DCB8F1A61CFCE666ABE260E5CCA1D5EE23124908E5E0DC5D172439816F0E653984BB10FCC23790431E59B642515CB9B582AD831A36777727AE24B8F8E8AFBC1F1F78F85DC8309FC41C606F771BBBEBB7D01FF4D01B0E24A19ADCF681319860C33D055395599190F2BE5BC64080695CA7FB461F1DBB2B7E8C318161A3107EE7B35F9673C2DAE64D3CFBDC5FC0F14C297947C3C93880B01DC646B142A35699E4EE267DF88631E9D12573C827F378E01DF7E3DCE25D2817A610486427540B8D9E734B54353B77B671F51797B174E567681CD56474A1EB017149B55A47183B41348F26B4BDD3274F8041CB7A2C22ED1BE5E5FFF459C9BD0A87E3E8750DE4B353525DF0CC413228B17DB4F4324C98DC2B4A3FF93487D889A562221E15525C508BA0DD62F94A357855B2D429A063AB999344BE326C460E5C056FDC5841CB30E4153F6E1EE143EF7DAFA4B2CD2FCC0B599B4B062D0894198D4775ACAEAD627D6B0307F503F1B6F389E2DEC5364CA15C96F8243AAC386FB00D03EDFA319AED3A94B80F5B61580D8BD50CBEF885AF424BEA78EBF6753CFDCCB7E48670FC6CB99E0433F386D830397C4021999289E7CAEEBE102384F2EDA8C8C57370472ECAF9693CFCEE879028CFC9EFCBDF359549CB9B2B4D5642145A355CBB7A056F2C5DC2D0E8CB8173756D05EDF60867164F21150BA1904DA0DB6983B642328A95EFFC9B4FFA247D3A365DA61924E31924126949D321AFB6542848A2270F777C0C6966743D6A56E3D8DBDF858B09FD86FC768E78E10590919C7517D59959092C8EC66232CCA2E06DA3DE446D30122FFBF6FA3A4ECD56F0F73FFC5154CBD313142BF719028E396D239B90159AEAC9A65AAB1F607D6345A229C8D90A855484A25118D6589C50B63116C524E91223B387445CC5C81CC00BC6A0840BF8CCE7BE82582285A5A59FE2A9A7FE177C98226FB27D4F2E26ABD1B13B44321C404C21462A2E2811D3F7259BC4361DE8411DD6708C3CBDF7E485390A4E9E3E2DA48B6A750E53D36C3DA5C51248A03F1D3B6C341E36682E5D46FDA8865E6F8440C045D01F21A603478D1A76B6F6D1ED1B507EF0F527785845BF3F443A9593637DA53223C1F52CFB28F1A12285276CDA019882C3233E2B8276B789B163BD9D951E428BE3502D2A8DBA76A787F27405C5A92998065B049AA4F46C368FB1DD6C62FFE000094DC14317CFE34CB1321103A4E2486473520C50B64A93A5C3AA8E983E1A757C07C6A827929A8DCDDBD83B58175D2E3F5A3084617F28A0029B6E16A38BD9421C41C543A367C28B4DE1539FFF7DA4F51C967EFE3A9E79FA9B82910A46550422C109A669C05C7603BA3F46510FCBE1CFE0D83A1C96B7682807D0A0EC652C34A8F664E7578FC6E5FF8D4653B8E7E203721D6766E7519A3A21840CB6E1F9A1FE8056BF83DA218EEA77B0F2D6CFA1B87D01D4340EDB626D509EFE774FFA7C1AA9DA66B95A9AAE40A72AD11E0B279DA3C7206F5877224E50B8E391AC661A320FE63082E70C2DA48A8223579C97D0480AE738469DAE56B14B6F880F34FB068E4D13870C200E06B050C8E1FCEC0CAAD9A294CC840D697A546E4A349D142FB7AFD22A31E1DCB23DCF0E806D59F2E41FB51BD83BB883C1A08B469DD29AE3C9442EACC23406E2106685D11D8C118AE5F0D92FFC0B8422455CFAF96B78EEAFBE0B4DF7118A0561B9F4A23842AC8BEA3A5CF6CCE855F45D548B7984B3392C6FEDA179DC432C1913DE3C43C6E8C11F0F479290C0B75FD763F2E0E53239B17DCF2F9C951BB3707211D3955939777009F755FADC47585BBD89FDBD4D0137FFD2BFAF7CF7DF7FDECFA50BA2EC637F857860570D209B4D63D0A90947B1BEB78F6AA5220128BDD14014EDA3E15032D6CBD32574BA4D8130931752397137B6D737A58D4FDA43A93C852B37AECB534FD6159339B71B3511279F9B3B81F9421E41EA6AB3798C4DBE49011126E889383205426938342321F46D94AA47F019A75C93486DB649344DC5CEEE2696962EA1D339469FE5B2E7C8E977303031B68172F9043EFDE9CF21129BC26B3FFD119EFEFEB790C88491CE27D13C6655C466E024FB960740CDB690D6C23855A9A0EF79B87E7B1BEDDE1899424ADE22C6F64575266A1B306CE29E4C999C6A811062615D6451C13061FF01E4F3655CBCE741DC73F17E24928C60620A9C2263F266B381F58D555467662674D3BFFE2F5FF12BE52A063D0BFD9E29299824B44D95F218B4F7846F45DD1647B10C40D1C2210C071DF9FB24F24115E3BC35A61F9B32CCB4D8CB78915909512AB4DFA88BD19FD1DF6A3C8E35D10A7BA27D9D294D09E7979F51BB87622623D1ABBF0C9089A58B4261E0B220B47D16C33CFD33C9995D59EE5FC610E108D1AB16D6D656F0DAB54BA833F181C41DA6531B2EA6CB73F8DD2F7E19C9640E2FBDF4029E79F65B985B9896FDB0DD69C9C0886F5324E241532930F2A02B118495A8F0558E7B264696C7C12322B15FE6D986307688A59A24F4B095C195C6331906206C07397395A6AA3875F22CAE5EBB8907DFF510E6664EE0FCB9BBE467277CD93448C863819480F2377FF2BB3EA5F06441793E03EEA9BA23D22F04C5A1EF702826773A6C694DA6E4D7E21F000003CC494441540ED876261452BE9EBC29C49B728D77C9F9F0C3B2192B6C3FDB9EA440934FC5D33E4BC23105C8AE8D3BB59ADC20AEFD1CD3729C9989C4B138338B523A2DE856CAFC95302D123CBB24104BA411A1F283215EF0A5233B0961841C5A052CA969E89903AC6DAD637D7D552A407A2F12F11CBEF47B5F861AD6F0D39FFD04CFBFF034A64A69596A594932DC8B96EB58D4465833DF4E4188637FAF2F7D276A0D28191D583DC4139AB44D683A45D095190DDBE9F4F0A72209B46A0D6929B90CAC5702E2D52FE4CBB872ED3AB28C1BD714FCCAFBDF2313D64AA58A7C6E0AD94C09B1581ACA0FFFE8099FCD372D9480E3124E199A04A1108BA74D66EA3C008A1F9C4F259BCAE415329F36C228557AD10D18E610FD7E47DACBA9784ABCD9BA16454792402DB1CC0DFA439102F5CD919C6207169B861E4C2651FB3EEE5E38856AAE80144FF68CF9562008261E30F99D3952A6A79E1FDE24566382C8624FE96D62B4D8A51920CFB44E2D2038D6DD3B07180E2CFCEAAF7E04814408AFBCFAA228060932EEF6DB32CDE4C89AC0CA68D8C2F973B32264D8BAD34677449670507CEACC4B316C96FC346B86E03B0A0CCF90593A655141258828ABB0C1501C518C82627194A44CD5B46572CAB3533113402619061805A2A82897E73037B38874B204E5F96FFC639F680B2D9282A6256119E4DBEA92F334761A72E0E1FA4A2F7A94644EE1EFAA6225661391E53267083CA7302282772CA6C7E09A84E64F34487E4043A73B943450860E0FFA5DB4BB6DF42C0BA6474DD848EC70F49D54F32514F30549E764B96CDB23B9F0BFCCC9E29A4CD8195B32D178123AC7C4BC980EE1FCBA2C85F49008AC7FB2C249F799AACC42710AAE62E3EA2FDEC04F5E7B19ADEE91D822423AE7223E8C7E879941F8D8071E46FDA881A59B6B507914202372EC63307204A8994C8765A8C4960BD14B261DB41AF1829A5479B43953DCC0DF9763020999E12837482AB607C5EC2393A4A44A812DB6F0086C8BA4D50494BFFDAFBFED33C4D7E5B0C4E5058F209F29A1D5AAC3B0EB329851893D557C814832159366160AA8FB1C6552FDEE4D7A3B92CBC1B9A7A7623CB0C419952F96A1E9090C2D5BE2AC93E120D6DF7A532AB442651A96DCEC011C730CD5F3B17FE750A2F672858228D00B69C6DC05654FE1A3C83D8BAD1E1125A89C754465E61F4B644458CD229D05000105B6C3327612BEC28B116207C2B771F5CD2BF8F9E5D705DDD7199297EBCB3926A279B07B3DA4C351B4DA1D68990C6C0A3C465D28D06439D6138CD2D024A6C37755EC1CECC3E2D1807151F204B01D4140288450C7593C03D17AE411C7E272680C98105A06CB6E5728A8F4E7847078D0C6FF03CC2E849188E771FB0000000049454E44AE426082, 0)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (36, N'Jenny', 0x4B29B30D16A4895A3F95F843EF795B0CD884E29691748E4BA2A4BEB530BA4E54920117CD5DF80A8F9B6A8DAA4BE5D503698837FEE7582C7B550FEC58645937E4, 0x6B152878CB35F352A4D08AE4898213D04FEAA3EC8443FE9C99FCB9599CE8A39ADA77413C3A96B67E3BA72462A122252103ACEEFEF618F12FE275A0FC28BCD5EACD6C91398BB2884EF5FA0A3C18973D5B3F171D5D6A92BD5563DAEA98AA6EB8244DA961FDC7669BFD442F2824D1B371151574A838000C80611F83E7BB2DEB0B6C, 22, 3, N'Jenny.Wang@shc.ssbshoes.com', 2, NULL, NULL, 0)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (40, N'Stone.huang', 0x6ECC0815C22D97F1929C89A5949F75C1CED1A53F75B7D927745DDE6D5A97CA59CEEFEDB37A601DD292327B21E483ABBE11968CBD55BE50E79141B3D4DE9063AA, 0xACE83AE77CE400428C9BDFADFD93A8C1DA6CB9A356ACACFCE6FACD2CB980A150EBCE0000BE7F911A561B9887660562703DEF6C3DEAC06237EAE07338D56CE31D6E9B28F65014117163E45D756137ECFF2DB68F185A375438BE456224764C5F34CE047A99B6FD6DED08749C2E83DB82A3FFEB358F95422C4C1A8576491000EE28, 22, 3, N'stone.huang@shc.ssbshoes.com', 2, NULL, NULL, 0)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (41, N'Damaris.Li', 0xECAD57500FF8A95495E1C0F8431E572D8AF823C12A6568085ED79140644AC6988B396D89BAF3FA88EBBFFEB946E1DE69B65C87B99F5E635B86A137DF5A03C968, 0x8D2617070DFD9B8BFF55582A7AF410E87F077EDFD59977E4CECD05887BEE1A87B087A4876DD69B69811AB216A064ACBF18396D18DAA751D7780A827805A3023102206687D88BC877C84905EE86101A90C4DBD7F6C93F66BBC1A5B66C01D54CCF0A374E95716CC5F4590956613987C5371EF1544A0807F6163843FDDE7484B779, 22, 3, N'damaris.li@shc.ssbshoes.com', 2, NULL, NULL, 1)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (42, N'Ian.Ho', 0x5929E5E9947C5D13C823335D59E2E1224627147E80B1C01800A09583F773CB7660A6B3DE21C3C14415E9901B2044FB25AB82E87F3C13C56CB1F8E2DB4E7C6CAE, 0xB3F3687B2DF4386C9BE0002C41DE9C78D37DF059F1AB3058051DE388725221F889A1B1F0FCDEB186DC4A551AE51AAFE10A4F14C1699911AAA8C51E0A6AE89A445E104A0529DE2A7D0C3E6156104F46EEDEFE97029C7AE136934551995755F66BFFCD724F7D30653293FBCFA22CE0A520BCE7E8AFDAC815156D4DDEA2CEDDC6C8, 0, 0, N'ian.ho@shc.ssbshoes.com', 2, NULL, NULL, 1)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (43, N'Erick.Chong', NULL, NULL, 20, 2, N'erick.chong@shc.ssbshoes.com', 2, NULL, NULL, 1)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (44, N'Justin.Lin', 0xB7A8F319F576F16E8ACFE7845833F8BD4ED926EA7614B19DA6DEF432C198901B2E01F0D27E44F6FCC5F65BF41351E283B81A546B1D87598185251D39C7144217, 0xEA3C4760BC57A622F2AC6ED8D36D92BEBC75EB69AF291F96E44DA428828F4E6DCFBFB8853DB25CCC3DFACF5F42BBA54228853AD80D5838DBFB0AA80E305D97AAFB77968DF9F06A359858EF47DA97B7DADCD83C4FBDE02C4E9675A826DCADAE9F8E5D91223160D764266430B996318BA718578FCCA839D94C409EE016FD59793A, 46, 3, N'justin.lin@shc.ssbshoes.com', 2, NULL, NULL, 1)
GO
INSERT [dbo].[Users] ([ID], [Username], [PasswordHash], [PasswordSalt], [OCID], [LevelOC], [Email], [RoleID], [ImageURL], [ImageBase64], [isLeader]) VALUES (45, N'Anita.Yang', 0x89E371EAC1240FAEA9284F88594C0F648200445328D9531ECF213158272BA1E3A94C229A795F6412CC6724E972745ED7517A699743BCAC16C53F08596DF147AC, 0xCF086051675F6CE3AFE38B54A13AAFBC2DF651CD0D20B693D5BB109B3543FA2E94CA8E2118DDD9F764D476266EB141372850161092FAB1AD80828B525E1F5100D25EA54BA4E206810B87FF53AA743B8A1EA3115E23C055D2BA08586A8D78187AF8998BAA605233B83B6CCA2CF46741A9D24A6E3E74D15AE6F95BADB3D0636CC6, 45, 2, N'anita.yang@shc.ssbshoes.com', 2, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Deputies]  WITH CHECK ADD  CONSTRAINT [FK_Deputies_Tasks_TaskID] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([ID])
GO
ALTER TABLE [dbo].[Deputies] CHECK CONSTRAINT [FK_Deputies_Tasks_TaskID]
GO
ALTER TABLE [dbo].[Deputies]  WITH CHECK ADD  CONSTRAINT [FK_Deputies_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deputies] CHECK CONSTRAINT [FK_Deputies_Users_UserID]
GO
ALTER TABLE [dbo].[Follows]  WITH CHECK ADD  CONSTRAINT [FK_Follows_Tasks_TaskID] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([ID])
GO
ALTER TABLE [dbo].[Follows] CHECK CONSTRAINT [FK_Follows_Tasks_TaskID]
GO
ALTER TABLE [dbo].[Follows]  WITH CHECK ADD  CONSTRAINT [FK_Follows_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Follows] CHECK CONSTRAINT [FK_Follows_Users_UserID]
GO
ALTER TABLE [dbo].[Histories]  WITH CHECK ADD  CONSTRAINT [FK_Histories_Tasks_TaskID] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Histories] CHECK CONSTRAINT [FK_Histories_Tasks_TaskID]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Projects_ProjectID]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_Users_UserID]
GO
ALTER TABLE [dbo].[NotificationDetails]  WITH CHECK ADD  CONSTRAINT [FK_NotificationDetails_Notifications_NotificationID] FOREIGN KEY([NotificationID])
REFERENCES [dbo].[Notifications] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotificationDetails] CHECK CONSTRAINT [FK_NotificationDetails_Notifications_NotificationID]
GO
ALTER TABLE [dbo].[NotificationDetails]  WITH CHECK ADD  CONSTRAINT [FK_NotificationDetails_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotificationDetails] CHECK CONSTRAINT [FK_NotificationDetails_Users_UserID]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Users_UserID]
GO
ALTER TABLE [dbo].[OCUsers]  WITH CHECK ADD  CONSTRAINT [FK_OCUsers_OCs_OCID] FOREIGN KEY([OCID])
REFERENCES [dbo].[OCs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OCUsers] CHECK CONSTRAINT [FK_OCUsers_OCs_OCID]
GO
ALTER TABLE [dbo].[OCUsers]  WITH CHECK ADD  CONSTRAINT [FK_OCUsers_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OCUsers] CHECK CONSTRAINT [FK_OCUsers_Users_UserID]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Users_CreatedBy]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Projects_ProjectID]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_Tasks_TaskID] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([ID])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_Tasks_TaskID]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_Users_UserID]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_OCs_OCID] FOREIGN KEY([OCID])
REFERENCES [dbo].[OCs] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_OCs_OCID]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Projects_ProjectID]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users_CreatedBy]
GO
ALTER TABLE [dbo].[TeamMembers]  WITH CHECK ADD  CONSTRAINT [FK_TeamMembers_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamMembers] CHECK CONSTRAINT [FK_TeamMembers_Projects_ProjectID]
GO
ALTER TABLE [dbo].[TeamMembers]  WITH CHECK ADD  CONSTRAINT [FK_TeamMembers_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamMembers] CHECK CONSTRAINT [FK_TeamMembers_Users_UserID]
GO
ALTER TABLE [dbo].[Tutorials]  WITH CHECK ADD  CONSTRAINT [FK_Tutorials_Projects_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ID])
GO
ALTER TABLE [dbo].[Tutorials] CHECK CONSTRAINT [FK_Tutorials_Projects_ProjectID]
GO
ALTER TABLE [dbo].[Tutorials]  WITH CHECK ADD  CONSTRAINT [FK_Tutorials_Tasks_TaskID] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([ID])
GO
ALTER TABLE [dbo].[Tutorials] CHECK CONSTRAINT [FK_Tutorials_Tasks_TaskID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleID]
GO
