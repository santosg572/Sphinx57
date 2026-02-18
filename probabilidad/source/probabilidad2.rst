TEMA 6: PROBABILIDAD
====================

1. Introducción.

1.1. Experimento aleatorio

1.2. Espacio muestral

1.3. Sucesos

2. Probabilidad.

2.1. Regla de Laplace.

2.2. Probabilidad frecuentista.

3. Probabilidad Condicionada.

4. Dependencia e Independencia de Sucesos

5. Teorema de la Probabilidad Total y Teorema de Bayes.


**1. Introducción.**

Muchos fenómenos que habitualmente observamos en la ciencia, y particularmente en el campo de la biología, la oceanografía, la psicología, 
la sociología, etc., tienen una fuerte componente aleatoria (aleatorio significa incierto, que depende de la suerte o el azar).

**Ejemplos:**

• Cuando alimentamos a un pez de un cultivo con una dieta determinada, en general no podemos predecir con seguridad el peso final que va a alcanzar el pez.

• Si estamos interesados en estudiar una variable, como por ejemplo la talla en los sujetos de una población, tendremos que tomar una muestra aleatoria de la misma, dado que casi nunca es posible estudiar a toda la población. Los resultados del estudio, evidentemente, dependerán de la muestra seleccionada (muestras distintas producirán resultados distintos, aunque se espera que sean siempre parecidos a lo que se habría obtenido de haber podido observar la población completa), y por tanto, también tendrán naturaleza aleatoria.

**Un poco de Filosofía:**

• En el primero de los ejemplos anteriores es cierto que el peso final del pez no es una cantidad completamente aleatoria y quizás se puede 
predecir aproximadamente en función de la especie, las condiciones iniciales del pez, el tiempo de cultivo, etc. Una forma habitual de  realizar esta predicción es observar que, por ejemplo, todos los peces de esa especie criados en esas condiciones tienen un peso medio de 3 
kg. En tal caso sabemos a priori que un pez escogido arbitrariamente entre todos éstos pesará aproximadamente 3 kg. Ahora bien su peso  
exacto será realmente 3 + ε kg., donde ε es una cantidad (positiva o negativa) en la que se incluye el efecto combinado de muchísimas  
variables de las que se desconoce la forma exacta en que afectan al peso del animal (incluido el mero azar que ha dado lugar a que el pez  
unos días haya comido más, otros menos, que haya enfermado, que haya sido dominante o haya sido dominado, etc). Esta combinación de  
pequeños efectos impredecibles es la que da lugar en última instancia al valor ε que, a efectos prácticos, es completamente aleatorio.

• En el segundo ejemplo se pretende evaluar el comportamiento de una variable en una población a través de la información recogida en una muestra elegida al azar. La razón principal para elegir muestras al azar es evitar en la medida de lo posible la introducción de sesgos (aún involuntarios) por parte del investigador. Al hacer una evaluación global de una variable, usualmente es preciso sintetizar la 
información utilizando su valor medio, varianza, distribución de frecuencias, etc. Dado que de lo que disponemos es de una muestra, estos valores se calcularán sobre ésta, y no sobre la población. Si µ y σ 2 son, respectivamente, la media y la varianza (desconocidas pero 
fijas) de la población, y x y s 2 son esas cantidades calculadas en la muestra (y por tanto conocidas, aunque normalmente varían de una muestra a otra), podemos esperar que:

.. math::

   \bar{x} = \mu + \epsilon_1 

   s^2 = \sigma^2 + \epsilon_2 

donde :math:`\varepsilon_1` y :math:`\varepsilon_2` son cantidades que dependen de la muestra escogida y que son aleatorias precisamente 
porque la muestra se ha escogido al 
azar.

El hecho de que el resultado de un fenómeno aleatorio sea incierto, no quiere decir que no se pueda hacer una predicción. Lo que sucede es 
que la predicción habrá que hacerla en términos de probabilidad:

• A la hora de predecir el peso de un pez concreto, deberemos sustituir la afirmación segura: “Al haberse cultivado de esta forma, este pez  pesará 3 kg.” por una afirmación probabilística: “Al haberse cultivado de esta forma, este pez pesará 3 kg, si bien con una probabilidad 
del 95% puede ocurrir que el peso oscile 300 gr. arriba, 300 gr, abajo.”

• A la hora de aproximar la talla media de los individuos de una población (que no ha podido ser observada íntegramente sino que se ha  observado una muestra aleatoria), deberemos sustituir la afirmación segura: “La talla media de los individuos de esta población es de 60 
cm.” por una afirmación probabilística: “La talla media de los individuos de esta población es 60 cm., si bien con una probabilidad del 90% 
puede ocurrir que la talla media oscile 10 cm. por encima o por debajo de esta cantidad.”


**2. PROBABILIDAD**

**Concepto intuitivo de Probabilidad.**

El concepto de la probabilidad no es ajeno al campo de la ciencia: cuando los resultados de nuestros experimentos no pueden predecirse con 
exactitud, es importante disponer al menos de una medida del grado de certidumbre con que puede ocurrir cada uno de sus posibles 
resultados. Esa medida es precisamente lo que llamamos probabilidad.

**Ejemplos:**

1. Cuando lanzamos una moneda al aire no sabemos si va a salir cara o cruz. No obstante, si la moneda está bien construida, podemos esperar 
que la mitad de las veces que la lancemos salga cara y la otra mitad cruz. Decimos de esta manera que la probabilidad de sacar cara es de 
un 50% y la de sacar cruz otro 50%.

Aunque aquí hemos expresado la probabilidad en tanto por ciento, en la práctica es más frecuente expresar la probabilidad como proporción 
(en tanto por 1): esto es, la probabilidad de sacar cara es 0.5, y la de sacar cruz es también 0.5.


2. Se ha observado que entre las tortugas de determinada especie sólo el 10% de las puestas se realiza de día, mientras que el restante 90% 
se lleva a cabo tras la puesta del sol. Si seguimos a una tortuga de esta especie elegida arbitrariamente aunque a priori no sabemos si 
anidará de día o de noche, sí que podemos decir que las probabilidades de cada una de estas situaciones son, respectivamente, del 10% y del 
90%, o expresadas en tanto por uno, de 0.1 y 0.9.

Nótese que en estos dos ejemplos, la forma de asignar probabilidades a los resultados posibles ha sido distinta. En el caso de la moneda 
hemos empleado un razonamiento abstracto (Si la moneda está bien hecha, las probabilidades de cara y cruz son 50% y 50% respectivamente), 
mientras que en el caso de las tortugas hemos debido hacer observaciones previas (se ha observado que el 10% de las puestas se hace de día 
y el 90% de noche)

Para definir correctamente el concepto de probabilidad debemos definir los siguientes conceptos previos.

**Experimento aleatorio.**

Es aquel cuyo resultado es incierto o depende del azar. Su opuesto sería un experimento determinista, cuyo resultado es predecible con 
anterioridad a la realización del experimento.

**Espacio muestral.**

Se llama espacio muestral asociado a un experimento aleatorio al conjunto de posibles resultados elementales del experimento. 
Representaremos habitualmente el espacio muestral por E.

**Ejemplo:** Al lanzar un dado, el conjunto de posibles resultados elementales del experimento es

.. math::

   E = \{ 1,2,3,4,5,6 \}.

**Suceso elemental.**

Cualquier elemento del espacio muestral.

**Sucesos**

Un suceso es cualquier colección de sucesos elementales (esto es, cualquier subconjunto de E.)

**Ejemplo:** Sea E = {1,2,3,4,5,6} el espacio muestral del experimento “lanzar un dado” . Si S es el conjunto de todos los sucesos de dicho 
espacio muestral, tenemos:

.. math::

   \mathbf{S} = \{ \O, E, \{1\}, ... ,\{6\}, ... ,\{1,3\},\{4,6\}, ... ,\{2,4,6\},\{1,3,5\},

   \{1,2,3\},\{4,5,6\}, ..., \{2,3,4,5\}, ...\}

Algunos sucesos especiales son:

- **Suceso seguro:** Es aquel que podremos predecir que con seguridad ocurrirá al realizar el experimento aleatorio. Contendrá pues todos 
los 
sucesos elementales, por lo que es el propio espacio muestral E.

Ejemplo: Al lanzar un dado al azar, el Suceso Seguro es “Obtener un número del 1 a 6” = E.

- **Suceso imposible:** Es aquel que podremos predecir que con seguridad no ocurrirá. Como conjunto no contendrá a ningún suceso elemental, 
por 
lo que se trata del conjunto vacío, el cual representaremos por ∅.

Ejemplo: Al lanzar un dado al azar, el Suceso “Obtener un número mayor que 6” es un suceso imposible.

- **Suceso contrario:** Dado un suceso A, el suceso contrario lo representaremos por A c ó A y está formado por todos los sucesos 
elementales 
que no están en A. La ocurrencia de A supone, por tanto, la no ocurrencia de A , y viceversa.

Ejemplo: Al lanzar un dado al azar, si A = “Obtener un número par”, entonces A = “Obtener número impar”.


- **Inclusión de sucesos:** Se dice que un suceso A está incluido en otro suceso B (es decir, A ⊂ B), si siempre que ocurre A, ocurre 
también 
B. Es decir todos los elementos de A son también elementos de B.

Ejemplo: Al lanzar un dado al azar, sea A = Suceso “Obtener un cinco”, y sea B = Suceso “Obtener número impar”. Se tiene, pues que, A = {5} 
⊂ B = {1,3,5}.

- **Unión de sucesos:** Dados dos sucesos A y B, se llama unión de sucesos, al nuevo suceso A ∪B, que consiste en que ocurra alguno de los 
dos. Por tanto, A ∪B es la reunión de todos los sucesos elementales de A con los sucesos elementales de B.

Ejemplo: Al lanzar un dado al azar, sea A =Suceso “Obtener un número par”, y B = Suceso “Obtener número mayor a tres” = {4,5,6}. Entonces, 
A∪B = Suceso “Obtener número par o mayor a tres” = {2,4,5,6}.

- **Intersección de sucesos:** Dados dos sucesos A y B, se llama intersección de sucesos, al nuevo suceso A∩B, que consiste en que ocurran 
ambos a la vez. Por tanto, A∩B es el conjunto los sucesos elementales que pertenecen a ambos conjuntos a la vez.

Ejemplo: Al lanzar un dado al azar, sea A=Suceso “Obtener un número par”, y B = Suceso “Obtener número mayor a tres” = {4,5,6}. Entonces, 
:math:`A \cap B` = Suceso “Obtener número par mayor a tres” = {4,6}.

- **Diferencia de sucesos:** Dados dos sucesos A y B, se llama diferencia del suceso A menos el B, al suceso A-B, formado por todos los 
sucesos 
elementales de A que no estén en B.

Ejemplo: Al lanzar un dado al azar, sea A=Suceso “Obtener un número par”, y B = Suceso “Obtener número mayor a tres” = {4,5,6}. Entonces, 
A-B = A∩B c = Suceso “Obtener número par no mayor a tres” = {2}.

- **Sucesos incompatibles:** Dados dos sucesos A y B, se dicen que son incompatibles si no pueden ocurrir simultáneamente. Por tanto, si A 
y B 
son incompatibles se tiene que A∩B = ∅.

Ejemplo: Al lanzar un dado al azar, sea A=Suceso “Obtener un número par”={2,4,6}, y B = Suceso “Obtener número impar” = {1,3,5}. Entonces, 
:math:`A \cap B = \O`.

**Definición formal de probabilidad:**


Formalmente, si representamos por S el conjunto de todos los sucesos de un espacio muestral E, una medida de probabilidad es una función 
definida para todos los elementos de S y que toma valores en el intervalo [0,1], es decir,

P: S ⎯⎯→[0,1]

A⎯⎯⎯⎯⎯

 y que verifica las siguientes condiciones:

1. El suceso seguro tiene probabilidad 1: P(E)=1

2. Si A y B son dos sucesos incompatibles (:math:`A \cap B = \O`), entonces:

.. math::

   P(A \cap B)= P(A) + P(B)



