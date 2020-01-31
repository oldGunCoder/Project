USE [LibraryDB]
GO
----------------------------------------------------------------------------------------------------------------------
/*
DROP TABLE [dbo].[books_has_loans]
DROP TABLE [dbo].[users_has_loans]
DROP TABLE [dbo].[loans]
DROP TABLE [dbo].[books]
DROP TABLE [dbo].[settings]
DROP TABLE [dbo].[users]
DROP TABLE [dbo].[user_role]
*/
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isbn] [varchar](13) NOT NULL,
	[title] [varchar](45) NOT NULL,
	[author] [varchar](45) NOT NULL,
	[publisher] [varchar](45) NOT NULL,
	[stock] [int] NOT NULL,
	[status] [varchar](45) NOT NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[books_has_loans](
	[books_id] [int] NOT NULL,
	[loans_id] [int] NOT NULL
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[loans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[issue_date] [date] NOT NULL,
	[due_date] [date] NOT NULL,
	[return_date] [date] NOT NULL,
	[status] [varchar](45) NOT NULL,
 CONSTRAINT [PK_loans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[value] [int] NULL,
 CONSTRAINT [PK_settings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[user_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](45) NOT NULL,
 CONSTRAINT [PK_user_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[password] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[phone] [varchar](15) NULL,
	[status] [varchar](45) NULL,
	[user_role_id] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[users_has_loans](
	[users_id] [int] NOT NULL,
	[loans_id] [int] NOT NULL
) ON [PRIMARY]
GO
----------------------------------------------------------------------------------------------------------------------
-- FK_user_role_user_roleID

-- FK_users_has_loans_usersID
-- FK_users_has_loans_loansID

-- FK_books_has_loans_booksID
-- FK_books_has_loans_loansID
----------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_user_role_user_roleID] FOREIGN KEY([user_role_id])
REFERENCES [dbo].[user_role] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_user_role_user_roleID]
GO
----------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[users_has_loans]  WITH CHECK ADD  CONSTRAINT [FK_users_has_loans_loanID] FOREIGN KEY([loans_id])
REFERENCES [dbo].[loans] ([id])
GO
ALTER TABLE [dbo].[users_has_loans] CHECK CONSTRAINT [FK_users_has_loans_loanID]
GO
----------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[users_has_loans]  WITH CHECK ADD  CONSTRAINT [FK_users_has_loans_usersID] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users_has_loans] CHECK CONSTRAINT [FK_users_has_loans_usersID]
GO
----------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[books_has_loans]  WITH CHECK ADD  CONSTRAINT [FK_books_has_loans_booksID] FOREIGN KEY([books_id])
REFERENCES [dbo].[books] ([id])
GO
ALTER TABLE [dbo].[books_has_loans] CHECK CONSTRAINT [FK_books_has_loans_booksID]
GO
----------------------------------------------------------------------------------------------------------------------
ALTER TABLE [dbo].[books_has_loans]  WITH CHECK ADD  CONSTRAINT [FK_books_has_loans_loansID] FOREIGN KEY([loans_id])
REFERENCES [dbo].[loans] ([id])
GO
ALTER TABLE [dbo].[books_has_loans] CHECK CONSTRAINT [FK_books_has_loans_loansID]
GO
----------------------------------------------------------------------------------------------------------------------
