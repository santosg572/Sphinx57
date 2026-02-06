Funciones Paralelas
===================

Existen funciones que al ser aplicadas en matrices o arreglos trabajan de manera paralela en 
cada una de las dimensiones que lo forman.

Algunas funciones:
------------------

.. code:: R

   colSums() - Dada una matriz, suma las columnas que la forman
   apply()   - Dada una matriz o arreglo, aplica una funcion a cada dimension que la forma.
 
Ejemplos:

1. Suma las columnas de una matriz con ``colSums()``

.. code:: Bash

   m = matrix(1:12, ncol=3)
   s = colSums(m)
   s

2. Suma los elementos de la dimension que se indique con ``apply()``

.. code:: Bash

   m = array(1:24, dim=c(4,3,2))

   s = apply(m,3,sum)
   s

