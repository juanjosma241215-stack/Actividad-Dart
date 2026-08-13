@echo off

:: Crear Carpetas
mkdir bin
mkdir lib 

:: Crear Archivos Vacios
type null > bin\main.dart
type null > lib\contact.dart
type null > .gitignore
type null > README.mkdir

echo Estructura creada con exito
pause