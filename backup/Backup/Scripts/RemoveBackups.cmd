@echo off
REM SOLA Samoa Documents Backup Script
REM
REM Author: Andrew McDowell 
REM Date: 24 Nov 2012
REM 
REM This script is used to remove any old backup files that are no 
REM longer relevent. For detailed usage of the forfiles command
REM use forfiles /? from a command prompt.
REM 

set sharePword=?
IF [%1] EQU [] (
    REM Prompt user for the password if not set
	set /p sharePword= Restore file share password [%sharePword%] :
) ELSE (
    set sharePword=%1
	)
)

SET backup_file_path=E:\Database\Backup\
SET hourly_backups="%backup_file_path%02-Hourly" 
SET daily_backups="%backup_file_path%03-Daily" 
SET training="R:" 

REM Deletes any files older than 2 days from todays date
forfiles /P %hourly_backups%  /M *.backup /D -2 /C "cmd /c del @PATH"
forfiles /P %hourly_backups%  /M *.log /D -2 /C "cmd /c del @PATH" 

REM Deletes any files older than 7 days from todays date
forfiles /P %daily_backups%  /M *.backup /D -7 /C "cmd /c del @PATH"
forfiles /P %daily_backups%  /M *.log /D -7 /C "cmd /c del @PATH"

REM Deletes any restore log files older than 7 days from todays date
REM Setup a network share first to access the Restore folder on MNRE-SOLA01
net use R: \\mnre-sola01\Restore /user:MNRE-SOLA01\Administrator %sharePword%
forfiles /P %training%  /M *.log /D -7 /C "cmd /c del @PATH"