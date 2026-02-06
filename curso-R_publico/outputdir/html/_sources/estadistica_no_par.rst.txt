Estadística NO Paramétrica
==========================

La estadística no paramétrica es una rama de la estadística que utiliza métodos para analizar datos cuando no se asume 
que la distribución de la población sigue una forma específica, como una distribución normal. A diferencia de la 
estadística paramétrica, que se basa en la suposición de que los datos siguen una distribución conocida, la 
estadística no paramétrica es más flexible y robusta, ya que no requiere que los datos cumplan con las mismas 
suposiciones. 

En detalle:

**¿Cuándo se usa?**

Se utiliza cuando los datos no cumplen con las suposiciones de las pruebas paramétricas, como la normalidad de la 
distribución, o cuando se desea analizar datos ordinales o nominales. 

**Características:**

Las pruebas no paramétricas son más flexibles y robustas que las pruebas paramétricas, ya que no asumen una forma 
específica para la distribución de la población. 

**Ejemplos de pruebas no paramétricas:**

**Prueba de los signos de Wilcoxon**

.. code:: R

   # Método S3 por defecto 
   wilcox.test(x, y = NULL, 
            alternative = c("two.sided", "less", "greater"), 
            mu = 0, paired = FALSE, exact = NULL, correct = TRUE, 
            conf.int = FALSE, conf.level = 0.95, …)

   # Método S3 para la fórmula 
   wilcox.test(fórmula, datos, subconjunto, na.acción, …)

**Argumentos**

* ``x`` - Vector numérico de valores de datos. Se omitirán los valores no finitos (p. ej., infinitos o faltantes).
* ``y`` - un vector numérico opcional de valores de datos: al igual que con x los valores no finitos, se omitirán.
* ``alternative`` - Una cadena de caracteres que especifica la hipótesis alternativa. Debe ser una de las siguientes: "two.sided"(predeterminada) "greater"o "less". Puede especificar solo la letra inicial.
* ``mu`` - Un número que especifica un parámetro opcional utilizado para formar la hipótesis nula. Ver "Detalles".
* ``paired`` - una indicación lógica si desea una prueba pareada.
* ``exact`` - una indicación lógica si se debe calcular un valor p exacto.
* ``correct`` - una indicación lógica si se debe aplicar la corrección de continuidad en la aproximación normal para 
el valor p.
* ``conf.int`` - una indicación lógica si se debe calcular un intervalo de confianza.
* ``conf.level`` - nivel de confianza del intervalo.
* ``fórmula`` - una fórmula de la forma lhs ~ rhsdonde lhs es una variable numérica que da los valores de los datos y 
rhsun factor con dos niveles que da los grupos correspondientes.
* ``datos`` - Una matriz o marco de datos opcional (o similar: ver model.frame) que contiene las variables de la 
* ``fórmula`` - formula.  Por defecto, las variables se toman de environment(formula).
* ``subconjunto`` -  un vector opcional que especifica un subconjunto de observaciones que se utilizarán.
* ``na.acción`` - una función que indica qué debe suceder cuando los datos contienen NAs. El valor predeterminado es 
getOption("na.action").
* ``…`` - Más argumentos que se pasarán hacia o desde los métodos.

**Ejemplo**

.. code:: R

   x <- c(1.83,  0.50,  1.62,  2.48, 1.68, 1.88, 1.55, 3.06, 1.30)
   y <- c(0.878, 0.647, 0.598, 2.05, 1.06, 1.29, 1.06, 3.14, 1.29)
   wilcox.test(x, y, paired = TRUE, alternative = "greater")
   wilcox.test(y - x, alternative = "less")    # The same.



* ``Prueba de Mann-Whitney``
* ``Prueba de Friedman``
* ``Prueba de Kendall`` 

**Ventajas:**

Son útiles cuando no se sabe la forma de la distribución de la población o cuando los datos no cumplen con las 
suposiciones de las pruebas paramétricas. 

**Desventajas:**

Pueden ser menos potentes que las pruebas paramétricas cuando la distribución de la población sí es conocida y cumple 
con las suposiciones de la prueba paramétrica. 

