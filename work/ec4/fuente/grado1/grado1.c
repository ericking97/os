/* $Id: grado1.c,v 1.2 2026/02/09 02:06:25 root Exp $ */
/**************************************************************************
* lineal : Resuelve la ecuación lineal mediante la formula analítica y *
* regresa el número de raíces halladas.
*
**************************************************************************/
#include "grado4.h"

num_tipo_raiz lineal(real *c, real *x)
{
    if (realcmp(c[1], 0.))
    {
        /* Solución de la ecuación lineal general */
        x[0] = -c[0] / c[1];
        return (0);
    }
    else
        /* Solución de la ecuación constante degenerada */
        return constante(c, x);
}
