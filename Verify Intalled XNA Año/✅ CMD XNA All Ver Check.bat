@echo off
rem Mr. Dragon Star derechos reservados
setlocal enabledelayedexpansion

:: Configurar color verde (0= fondo negro, A= texto verde)
color 0A

:: Configuración de consola
mode con: cols=150 lines=50
:: Título de la ventana de comandos:
title Mr. DragonStar XNA Check
cls

echo https://www.youtube.com/@Mr.DragonStar
echo Suscribete y regalame tu like...
echo Si deseas regalarme una tasa de cafe, dejo mi Wallet
echo BTC (Bitcoin):1GVPLHUrNCcbXCzfyeSd8zKQKwCQRjg4Hu
echo BTC (SegWit):bc1qr9dg5yyksm9sv9252e9pg0803k2aptkrs8qgd0
echo BTC (EXODUS):bc1quy3q3efqadmy8lkk40fzx7mluzekv0tk4afecy
echo ETH (ERC20):0xc33ae0e5d783cec8dfa74261983ce977bb9d0d78
echo USDT Tron(TRC20):TA6ouzHLHtWpBGDizF6FQXxKsxzZo6J6RL
echo DOGE (dogecoin):DEvXhCWZpYfbaAbgE3Y1pWbKYJ1ojkySN2
echo Si tienes algun trabajo para mi escribeme.....
echo mr.dragonstar.official@gmail.com
echo.
reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\XNA\Framework" /s | find "v"
echo ======================================================================================================================
echo XNA Framework es un conjunto de herramientas y bibliotecas:Facilita crear videojuegos 2D / 3D
echo 1. Solo instala XNA Framework 4.0 es la versión más estable y compatible con proyectos modernos.
echo 2. XNA 4.0 es retrocompatible con versiones anteriores (1.0, 2.0, 3.0, 3.1):
echo.
pause
:: Abrir tu página de YouTube
:: Verificar y abrir con Chrome o Edge
echo Abriendo tu canal de YouTube...
echo.

:: Ruta de Chrome
set "chrome_path=%ProgramFiles%\Google\Chrome\Application\chrome.exe"

:: Ruta de Edge
set "edge_path=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"

:: URL de tu canal
set "youtube_url=https://www.youtube.com/@Mr.DragonStar"

if exist "!chrome_path!" (
    echo [✓] Abriendo con Google Chrome...
    start "" "!chrome_path!" "!youtube_url!"
) else (
    if exist "!edge_path!" (
        echo [⚠] Chrome no encontrado. Abriendo con Microsoft Edge...
        start "" "!edge_path!" "!youtube_url!"
    ) else (
        echo [X] ERROR: No se encontro Chrome ni Edge
        echo    Abriendo con el navegador predeterminado...
        start "" "!youtube_url!"
    )
)

echo.
echo Si el navegador no se abrio, copia manualmente esta URL:
echo !youtube_url!
echo.
pause