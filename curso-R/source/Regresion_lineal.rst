Regresión Lineal
================

Consideremos dos variables **X** y **Y** que desan explicar una variable **W** por una ecuación lineal:

.. math::

   W = a + b X + c Y

Donde :math:`a,b,c` son constantes que se desean calcular.

Se tiene una muestra de **X**: :math:`x_1, x_2,..., x_n` y una muestra de **Y**: :math:`y_1, y_2, ..., y_n` 
y la medidads correspondientes de **W**: :math:`w_1, w_2, ..., w_n`

Para encontrar los valores de :math:`a,b,c` se pueden resolver por dos métodos.

**Método 1** Contruir la matriz A dada por:

.. math::

   \begin{pmatrix}
   1 & 1 & ... & 1 \\
   x_1 & x_2  & ... & x_n \\
   y_1 & y_2  & ... & y_n \\
   \end{pmatrix}   \begin{pmatrix}
   1 & x_1 & y_1  \\
   1 & x_2 & y_2 \\
   \vdots & \vdots & \vdots \\
   1 & x_n & y_n
   \end{pmatrix} = \begin{pmatrix}
   n & \sum_{i=1}^n x_i & \sum_{i=1}^n y_i  \\
   \sum_{i=1}^n x_i & \sum_{i=1}^n x_i^2 & \sum_{i=1}^n x_i y_i \\
   \sum_{i=1}^n y_i  & \sum_{i=1}^n x_i y_i & \sum_{i=1}^n y_i^2
   \end{pmatrix}

y contruyamos el vector columna B dado por:

.. math::

   \begin{pmatrix}
   1 & 1 & ... & 1 \\
   x_1 & x_2  & ... & x_n \\
   y_1 & y_2  & ... & y_n \\
   \end{pmatrix}   \begin{pmatrix}
   w_1   \\
   w_2  \\
   \vdots  \\
   w_n 
   \end{pmatrix}= \begin{pmatrix}
   \sum_{i=1}^n w_i   \\   
   \sum_{i=1}^n x_iw_i   \\   
   \sum_{i=1}^n y_i w_i            
   \end{pmatrix}   

Entonces se tiene la ecuación:

.. math::

   AX = B

done 

.. math::

   X =  \begin{pmatrix}
   a  \\
   b  \\
   c  \\
   \end{pmatrix}

Multipliquemos la ecuacion por la inversa de la matriz A:

.. math::

   A^{-1}AX = A^{-1}B \Rightarrow X=A^{-1}B

y con esto obtenemos el valor de las constantes.


**Método 2** Aplicar la función de R: **lm()**

.. code:: R

   res <- lm(W ~ X + Y)

   print(summary(res))


