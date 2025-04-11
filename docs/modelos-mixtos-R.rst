Modelos Mixtos con R
Freddy Hernández Barajas

Jorge Leonardo López Martínez

2024-02-28

Bienvenido


Este libro está destinado para usuarios de R interesados en aplicar modelos mixtos.

Freddy Hernández Barajas
Jorge Leonardo López Martínez

Estructura del libro
En el capítulo 2 se hace un repaso básico del modelo de regresión lineal clásico. En el capítulo 3 se presentan el modelo lineal mixto (LMM) y luego en el 
capítulo 17 se presentan los modelos lineales generalizados mixtos (GLMM). En el capítulo 5 se presenta el paquete lme4 y sus principales funciones para 
modelación, mientras que en el capítulo 7 se presenta el paquete nlme y sus principales funciones para modelación. En el capítulo 11 se muestran ejemplos de 
cómo proceder para comparar diferentes modelos usando pruebas de hipótesis.. En el capítulo 27 se muestra la forma de calcular la medida  
R
2
  para LMM y GLMM.

Software y convenciones
Para realizar este libro usamos los paquetes knitr (Xie 2015) y bookdown (Xie 2023) que permiten unir la ventajas de LaTeX y R en un mismo archivo.

En todo el libro se presentarán códigos que el lector puede copiar y pegar en su consola de R para obtener los mismos resultados aquí del libro. Los códigos 
se destacan en una caja de color similar a la mostrada a continuación.

4 + 6
a <- c(1, 5, 6)
5 * a
1:10
Los resultados o salidas obtenidos de cualquier código se destacan con dos símbolos de númeral (##) al inicio de cada línea o renglón, esto quiere decir que 
todo lo que inicie con ## son resultados obtenidos y NO los debe copiar. Abajo se muestran los resultados obtenidos luego de correr el código anterior.

## [1] 10
## [1]  5 25 30
##  [1]  1  2  3  4  5  6  7  8  9 10
Bloques informativos
En varias partes del libro usaremos bloques informativos para resaltar algún aspecto importante. Abajo se encuentra un ejemplo de los bloques y su 
significado.

Nota aclaratoria.
Sugerencia.
Advertencia.
Solución a ejemplos.
References
Xie, Yihui. 2015. Dynamic Documents with R and Knitr. 2nd ed. Boca Raton, Florida: Chapman; Hall/CRC. http://yihui.name/knitr/.
———. 2023. Bookdown: Authoring Books and Technical Documents with r Markdown. https://github.com/rstudio/bookdown.

https://fhernanb.github.io/libro_modelos_mixtos/index.html#estructura-del-libro


