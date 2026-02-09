#!/bin/sh
# $Id: compilar.sh,v 1.2 2026/02/09 02:06:25 root Exp $
#Shell Script de compilación de grado0 del proyecto ec4
ACTUAL=$PWD

cd ../../bin
BIN=`pwd`
cd $ACTUAL

cd ../../lib
LIB=$PWD/
cd $ACTUAL

cd ../incl
INCL=$PWD/
cd $ACTUAL

cd ../util
UTIL=$PWD/
cd $ACTUAL

make $* RUTA_BIN=$BIN/ RUTA_LIB=$LIB/ RUTA_INCL=$INCL/ RUTA_UTIL=$UTIL/

