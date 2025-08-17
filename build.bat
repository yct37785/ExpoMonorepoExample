@echo off
setlocal

echo Cleaning dist folder...

:: Remove dist inside packages/cool-package
if exist "packages\cool-package\dist" (
    rmdir /s /q "packages\cool-package\dist"
)

echo.
echo Building cool-package...

:: Run tsc with the correct tsconfig path
call npx tsc -p packages\cool-package\tsconfig.json

echo.
echo Build finished.
pause
