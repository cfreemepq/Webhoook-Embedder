@echo off
title casanova Embedder
:home
echo -----------
echo    Home
echo .
echo %username%
echo -----------
echo Press Enter...
pause > nul
goto 1

::1
:1
set url=
set /p "url=url: "
color 1
cls
goto 2

::2
:2
set name=
set /p "name=name: "
color 2
cls
goto :3

::3
:3
set title=
set /p "title=title: "
color 3
cls
goto 4

::4
:4
set field1=
set /p "field1=field1: "
color 4
cls
goto 5

::5
:5
set field1text=
set /p "field1text=text1: "
color 5
cls
goto 6

::6
:6
start https://htmlcolorcodes.com/color-picker/
set rgb=
set /p "rgb=color (from rgb): "
color 6
cls
goto 7

::7
:7
set field2=
set /p "field2=field2: "
color 7
cls
goto 8

::8
:8
set field2text=
set /p "field2text=text2: "
color 8
cls
goto 9

::9
:9
set thumbnail=
set /p "thumbnail=thumbnail: "
color 9
cls
goto 10

::10
:10
set footer=
set /p "footer=footer: "
color f
cls
goto action

::Action
:action
curl -H "Content-Type: application/json" -d "{\"username\": \"%name%\", \"embeds\": [{\"title\": \"%title%\", \"color\": %rgb%, \"fields\": [{\"name\": \"%field1%\", \"value\": \"%field1text%\"}, {\"name\": \"%field2%\", \"value\": \"%field2text%\"}],\"thumbnail\":{\"url\": \"%thumbnail%\"},\"footer\":{\"text\": \"%footer%\"}}]}" %url%
echo Press Enter...
pause > nul
cls
goto home
