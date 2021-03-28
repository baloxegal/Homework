CREATE TABLE [dbo].[course] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [name] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [gh_1] UNIQUE NONCLUSTERED ([name] ASC)
);

