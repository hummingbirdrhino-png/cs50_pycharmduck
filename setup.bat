@echo off
echo Setting up Gradle wrapper...
where gradle >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Gradle not found. Please install from https://gradle.org/install/
    exit /b 1
)
gradle wrapper --gradle-version 8.6
echo Done! Now run: gradlew.bat buildPlugin
