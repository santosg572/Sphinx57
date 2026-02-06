Vectores lógicos
================

Se tiene los valores lógicos ``TRUE (T)`` y ``FALSE (F)`` en R. Con estos valores 
lógicos
se puede construir el vector ``v <- c(TRUE, T, FALSE, FALSE, F, T)``. Además se
pueden generar los siguientes vectores lógicos como se muestra en los siguientes 
ejemplos.

Ejemplo 1.

.. code:: R

   x <- c(4,3,1,5,6)
   b <- x>3
   b
   # b es un vector lógico de la misma longitu que ``x``
   # ahora saco los valores de `x` donde hay valor `T`en `b`
   x[b]

Ejemplo 2.

.. code:: R

   x1 <- c(4,3,1,5,6)
   x2 <- c(7,3,7,5,6)
   b <- x1 == x2
   b
   x1[b]

Ejemplo 3.

 .. code:: R 

    m <- matrix(round(rnorm(12, mean=55, sd=19)), ncol=3)
    m
    # cuales son los elementos de la matriz que sean mayores a 55
    b <- m> 55
    y = m*b
    y


