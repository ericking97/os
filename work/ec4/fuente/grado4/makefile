# $Id: makefile,v 1.2 2026/02/09 02:06:25 root Exp $
# %W%
COMPILADOR=gcc
CFLAGS=-g -O0

FUENTE = $(RUTA_GRADO0)grado0.c $(RUTA_GRADO1)grado1.c $(RUTA_GRADO2)grado2.c \
$(RUTA_GRADO3)grado3.c grado4.c $(RUTA_UTIL)util.c stub.c
OBJS=$(FUENTE:.c=.o)
HEADER=grado4.h
LIB=grado4
PROG= $(RUTA_BIN)grado4

CC: $(OBJS)
	$(COMPILADOR) $(CFLAGS) $(OBJS) -L$(RUTA_LIB) -l$(LIB) -lm -o $(PROG)
	@- echo "Compilación terminada"

LIMPIA:
	@- rm -f $(OBJS)
	@- echo "Borrado de objetos terminado"

BORRA:
	@- rm -f $(OBJS) $(PROG)
	@- echo "Borrado de archivos terminado"

.c.o:
	$(COMPILADOR) $(CFLAGS) -c -I$(RUTA_INCL) $*.c -o $*.o

$(OBJS): $(RUTA_INCL)$(HEADER) $(RUTA_LIB)lib$(LIB).a
