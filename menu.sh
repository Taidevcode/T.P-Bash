#!/bin/bash

if [ "$1" == "-d" ]; then
  rm -rf ~/EPNro1
  pkill -f consolidar.sh
  echo "Entorno eliminado y procesos detenidos"
  exit 0
fi

while true
do
  echo ""
  echo "Elija una opción"
  echo "1) Crear entorno"
  echo "2) Correr proceso"
  echo "3) Listar alumnos"
  echo "4) Top 10 notas de alumnos"
  echo "5) Buscar por padrón"
  echo "6) Salir"

  read opcion

  case $opcion in 
    1) 
      mkdir -p ~/EPNro1/{entrada,salida,procesado}
      
      if [ -f ./consolidar.sh ]; then
    	cp ./consolidar.sh ~/EPNro1/
    	echo "Entorno creado y script copiado"
      else
    	echo "Entorno creado, pero no se encontró consolidar.sh"
      fi 
    ;;
    2) 
      bash ~/EPNro1/consolidar.sh &
      echo "Proceso ejecutándose en background"
    ;;
    3) 
      if [ -f ~/EPNro1/salida/$FILENAME.txt ]; then
         sort -n ~/EPNro1/salida/$FILENAME.txt
      else
	 echo "El archivo no existe"
      fi
    ;;
    4)
      if [ -f ~/EPNro1/salida/$FILENAME.txt ]; then
	sort -k5 -nr ~/EPNro1/salida/$FILENAME.txt | head -10
      else 
	echo "El archivo no existe"
      fi
    ;;
    5)
      if [ -f ~/EPNro1/salida/$FILENAME.txt ]; then
	echo "Ingrese su padrón: "
        read padron
	grep "^$padron " ~/EPNro1/salida/$FILENAME.txt
      else
	echo "El archivo no existe"
      fi
    ;;
    6) exit ;;
    *) echo "Opción inválida" ;;
  esac
done

