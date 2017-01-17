SET ANSI_NULLS              ON;
SET ANSI_PADDING            ON;
SET ANSI_WARNINGS           ON;
SET ANSI_NULL_DFLT_ON       ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET QUOTED_IDENTIFIER       ON;
go

-- Must be executed inside the target database
-- Views
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_computer' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_computer;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_date' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_date;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_program' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_program;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_sccmcheck' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_sccmcheck;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_softwareupdate' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_softwareupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_usercomputer' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_usercomputer;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_userview' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_userview;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_computermalware' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_computermalware;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_computerprogram' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_computerprogram;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_computerupdate' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_computerupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_configuration' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_configuration;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_scanhistory' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_scanhistory;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_update' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_update;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_user' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_user;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_collection' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_collection;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='vw_computercollection' AND TABLE_TYPE='VIEW')
    DROP VIEW pbist_sccm.vw_computercollection;

-- Tables
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computer' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computer;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computermalware' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computermalware;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computerprogram' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computerprogram;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computersoftwareupdate' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computersoftwareupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='date' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.[date];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='operatingsystem' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.operatingsystem;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='program' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.program;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='site' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.[site];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='softwareupdate' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.softwareupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='user' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.[user];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='usercomputer' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.usercomputer;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computerupdate' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computerupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='configuration' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.[configuration];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='scanhistory' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.scanhistory;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='update' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.[update];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='malware' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.malware;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='malware_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.malware_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='collection' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.[collection];
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computercollection' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computercollection;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computer_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computer_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computerprogram_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computerprogram_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computerupdate_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computerupdate_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='program_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.program_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='programinventory_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.programinventory_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='scanhistory_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.scanhistory_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='site_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.site_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='update_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.update_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='user_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.user_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='usercomputer_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.usercomputer_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computermalware_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computermalware_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='collection_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.collection_staging;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='pbist_sccm' AND TABLE_NAME='computercollection_staging' AND TABLE_TYPE='BASE TABLE')
    DROP TABLE pbist_sccm.computercollection_staging;

-- Stored procedures
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_get_replication_counts' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_get_replication_counts;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_get_prior_content' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_get_prior_content;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_get_last_updatetime' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_get_last_updatetime;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatecomputer' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatecomputer;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatecomputermalware' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatecomputermalware;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatecomputerprogram' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatecomputerprogram;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatecomputerupdate' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatecomputerupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatemalware' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatemalware;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populateprogram' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populateprogram;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatescanhistory' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatescanhistory;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatesite' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatesite;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populateupdate' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populateupdate;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populateuser' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populateuser;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populateusercomputer' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populateusercomputer;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatecollection' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatecollection;
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_SCHEMA='pbist_sccm' AND ROUTINE_NAME='sp_populatecomputercollection' AND ROUTINE_TYPE='PROCEDURE')
    DROP PROCEDURE pbist_sccm.sp_populatecomputercollection;

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name='pbist_sccm')
BEGIN
    EXEC ('CREATE SCHEMA pbist_sccm AUTHORIZATION dbo'); -- Avoid batch error
END;