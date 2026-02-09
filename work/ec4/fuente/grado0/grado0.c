/* $Id: grado0.c,v 1.2 2026/02/09 02:06:25 root Exp $ */
/**************************************************************************
* constante: Resuelve la ecuación constante mediante las consideraciones *
* analíticas.
**************************************************************************/
#include "grado4.h"

num_tipo_raiz constante(real *c, real *x)
{
    return (realcmp(c[0], 0.) ? 1 : 0);
}
