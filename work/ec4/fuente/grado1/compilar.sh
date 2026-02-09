#!/bin/sh
#Script para compilar grado1
ACTUAL=`pwd`

cd ../../bin
BIN=`pwd`
cd $ACTUAL

cd ../../lib
LIB=`pwd`
cd $ACTUAL

cd ../incl
INCL=`pwd`
cd $ACTUAL

cd ../util
UTIL=`pwd`
cd $ACTUAL

cd ../grado0
GRADO0=`pwd`
cd $ACTUAL

make $* RUTA_BIN=$BIN/ RUTA_LIB=$LIB/ RUTA_INCL=$INCL/ RUTA_UTIL=$UTIL/ \
RUTA_GRADO0=$GRADO0/
