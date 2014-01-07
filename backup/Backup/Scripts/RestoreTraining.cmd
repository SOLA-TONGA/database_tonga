@echo off
REM SOLA Samoa Training Restore Script
REM
REM Author: Andrew McDowell 
REM Date: 24 Nov 2012
REM 
REM This script uses the postgres pg_restore utility restore
REM a production backup into the SOLA Samoa Training environment.
REM It does not overwrite the system.appuser or system.setting
REM tables to ensure users can maintain different passwords on 
REM production and training. 
REM 
REM It also restores any new documents added in production to the
REM training documents database to keep them in sync. 
REM
REM This script is not intended to make Training a Hot Backup
REM of production, but simply to keep the data between the two
REM environments relatively in sync. It shoudl be run once a
REM day at most, but can be run on an ad-hoc basis if required. 
REM 
REM Training should not be used to generate lodgement 
REM statistics reports because the restore excludes the 
REM historic data used by the lodgement statistics report

REM Check the password parameter
set pword=?
IF [%1] EQU [] (
    REM Prompt user for the password if not set
	set /p pword= Password [%pword%] :
) ELSE (
    set pword=%1
)

REM Set location of pg_restore and psql executables
set psql_exe="C:\Program Files (x86)\PostgreSQL\9.1\bin\psql" 
set pg_restore_exe="C:\Program Files (x86)\PostgreSQL\9.1\bin\pg_restore"

REM Set the paths to the backup files. These paths should point to a share 
REM on the Training server that is populated with backups by the BackupSOLA 
REM and BackupSOLADocuments scripts. 
set training_backup_path=C:\work\Backup\training\
set training_backup=%training_backup_path%training.backup
set training_users_backup=%training_backup_path%training_users.sql
set training_docs_backup=%training_backup_path%training_docs.backup

REM Set the database targets
set db_name=backup
set db_name_docs=backup

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

REM Set the file name for the restore log
set RESTORE_LOG="%training_backup_path%restore_%datestr%.log" 

REM get the password from the command line and set the
REM PGPASSWORD environ variable
REM echo pword=%pword%...
SET PGPASSWORD=%pword%

echo Starting restore %time%
echo Starting restore %time% > %RESTORE_LOG% 2>&1

echo Update users table... 
echo Update users table...  >> %RESTORE_LOG% 2>&1
REM Insert any new users from production into training
%psql_exe% --host=localhost --port=5432 --username=postgres --dbname=%db_name% --file=%training_users_backup%  >> %RESTORE_LOG% 2>&1

echo Restoring to %db_name%... 
echo Restoring to %db_name%...  >> %RESTORE_LOG% 2>&1
REM Restore the new production copy of the database		  
%pg_restore_exe% -h localhost -p 5432 -U postgres -c -d %db_name% -j 3 %training_backup% >> %RESTORE_LOG% 2>&1

echo Restoring docs to %db_name_docs%... 
echo Restoring docs to %db_name_docs%...  >> %RESTORE_LOG% 2>&1
REM Restore the documents to the document_backup table		  
%pg_restore_exe% -h localhost -p 5432 -U postgres -c -d %db_name_docs% -j 3 %training_docs_backup% >> %RESTORE_LOG% 2>&1				  

echo Copy docs to document table... 
echo Copy docs to document table... >> %RESTORE_LOG% 2>&1
REM copy the docs from document_backup into the main document table
%psql_exe% --host=localhost --port=5432 --username=postgres --dbname=%db_name_docs% --file=%training_backup_path%restore_documents.sql  >> %RESTORE_LOG% 2>&1
	
echo Finished restore at %time%
echo Finished restore at %time% >> %RESTORE_LOG% 2>&1
