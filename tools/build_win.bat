@echo off
set DIR=%~dp0
set DIR_TO=%DIR%\build_win32
rd /q /s %DIR_TO%

md %DIR_TO%
cd %DIR_TO%
cmake -G "Visual Studio 14 2015" -DCRYPTOPP_BUILD_TESTS=OFF ..\..
cmake --build . --config Debug
cmake --build . --config Release

pause
