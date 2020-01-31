CREATE TABLE [dbo].[loans] (
    [id]          UNIQUEIDENTIFIER   NOT NULL,
    [issueDate]   DATETIMEOFFSET (7) NOT NULL,
    [dueDate]     DATETIMEOFFSET (7) NOT NULL,
    [returnDate]  DATETIMEOFFSET (7) NULL,
    [importHash]  NVARCHAR (255)     NULL,
    [createdAt]   DATETIMEOFFSET (7) NOT NULL,
    [updatedAt]   DATETIMEOFFSET (7) NOT NULL,
    [deletedAt]   DATETIMEOFFSET (7) NULL,
    [bookId]      UNIQUEIDENTIFIER   NULL,
    [memberId]    UNIQUEIDENTIFIER   NULL,
    [createdById] UNIQUEIDENTIFIER   NULL,
    [updatedById] UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [loans_pkey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [loans_createdbyid_fkey] FOREIGN KEY ([createdById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [loans_updatedbyid_fkey] FOREIGN KEY ([updatedById]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [loans_importHash_key]
    ON [dbo].[loans]([importHash] ASC);

