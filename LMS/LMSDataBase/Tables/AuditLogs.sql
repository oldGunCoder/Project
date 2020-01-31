CREATE TABLE [dbo].[auditLogs] (
    [id]             UNIQUEIDENTIFIER   NOT NULL,
    [entityName]     NVARCHAR (255)     NOT NULL,
    [entityId]       NVARCHAR (255)     NOT NULL,
    [action]         NVARCHAR (32)      NOT NULL,
    [createdById]    UNIQUEIDENTIFIER   NULL,
    [createdByEmail] NVARCHAR (255)     NULL,
    [timestamp]      DATETIMEOFFSET (7) NOT NULL,
    [values]         VARCHAR (MAX)      NOT NULL,
    CONSTRAINT [auditLogs_pkey] PRIMARY KEY CLUSTERED ([id] ASC)
);

