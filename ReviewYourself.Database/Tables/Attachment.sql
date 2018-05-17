USE ReviewYourselfProjectdb
GO
DROP TABLE IF EXISTS Attachment
GO
CREATE TABLE Attachment
(
    AttachmentID    UNIQUEIDENTIFIER    NOT NULL,
    SolutionID      UNIQUEIDENTIFIER    NOT NULL,
    Document        VARBINARY(MAX)      NOT NULL,

    CONSTRAINT PK_ATTACHMENT                    PRIMARY KEY (AttachmentID),
    CONSTRAINT FK_ATTACHMENT_SOLUTION_ID        FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
)