Análisis de Imágenes
====================

**Ejemplos 1**

.. code:: R

   rm(list=ls())  # limpio la memoria de R

   library(jpeg)

   n = 10       # tamaño de la matriz cuadrada

   img = round(matrix(runif(n*n,min = 0,max = 255), ncol=n)) # crea ima inagen de tamaño nxn

   print(img)
   print(min(img))
   print(max(img))

   image(img, col = gray.colors(256))

   writeJPEG(img, 'img.jpg')


**Ejemplo 2**

.. code:: R

   rm(list=ls())

   library(jpeg)

   img = readJPEG('img.jpg')

   print(img)

   image(img, col = gray.colors(256))






