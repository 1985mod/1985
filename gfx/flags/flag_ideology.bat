@echo off
chcp 65001 > nul

for %%F in (*_*.tga) do (
    for /f "delims=_" %%A in ("%%F") do (
        if not exist "%%A.tga" copy "%%F" "%%A.tga" >nul
    )
)

for %%F in (???.tga) do (
    if not exist "%%~nF_communism.tga" copy "%%F" "%%~nF_communism.tga" >nul
    if not exist "%%~nF_neutrality.tga" copy "%%F" "%%~nF_neutrality.tga" >nul
    if not exist "%%~nF_socialism.tga" copy "%%F" "%%~nF_socialism.tga" >nul
    if not exist "%%~nF_liberalism.tga" copy "%%F" "%%~nF_liberalism.tga" >nul
    if not exist "%%~nF_conservatism.tga" copy "%%F" "%%~nF_conservatism.tga" >nul
    if not exist "%%~nF_fascism.tga" copy "%%F" "%%~nF_fascism.tga" >nul
)