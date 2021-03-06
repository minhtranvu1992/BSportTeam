/*
   Friday, July 01, 20164:01:36 PM
   User: 
   Server: localhost
   Database: BSportTeamDB
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE adm.UserFunction
	(
	UserId int NULL,
	RoleId int NULL,
	FeatureId int NULL,
	[Create] bit NULL,
	[Update] bit NULL,
	[Delete] bit NULL,
	FullControl bit NULL,
	CreateBy varchar(50) NULL,
	CreateTime datetime NULL,
	UpdateBy varchar(50) NULL,
	UpdateTime datetime NULL,
	DeleteFlag bit NULL
	)  ON [PRIMARY]
GO
ALTER TABLE adm.UserFunction SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE adm.Users
	(
	UserId int NOT NULL,
	UserName varchar(50) NULL,
	Active bit NULL,
	CreateTime datetime NULL,
	CreateBy varchar(50) NULL,
	UpdateTime datetime NULL,
	UpdateBy varchar(50) NULL,
	DeleteFlag bit NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Users ADD CONSTRAINT
	PK_Users PRIMARY KEY CLUSTERED 
	(
	UserId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE adm.Users SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE adm.AppFunction
	(
	FeatureId int NOT NULL,
	FeatureName varchar(50) NULL,
	Active bit NULL,
	CreateTime datetime NULL,
	CreateBy varchar(50) NULL,
	UpdateTime datetime NULL,
	UpdateBy varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.AppFunction ADD CONSTRAINT
	PK_AppFunction PRIMARY KEY CLUSTERED 
	(
	FeatureId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.AppFunction SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE adm.Roles
	(
	RoleId int NOT NULL,
	RoleName varchar(50) NULL,
	Active bit NULL,
	CreateTime datetime NULL,
	CreateBy varchar(50) NULL,
	UpdateTime datetime NULL,
	UpdateBy varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE adm.Roles ADD CONSTRAINT
	PK_Roles PRIMARY KEY CLUSTERED 
	(
	RoleId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Roles SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
