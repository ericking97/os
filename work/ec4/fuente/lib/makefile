# $Id: makefile,v 1.2 2026/02/09 02:06:25 root Exp $
# %W%
LIBRERO=ar rc
COMPILADOR=gcc
CFLAGS=-g -O0

FUENTE = cadena.c real.c salir.c
OBJS=$(FUENTE:.c=.o)
HEADER=$(RUTA_INCL)cadena.h $(RUTA_INCL)real.h $(RUTA_INCL)salir.h
LIB= $(RUTA_LIB)libgrado4.a

C_LIB: $(OBJS)
	$(LIBRERO) $(LIB) $(OBJS)
	@- echo "Compilación de libreria terminada"

LIMPIA:
	@- rm -f $(OBJS)
	@- echo "Borrado de objetos terminada"

BORRA:
	@- rm -f $(OBJS) $(LIB)
	@- echo "Borrado de archivos terminada"

.c.o:
	$(COMPILADOR) $(CFLAGS) -c -I$(RUTA_INCL) $*.c

$(OBJS): $(HEADER)
