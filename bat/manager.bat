::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBhcQw2BAE+/Fb4I5/jH7OKGtl4YRvQ6arPW27qPJ+UBpED8cPY=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title ChatServer ^>^> Manager
cd data
echo %date% %time% Manager Opened! >> timeline.dat
:main
if not exist color.chat (
color 0f
)
set /p opencol=<color.chat
    if %opencol%==A color 0a
    if %opencol%==B color 0b
    if %opencol%==C color 0c
    if %opencol%==D color 0d
    if %opencol%==E color 0e
    if %opencol%==F color 0f
mode con cols=50 lines=20
cls
echo.
echo  _______________Server Manage Tool_______________
echo.
echo.
echo                1. Open Client
echo.
echo                2. Open Server
echo.
echo                3. Logs
echo.
echo                4. Terminal
echo.
echo                5. Settings
echo.
echo                6. Clear data
echo.
echo                7. Shutdown System
set /p "main=>"
if ["%main%"] == [""] goto main
if ["%main%"]==["1"] goto client_open
if ["%main%"]==["3"] goto log
if ["%main%"]==["4"] start C:\Windows\System32\cmd.exe
if ["%main%"]==["7"] goto shutdown_server
if ["%main%"]==["5"] goto setting
if ["%main%"]==["6"] goto clear
if ["%main%"]==["2"] goto server_open
if not defined number (
goto main
)

:clear
cls
echo.
echo  _________________Clear Data____________________
echo.
echo.
echo                   1. Server
echo.
echo                   2. Open
echo.
echo                   3. join
echo.
echo                   0. Back
set /p clearselect=">"
if %clearselect%==1 goto clearserver
if %clearselect%==2 goto clearopen
if %clearselect%==3 goto clearjoin
if %clearselect%==0 goto main
if not defined number (
goto clear
)
pause

:clearserver
del log.dat /s /f /q
type NUL > log.dat
goto main

:clearopen
del timeline.dat /s /f /q
type NUL > timeline.dat
goto main

:clearjoin
del join.dat /s /f /q
type NUL > join.dat
goto main

:log
cls
echo.
echo  _____________________Logs_______________________
echo.
echo.
echo                 1. Open Logs
echo.
echo                 2. Connection Logs
echo.
echo                 0. Back
set /p logselect=">"
if %logselect%==1 goto timeline
if %logselect%==2 goto connection
if %logselect%==0 goto main
if not defined number (
goto log
)

:server_open
start server.exe
goto main

:client_open
start client.exe
goto main

:connection
cls
set /p openset1=<connection.chat
if %openset1%==1 goto connection1
if %openset1%==2 goto connection2

:connection1
cls
if not exist join.dat (
echo No Connection Logs!
) else (
type join.dat
)
pause>nul
goto main

:connection2
cls
if not exist join.dat (
echo No Connection Logs!
) else (
start join.dat
)
pause>nul
goto main

:timeline
cls
set /p openset2=<timeline.chat
if %openset2%==1 goto timeline1
if %openset2%==2 goto timeline2

:timeline1
cls
if not exist timeline.dat (
echo No Timeline Logs!
) else (
type timeline.dat
)
pause>nul
goto main

:timeline2
cls
if not exist timeline.dat (
echo No Timeline Logs!
) else (
start timeline.dat
)
pause>nul
goto main

:shutdown_server
cls
echo Are you sure? [y/n]
set /p "confirm=>"
if %confirm%==y goto shuty
if %confirm%==Y goto shuty
if %confirm%==n goto main
if %confirm%==N goto main
if not defined number (
goto shutdown_server
)

:shuty
echo Shutdown system in 5 seconds...
ping localhost -n 2 >nul
echo Shutdown system in 4 seconds...
ping localhost -n 2 >nul
echo Shutdown system in 3 seconds...
ping localhost -n 2 >nul
echo Shutdown system in 2 seconds...
ping localhost -n 2 >nul
echo Shutdown system in 1 seconds...
ping localhost -n 2 >nul
echo Shutdown system in 0 seconds...
ping localhost -n 2 >nul
taskkill /f /im cmd.exe
goto main

:setting
cls
echo.
echo  ___________________Settings_____________________
echo.
echo.
echo                1. Connection Setting
echo.
echo                2. Timeline Setting
echo.
echo                3. Color Setting
echo.
echo                0. Back
echo.              
set /p setting=">"
if %setting%==1 goto conset
if %setting%==2 goto tiset
if %setting%==3 goto colset
if %setting%==0 goto main
if not defined number (
goto setting
)

:conset
cls
echo.
echo  _______________Connection Setting_______________
echo.
echo.
echo           1. Show connectors in console
echo.
echo           2. Show connectors in new window
echo.
echo           0. Back
set /p set1=">"
if %set1%==1 goto conset1
if %set1%==2 goto conset2
if %set1%==0 goto setting
if not defined number (
goto conset
)

:conset1
cls
del connection.chat
echo %set1% >> connection.chat
echo Saved.
pause>nul
goto main

:conset2
cls
del connection.chat
echo %set1% >> connection.chat
echo Saved.
pause>nul
goto main

:tiset
cls
echo.
echo  _______________Timeline Setting_______________
echo.
echo.
echo            1. Show timeline in console
echo.
echo            2. Show timeline in new window
echo.
echo            0. Back
set /p set2=">"
if %set2%==1 goto tiset1
if %set2%==2 goto tiset2
if %set2%==0 goto setting
if not defined number (
goto tiset
)

:tiset1
cls
del timeline.chat
echo %set2% >> timeline.chat
echo Saved.
pause>nul
goto main

:tiset2
cls
del timeline.chat
echo %set2% >> timeline.chat
echo Saved.
pause>nul
goto main

:colset
cls
echo.
echo  __________________Color Setting_________________
echo.
echo.
echo                   A = Green
echo.
echo                   B = Cyan
echo.
echo                   C = Red
echo.
echo                   D = Magenta
echo.
echo                   E = Yellow
echo.
echo                   F = White
echo.
echo                   0. Back
set /p color=">"
if %color%==A goto colset_
if %color%==B goto colset_
if %color%==C goto colset_
if %color%==D goto colset_
if %color%==E goto colset_
if %color%==F goto colset_
if %color%==0 goto setting
if not defined number (
goto colset
)

:colset_
cls
del color.chat
echo %color% >> color.chat
echo Saved.
pause>nul
goto main