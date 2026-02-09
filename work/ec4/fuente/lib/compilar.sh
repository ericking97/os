#!/bin/sh
#Script para compilar la libreria
ACTUAL=`pwd`

cd ../../lib
LIB=`pwd`
cd $ACTUAL

cd ../incl
INCL=`pwd`
cd $ACTUAL

make $* RUTA_LIB=$LIB/ RUTA_INCL=$INCL/
