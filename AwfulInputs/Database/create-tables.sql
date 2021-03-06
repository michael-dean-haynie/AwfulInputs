IF db_id('AwfulInputs') IS NOT NULL 
BEGIN
USE [AwfulInputs];
CREATE TABLE [AwfulInput] 
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[DateAdded] DATETIME DEFAULT GETDATE(),
	[ViewName] VARCHAR(MAX),
	[Description] VARCHAR(MAX),
)

CREATE TABLE [Comparison]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[DateAdded] DATETIME DEFAULT GETDATE(),
	[MoreAwfulInputID] INT,
	[LessAwfulInputID] INT,
)

CREATE TABLE [Category]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[DateAdded] DATETIME DEFAULT GETDATE(),
	[Name] VARCHAR(MAX),
	[CategoryTypeID] INT
)

CREATE TABLE [CategoryType]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[DateAdded] DATETIME DEFAULT GETDATE(),
	[Name] VARCHAR(MAX),
)

CREATE TABLE [AwfulInput_Category]
(
	[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[DateAdded] DATETIME DEFAULT GETDATE(),
	[AwfulInputID] INT,
	[CategoryID] INT
)
END