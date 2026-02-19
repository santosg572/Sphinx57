Listas y DataFrame's
====================

**Listas**

Una lista es una estructura de datos que puede guardar cualquier tipo de datos.

Ejemplos

1.

.. code:: R

   x = list()
   typeof(x)
   class(x)

2. 

.. code:: R

   y = list(c(4,2,5,3,1))
   y
   y[[1]]
   y[[1]][3]
   length(y)

3. 

.. code:: R

   z = list(1:4, 8, matrix(1:6, ncol=2))
   z
   z[[2]]
   z[[3]][,2]
   z[[3]][3,]

   ls()				# lista lo que esta en memoria
   save(z, file="z.RData")		# salva a disco la variable "z" que esta en memoria

**DataFrame's**

Un DataFrame es una estructura de datos parecida a una hoja de calculo en excel, tiene
columnas (variables) y tienen un nombre cada variable, el header de las variables. La longitud de las
variables deben ser de la misma longitud.

**Ejemplos**

1. 

.. code:: R

   x = data.frame(x=1:10, y=round(runif(10, min=40, max=60)))
   x
   typeof(x)
   class(x)
   names(x)

2. **Sacando elementos del dataframe**

.. code:: R

   nombres = paste('Juan', 1:10, sep='')
   peso = round(rnorm(10, mean=57, sd=7))
   edad = round(runif(10, min=50, max=70))

   sujetos = data.frame(nombres, peso, edad)

   write.csv(sujetos, 'sujetos.csv')

3. **Leyendo el archivo 'sujetos.csv'**

.. code:: R

   rm(list=ls())
   datos = read.csv('sujetos.csv', header=T)
   print(datos)
   
   print(names(datos))

   nombres

   datos[,2]

   datos[5,]

   attach(datos)

   nombres











 

