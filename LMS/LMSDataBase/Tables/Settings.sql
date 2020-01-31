CREATE TABLE [dbo].[settings] (
    [id]               NVARCHAR (255)     DEFAULT ('default') NOT NULL,
    [theme]            NVARCHAR (255)     NOT NULL,
    [loanPeriodInDays] INT                NULL,
    [createdAt]        DATETIMEOFFSET (7) NOT NULL,
    [updatedAt]        DATETIMEOFFSET (7) NOT NULL,
    [deletedAt]        DATETIMEOFFSET (7) NULL,
    [createdById]      UNIQUEIDENTIFIER   NULL,
    [updatedById]      UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [settings_pkey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [settings_createdbyid_fkey] FOREIGN KEY ([createdById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [settings_updatedbyid_fkey] FOREIGN KEY ([updatedById]) REFERENCES [dbo].[users] ([id])
);

