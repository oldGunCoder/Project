CREATE TABLE [dbo].[users] (
    [id]                              UNIQUEIDENTIFIER   NOT NULL,
    [fullName]                        NVARCHAR (255)     NULL,
    [firstName]                       NVARCHAR (80)      NULL,
    [password]                        NVARCHAR (255)     NULL,
    [emailVerified]                   BIT                DEFAULT ((0)) NOT NULL,
    [emailVerificationToken]          NVARCHAR (255)     NULL,
    [emailVerificationTokenExpiresAt] DATETIMEOFFSET (7) NULL,
    [passwordResetToken]              NVARCHAR (255)     NULL,
    [passwordResetTokenExpiresAt]     DATETIMEOFFSET (7) NULL,
    [lastName]                        NVARCHAR (175)     NULL,
    [phoneNumber]                     NVARCHAR (24)      NULL,
    [email]                           NVARCHAR (255)     NOT NULL,
    [authenticationUid]               NVARCHAR (255)     NULL,
    [disabled]                        BIT                DEFAULT ((0)) NOT NULL,
    [importHash]                      NVARCHAR (255)     NULL,
    [createdAt]                       DATETIMEOFFSET (7) NOT NULL,
    [updatedAt]                       DATETIMEOFFSET (7) NOT NULL,
    [deletedAt]                       DATETIMEOFFSET (7) NULL,
    [createdById]                     UNIQUEIDENTIFIER   NULL,
    [updatedById]                     UNIQUEIDENTIFIER   NULL,
    CONSTRAINT [users_pkey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [users_createdbyid_fkey] FOREIGN KEY ([createdById]) REFERENCES [dbo].[users] ([id]),
    CONSTRAINT [users_updatedbyid_fkey] FOREIGN KEY ([updatedById]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [users_email_key]
    ON [dbo].[users]([email] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [users_importHash_key]
    ON [dbo].[users]([importHash] ASC);

