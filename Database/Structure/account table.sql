/*
   Friday, July 01, 20165:05:27 PM
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
CREATE TABLE dbo.Account
	(
	AccountId int NULL,
	AccountName nvarchar(50) NULL,
	Email nvarchar(50) NULL,
	Password nvarchar(50) NULL,
	Confirmed bit NULL,
	CreateTime datetime NULL,
	CreateBy varchar(50) NULL,
	UpdateTime datetime NULL,
	UpdateBy varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Account SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Account', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Account', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Account', 'Object', 'CONTROL') as Contr_Per 