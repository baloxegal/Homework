CREATE TABLE [dbo].[group] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [Group_Name] VARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Group_Name] ASC)
);

