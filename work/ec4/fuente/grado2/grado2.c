/* $Id: grado2.c,v 1.2 2026/02/09 02:06:25 root Exp $ */
/**************************************************************************
* cuadratica : Resuelve la ecuación cuadrática mediante la formula del *
* chicharronero y regresa el número de pares conjugados de raíces *
* complejas. Si todas son reales regresa 0. *
* *
* Tabla de variables: *
* dis: discriminante de la ecuación cuadrática. *
* *
* Notas: *
* Si existen raíces complejas, la parte real y la parte imaginaria se *
* almacenan consecutivamente y se calculan por separado. *
* En la primera parte del arreglo que tiene las raíces se almacenan las *
* raíces reales (si existen). En el resto se almacenan las complejas (si *
* existen). *
**************************************************************************/
#include "grado4.h"

num_tipo_raiz cuadratica(real *c, real *x)
{
    real dis;

    if (realcmp(c[2], 0.))
    {
        /* Solución de la ecuación cuadrática general */
        /* Cálculo del discriminante */
        dis = cuad(c[1]) - 4. * c[2] * c[0];

        if (!realcmp(dis, 0.))
        {
            /* Solución si existen raices identicas */
            x[1] = x[0] = -c[1] / 2. / c[2];
            return (0);
        }
        else if (realcmp(dis, 0.) > 0)
        {
            /* Solución si existen raices diferentes */
            x[0] = (-c[1] + sqrt(dis)) / (double)2 / c[2];
            x[1] = (-c[1] - sqrt(dis)) / 2. / c[2];
            return (0);
        }
        else
        {
            /* Solución si existen raices complejas */
            x[0] = -c[1] / 2. / c[2];
            x[1] = fabs(sqrt(-dis) / 2. / c[2]);
            return (1);
        }
    }
    else
        /* Solución de la ecuación lineal degenerada */
        return lineal(c, x);
}

