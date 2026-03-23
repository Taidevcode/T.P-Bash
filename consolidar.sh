#!/bin/bash

DIR=~/EPNro1

for archivo in $DIR/entrada/*.txt
do
  cat "$archivo" >> $DIR/salida/$FILENAME.txt
  mv "$archivo" $DIR/procesado/
done
