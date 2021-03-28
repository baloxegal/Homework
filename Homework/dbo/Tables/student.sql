CREATE TABLE [dbo].[student] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [name] NVARCHAR (30) NOT NULL,
    CONSTRAINT [pk_id] PRIMARY KEY CLUSTERED ([id] ASC)
);

