@echo off
title HamsterOS starter
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
    if not exist pliki.sys.config goto error1
    if not exist plik.fol.ic goto error1
    if not exist pliki.txt.ic goto error1
    if not exist pliki.exe.ic goto error1
    if not exist pliki.nwm.ic goto error1
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe
echo starting.
echo/| CHOICE /N 2> nul 
start kernel.exe
exit

:error1
color color 1f
    cls
    echo --------------------------------------
    echo ERROR!
    echo system files not found!
    echo error code: SYSTEM_FILES_NOT_FOUND
    echo press any key to exit the system.
pause >nul
