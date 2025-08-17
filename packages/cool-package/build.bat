@echo off

echo Cleaning dist folder...

if exist "dist" (
    rmdir /s /q "dist"
)

echo.
echo Building cool-package...
call npx tsc -p tsconfig.json --listFiles --listEmittedFiles

echo.
echo Build finished.
pause
