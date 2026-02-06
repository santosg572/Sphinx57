Análisis de Varianza
====================

**DISEÑO COMPLETAMENTE ALEATORIO**

Tabla de valores muestrales para un Diseño Completamenta Aleatorio

.. math::

   \begin{matrix}
   & 1 & 2 & 3 & ... & k \\
   \hline
   & x_{11} & x_{12} & x_{13} & ... & x_{1k} \\
   & x_{21} & x_{22} & x_{23} & ... & x_{2k} \\
   & x_{31} & x_{32} & x_{33} & ... & x_{3k} \\
   & \vdots & \vdots  & \vdots & \vdots & \vdots \\
   & x_{n1} & x_{n2} & x_{n3} & ... & x_{nk} \\
   \hline
   Total & T_{.1} & T_{.2} & T_{.3} & ... & T_{.k} & T_{..} \\
   \hline
   Media & \bar{x}_{.1} & \bar{x}_{.2} & \bar{x}_{.3} & ... & \bar{x}_{.k} & \bar{x}_{..} \\
   \hline
   \end{matrix}

Este diseño se puede escribir matemáticamente como:

.. math::

   x_{ij} = 𝜇+ \tau_𝑗+ \varepsil{i } ij\hspace{mc   }\ettxt{j = 1,2,...,k}


Los terminos en este modelo son definidos como sigue:

1. :math:`\mu` representa la media de todas las k medias poblacionales y se denomina media general.

2. :math:`\tau_j` representa la diferencia entre la media de la j-ésima población y la media general y se denomina 
efecto del tratamiento.

3. :math:`\varepsilon_{ij}` representa la cantidad en la que una medición individual difiere de la media de la 
población a la que pertenece y se denomina término de error.


**Hipotesis:**

.. math::

   H_0 : \mu_1 =  \mu_2 = ... =  \mu_k

   H_A : \text{ no todos los } \mu_j \text{ son iguales.}

.. image:: fig_8_2_3.png

.. image:: tabla_8_2_2.png


EXAMPLE 8.2.1

Game meats, including those from white-tailed deer and eastern gray squirrels, are used as food by families, 
hunters, and other individuals for health, cultural, or personal reasons. A study by David Holben (A-1) assessed 
the selenium content of meat from free-roaming white-tailed deer (venison) and gray squirrel (squirrel) obtained 
from a low selenium region of the United States. These selenium content values were also compared to those of beef 
produced within and outside the same region. We want to know if the selenium levels are different in the four meat 
groups.

.. image:: tabla_8_2_3.png

**Tukey’s HSD Test**

**EL DISEÑO DE BLOQUES COMPLETOS ALEATORIZADOS**


.. math::
   
   \begin{matrix}
   Blocks   & 1 & 2 & 3 & ... & k \\
   \hline
   1  & x_{11} & x_{12} & x_{13} & ... & x_{1k} \\
   2  & x_{21} & x_{22} & x_{23} & ... & x_{2k} \\
   3  & x_{31} & x_{32} & x_{33} & ... & x_{3k} \\
   \vdots  & \vdots & \vdots  & \vdots & \vdots & \vdots \\
   n  & x_{n1} & x_{n2} & x_{n3} & ... & x_{nk} \\
   \hline
   Total & T_{.1} & T_{.2} & T_{.3} & ... & T_{.k} & T_{..} \\
   \hline
   Media & \bar{x}_{.1} & \bar{x}_{.2} & \bar{x}_{.3} & ... & \bar{x}_{.k} & \bar{x}_{..} \\
   \hline
   \end{matrix}

El modelo en terminos matemáticos:

.. math::

   x_{ij} = \mu + \beta_i + \tau_j + \varepsilon_{ij}

i = 1, 2,..., n; j = 1, 2, ... , k

En este modelo:

:math:`x_{ij}` es un valor típico de la población general.

:math:`\mu` es una constante desconocida

:math:`\beta_i` representa un efecto de bloque que refleja el hecho de que la unidad experimental cayó en el 
i-ésimo bloque.

:math:`\tau_j` representa un efecto del tratamiento, que refleja el hecho de que la unidad experimental recibió el 
j-ésimo tratamiento.

:math:`\varepsilon_{ij}` es un componente residual que representa todas las fuentes de variación excepto los 
tratamientos y bloques.

.. image:: tabla_8_3_2.png

**EXAMPLE 8.3.1**

A physical therapist wished to compare three methods for teaching patients to use a certain prosthetic device. He 
felt that the rate of learning would be different for patients of different ages and wished to design an 
experiment in which the inﬂuence of age could be taken into account.

.. image:: tabla_8_3_4.png

**EL DISEÑO DE MEDIDAS REPETIDAS**

**EXAMPLE 8.4.1**

Licciardone et al. (A-15) examined subjects with chronic, nonspecific low back pain. In this study, 18 of the 
subjects completed a survey questionnaire assessing physical functioning at baseline, and after 1, 3, and 6 
months. Table 8.4.1 shows the data for these subjects who received a sham treatment that appeared to be genuine 
osteopathic manipulation. Higher values indicate better physical functioning. The goal of the experiment was to 
determine if subjects would report improvement over time even though the treatment they received would provide 
minimal improvement. We wish to know if there is a difference in the mean survey values among the four points in 
time.





