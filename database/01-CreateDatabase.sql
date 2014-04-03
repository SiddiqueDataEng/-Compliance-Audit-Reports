/*
 * Compliance Audit Reports
 * Project #103 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ComplianceReports')
BEGIN
    ALTER DATABASE ComplianceReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ComplianceReports;
END
GO

CREATE DATABASE ComplianceReports
ON PRIMARY
(
    NAME = 'ComplianceReports_Data',
    FILENAME = 'C:\SQLData\ComplianceReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'ComplianceReports_Log',
    FILENAME = 'C:\SQLData\ComplianceReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE ComplianceReports SET RECOVERY SIMPLE;
ALTER DATABASE ComplianceReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE ComplianceReports;
GO

PRINT 'Database ComplianceReports created successfully';
PRINT 'Project: Compliance Audit Reports';
PRINT 'Description: Audit and compliance support';
GO
