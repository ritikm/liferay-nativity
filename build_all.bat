@echo off

echo cleaning everything...
call ant clean
if %errorlevel% neq 0 (
    echo ERROR: failed to clean, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building windows utils...
call ant build-windows-util
if %errorlevel% neq 0 (
    echo ERROR: failed to build windows utils, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building windows menus...
call ant build-windows-menus
if %errorlevel% neq 0 (
    echo ERROR: failed to build windows menus, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building windows native utils...
call ant build-windows-native-util
if %errorlevel% neq 0 (
    echo ERROR: failed to build windows native utils, with exit code %errorlevel%. Try opening liferay-nativity in eclipse, and force a rebuild, and then rerun this script.
    exit /b %errorlevel%
)

echo building jar...
call ant build-jar
if %errorlevel% neq 0 (
    echo ERROR: failed to build jar, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo done
