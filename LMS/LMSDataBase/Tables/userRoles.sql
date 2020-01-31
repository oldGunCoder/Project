CREATE TABLE [dbo].[userRoles] (
    [id]          UNIQUEIDENTIFIER   NOT NULL,
    [role]        NVARCHAR (255)     NOT NULL,
    [createdAt]   DATETIMEOFFSET (7) NOT NULL,
    [updatedAt]   DATETIMEOFFSET (7) NOT NULL,
    [deletedAt]   DATETIMEOFFSET (7) NULL,
    [userId]      UNIQUEIDENTIFIER   NULL,
    [createdById] UNIQUEIDENTIFIER   NULL,
    [updatedById] UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [userRoles_pkey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [userroles_createdbyid_fkey] FOREIGN KEY ([createdById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [userroles_updatedbyid_fkey] FOREIGN KEY ([updatedById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [userroles_userid_fkey] FOREIGN KEY ([userId]) REFERENCES [dbo].[users] ([id])
);