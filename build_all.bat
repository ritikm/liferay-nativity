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
    echo ERROR: failed to build windows native utils, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building jar...
call ant build-jar
if %errorlevel% neq 0 (
    echo ERROR: failed to build jar, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building windows overlays (synced)...
call ant build-windows-overlays-synced
if %errorlevel% neq 0 (
    echo ERROR: failed to build synced overlay, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building windows overlays (pending)...
call ant build-windows-overlays-pending
if %errorlevel% neq 0 (
    echo ERROR: failed to build pending overlay, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo building windows overlays (problem)...
call ant build-windows-overlays-problem
if %errorlevel% neq 0 (
    echo ERROR: failed to build problem overlay, with exit code %errorlevel%
    exit /b %errorlevel%
)

echo done
