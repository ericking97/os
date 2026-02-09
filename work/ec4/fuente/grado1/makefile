# %W%
COMPILADOR=gcc
FUENTE = $(RUTA_GRADO0)grado0.c grado1.c $(RUTA_UTIL)util.c stub.c
OBJS=$(FUENTE:.c=.o)
HEADER=grado4.h
LIB=grado4
PROG= $(RUTA_BIN)grado1

CC: $(OBJS)
	$(COMPILADOR) $(OBJS) -L$(RUTA_LIB) -l$(LIB) -lm -o $(PROG)
	@- echo "Compilación terminada"

LIMPIA:
	@- rm -f $(OBJS)
	@- echo "Borrado de objetos terminado"

BORRA:
	@- rm -f $(OBJS) $(PROG)
	@- echo "Borrado de archivos terminado"

.c.o:
	$(COMPILADOR) -c -I$(RUTA_INCL) $*.c -o $*.o

$(OBJS): $(RUTA_INCL)$(HEADER) $(RUTA_LIB)lib$(LIB).a
