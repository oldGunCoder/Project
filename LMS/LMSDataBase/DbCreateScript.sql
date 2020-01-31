USE [library_db]
GO
/****** Object:  Table [dbo].[auditLogs]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auditLogs](
	[id] [uniqueidentifier] NOT NULL,
	[entityName] [nvarchar](255) NOT NULL,
	[entityId] [nvarchar](255) NOT NULL,
	[action] [nvarchar](32) NOT NULL,
	[createdById] [uniqueidentifier] NULL,
	[createdByEmail] [nvarchar](255) NULL,
	[timestamp] [datetimeoffset](7) NOT NULL,
	[values] [varchar](max) NOT NULL,
 CONSTRAINT [auditLogs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[id] [uniqueidentifier] NOT NULL,
	[isbn] [nvarchar](13) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[author] [nvarchar](255) NOT NULL,
	[numberOfCopies] [int] NOT NULL,
	[stock] [int] NULL,
	[importHash] [nvarchar](255) NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[deletedAt] [datetimeoffset](7) NULL,
	[createdById] [uniqueidentifier] NULL,
	[updatedById] [uniqueidentifier] NULL,
 CONSTRAINT [books_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[files]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[files](
	[id] [uniqueidentifier] NOT NULL,
	[belongsTo] [nvarchar](255) NULL,
	[belongsToId] [nvarchar](255) NULL,
	[belongsToColumn] [nvarchar](255) NULL,
	[name] [nvarchar](2083) NOT NULL,
	[sizeInBytes] [int] NULL,
	[privateUrl] [nvarchar](2083) NULL,
	[publicUrl] [nvarchar](2083) NOT NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[deletedAt] [datetimeoffset](7) NULL,
	[createdById] [uniqueidentifier] NULL,
	[updatedById] [uniqueidentifier] NULL,
 CONSTRAINT [files_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loans]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loans](
	[id] [uniqueidentifier] NOT NULL,
	[issueDate] [datetimeoffset](7) NOT NULL,
	[dueDate] [datetimeoffset](7) NOT NULL,
	[returnDate] [datetimeoffset](7) NULL,
	[importHash] [nvarchar](255) NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[deletedAt] [datetimeoffset](7) NULL,
	[bookId] [uniqueidentifier] NULL,
	[memberId] [uniqueidentifier] NULL,
	[createdById] [uniqueidentifier] NULL,
	[updatedById] [uniqueidentifier] NULL,
 CONSTRAINT [loans_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[settings]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[id] [nvarchar](255) NOT NULL,
	[theme] [nvarchar](255) NOT NULL,
	[loanPeriodInDays] [int] NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[deletedAt] [datetimeoffset](7) NULL,
	[createdById] [uniqueidentifier] NULL,
	[updatedById] [uniqueidentifier] NULL,
 CONSTRAINT [settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userRoles]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userRoles](
	[id] [uniqueidentifier] NOT NULL,
	[role] [nvarchar](255) NOT NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[deletedAt] [datetimeoffset](7) NULL,
	[userId] [uniqueidentifier] NULL,
	[createdById] [uniqueidentifier] NULL,
	[updatedById] [uniqueidentifier] NULL,
 CONSTRAINT [userRoles_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020-01-30 6:56:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [uniqueidentifier] NOT NULL,
	[fullName] [nvarchar](255) NULL,
	[firstName] [nvarchar](80) NULL,
	[password] [nvarchar](255) NULL,
	[emailVerified] [bit] NOT NULL,
	[emailVerificationToken] [nvarchar](255) NULL,
	[emailVerificationTokenExpiresAt] [datetimeoffset](7) NULL,
	[passwordResetToken] [nvarchar](255) NULL,
	[passwordResetTokenExpiresAt] [datetimeoffset](7) NULL,
	[lastName] [nvarchar](175) NULL,
	[phoneNumber] [nvarchar](24) NULL,
	[email] [nvarchar](255) NOT NULL,
	[authenticationUid] [nvarchar](255) NULL,
	[disabled] [bit] NOT NULL,
	[importHash] [nvarchar](255) NULL,
	[createdAt] [datetimeoffset](7) NOT NULL,
	[updatedAt] [datetimeoffset](7) NOT NULL,
	[deletedAt] [datetimeoffset](7) NULL,
	[createdById] [uniqueidentifier] NULL,
	[updatedById] [uniqueidentifier] NULL,
 CONSTRAINT [users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [books_importHash_key]    Script Date: 2020-01-30 6:56:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [books_importHash_key] ON [dbo].[books]
(
	[importHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [loans_importHash_key]    Script Date: 2020-01-30 6:56:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [loans_importHash_key] ON [dbo].[loans]
(
	[importHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [users_email_key]    Script Date: 2020-01-30 6:56:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_email_key] ON [dbo].[users]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [users_importHash_key]    Script Date: 2020-01-30 6:56:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_importHash_key] ON [dbo].[users]
(
	[importHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT ('default') FOR [id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [emailVerified]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [disabled]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [books_createdbyid_fkey] FOREIGN KEY([createdById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [books_createdbyid_fkey]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [books_updatedbyid_fkey] FOREIGN KEY([updatedById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [books_updatedbyid_fkey]
GO
ALTER TABLE [dbo].[files]  WITH CHECK ADD  CONSTRAINT [files_createdbyid_fkey] FOREIGN KEY([createdById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[files] CHECK CONSTRAINT [files_createdbyid_fkey]
GO
ALTER TABLE [dbo].[files]  WITH CHECK ADD  CONSTRAINT [files_updatedbyid_fkey] FOREIGN KEY([updatedById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[files] CHECK CONSTRAINT [files_updatedbyid_fkey]
GO
ALTER TABLE [dbo].[loans]  WITH CHECK ADD  CONSTRAINT [loans_createdbyid_fkey] FOREIGN KEY([createdById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[loans] CHECK CONSTRAINT [loans_createdbyid_fkey]
GO
ALTER TABLE [dbo].[loans]  WITH CHECK ADD  CONSTRAINT [loans_updatedbyid_fkey] FOREIGN KEY([updatedById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[loans] CHECK CONSTRAINT [loans_updatedbyid_fkey]
GO
ALTER TABLE [dbo].[settings]  WITH CHECK ADD  CONSTRAINT [settings_createdbyid_fkey] FOREIGN KEY([createdById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[settings] CHECK CONSTRAINT [settings_createdbyid_fkey]
GO
ALTER TABLE [dbo].[settings]  WITH CHECK ADD  CONSTRAINT [settings_updatedbyid_fkey] FOREIGN KEY([updatedById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[settings] CHECK CONSTRAINT [settings_updatedbyid_fkey]
GO
ALTER TABLE [dbo].[userRoles]  WITH CHECK ADD  CONSTRAINT [userroles_createdbyid_fkey] FOREIGN KEY([createdById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[userRoles] CHECK CONSTRAINT [userroles_createdbyid_fkey]
GO
ALTER TABLE [dbo].[userRoles]  WITH CHECK ADD  CONSTRAINT [userroles_updatedbyid_fkey] FOREIGN KEY([updatedById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[userRoles] CHECK CONSTRAINT [userroles_updatedbyid_fkey]
GO
ALTER TABLE [dbo].[userRoles]  WITH CHECK ADD  CONSTRAINT [userroles_userid_fkey] FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[userRoles] CHECK CONSTRAINT [userroles_userid_fkey]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [users_createdbyid_fkey] FOREIGN KEY([createdById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [users_createdbyid_fkey]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [users_updatedbyid_fkey] FOREIGN KEY([updatedById])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [users_updatedbyid_fkey]
GO
USE [master]
GO
ALTER DATABASE [library_db] SET  READ_WRITE 
GO
