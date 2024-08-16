CREATE TABLE [dbo].[SoftwareRequest] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [FacultyName]    NVARCHAR (100) NOT NULL,
    [FacultyEmail]   NVARCHAR (100) NOT NULL,
    [ChairEmail]     NVARCHAR (100) NOT NULL,
    [Department]     NVARCHAR (100) NOT NULL,
    [SoftwareName]   NVARCHAR (100) NOT NULL,
    [Cost]           MONEY          NOT NULL,
    [ApprovalStatus] NVARCHAR (100) NOT NULL,
    [DateSubmitted]  DATE           NOT NULL,
    [DataFormXML]    XML            NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);