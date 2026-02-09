#!/bin/sh
#Script para compilar grado4
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

cd ../grado1
GRADO1=`pwd`
cd $ACTUAL

cd ../grado2
GRADO2=`pwd`
cd $ACTUAL

cd ../grado3
GRADO3=`pwd`
cd $ACTUAL

make $* RUTA_BIN=$BIN/ RUTA_LIB=$LIB/ RUTA_INCL=$INCL/ RUTA_UTIL=$UTIL/ \
RUTA_GRADO0=$GRADO0/ RUTA_GRADO1=$GRADO1/ RUTA_GRADO2=$GRADO2/ \
RUTA_GRADO3=$GRADO3/

