CREATE TABLE [dbo].[Stud_Course] (
    [Student_Id] INT NOT NULL,
    [Course_Id]  INT NOT NULL,
    CONSTRAINT [PK_stud_course] PRIMARY KEY CLUSTERED ([Student_Id] ASC, [Course_Id] ASC),
    FOREIGN KEY ([Student_Id]) REFERENCES [dbo].[Student] ([Id]),
    CONSTRAINT [fk_course] FOREIGN KEY ([Course_Id]) REFERENCES [dbo].[Course] ([Id])
);



