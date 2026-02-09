#!/bin/sh
# $Id: compilar.sh,v 1.2 2026/02/09 02:06:25 root Exp $
#Script para compilar grado2
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

make $* RUTA_BIN=$BIN/ RUTA_LIB=$LIB/ RUTA_INCL=$INCL/ RUTA_UTIL=$UTIL/ \
RUTA_GRADO0=$GRADO0/ RUTA_GRADO1=$GRADO1/
