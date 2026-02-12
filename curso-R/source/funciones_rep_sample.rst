Funciones **rep** y **sample**
==============================

La función **rep** repite un número de veces un vector o sus elementos.

Ejemplos:

.. code:: R

   rep(1:4, 2)
   rep(1:4, each = 2)
   rep(1:4, c(2,3,4,1))
   rep(1:4, each = 2, times = 3)

La función **sample** saca elementos de un vector de manera aleatoria:

Ejemplos:

.. code:: R

   x <- 1:12
   sample(x)

   sample(c(0,1), 100, replace = TRUE)

   sample(c('M', 'F'), 100, replace = TRUE)

   paste(sample(c('A', 'B', 'C', 'D'), 100, replace = TRUE), collapse='')

