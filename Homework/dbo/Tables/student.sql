CREATE TABLE [dbo].[Student] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Stud_Name]  NVARCHAR (30) NOT NULL,
    [Stud_Group] INT           NULL,
    [Marks]      INT           NULL,
    CONSTRAINT [pk_id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_group] FOREIGN KEY ([Stud_Group]) REFERENCES [dbo].[Groups] ([Id]),
    CONSTRAINT [FK_marks] FOREIGN KEY ([Marks]) REFERENCES [dbo].[Marks] ([Id]),
    CONSTRAINT [c_unique] UNIQUE NONCLUSTERED ([Marks] ASC)
);



