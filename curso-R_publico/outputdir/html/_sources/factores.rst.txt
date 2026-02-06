Factores
========

En estadística se define un **factor** como una variable categorica. Algunos ejemplos de variables categoricas 
serian:
**sexo** ("F", "M"), **estado civil** ("casado", "soltero", "divorsiado"), **nivel socio-economico** ("bajo", "medio", "alto")

Como se generan factores en R
-----------------------------

1.

.. code:: R

   Sexo = c('F','M')
   sexo = sample(Sexo, 10, replace=T)

   class(sexo)

   sexo = as.factor(sexo)

   class(sexo)

   sexo

   table(sex)

2.

.. code:: R   

   Tratamiento = c(rep(c('T1','T2','T3'),10))
   
   trat = as.factor(sample(Tratamiento, 30, replace=F))

   class(trat)

   trat
   
   table(trat)


