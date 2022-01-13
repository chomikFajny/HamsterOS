@echo off
:themes
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
if exist hacker.theme goto Themeh
if exist white.theme goto Themew
if exist hackerr.theme goto Themehh

:start
Batbox /h 0
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
if exist pass.pass goto login
if not exist pass.pass goto systeml
    :login
        for /f "Delims=" %%a in (pass.Pass) do (set key=%%a)
        cls
        echo Enter password
        set/p keyEnter="Pass: "
            if %key% == %keyEnter% goto systeml
            if not %key% == %keyEnter% goto notpas

:notpas
echo incorect password
timeout /t 1 /nobreak >nul
goto login

:systeml
Batbox /h 0
cls
type ic.ic
echo                                        Logowanie.
timeout /t 1 /nobreak >nul
cls
type ic.ic
echo                                        Logowanie..
timeout /t 1 /nobreak >nul
cls
type ic.ic
echo                                        Logowanie...
timeout /t 1 /nobreak >nul
cls
type ic.ic
echo                                        Zalogowano!
timeout /t 1 /nobreak >nul
goto pulpit

:pulpit 
Batbox /h 0
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
cls
Call Button 1 1 "Settings" 15 1 "Explorer" 30 1 "Centrum" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto Settings
if %errorlevel%==2 goto Explorer
if %errorlevel%==3 goto Centrum

:Settings
cls
Call Button 1 1 "Theme" 12 1 "User" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto Theme
if %errorlevel%==2 goto User

:Theme
cls
echo Chose theme:
Call Button 1 1 "Hacker" 11 1 "White (deafult)" 30 1 "reverse hacker" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto Themehacker
if %errorlevel%==2 goto Themewhite
if %errorlevel%==3 goto Themehackerr

:Themehacker
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
del hackerr.theme
del white.theme
echo hacker >>hacker.theme
goto themes

:Themehackerr
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
echo hackerr >>hackerr.theme
del white.theme
del hacker.theme
goto themes

:Themewhite
cd %userprofile%\Desktop\HamsterOS\pliki.systemowe\pliki
del hackerr.theme
echo white >>white.theme
del hacker.theme
goto themes



:Themeh
color 2
goto start

:Themehh
color 20
goto start

:themew
color f
goto start