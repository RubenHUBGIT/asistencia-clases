@echo off
setlocal
chcp 65001 >nul
cd /d "%~dp0"

echo Creando subcarpetas...
if not exist "Entradas" mkdir "Entradas"
if not exist "Salidas" mkdir "Salidas"
if not exist "Scripts" mkdir "Scripts"

echo.
echo Moviendo archivos de entrada...
if exist "Movimientos_Cuenta_8106_01_01_2026_03 _ 05 _ 2026.csb" move /Y "Movimientos_Cuenta_8106_01_01_2026_03 _ 05 _ 2026.csb" "Entradas" >nul
if exist "ingresos y gastos AJEDREZ Rubén.xlsx" move /Y "ingresos y gastos AJEDREZ Rubén.xlsx" "Entradas" >nul
if exist "Balance2025.pdf" move /Y "Balance2025.pdf" "Entradas" >nul

echo Moviendo archivos de salida...
if exist "Balance2026.xlsx" move /Y "Balance2026.xlsx" "Salidas" >nul
if exist "Balance2026_backup.xlsx" move /Y "Balance2026_backup.xlsx" "Salidas" >nul
if exist "Balance2026_movimientos.csv" move /Y "Balance2026_movimientos.csv" "Salidas" >nul

echo Moviendo scripts...
if exist "generar_balance_2026.py" move /Y "generar_balance_2026.py" "Scripts" >nul
if exist "repintar_colores.py" move /Y "repintar_colores.py" "Scripts" >nul
if exist "generar_dashboard.py" move /Y "generar_dashboard.py" "Scripts" >nul

echo.
echo ==========================================
echo Organizacion completada.
echo ==========================================
echo.
echo Estructura resultante:
echo   Balance\
echo     Entradas\
echo     Salidas\
echo     Scripts\
echo.
pause
endlocal
