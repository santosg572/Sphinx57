Algebra Lineal
==============

Un vector en :math:`\mathbb{R}^n` es definido como:

.. math::

   (x_1, x_2, ... , x_n)

es de longitud n y decimos que :math:`x_1` es el primer elemento, :math:`x_2` es el segundo elemento y :math:`x_i` es
el i-ésimo elemento del vector.

Sean los vectores :math:`\mathbf{x}=(x_1, x_2, ... , x_n)`, :math:`\mathbf{y}=(y_1, y_2, ... , y_n)`
y c un escalar en :math:`\mathbb{R}` definimos las siguientes operaciones:

.. math::

   \text{1) } \mathbf{x+y}=(x_1, x_2, ... , x_n)+ (y_1, y_2, ... , y_n)
   = (x_1+y_1, x_2+ y_2, ... , x_n+y_n) 

   \text{2) } c\mathbf{x}= (cx_1, cx_2, ... , cx_n)

El **vector transpuesto** de :math:`\mathbf{x}=(x_1, x_2, ... , x_n)` esta dado por:

.. math::

   \mathbf{x}^T = \begin{pmatrix}
   x_1 \\
   \vdots \\
   x_n
   \end{pmatrix}

Una **matriz** en :math:`\mathbb{R}^m \times \mathbb{R}^n` es definida como:

.. math::

   \begin{pmatrix}
   a_{11} & a_{12} & \cdots  & a_{1n}  \\
   a_{21} & a_{22} & \cdots  & a_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   a_{m1} & a_{m2} & \cdots  & a_{mn}  \\
   \end{pmatrix}

la magtriz esta formada de m-files y n-columnas.

Dadas dos matrices **A** y **B**  en :math:`\mathbb{R}^m \times \mathbb{R}^n` y c un escalar en :math:`\mathbb{R}` se definen las 
operaciones:

.. math::

   \mathbf{A+B} = \begin{pmatrix}
   a_{11} & a_{12} & \cdots  & a_{1n}  \\
   a_{21} & a_{22} & \cdots  & a_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   a_{m1} & a_{m2} & \cdots  & a_{mn}  \\
   \end{pmatrix} + \begin{pmatrix}
   b_{11} & b_{12} & \cdots  & b_{1n}  \\
   b_{21} & b_{22} & \cdots  & b_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   b_{m1} & b_{m2} & \cdots  & b_{mn}  \\
   \end{pmatrix} = \begin{pmatrix}
   a_{11}+b_{11} & a_{12}+b_{12} & \cdots  & a_{1n}+b_{1n}  \\
   a_{21}+b_{21} & a_{22}+b_{22} & \cdots  & a_{2n}+b_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   a_{m1}+b_{m1} & a_{m2}+b_{m2} & \cdots  & a_{mn}+b_{mn}  \\
   \end{pmatrix}

.. math::

   c \mathbf{A} = a \begin{pmatrix}
   a_{11} & a_{12} & \cdots  & a_{1n}  \\
   a_{21} & a_{22} & \cdots  & a_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   a_{m1} & a_{m2} & \cdots  & a_{mn}  \\
   \end{pmatrix} = \begin{pmatrix}
   ca_{11} & ca_{12} & \cdots  & ca_{1n}  \\
   ca_{21} & ca_{22} & \cdots  & ca_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   ca_{m1} & ca_{m2} & \cdots  & ca_{mn}  \\
   \end{pmatrix}

La **transpuesta de la matriz** :math:`\mathbf{A}` es definida por:

.. math::
   
   \mathbf{A}^T = \begin{pmatrix}
   a_{11} & a_{21} & \cdots  & a_{m1}  \\
   a_{12} & a_{22} & \cdots  & a_{m2}  \\   
   \cdots & \cdots  & \ddots & \cdots  \\
   a_{1n} & a_{2n} & \cdots  & a_{mn}  \\
   \end{pmatrix} 

Dadas dos matrices, :math:`\mathbf{A}` de tamaño :math:`m \times p` y :math:`\mathbf{B}` de tamaño :math:`p \times n` se define la multiplicación :math:`\mathbf{A}` y :math:`\mathbf{B}` como:

.. math::

   \mathbf{A} \times \mathbf{B} = \begin{pmatrix}
   a_{11} & a_{12} & \cdots  & a_{1p}  \\
   a_{21} & a_{22} & \cdots  & a_{2p}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   a_{m1} & a_{m2} & \cdots  & a_{mp}  \\
   \end{pmatrix} \begin{pmatrix}
   b_{11} & b_{12} & \cdots  & b_{1n}  \\
   b_{21} & b_{22} & \cdots  & b_{2n}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   b_{p1} & b_{p2} & \cdots  & b_{pn}  \\
   \end{pmatrix} = \begin{pmatrix}
   \sum_{i=1}^p a_{1i}b_{i1} & \sum_{i=1}^p a_{1i}b_{i2} & \cdots  & \sum_{i=1}^p a_{1i}b_{in}  \\
   \sum_{i=1}^p a_{2i}b_{i1} & \sum_{i=1}^p a_{2i}b_{i2} & \cdots  & \sum_{i=1}^p a_{2i}b_{in}  \\
   \cdots & \cdots  & \ddots & \cdots  \\
   \sum_{i=1}^p a_{mi}b_{in} & \sum_{i=1}^p a_{mi}b_{in} & \cdots  & \sum_{i=1}^p a_{mi}b_{in}  \\
   \end{pmatrix} 

**Matriz Identidad**

La matriz identidad de una matriz cuadrada, es decir de tamaño :math:`n \times n` esta dada por:

.. math::

   I = \begin{pmatrix}
   1 & 0  & \cdots & 0  \\
   0 & 1  & \cdots & 0  \\
   \vdots & \vdots & \dots & \vdots \\
   0 & 0  & \cdots & 1  \\
   \end{pmatrix}

la diagonal son puros 1's 

**Matriz Cero**

.. math::

   0 = \begin{pmatrix}
   0 & 0  & \cdots & 0  \\
   0 & 0  & \cdots & 0  \\
   \vdots & \vdots & \dots & \vdots \\
   0 & 0  & \cdots & 0  \\
   \end{pmatrix}

**Inversa de una Matriz Cuadrada**

Decimos que la matriz :math:`\textbf{B}` es inversa de la matriz :math:`\textbf{A}` si:

.. math::

   A \times B = B \times A = I (\text{matriz identidad})


