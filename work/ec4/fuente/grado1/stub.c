/* $Id: stub.c,v 1.2 2026/02/09 02:06:25 root Exp $ */
/**************************************************************************
* Programa stub: Resuelve polinomios de grados 1 analíticamente *
* empleando la librería grado0. Además usa la librería salir para terminar*
* el programa. *
**************************************************************************/
#include "grado4.h"

int main(int argc, char **argv)
{
    num_tipo_raiz tipo;
    int i, grado = argc - 2;
    real c[MAX_COEF];
    real x[MAX_RAICES];

    despedidas();

    switch (argc) {
    case 1:
        error1();

    case 2:
    case 3:
        for (i = 0; i < argc - 1; i++)
            c[i] = atof(argv[i + 1]);

        for (; i < MAX_COEF; ++i)
            c[i] = 0.;

        tipo = lineal(c, x);
        imprime_raices(c, x, grado, tipo);
        visto_bueno(c, x, grado, tipo);
        break;

    default:
        errorn();
        break;
    }

    salir();
    return (0);
}

