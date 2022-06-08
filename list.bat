@echo off

:: variables
set logfile=test.log
set password=bazinga

:: start the next entry in the log file
echo _____ >> %logfile%
date /T >> %logfile%
time /T >> %logfile%

:: read the passed file line by line and do something
for /F "usebackq tokens=*" %%A in (%1) do echo %%A %password% >> %logfile%

:: output the log file to the console
type %logfile%
