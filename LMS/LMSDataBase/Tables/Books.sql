CREATE TABLE [dbo].[books] (
    [id]             UNIQUEIDENTIFIER   NOT NULL,
    [isbn]           NVARCHAR (13)      NOT NULL,
    [title]          NVARCHAR (255)     NOT NULL,
    [author]         NVARCHAR (255)     NOT NULL,
    [numberOfCopies] INT                NOT NULL,
    [stock]          INT                NULL,
    [importHash]     NVARCHAR (255)     NULL,
    [createdAt]      DATETIMEOFFSET (7) NOT NULL,
    [updatedAt]      DATETIMEOFFSET (7) NOT NULL,
    [deletedAt]      DATETIMEOFFSET (7) NULL,
    [createdById]    UNIQUEIDENTIFIER   NULL,
    [updatedById]    UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [books_pkey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [books_createdbyid_fkey] FOREIGN KEY ([createdById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [books_updatedbyid_fkey] FOREIGN KEY ([updatedById]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [books_importHash_key]
    ON [dbo].[books]([importHash] ASC);

