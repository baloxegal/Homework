CREATE TABLE [dbo].[Marks] (
    [Id]          INT IDENTITY (1, 1) NOT NULL,
    [Biology]     INT NULL,
    [Design]      INT NULL,
    [Development] INT NULL,
    [Economy]     INT NULL,
    [Engineering] INT NULL,
    [Math]        INT NULL,
    [Society]     INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CH_Mark] CHECK ([Biology]>(0) AND [Biology]<=(10) AND [Design]>(0) AND [Design]<=(10) AND [Development]>(0) AND [Development]<=(10) AND [Economy]>(0) AND [Economy]<=(10) AND [Engineering]>(0) AND [Engineering]<=(10) AND [Math]>(0) AND [Math]<=(10) AND [Society]>(0) AND [Society]<=(10))
);

