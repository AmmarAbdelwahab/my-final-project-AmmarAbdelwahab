CREATE TABLE [dbo].[Student] (
    [StudentId] CHAR (10)      NOT NULL,
    [Firstname] NVARCHAR (MAX) NULL,
    [Lastname]  NVARCHAR (MAX) NULL,
    [Gender]    CHAR (1)       NULL,
    [Major]     NVARCHAR (MAX) NULL,
    [Email]     NVARCHAR (MAX) NULL,
    [Password]  NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([StudentId] ASC),
    CONSTRAINT [CK_Student_Column] CHECK ([Gender]='M' OR [Gender]='F')
);

