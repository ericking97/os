#!/bin/sh
# $Id: compilar.sh,v 1.2 2026/02/09 02:06:25 root Exp $
#Script para compilar la libreria
ACTUAL=`pwd`

cd ../../lib
LIB=`pwd`
cd $ACTUAL

cd ../incl
INCL=`pwd`
cd $ACTUAL

make $* RUTA_LIB=$LIB/ RUTA_INCL=$INCL/
