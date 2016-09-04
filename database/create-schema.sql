CREATE DATABASE [dev_awful_inputs];
GO -- Need to seperate into batches to run in one script 

USE [dev_awful_inputs];
CREATE TABLE [awful_inputs] 
(
	[id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[date_added] DATETIME DEFAULT GETDATE(),
	[view_name] VARCHAR(MAX),
	[description] VARCHAR(MAX),
)

CREATE TABLE [comparisons]
(
	[id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[date_added] DATETIME DEFAULT GETDATE(),
	[more_awful_input_id] INT,
	[less_awful_input_id] INT,
)

CREATE TABLE [categories]
(
	[id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[date_added] DATETIME DEFAULT GETDATE(),
	[name] VARCHAR(MAX),
)

