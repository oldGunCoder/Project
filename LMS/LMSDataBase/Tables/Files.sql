CREATE TABLE [dbo].[files] (
    [id]              UNIQUEIDENTIFIER   NOT NULL,
    [belongsTo]       NVARCHAR (255)     NULL,
    [belongsToId]     NVARCHAR (255)     NULL,
    [belongsToColumn] NVARCHAR (255)     NULL,
    [name]            NVARCHAR (2083)    NOT NULL,
    [sizeInBytes]     INT                NULL,
    [privateUrl]      NVARCHAR (2083)    NULL,
    [publicUrl]       NVARCHAR (2083)    NOT NULL,
    [createdAt]       DATETIMEOFFSET (7) NOT NULL,
    [updatedAt]       DATETIMEOFFSET (7) NOT NULL,
    [deletedAt]       DATETIMEOFFSET (7) NULL,
    [createdById]     UNIQUEIDENTIFIER   NULL,
    [updatedById]     UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [files_pkey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [files_createdbyid_fkey] FOREIGN KEY ([createdById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [files_updatedbyid_fkey] FOREIGN KEY ([updatedById]) REFERENCES [dbo].[users] ([id])
);