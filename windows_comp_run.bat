@echo off

REM Compile MovieDB.java
javac .\src\ArrayUtil.java -cp .\bin -d .\bin
if %errorlevel% neq 0 (
    echo Failed to compile MovieDB.java
    exit /b %errorlevel%
)

REM Compile MovieDB.java
javac .\src\KeyType.java -cp .\bin -d .\bin
if %errorlevel% neq 0 (
    echo Failed to compile MovieDB.java
    exit /b %errorlevel%
)

REM Compile Table.java
javac .\src\Table.java -cp .\bin -d .\bin
if %errorlevel% neq 0 (
    echo Failed to compile Table.java
    exit /b %errorlevel%
)

REM Compile MovieDB.java
javac .\src\MovieDB.java -cp .\bin -d .\bin
if %errorlevel% neq 0 (
    echo Failed to compile MovieDB.java
    exit /b %errorlevel%
)

REM Print success message
echo Compiled in terminal

REM Run MovieDB
java -cp .\bin MovieDB
