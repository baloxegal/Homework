CREATE TABLE [dbo].[course] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Course_Name] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [gh_1] UNIQUE NONCLUSTERED ([Course_Name] ASC)
);

