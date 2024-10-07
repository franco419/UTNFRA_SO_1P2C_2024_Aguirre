#!/bin/bash

echo "creando estructura Asimétrica"

mkdir -p ~/Estructura_Asimetrica/{{correo,clientes}/cartas_{1..100},correo/carteros_{1..10}}


echo "Mostramos la estructura"

tree  ~/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

echo
