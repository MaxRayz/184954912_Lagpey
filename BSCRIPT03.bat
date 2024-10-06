@echo off
help
echo.

:menu
echo ____________________________________
echo.
echo 1. IP Config
echo 2. Task List
echo 3. Task Kill
echo 4. Check Disk
echo 5. Format
echo 6. Defrag
echo 7. Find
echo 8. Attributes
echo 9. Exit
echo ____________________________________
echo.
choice /c 123456789 /m "Enter your choice:"
echo.

if errorlevel 9 goto exit
if errorlevel 8 goto attributes
if errorlevel 7 goto find
if errorlevel 6 goto defrag
if errorlevel 5 goto format
if errorlevel 4 goto checkdisk
if errorlevel 3 goto taskkill
if errorlevel 2 goto tasklist
if errorlevel 1 goto ipconfig


:execute
echo Please Type A Command Here:
set /p cmd=Command:
%cmd%
echo.
pause
echo.
echo ___________________________________________________________________
echo.
echo Do you want to stay in this command prompt?
echo ___________________________________________________________________
echo.
choice /c yn /m "Choose y or n"

if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo.
echo You chose 'YES'
echo.
goto execute

:no
echo.
echo You chose 'NO' 
goto menu


:ipconfig
ipconfig /?
goto execute

:tasklist
tasklist /?
goto execute

:taskkill
taskkill /?
goto execute

:checkdisk
chkdsk /?
goto execute

:format 
format /?
goto execute

:defrag
defrag /?
goto execute

:find
find /?
goto execute

:attributes
attrib /?
goto execute

:exit 
echo Thank you and goodbye!
echo.
pause
exit 
