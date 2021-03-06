@echo off
title Depurador WIFI
color 0A

:inicio
echo ----------------------------------------------------
echo -----------CONECTA TU SMARTPHONE POR WIFI-----------
echo -----------------By: maxisandoval37-----------------
echo ----------------------------------------------------
@echo.

echo                  _________-----_____
echo        ____------           __      ----_
echo  ___----             ___------              \
echo     ----________        ----                 \
echo                -----__    ^|             _____)
echo                     __-                /     \
echo         _______-----    ___--          \    /)\
echo   ------_______      ---____            \__/  /
echo                -----__    \ --    _          /\
echo                       --__--__     \_____/   \_/\
echo                               ---^|   /          ^|
echo                                  ^| ^|___________^|
echo                                  ^| ^| ((_(_)^| )_)
echo                                  ^|  \_((_(_)^|/(_)
echo                                   \             (
echo                                    \_____________)
@echo.
@echo.

echo 0) README
echo 1) Necesito Configurar todo (se requiere tu dispositivo conectado por USB)
echo 2) Ya tengo todo configurado. Solo Conectar!
echo 9) Salir
@echo.

set/p opcion= Ingresa una opcion: 
if %opcion%==0 goto op0
if %opcion%==1 goto op1
if %opcion%==2 goto op2
if %opcion%==9 goto salir
echo.

::Mensaje de error, opción incorrecta
echo."%opcion%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op0
echo.
	echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$_$$$$$$$$$$$$$$$$_$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$__$$$$$$$$$$$$$$_$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$$_______________$$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$___________________$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$____$$$_________$$$____$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$_____$$$_________$$$_____$$$$$$$$$$$$
	echo $$$$$$$$$$$$___________________________$$$$$$$$$$$
	echo $$$$$$$$$$$$___________________________$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	echo $$$$_____$$$____________________________$$$____$$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$______$$____________________________$$______$$
	echo $$$$_____$$$____________________________$$______$$
	echo $$$$$___$$$$____________________________$$$___$$$$
	echo $$$$$$$$$$$$____________________________$$$$$$$$$$
	echo $$$$$$$$$$$$____________________________$$$$$$$$$$
	echo $$$$$$$$$$$$___________________________$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$______$$$$$$_____$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$______$$$$$$_____$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$______$$$$$$_____$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$______$$$$$$_____$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$______$$$$$$_____$$$$$$$$$$$$$$$$
	echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
	@echo.

	echo - - - - -ANTES QUE NADA, RECUERDA GUARDAR LA IP DE TU DISPOSITIVO EN "ip.txt"- - - - -
	@echo.
	echo Esta herramienta esta destinada para conectar tu telefono Android en modo depurador,
	echo por via wifi. Util para vincular rapidamente con Android Studio.
	@echo.
	echo Si ya aplicaste la opcion 1 anteriormente, solo necesitas usar la 2 (al menos que hayas
	echo reiniciado tu telefono Android).
	@echo.
	echo Para averiguar tu IP podes usar herramientas como Fing o Nmap. Tranquilo fiera,
	echo nadie intenta hackearte.
echo.
pause
goto:inicio

:op1
echo.
	::Setear IP del dispositivo
	setlocal enabledelayedexpansion
	set ipDispositivo=0
 
	for /f "tokens=*" %%h in (ip.txt) do (
	    set ipDispositivo=%%h
	)

	cd C:\Users\MX37S\AppData\Local\Android\Sdk\platform-tools
	adb tcpip 5555
	adb connect !ipDispositivo!
echo.
pause
goto:inicio

:op2
echo.
	::Setear IP del dispositivo
	setlocal enabledelayedexpansion
	set ipDispositivo=0
 
	for /f "tokens=*" %%h in (ip.txt) do (
	    set ipDispositivo=%%h
	)

	cd C:\Users\MX37S\AppData\Local\Android\Sdk\platform-tools
	adb connect !ipDispositivo!
echo.
pause
goto:inicio

:salir
@cls&exit