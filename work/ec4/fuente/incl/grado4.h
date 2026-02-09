/***************************************************************************
* Header grado4.H: Contiene los heders, macros, tipos de datos y prototipos*
* para la resolución de ecuaciones de grado 0 al 4 analiticamente. *
***************************************************************************/
/* headers requeridos */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "real.h"
#include "salir.h"

/* Definición de macros */
#define MAXIMO_GRADO 4
#define MAX_RAICES MAXIMO_GRADO
#define MAX_COEF (MAX_RAICES+1)

/* Definición de los tipos de datos: real, booleano, tipo y número de
raices */
typedef int num_tipo_raiz;

/* Prototipos de las funciones */
num_tipo_raiz cuartica(real *,real *);
num_tipo_raiz cubica(real *,real *);
num_tipo_raiz cuadratica(real *,real *);
num_tipo_raiz lineal(real *,real *);
num_tipo_raiz constante(real *,real *);
void imprime_raices(real *,real *,int,num_tipo_raiz);
bool checa_raices(real *,real *,int,num_tipo_raiz);
void visto_bueno(real *,real *,int,num_tipo_raiz);
void bien(void);
void mal(void);
void error_num_tipo_raiz(void);
real divsinreal(int,real *,real,real *);
real divsincompleja(int,real *,real,real,real *,real *,real *);
real norma(int,real *);
void error1(void);
void errorn(void);
void error_opcion(void);
