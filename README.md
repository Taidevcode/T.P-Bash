# TP Bash - Ejercicio Práctico N°1

## Descripción

Script en Bash que permite gestionar archivos de alumnos mediante un menú interactivo.

## Requisitos

* Linux o MacOS
* Definir variable de entorno FILENAME

## Uso

export FILENAME=alumnos
./menu.sh

## Opciones del menú

1. Crear entorno
2. Procesar archivos
3. Listar alumnos ordenados por padrón
4. Mostrar top 10 notas
5. Buscar alumno por padrón
6. Salir

## Parámetro opcional

./menu.sh -d

Elimina el entorno creado (`EPNro1`) y detiene los procesos en background.

## Notas

* Los archivos de entrada deben colocarse en `~/EPNro1/entrada`
* El archivo final se genera en `~/EPNro1/salida/$FILENAME.txt`
* Los archivos procesados se mueven a `~/EPNro1/procesado`
