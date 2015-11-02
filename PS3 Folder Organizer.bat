@echo off
color 3
title PS3 Folder Organizer
:list
cls
echo ---------------------------
echo  PS3 Folder Organizer v1.0
echo ===========================
echo   Created by Hubertus2224
echo ---------------------------
echo   Put this file into your
echo       USB Flash Drive
echo ---------------------------
echo 1. Create Full PS3 Folder Tree
echo 2. Put specified file into folder
echo 3. Exit
echo ---------------------------
set /p list=Select: 

if "%list%"=="1" goto generate
if "%list%"=="2" goto copy
if "%list%"=="3" exit

goto list

:generate
cls
echo Make sure you have put this file on your USB drive (ENTER to continue)
echo 1. Back to Main Screen
echo 2. Exit
set /p generate=Select: 

if "%generate%"=="1" goto list
if "%generate%"=="2" exit

cls
echo Generating folder tree, please wait...

md \MUSIC
md \PICTURE
md \VIDEO
md \PS3\SAVEDATA
md \PS3\THEME
md \PS3\UPDATE
md \PS3\EXPORT\BACKUP
md \PS3\EXPORT\PSV

echo ====================
echo Folder Tree Created!
echo ====================
pause

goto list

:copy
cls
echo Make sure you have put this file on your USB drive (ENTER to continue)
echo 1. Back to Main Screen
echo 2. Exit
set /p copy1=Select: 

if "%copy1%"=="1" goto list
if "%copy1%"=="2" exit

cls
echo Select File type:
echo 1. Picture
echo 2. Music
echo 3. Video
echo 4. Update
echo 5. Theme
echo 6. Backup
echo 7. PS1/PS2 Game Save
echo 8. PS3 Game Save
set /p copy2=Select: 

if "%copy2%"=="1" goto picture
if "%copy2%"=="2" goto music
if "%copy2%"=="3" goto video
if "%copy2%"=="4" goto update
if "%copy2%"=="5" goto theme
if "%copy2%"=="6" goto backup
if "%copy2%"=="7" goto ps1
if "%copy2%"=="8" goto ps3

goto copy

:picture
cls
md \PICTURE
set /p png=Enter directory: 
echo Copying files. Please wait...
copy "%png%" "\PICTURE"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:music
cls
md \MUSIC
set /p mp3=Enter directory: 
echo Copying files. Please wait...
copy "%mp3%" "\MUSIC"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:video
cls
md \VIDEO
set /p avi=Enter directory: 
echo Copying files. Please wait...
copy "%avi%" "\VIDEO"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:update
cls
md \PS3\UPDATE
set /p pup=Enter directory: 
echo Copying files. Please wait...
copy "%pup%" "\PS3\UPDATE"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:theme
cls
md \PS3\THEME
set /p p3t=Enter directory: 
echo Copying files. Please wait...
copy "%p3t%" "\PS3\THEME"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:backup
cls
md \PS3\EXPORT\BACKUP
set /p dat=Enter directory: 
echo Copying files. Please wait...
copy "%dat%" "\PS3\EXPORT\BACKUP"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:ps1
cls
md \PS3\EXPORT\PSV
set /p psv=Enter directory: 
echo Copying files. Please wait...
copy "%psv%" "\PS3\EXPORT\PSV"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list

:ps3
cls
md \PICTURE
set /p ps3=Enter directory: 
echo Copying files. Please wait...
copy "%ps3%" "\PICTURE"
cls
echo ===================
echo Transfer Complited!
echo ===================
pause
goto list