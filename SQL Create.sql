USE [master]

IF db_id('TestYourStrength') IS NULL
  CREATE DATABASE [TestYourStrength]
GO

USE [TestYourStrength]
GO


DROP TABLE IF EXISTS [Users];
DROP TABLE IF EXISTS [Languages];
DROP TABLE IF EXISTS [Levels];
DROP TABLE IF EXISTS [Questions];
DROP TABLE IF EXISTS [Answers];
DROP TABLE IF EXISTS [TestResults];
GO


CREATE TABLE [Users] (
  [id] int PRIMARY KEY IDENTITY,
  [email] nvarchar(255),
  [pass] nvarchar(255),
  [username] nvarchar(255),
  [admin] bit
)
GO

CREATE TABLE [Languages] (
  [id] int PRIMARY KEY IDENTITY,
  [language] nvarchar(255)
)
GO

CREATE TABLE [Levels] (
  [id] int PRIMARY KEY IDENTITY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [Questions] (
  [id] int PRIMARY KEY IDENTITY,
  [question] nvarchar(255),
  [answerId] int,
  [levelId] int,
  [languageId] int
)
GO

CREATE TABLE [Answers] (
  [id] int PRIMARY KEY IDENTITY,
  [string] nvarchar(255),
  [levelId] int,
  [languageId] int,
)
GO

CREATE TABLE [TestResults] (
  [id] int PRIMARY KEY IDENTITY,
  [scores] int,
  [levelId] int,
  [languageId] int,
  [userId] int
)
GO


ALTER TABLE [Questions] ADD FOREIGN KEY ([levelId]) REFERENCES [Levels] ([id])
GO

ALTER TABLE [Questions] ADD FOREIGN KEY ([answerId]) REFERENCES [Answers] ([id])
GO

ALTER TABLE [Answers] ADD FOREIGN KEY ([levelId]) REFERENCES [Levels] ([id])
GO

ALTER TABLE [Questions] ADD FOREIGN KEY ([languageId]) REFERENCES [Languages] ([id])
GO

ALTER TABLE [Answers] ADD FOREIGN KEY ([languageId]) REFERENCES [Languages] ([id])
GO

ALTER TABLE [TestResults] ADD FOREIGN KEY ([levelId]) REFERENCES [Levels] ([id])
GO

ALTER TABLE [TestResults] ADD FOREIGN KEY ([languageId]) REFERENCES [Languages] ([id])
GO

ALTER TABLE [TestResults] ADD FOREIGN KEY ([userId]) REFERENCES [Users] ([id])
GO