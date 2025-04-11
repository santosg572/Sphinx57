Modelos mixtos
==============

Modelos lineales mixtos
-----------------------

Un modelo mixto, o de efectos mixtos, incorpora efectos fijos y aleatorios, y normalmente se usa cuando se manejan datos que tiene varibilidad dentro de cada 
grupo y entre grupos. Los efectos fijos son los tratamientos que son de interés para el estudio. Los efectos aleatorios por su parte, están asociados con la 
variabilidad de cada grupo o sujeto del estudio. Estos últimos se modelan como variables aleatorias de las cuales se asume que siguen una distribución 
específica.

El objetivo de este cuaderno es observar como funcionaría un modelo mixto para diseño de experimentos, a través de un ejemplo obtenido de una base de datos 
predeterminada.

Configuración
-------------

Estas son las librerias que deben instalarse y cargarse en R

.. code:: R

   library(tidyverse)
   library(broom.mixed)
   library(lme4)

**Desarrollo ejercicio**

Primeramente ocuparemos una base de datos para el ejercicio

.. code:: R

   # Ruido para la base de datos

   noise<-runif(nrow(CO2),0.02,0.04)

   # Base de datos más ruido

   uptake2<- CO2$uptake + noise

   uptake2

.. code:: R

   ##  [1] 16.028542 30.429763 34.833841 37.222192 35.320159 39.238784 39.733426
   ##  [8] 13.635089 27.334503 37.127938 41.829647 40.639994 41.420936 44.324154
   ## [15] 16.228967 32.431712 40.330743 42.129278 42.920861 43.936347 45.535669
   ## [22] 14.236289 24.138387 30.332193 34.634185 32.524150 35.431055 38.720801
   ## [29]  9.322912 27.338010 35.038831 38.825681 38.639570 37.526774 42.432711
   ## [36] 15.133382 21.030181 38.133903 34.026261 38.934921 39.628965 41.431029
   ## [43] 10.626055 19.232669 26.234233 30.025636 30.920889 32.423421 35.524818
   ## [50] 12.030849 22.038299 30.626218 31.837472 32.426859 31.136529 31.529198
   ## [57] 11.323558 19.421681 25.836283 27.925025 28.534267 28.134692 27.834886
   ## [64] 10.520106 14.934465 18.123816 18.929069 19.525283 22.222333 21.922777
   ## [71]  7.720290 11.439958 12.322747 13.033510 12.525799 13.729721 14.430997
   ## [78] 10.637362 18.022512 17.923257 17.937666 17.928468 18.930770 19.925331

En la primera columna se encuentran las especies o variedades de plantas usadas para el experimento. En la columna “Type” se observa el lugar de 
experimentación. En la columna “Treatment” se encuentran los dos tipos de tratamiento usado, que son con enfriamento o sin el. La columna “conc” corresponde 
con la concentración de dióxido de carbono que se le aplicó a las plantas con su respectivo tratamiento, y por último “uptake” son los resultados de cuánto 
dióxido de carbono se absorbió en realidad.

Con el fin de observar los datos se hace una gráfica

.. code:: R

   ggplot(CO2, aes(x = conc, y = uptake2, color = Type))+ geom_point(aes(shape = Treatment)) + geom_path(aes(group = Plant, lty = Treatment)) + 
      theme_bw()


Se observa aparentemente que los tratamientos de Quebec presentaron mayor absorción de CO2. Cabe resaltar que la planta no tendría que ver con los resultados 
de absorción puesto que se considera que si bien son individuos difentes, al fin y al cabo son la misma especie o variedad de planta y por tanto, no debería 
haber variación, es decir, es la variable aleatoria.

**Modelo para variables aleatorias**

Se comparan dos modelos; lineal y aleatorio

.. code:: R

   # Modelo lineal

   MOD1<-lm(uptake2 ~ conc + Type:Treatment, data = CO2)

   # Modelo aleatorio

   MOD2<-lmer(uptake2 ~ conc + Type:Treatment + (1|Plant), data = CO2)
   ## fixed-effect model matrix is rank deficient so dropping 1 column / coefficient
   ## boundary (singular) fit: see help('isSingular')

Para poder observar los modelos utilizamos el paquete broom

.. code:: R

   # Para el modelo lineal

   broom::glance(MOD1)

.. code:: R

   ## # A tibble: 1 × 12
   ##   r.squared adj.r.squa…¹ sigma stati…²  p.value    df logLik   AIC   BIC devia…³
   ##       <dbl>        <dbl> <dbl>   <dbl>    <dbl> <dbl>  <dbl> <dbl> <dbl>   <dbl>
   ## 1     0.707        0.692  6.00    47.7 2.47e-20     4  -267.  546.  561.   2843.
   ## # … with 2 more variables: df.residual <int>, nobs <int>, and abbreviated
   ## #   variable names ¹​adj.r.squared, ²​statistic, ³​deviance

.. code:: R

   broom::tidy(MOD1)

.. code:: R

   ## # A tibble: 6 × 5
   ##   term                                estimate std.error statistic   p.value
   ##   <chr>                                  <dbl>     <dbl>     <dbl>     <dbl>
   ## 1 (Intercept)                           8.13     1.63         4.99  3.46e- 6
   ## 2 conc                                  0.0177   0.00223      7.97  1.01e-11
   ## 3 TypeQuebec:Treatmentnonchilled       19.5      1.85        10.5   9.82e-17
   ## 4 TypeMississippi:Treatmentnonchilled  10.1      1.85         5.48  4.97e- 7
   ## 5 TypeQuebec:Treatmentchilled          15.9      1.85         8.61  5.59e-13
## 6 TypeMississippi:Treatmentchilled     NA       NA           NA    NA
# Para el modelo lineal

broom.mixed::glance(MOD2)
## # A tibble: 1 × 7
##    nobs sigma logLik   AIC   BIC REMLcrit df.residual
##   <int> <dbl>  <dbl> <dbl> <dbl>    <dbl>       <int>
## 1    84  6.00  -268.  549.  566.     535.          77
broom.mixed::tidy(MOD2)
## # A tibble: 7 × 6
##   effect   group    term                                estim…¹ std.er…² stati…³
##   <chr>    <chr>    <chr>                                 <dbl>    <dbl>   <dbl>
## 1 fixed    <NA>     (Intercept)                          8.13    1.63       4.99
## 2 fixed    <NA>     conc                                 0.0177  0.00223    7.97
## 3 fixed    <NA>     TypeQuebec:Treatmentnonchilled      19.5     1.85      10.5 
## 4 fixed    <NA>     TypeMississippi:Treatmentnonchilled 10.1     1.85       5.48
## 5 fixed    <NA>     TypeQuebec:Treatmentchilled         15.9     1.85       8.61
## 6 ran_pars Plant    sd__(Intercept)                      0      NA         NA   
## 7 ran_pars Residual sd__Observation                      6.00   NA         NA   
## # … with abbreviated variable names ¹​estimate, ²​std.error, ³​statistic
De aquí se puede concluir, que el tratamiento que mejor resultados tuvo fue el no enfriado en Quebec, aspecto que se tenía previsto desde el análisis 
descriptivo a partir de la gráfica. Esto es así porque tuvo la mayor pendiente 19,52, indicando de este modo una absorción.de 19.52 en la unida de tiempo 
estándar para el estudio. Por otro lado, se observa que en el modelo lineal si incluye el tratamiento de enfriado junto con el tipo Mississippi, aunque no le 
asigna ningún valor, mientras que en el modelo aleatorio lo elimina.

Ventajas de este modelo en agronomía
Puede ser utilizado cuando hay que hacer repeticiones en una misma unidad de experimentación, siendo esto una planta, cultivo, algún tipo de agroinsumo, etc. 
Esto con el fin de tener en cuenta tanto la variación entre las repeticiones como los efectos de los diferentes tratamientos a aplicar, de esta manera se 
podría obtener resultados más precisos


https://rpubs.com/marlozanoca/1057556


