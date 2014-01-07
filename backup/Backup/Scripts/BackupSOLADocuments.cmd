@echo off
REM SOLA Samoa Documents Backup Script
REM
REM Author: Andrew McDowell 
REM Date: 24 Nov 2012
REM 
REM This script uses the postgres pg_dump utility to create a backup 
REM of the SOLA Samoa Documents database. This database contains
REM approx 60GB to 70GB of document data so backing up this database
REM can take serveral hours. Instead this script supports a partial
REM backup of the documents table by copying all new documents created
REM since the production go live of SOLA into a document_backup table
REM and then runs a back of that table. 
REM
REM In the case of failure, the latest full backup of the documents table
REM should be restored along with the latest partial backup to the
REM document.document_backup table. The data in document.document_backup
REM can then be transfered to the document.document table using a bulk
REM INSERT statement. 
REM
REM This script also supports running a full backup of the 
REM document.document table, but be aware this may take serveral hours. 

REM Check the password parameter
set pword=?
set type=P
set frequency=03-Daily
set sharePword=?
IF [%1] EQU [] (
    REM Prompt user for the password if not set
	set /p pword= Password [%pword%] :
	set /p type= Type of backup - F Full or P Partial !WARNING A full backup may take serveral hours [%type%] :
	set /p frequency= Set frequency subdirectory - 02-Hourly or 03-Daily [%frequency%] :
    set /p sharePword= Restore file share password [%sharePword%] :
) ELSE (
    set pword=%1
	IF [%2] NEQ [] (
	   set type=%2
	)
   IF [%3] NEQ [] (
	   set frequency=%3
	)
   IF [%4] NEQ [] (
	   set sharePword=%4
	)
)

REM Set location of pg_dump, backup file location and database name
set pg_dump_exe="C:\Program Files\PostgreSQL\9.2\bin\pg_dump"
set psql_exe="C:\Program Files\PostgreSQL\9.2\bin\psql" 
set backup_file_path=E:\Database\Backup\
REM R: should be a share to the D:\Restore directory on MNRE-SOLA01
set training_backup="R:\training_docs.backup"
set db_name=sola_documents_prod

REM Parse out the current date and time
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
 set dow=%%i
 set month=%%j
 set day=%%k
 set year=%%l
)

set hr=%TIME: =0%
set hr=%hr:~0,2%
set min=%TIME:~3,2%

set datestr=%year%%month%%day%_%hr%%min%

REM Set the file names
set BACKUP_FILE="%backup_file_path%%frequency%\sola_docs_%type%_%datestr%.backup" 
set BACKUP_LOG="%backup_file_path%%frequency%\sola_docs_%type%_%datestr%.log" 

REM get the password from the command line and set the
REM PGPASSWORD environ variable
REM echo pword=%pword%...
SET PGPASSWORD=%pword%

echo Starting backup %time%
echo Starting backup %time% > %BACKUP_LOG% 2>&1
echo Backup File=%BACKUP_FILE% 
echo Backup File=%BACKUP_FILE% >> %BACKUP_LOG% 2>&1

IF [%type%] EQU [F] (
	echo Dumping all of the document table...
    echo Dumping all of the document table... >> %BACKUP_LOG% 2>&1
	
	%pg_dump_exe% -i -h localhost -p 5432 -U postgres ^
				  -F c -b -v -t document.document -f ^
				  %BACKUP_FILE% %db_name% >> %BACKUP_LOG% 2>&1
) ELSE (
	REM Run a partial backup by copying documents since the documents DB was first created and backing those up. 
	echo Copy to document_backup table...
    echo Copy to document_backup table... >> %BACKUP_LOG% 2>&1
	%psql_exe% --host=localhost --port=5432 --username=postgres --dbname=%db_name% --file="%backup_file_path%\Scripts\copy_documents.sql"  >> %BACKUP_LOG% 2>&1
	
	echo Dumping document_backup table...
    echo Dumping document_backup table...>> %BACKUP_LOG% 2>&1
	%pg_dump_exe% -i -h localhost -p 5432 -U postgres ^
				  -F c -b -v -t document.document_backup -f ^
				  %BACKUP_FILE% %db_name% >> %BACKUP_LOG% 2>&1
	
	echo Copying file to %training_backup%...
	echo Copying file to %training_backup%... >> %BACKUP_LOG% 2>&1
	REM Configure a network share to the server hosting the training system
    net use R: \\mnre-sola01\Restore /user:MNRE-SOLA01\Administrator %sharePword% >> %BACKUP_LOG% 2>&1
	copy /B /Y %BACKUP_FILE% %training_backup% >> %BACKUP_LOG% 2>&1
)
echo Finished at %time%
echo Finished at %time% >> %BACKUP_LOG% 2>&1
