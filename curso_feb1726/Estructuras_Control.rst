Estructuras de Control
======================

* if(cond) expr
* if(cond) cons.expr  else  alt.expr
* for(var in seq) expr
* while(cond) expr
* repeat expr
* break
* next

**Ejemplos**

1.

.. code:: R

   if (1){
     print('VERDADERO')
   }

2.

.. code:: R

   if (-1){
     print('VERDADERO')
   }

3.

.. code:: R

   if (0){
     print('VERDADERO')
   }

4. 

.. code:: R

   if (TRUE){
     print('VERDADERO')
   }

5. 

.. code:: R 

   if (pi > 3.16){
      print('VERDADERO')
   } else{
      print('FALSO')
   }

**FOR**

6. 

.. code:: R

   s = 0
   for (i in 1:100){
     s = s+i
   }
   print(s)

7.

.. code:: R

   for (i in 1:100){
     if (i %% 2 == 0)
       print(i)
   }
   
**while**

8. 

.. code:: R

   s = 0
   i = 1

   while (i <=100){
     s = s+i^2
     i = i+1
   }

   print(s)

     
