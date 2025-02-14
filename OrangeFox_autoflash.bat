@echo off
echo -------------------------------------------
echo                  By OneX01
echo -------------------------------------------

set ADB_PATH=%~dp0adb/
cd /d "%ADB_PATH%"
set OFOX_PATH=%~dp0ofox/

%ADB_PATH%/fastboot.exe boot %OFOX_PATH%/ofox.img || @echo "Error boot ro OrangeFox" && exit 1
echo Wait for OrangeFox to load, then press enter, the process of copying ofox.zip to the /sdcard/ path will begin. from it you flash the archive
pause
%ADB_PATH%/adb push %OFOX_PATH%/*.zip /sdcard/


