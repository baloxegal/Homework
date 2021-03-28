CREATE TABLE [dbo].[stud_course] (
    [id]         INT IDENTITY (1, 1) NOT NULL,
    [student_id] INT NOT NULL,
    [course_id]  INT NOT NULL,
    CONSTRAINT [PK_performance] PRIMARY KEY CLUSTERED ([id] ASC, [student_id] ASC, [course_id] ASC),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[student] ([id]),
    CONSTRAINT [fk_course] FOREIGN KEY ([course_id]) REFERENCES [dbo].[course] ([id])
);

