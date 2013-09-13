
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 09/07/2013 10:47:22
-- Generated from EDMX file: C:\Users\ana\documents\visual studio 2012\Projects\ClassProject2\ClassProject2\Model2.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ClassProject];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ActivityGrades]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grades] DROP CONSTRAINT [FK_ActivityGrades];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassFilesActivity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassFiles] DROP CONSTRAINT [FK_ClassFilesActivity];
GO
IF OBJECT_ID(N'[dbo].[FK_ScheduleActivity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Activities] DROP CONSTRAINT [FK_ScheduleActivity];
GO
IF OBJECT_ID(N'[dbo].[FK_GradesPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grades] DROP CONSTRAINT [FK_GradesPerson];
GO
IF OBJECT_ID(N'[dbo].[FK_LabPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_LabPerson];
GO
IF OBJECT_ID(N'[dbo].[FK_ScheduleLab]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Labs] DROP CONSTRAINT [FK_ScheduleLab];
GO
IF OBJECT_ID(N'[dbo].[FK_PicturePerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pictures] DROP CONSTRAINT [FK_PicturePerson];
GO
IF OBJECT_ID(N'[dbo].[FK_StudyGroupSchedule]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StudyGroups] DROP CONSTRAINT [FK_StudyGroupSchedule];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Activities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Activities];
GO
IF OBJECT_ID(N'[dbo].[ClassFiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClassFiles];
GO
IF OBJECT_ID(N'[dbo].[Grades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grades];
GO
IF OBJECT_ID(N'[dbo].[Labs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Labs];
GO
IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Pictures]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pictures];
GO
IF OBJECT_ID(N'[dbo].[Schedules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Schedules];
GO
IF OBJECT_ID(N'[dbo].[StudyGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StudyGroups];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Activities'
CREATE TABLE [dbo].[Activities] (
    [ActID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Property1] nvarchar(max)  NOT NULL,
    [ScheduleShedID] int  NOT NULL
);
GO

-- Creating table 'ClassFiles'
CREATE TABLE [dbo].[ClassFiles] (
    [FileID] int IDENTITY(1,1) NOT NULL,
    [File] nvarchar(max)  NOT NULL,
    [Activity_ActID] int  NULL
);
GO

-- Creating table 'Grades'
CREATE TABLE [dbo].[Grades] (
    [GradeID] int IDENTITY(1,1) NOT NULL,
    [Value] int  NOT NULL,
    [PersonPersonId] int  NOT NULL,
    [ActivityActID] int  NOT NULL
);
GO

-- Creating table 'Labs'
CREATE TABLE [dbo].[Labs] (
    [LabID] int IDENTITY(1,1) NOT NULL,
    [StudName] nvarchar(max)  NULL,
    [InstrName] nvarchar(max)  NULL,
    [ScheduleShedID] int  NOT NULL
);
GO

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [PersonId] int IDENTITY(1,1) NOT NULL,
    [Fname] nvarchar(max)  NULL,
    [Lname] nvarchar(max)  NULL,
    [Username] nvarchar(max)  NULL,
    [Password] nvarchar(max)  NULL,
    [ClassID] nvarchar(max)  NULL,
    [LabLabID] int  NOT NULL,
    [PicturePictureID] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Pictures'
CREATE TABLE [dbo].[Pictures] (
    [PicureID] int IDENTITY(1,1) NOT NULL,
    [PictureFile] nvarchar(max)  NULL,
    [Person_PersonId] int  NULL
);
GO

-- Creating table 'Schedules'
CREATE TABLE [dbo].[Schedules] (
    [ShedID] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NULL,
    [Day] nvarchar(max)  NULL,
    [Time] nvarchar(max)  NULL
);
GO

-- Creating table 'StudyGroups'
CREATE TABLE [dbo].[StudyGroups] (
    [StuGrID] int IDENTITY(1,1) NOT NULL,
    [GroupName] nvarchar(max)  NOT NULL,
    [ScheduleShedID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ActID] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [PK_Activities]
    PRIMARY KEY CLUSTERED ([ActID] ASC);
GO

-- Creating primary key on [FileID] in table 'ClassFiles'
ALTER TABLE [dbo].[ClassFiles]
ADD CONSTRAINT [PK_ClassFiles]
    PRIMARY KEY CLUSTERED ([FileID] ASC);
GO

-- Creating primary key on [GradeID] in table 'Grades'
ALTER TABLE [dbo].[Grades]
ADD CONSTRAINT [PK_Grades]
    PRIMARY KEY CLUSTERED ([GradeID] ASC);
GO

-- Creating primary key on [LabID] in table 'Labs'
ALTER TABLE [dbo].[Labs]
ADD CONSTRAINT [PK_Labs]
    PRIMARY KEY CLUSTERED ([LabID] ASC);
GO

-- Creating primary key on [PersonId] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([PersonId] ASC);
GO

-- Creating primary key on [PicureID] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [PK_Pictures]
    PRIMARY KEY CLUSTERED ([PicureID] ASC);
GO

-- Creating primary key on [ShedID] in table 'Schedules'
ALTER TABLE [dbo].[Schedules]
ADD CONSTRAINT [PK_Schedules]
    PRIMARY KEY CLUSTERED ([ShedID] ASC);
GO

-- Creating primary key on [StuGrID] in table 'StudyGroups'
ALTER TABLE [dbo].[StudyGroups]
ADD CONSTRAINT [PK_StudyGroups]
    PRIMARY KEY CLUSTERED ([StuGrID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActivityActID] in table 'Grades'
ALTER TABLE [dbo].[Grades]
ADD CONSTRAINT [FK_ActivityGrades]
    FOREIGN KEY ([ActivityActID])
    REFERENCES [dbo].[Activities]
        ([ActID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivityGrades'
CREATE INDEX [IX_FK_ActivityGrades]
ON [dbo].[Grades]
    ([ActivityActID]);
GO

-- Creating foreign key on [Activity_ActID] in table 'ClassFiles'
ALTER TABLE [dbo].[ClassFiles]
ADD CONSTRAINT [FK_ClassFilesActivity]
    FOREIGN KEY ([Activity_ActID])
    REFERENCES [dbo].[Activities]
        ([ActID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassFilesActivity'
CREATE INDEX [IX_FK_ClassFilesActivity]
ON [dbo].[ClassFiles]
    ([Activity_ActID]);
GO

-- Creating foreign key on [ScheduleShedID] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [FK_ScheduleActivity]
    FOREIGN KEY ([ScheduleShedID])
    REFERENCES [dbo].[Schedules]
        ([ShedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ScheduleActivity'
CREATE INDEX [IX_FK_ScheduleActivity]
ON [dbo].[Activities]
    ([ScheduleShedID]);
GO

-- Creating foreign key on [PersonPersonId] in table 'Grades'
ALTER TABLE [dbo].[Grades]
ADD CONSTRAINT [FK_GradesPerson]
    FOREIGN KEY ([PersonPersonId])
    REFERENCES [dbo].[People]
        ([PersonId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GradesPerson'
CREATE INDEX [IX_FK_GradesPerson]
ON [dbo].[Grades]
    ([PersonPersonId]);
GO

-- Creating foreign key on [LabLabID] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_LabPerson]
    FOREIGN KEY ([LabLabID])
    REFERENCES [dbo].[Labs]
        ([LabID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LabPerson'
CREATE INDEX [IX_FK_LabPerson]
ON [dbo].[People]
    ([LabLabID]);
GO

-- Creating foreign key on [ScheduleShedID] in table 'Labs'
ALTER TABLE [dbo].[Labs]
ADD CONSTRAINT [FK_ScheduleLab]
    FOREIGN KEY ([ScheduleShedID])
    REFERENCES [dbo].[Schedules]
        ([ShedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ScheduleLab'
CREATE INDEX [IX_FK_ScheduleLab]
ON [dbo].[Labs]
    ([ScheduleShedID]);
GO

-- Creating foreign key on [Person_PersonId] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [FK_PicturePerson]
    FOREIGN KEY ([Person_PersonId])
    REFERENCES [dbo].[People]
        ([PersonId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PicturePerson'
CREATE INDEX [IX_FK_PicturePerson]
ON [dbo].[Pictures]
    ([Person_PersonId]);
GO

-- Creating foreign key on [ScheduleShedID] in table 'StudyGroups'
ALTER TABLE [dbo].[StudyGroups]
ADD CONSTRAINT [FK_StudyGroupSchedule]
    FOREIGN KEY ([ScheduleShedID])
    REFERENCES [dbo].[Schedules]
        ([ShedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudyGroupSchedule'
CREATE INDEX [IX_FK_StudyGroupSchedule]
ON [dbo].[StudyGroups]
    ([ScheduleShedID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------