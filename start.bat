@echo off
setlocal

REM Check if both parameters are provided
IF "%~1"=="" (
  echo Please provide the drive as the first parameter.
  exit /b 1
)
IF "%~2"=="" (
  echo Please provide a number as the second parameter.
  exit /b 1
)

REM Find the folder that starts with the provided number
for /D /R "projects" %%G in (%~2.*) do (
  set "folder=%%G"
  goto :copyFolder
)

REM Check if the folder is found
:checkFolder
IF "%folder%"=="" (
  echo No folder found starting with '%~2'.
  exit /b 1
)

REM Copy everything in the folder to the specified drive
:copyFolder
xcopy /E /I /Y /S "%folder%" "%~1:\"
echo Folder '%folder%' copied to '%~1:\'.
