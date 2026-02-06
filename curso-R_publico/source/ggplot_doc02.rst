Ejemplo-2 ggplot2
=================

Grafica de barras
-----------------

.. code:: R

   # Load ggplot2
   library(ggplot2)

   # Create data
   data <- data.frame(
     name=c("A","B","C","D","E") ,  
     value=c(3,12,5,18,45)
   )

   # Barplot
   ggplot(data, aes(x=name, y=value)) + 
   geom_bar(stat = "identity")

Grafica Boxplot
-----------------

.. code:: R

   # Load ggplot2
   library(ggplot2)
 
   # The mtcars dataset is natively available
   # head(mtcars)
 
   # A really basic boxplot.
   ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + 
      geom_boxplot(fill="slateblue", alpha=0.2) + 
      xlab("cyl")

Grafica barras de error
-----------------------

.. code:: R

   # Load ggplot2
   library(ggplot2)

   # create dummy data
   data <- data.frame(
     name=letters[1:5],
     value=sample(seq(4,15),5),
     sd=c(1,0.2,3,2,4)
   )
 
   # Most basic error bar
   p=ggplot(data) +
      geom_bar( aes(x=name, y=value), stat="identity", fill="skyblue", alpha=0.7) +
      geom_errorbar( aes(x=name, ymin=value-sd, ymax=value+sd), width=0.4, colour="orange", alpha=0.9, size=1.3)

   print(p)

Histograma
-----------------

.. code:: R

   # library
   library(ggplot2)
 
   # dataset:
   data=data.frame(value=rnorm(100))

   # basic histogram
   p <- ggplot(data, aes(x=value)) + 
     geom_histogram()

   print(p)

Grafica de lineas
-----------------

.. code::

   # Libraries
   library(ggplot2)

   # create data
   xValue <- 1:10
   yValue <- cumsum(rnorm(10))
   data <- data.frame(xValue,yValue)

   # Plot
   p = ggplot(data, aes(x=xValue, y=yValue)) +
     geom_line()

   print(p)

Grafica de puntos
-----------------

.. code::

   # library
   library(ggplot2)
 
   # The iris dataset is provided natively by R
   #head(iris)
 
   # basic scatterplot
   p = ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
      geom_point()

   print(p)

Grafica con textos
-----------------
   
.. code::

   # library
   library(ggplot2)
 
   # Keep 30 first rows in the mtcars natively available dataset
   data=head(mtcars, 30)
 
   # 1/ add text with geom_text, use nudge to nudge the text 
   p = ggplot(data, aes(x=wt, y=mpg)) +
     geom_point() + # Show dots
     geom_text(
     label=rownames(data), 
     nudge_x = 0.25, nudge_y = 0.25, 
     check_overlap = T
   )

   print(p)

Grafica de Violin
-----------------
   
.. code::

   # Library
   library(ggplot2)

   # create a dataset
   data <- data.frame(
      name=c( rep("A",500), rep("B",500), rep("B",500), rep("C",20), rep('D', 100)  ),
      value=c( rnorm(500, 10, 5), rnorm(500, 13, 1), rnorm(500, 18, 1), rnorm(20, 25, 4), rnorm(100, 12, 1) )
   )

   # Most basic violin chart
   p <- ggplot(data, aes(x=name, y=value, fill=name)) + # fill=name allow to automatically dedicate a color for each group
      geom_violin()

   print(p)



