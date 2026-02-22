PROBABILIDAD
============

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

Muchos fenómenos que habitualmente observamos en la ciencia, y particularmente en el campo de la biología, la 
oceanografía, la psicología, la sociología, etc., tienen una fuerte componente aleatoria (aleatorio significa incierto, 
que depende de la suerte o el azar).

**Ejemplos:**

• Cuando alimentamos a un pez de un cultivo con una dieta determinada, en general no podemos predecir con seguridad el 
peso final que va a alcanzar el pez.

• Si estamos interesados en estudiar una variable, como por ejemplo la talla en los sujetos de una población, tendremos 
que tomar una muestra aleatoria de la misma, dado que casi nunca es posible estudiar a toda la población. Los 
resultados del estudio, evidentemente, dependerán de la muestra seleccionada (muestras distintas producirán resultados 
distintos, aunque se espera que sean siempre parecidos a lo que se habría obtenido de haber podido observar la 
población completa), y por tanto, también tendrán naturaleza aleatoria.

**Un poco de Filosofía:**

• En el primero de los ejemplos anteriores es cierto que el peso final del pez no es una cantidad completamente 
aleatoria y quizás se puede predecir aproximadamente en función de la especie, las condiciones iniciales del pez, el 
tiempo de cultivo, etc. Una forma habitual de realizar esta predicción es observar que, por ejemplo, todos los peces de 
esa especie criados en esas condiciones tienen un peso medio de 3 kg. En tal caso sabemos a priori que un pez escogido 
arbitrariamente entre todos éstos pesará aproximadamente 3 kg. Ahora bien su peso exacto será realmente 3 + ε kg., 
donde ε es una cantidad (positiva o negativa) en la que se incluye el efecto combinado de muchísimas variables de las 
que se desconoce la forma exacta en que afectan al peso del animal (incluido el mero azar que ha dado lugar a que el 
pez unos días haya comido más, otros menos, que haya enfermado, que haya sido dominante o haya sido dominado, etc). 
Esta combinación de pequeños efectos impredecibles es la que da lugar en última instancia al valor ε que, a efectos 
prácticos, es completamente aleatorio.

• En el segundo ejemplo se pretende evaluar el comportamiento de una variable en una población a través de la 
información recogida en una muestra elegida al azar. La razón principal para elegir muestras al azar es evitar en la 
medida de lo posible la introducción de sesgos (aún involuntarios) por parte del investigador. Al hacer una evaluación 
global de una variable, usualmente es preciso sintetizar la información utilizando su valor medio, varianza, 
distribución de frecuencias, etc. Dado que de lo que disponemos es de una muestra, estos valores se calcularán sobre 
ésta, y no sobre la población. Si :math:`\mu` y :math:`\sigma^2` son, respectivamente, la media y la varianza 
(desconocidas pero fijas) de la 
población, y :math:`\bar{x}` y :math:`s^2` son esas cantidades calculadas en la muestra (y por tanto conocidas, aunque 
normalmente varían de 
una muestra a otra), podemos esperar que:

.. math::

   \bar{x} = \mu + \epsilon_1 

   s^2 = \sigma^2 + \elsilon_2
 

donde :math:`\epsilon_1` y :math:`\epsilon_2` son cantidades que dependen de la muestra escogida y que son 
aleatorias precisamente porque la muestra 
se ha escogido al azar.


El hecho de que el resultado de un fenómeno aleatorio sea incierto, no quiere decir que no se pueda hacer una 
predicción. Lo que sucede es que la predicción habrá que hacerla en términos de probabilidad:

• A la hora de predecir el peso de un pez concreto, deberemos sustituir la afirmación segura: “Al haberse cultivado de 
esta forma, este pez pesará 3 kg.” por una afirmación probabilística: “Al haberse cultivado de esta forma, este pez 
pesará 3 kg, si bien con una probabilidad del 95% puede ocurrir que el peso oscile 300 gr. arriba, 300 gr, abajo.”

• A la hora de aproximar la talla media de los individuos de una población (que no ha podido ser observada íntegramente 
sino que se ha observado una muestra aleatoria), deberemos sustituir la afirmación segura: “La talla media de los 
individuos de esta población es de 60 cm.” por una afirmación probabilística: “La talla media de los individuos de esta 
población es 60 cm., si bien con una probabilidad del 90% puede ocurrir que la talla media oscile 10 cm. por encima o 
por debajo de esta cantidad.”

**2. PROBABILIDAD**

**Concepto intuitivo de Probabilidad.**

El concepto de la probabilidad no es ajeno al campo de la ciencia: cuando los resultados de nuestros experimentos no 
pueden predecirse con exactitud, es importante disponer al menos de una medida del grado de certidumbre con que puede 
ocurrir cada uno de sus posibles resultados. Esa medida es precisamente lo que llamamos probabilidad.

**Ejemplos:**

1. Cuando lanzamos una moneda al aire no sabemos si va a salir cara o cruz. No obstante, si la moneda está bien 
construida, podemos esperar que la mitad de las veces que la lancemos salga cara y la otra mitad cruz. Decimos de esta 
manera que la probabilidad de sacar cara es de un 50% y la de sacar cruz otro 50%.

Aunque aquí hemos expresado la probabilidad en tanto por ciento, en la práctica es más frecuente expresar la 
probabilidad como proporción (en tanto por 1): esto es, la probabilidad de sacar cara es 0.5, y la de sacar cruz es 
también 0.5.

2. Se ha observado que entre las tortugas de determinada especie sólo el 10% de las puestas se realiza de día, mientras 
que el restante 90% se lleva a cabo tras la puesta del sol. Si seguimos a una tortuga de esta especie elegida 
arbitrariamente aunque a priori no sabemos si anidará de día o de noche, sí que podemos decir que las probabilidades de 
cada una de estas situaciones son, respectivamente, del 10% y del 90%, o expresadas en tanto por uno, de 0.1 y 0.9.

Nótese que en estos dos ejemplos, la forma de asignar probabilidades a los resultados posibles ha sido distinta. En el 
caso de la moneda hemos empleado un razonamiento abstracto (Si la moneda está bien hecha, las probabilidades de cara y 
cruz son 50% y 50% respectivamente), mientras que en el caso de las tortugas hemos debido hacer observaciones previas 
(se ha observado que el 10% de las puestas se hace de día y el 90% de noche)

Para definir correctamente el concepto de probabilidad debemos definir los siguientes conceptos previos.

**Experimento aleatorio.**

Es aquel cuyo resultado es incierto o depende del azar. Su opuesto sería un experimento determinista, cuyo resultado es 
predecible con anterioridad a la realización del experimento.

**Espacio muestral.**

Se llama espacio muestral asociado a un experimento aleatorio al conjunto de posibles resultados elementales del 
experimento. Representaremos habitualmente el espacio muestral por E.

**Ejemplo:** Al lanzar un dado, el conjunto de posibles resultados elementales del experimento es

E = {1,2,3,4,5,6}.

**Suceso elemental.**

Cualquier elemento del espacio muestral.

**Sucesos**

Un suceso es cualquier colección de sucesos elementales (esto es, cualquier subconjunto de E.)

**Ejemplo:** Sea E = {1,2,3,4,5,6} el espacio muestral del experimento “lanzar un dado” . Si S es el conjunto de todos 
los 
sucesos de dicho espacio muestral, tenemos:

.. math::

   S = \{ \O, E, \{1\}, ... , \{6\}, ... , \{1,3\}, \{4,6 \}, ... ,\{2,4,6\}, \{1,3,5\}, \{1,2,3\}, \{4,5,6\}, ..., 
\{2,3,4,5\}, ...\}

Algunos sucesos especiales son:

- **Suceso seguro:** Es aquel que podremos predecir que con seguridad ocurrirá al realizar el experimento aleatorio. 
Contendrá pues todos los sucesos elementales, por lo que es el propio espacio muestral E.

Ejemplo: Al lanzar un dado al azar, el Suceso Seguro es “Obtener un número del 1 a 6” = E.

- **Suceso imposible:** Es aquel que podremos predecir que con seguridad no ocurrirá. Como conjunto no contendrá a 
ningún 
suceso elemental, por lo que se trata del conjunto vacío, el cual representaremos por ∅.

Ejemplo: Al lanzar un dado al azar, el Suceso “Obtener un número mayor que 6” es un suceso imposible.

- **Suceso contrario:** Dado un suceso A, el suceso contrario lo representaremos por :math:`A^c` ó :math:`\bar{A}` y está formado por todos 
los sucesos elementales que no están en A. La ocurrencia de A supone, por tanto, la no ocurrencia de :math:`\bar{A}`, y viceversa.

Ejemplo: Al lanzar un dado al azar, si A = “Obtener un número par”, entonces :math:`\bar{A}` = “Obtener número impar”.

- **Inclusión de sucesos:** Se dice que un suceso A está incluido en otro suceso B (es decir, :math:`A  \subset B`), si 
siempre que 
ocurre A, ocurre también B. Es decir todos los elementos de A son también elementos de B.

Ejemplo: Al lanzar un dado al azar, sea A = Suceso “Obtener un cinco”, y sea B = Suceso “Obtener número impar”. Se 
tiene, pues que, :math:`A = \{5\}  \subset B = \{1,3,5\}`.

- **Unión de sucesos**: Dados dos sucesos A y B, se llama unión de sucesos, al nuevo suceso :math:`A \cup B`, que consiste en que 
ocurra alguno de los dos. Por tanto, :math:`A \cup B` es la reunión de todos los sucesos elementales de A con los sucesos 
elementales de B.

Ejemplo: Al lanzar un dado al azar, sea A =Suceso “Obtener un número par”, y B = Suceso “Obtener número mayor a tres” = 
{4,5,6}. Entonces, :math:`A \cup B` = Suceso “Obtener número par o mayor a tres” = {2,4,5,6}.

- **Intersección de sucesos**: Dados dos sucesos A y B, se llama intersección de sucesos, al nuevo suceso :math:`A \cap B`, que 
consiste en que ocurran ambos a la vez. Por tanto, :math:`A \cap B` es el conjunto los sucesos elementales que pertenecen a ambos 
conjuntos a la vez.

Ejemplo: Al lanzar un dado al azar, sea A=Suceso “Obtener un número par”, y B = Suceso “Obtener número mayor a tres” = 
{4,5,6}. Entonces, :math:`A \cap B` = Suceso “Obtener número par mayor a tres” = {4,6}.

- **Diferencia de sucesos**: Dados dos sucesos A y B, se llama diferencia del suceso A menos el B, al suceso A-B, 
formado por todos los sucesos elementales de A que no estén en B.

Ejemplo: Al lanzar un dado al azar, sea A=Suceso “Obtener un número par”, y B = Suceso “Obtener número mayor a tres” = 
{4,5,6}. Entonces, :math:`A-B = A \cap B^c` = Suceso “Obtener número par no mayor a tres” = {2}.

- **Sucesos incompatibles**: Dados dos sucesos A y B, se dicen que son incompatibles si no pueden ocurrir 
simultáneamente. Por tanto, si A y B son incompatibles se tiene que :math:`A \cap B = \O`.

Ejemplo: Al lanzar un dado al azar, sea A=Suceso “Obtener un número par”={2,4,6}, y B = Suceso “Obtener número impar” = 
{1,3,5}. Entonces, :math:`A \cap B = \O`.

**Definición formal de probabilidad:**

Formalmente, si representamos por **S** el conjunto de todos los sucesos de un espacio muestral **E**, una medida de 
probabilidad es una función definida para todos los elementos de **S** y que toma valores en el intervalo [0,1], es decir,

.. math::

   P: S \to [0,1]

   A \to P(A)

 y que verifica las siguientes condiciones:


1. El suceso seguro tiene probabilidad 1: P(E)=1

2. Si A y B son dos sucesos incompatibles (:math:`A \cup B = \O`), entonces:

.. math::

   P(A \cap B)= P(A) + P(B)


De esta definición pueden deducirse las siguientes propiedades:


1) El suceso imposible tiene probabilidad 0: :math:`P(\O) = 0`

2) Para cualesquiera dos sucesos A y B: :math:`P(A \cup B)= P(A) + P(B) - P(A \cap B)`

3) Si :math:`A_1, A_2, ... , A_n`, son n sucesos incompatibles dos a dos (es decir, :math:`A_i \cap A_j = \O`, con :math:`i \neq j`), entonces:

.. math::

   P(A_1 \cup A_2 \cup ... \cup A_n ) = P(A_1) + P(A_2 ) + ... + P(A_n )

4) :math:`P(\bar{A}) = 1- P(A)`

5) Si :math:`A \subset B \to P(B-A) = P(B) – P(A)`

**Asignación de probabilidades a sucesos de un espacio muestral.**

La determinación de la probabilidad de un suceso se puede fundamentar en uno de los siguientes criterios:

**2.1 Asignación mediante la Regla de Laplace.**

Consideremos un espacio muestral finito con n elementos que suponemos equiprobables (es decir, todos tienen la misma 
probabilidad de ocurrir).

• La probabilidad de que ocurra cada elemento será entonces 1/n.

 Si un suceso A está compuesto por k elementos del espacio muestral, su probabilidad es:

. math::

  P( A) = \frac{k}{n} = \frac{n^º \text{de casos favorables}}{n^º \text{ de casos posibles}}

Ejemplo: Sea E={1,2,3,4,5,6} el espacio muestral que se obtiene al realizar el experimento aleatorio “Lanzar un dado”. 
Se tiene que:

P(1) = P(2) = P(3) = P(4) = P(5) = P(6)= :math:{1}{6}


P(Obtener multiplo de 3) = P({3,6}) = :math:`\frac{2}{6}`

P(No obtener multiplo de 3) = P({1,2,4,5}) = :math:`\frac{4}{6}` = 1 - P({3,6})

La regla de Laplace puede generalizarse a espacios muestrales continuos, siempre que todos los sucesos elementales en 
dichos espacios sean equiprobables. En esta situación, no es posible contar cuántos son los casos favorables ni los 
posibles (pues el espacio muestral es continuo y por tanto no numerable); habrá de determinarse, con la medida adecuada 
al espacio que se considere, cuanto miden respectivamente el conjunto de casos favorables y el conjunto de casos 
posibles, esto es:

.. math::

   P(A) \frac{\mu(A)}{\mu(E)} = \frac{\text{Medida del conjunto de casos favorables a A}{Medida del conjunto total de casos posibles}}

Ejemplo 1: Imaginemos una pared y a alguien con los ojos vendados que tira un dardo a la pared, en la que se ha colocado un cuadro 
después de vendarle los ojos. ¿Cuál es la probabilidad de que acierte en el cuadro al lanzar el dardo?

P ( A) =

E

A

µ ( A) Area( A) P ( A) = = µ ( E ) Area ( E )

González J.J., Guerra N., Quintana M.P. y Santana A.

131 Métodos Estadísticos

Tema6: Probabilidad.

Nótese que para que funcione la asignación de Laplace todos los puntos de la pared deben tener la misma probabilidad de 
ser alcanzados por el dardo (cosa que ocurre si el lanzador tira a ciegas y no sabe dónde está el cuadro). Si el 
lanzador fuera experto, y lanzara con los ojos abiertos, la probabilidad de acertar en el cuadro A sería mucho mayor 
que la que hemos obtenido en el cálculo anterior.

El resultado de 500 lanzamientos podría ser algo parecido a lo que se muestra en los siguientes gráficos:

Tirador experto Tirador inexperto Ojos abiertos: Ojos vendados:

0

5

10

15

0

5

10

15

x

x

Alta probabilidad de acertar en el cuadro. La densidad de puntos (aciertos con los dardos) es mucho mayor sobre el 
cuadro que fuera de él: es mucho más probable acertar dentro del cuadro que fuera.

Baja probabilidad de acertar en el cuadro. La densidad de puntos es uniforme sobre toda la pared. Todos los puntos de 
la pared tienen la misma probabilidad de ser alcanzados.

y

y

0

5

10

15

15

20

20

0

5

10

132

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

2.2 Asignación mediante Frecuencias Relativas.

En muchas ocasiones no es factible asignar probabilidades según la regla de Laplace, por no ser equiprobables los 
sucesos elementales. Para asignar probabilidades a estos sucesos en tales casos podemos recurrir a la observación: 
realizamos el experimento aleatorio muchas veces y asignamos como probabilidad de un suceso A la frecuencia relativa 
(proporción de veces) con que ocurre el mismo.

Esta definición sólo tiene sentido si la frecuencia relativa con que ocurre un suceso tiende a estabilizarse a medida 
que el experimento aleatorio se realiza más y más veces. Afortunadamente en la práctica es eso lo que ocurre, y por 
tanto podemos correctamente definir la probabilidad de un suceso A como:

P(A)= lim

n →∞

nA  n

donde n es el número de veces que se ha realizado el experimento y n A el número de veces que el resultado del 
experimento ha sido el suceso A.

NOTA: Si el suceso A es cierta característica de los sujetos de una población (por ejemplo “ser rubio”), la 
probabilidad calculada según esta definición converge a la proporción de individuos de la población con esa 
característica, esto es:

n A NA  P(A)= lim → n →∞ n N

González J.J., Guerra N., Quintana M.P. y Santana A.

133 Métodos Estadísticos

Tema6: Probabilidad.

Ejemplo: En una pista de bolos se colocan 11 casillas alineadas, se lanza una pelota pequeña, ¿Cuál es la probabilidad 
de acertar en la casilla central?

Caso1: Si lanza un inexperto al hacer un lanzamiento podría caer por igual en cualquier casilla y tras muchos 
lanzamientos se podría tener un histograma del tipo:

Caso 2: Si lanza un experto tras muchos lanzamientos se podría tener un histograma del tipo:

En ambos casos, la probabilidad de acertar en una casilla determinada se puede calcular como el límite de la frecuencia 
relativa con que se acierta en esa casilla a medida que el número de tiradas va aumentando. En el primer caso la 
distribución de frecuencias (y por tanto de probabilidad) tiende a ser uniforme (igualmente repartida entre todas las 
casillas), mientras que en el segundo caso tiene una forma acampanada (más probabilidad en el centro que en los 
extremos)

134

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

3. PROBABILIDAD CONDICIONADA.

Si dos sucesos A y B están relacionados, la ocurrencia o no de A afecta a la probabilidad de ocurrencia de B.

Ejemplo: Al lanzar un dado, sean los sucesos A = “Obtener número Par” B = “Obtener número mayor a tres” Tenemos, por 
tanto, A ={2,4,6} y B ={4,5,6}

• Si no se tiene ninguna otra información, la probabilidad de

N B 3 que ocurra el suceso B es P( B) = = = 05. . N 6

• Si se dispone de la información de que al lanzar el dado ha ocurrido el suceso A (ha salido un número par), la 
probabilidad de que ocurra B es:

P bB A g

casos favorables a B sabiendo que ha ocurrido A 2 = = = .066 casos posibles sabiendo que ha ocurrido A 3

(Nótese como la probabilidad de B ha cambiado cuando se sabe que ha ocurrido A).

González J.J., Guerra N., Quintana M.P. y Santana A.

135 Métodos Estadísticos

Tema6: Probabilidad.

Observemos cómo hemos calculado esta probabilidad condicionada:

P b B A g

=

casos favorables a B sabiendo que ha ocurrido A casos posibles sabiendo que ha ocurrido A

=

N c l4 , 6 q h N b B ∩ A g N b B ∩ A g N P b B ∩ A g = = = = N c l2 , 4 , 6 q h N b A g N b A g N P b A g

Apoyándonos en esta idea, definimos el concepto de probabilidad condicionada del siguiente modo:

Se define la PROBABILIDAD CONDICIONADA de que ocurra un suceso B, dado que ha ocurrido otro suceso A,

como:

P b B A g = P b B P( ∩ A) A g

(Esta expresión viene a ser equivalente a calcular la probabilidad de B cuando el espacio muestral queda reducido sólo 
al suceso A, que es la condición que se ha producido).

136

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

4. DEPENDENCIA E INDEPENDENCIA DE SUCESOS

Un suceso B es independiente de un suceso A si la probabilidad de B no cambia cuando se cuenta con la información de 
que ha ocurrido A, esto es, si:

P(B) = P(B|A)

Propiedades importantes: Si B es independiente de A, entonces:

i)

P(A

∩

B)

=

P(A)

·

P(B)

ii) P(A|B) = P(A), es decir A es independiente de B

En general, si A1 , A2 , ... , A n son sucesos mutuamente independientes, de la primera propiedad anterior se sigue 
que:

P(A 1 ∩ A 2 ∩... ∩ An ) = P(A1 ) · P(A2 ) · ... · P(An )

González J.J., Guerra N., Quintana M.P. y Santana A.

137 Métodos Estadísticos

Tema6: Probabilidad.

Ejemplo:

Consideremos el experimento consistente en extraer dos cartas de una baraja española y sean los sucesos:

A= Obtener un oro en la primera extracción.

B= Obtener un oro en la segunda extracción.

Calcular la probabilidad de que ocurra B sabiendo que ha ocurrido A.

a) Si al observar la primera carta no se repone al mazo de cartas, ambos sucesos son dependientes y:

10 9 P ( A) = ; P b B A g = 40 39 Como P b B B g A g P b A ∩ ⇒= P b A ∩ B g = P ( A) ⋅ P b B A g = 10 ⋅ 9 P ( A) 
40 39

b) Si tras observar la primera carta ésta se repone al mazo, y a continuación se extrae la segunda carta, ambos sucesos 
son independientes y:

P b B A g = 10 40

=

P

(

B

)

40

10 P ( A) = ;

P b A ∩ B g = P( A) ⋅ P b B A g = P( A) ⋅ P( B) = 10 40 ⋅ 10 40

138

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

5. TEOREMA DE LA PROBABILIDAD TOTAL.

Los siguientes teoremas son de especial interés para resolver problemas relacionados con las probabilidades 
condicionales. Su enunciado requiere el concepto de sistema completo de sucesos que definimos a continuación:

Sistema completo de sucesos: En un espacio muestral E, se dice que n sucesos A1 , A 2 , ..., A n forman un sistema 
completo si A i ∩ A j = ∅, para cualquier par de conjuntos (son incompatibles dos a dos) y E = A 1 ∪ A 2 ∪... ∪ A 
n (la reunión de todos es el suceso seguro). Por tanto, dado un sistema completo de sucesos, ocurre uno y sólo uno de 
los sucesos que lo forman.

Teorema de la Probabilidad Total: Sea A1 , A 2 , ..., A n un sistema completo de sucesos y sea B un suceso. Se tiene 
entonces que:

n P( B) = ∑ P bB  i =1

A i g P b A i g

González J.J., Guerra N., Quintana M.P. y Santana A.

139 Métodos Estadísticos

Tema6: Probabilidad.

Ejemplo 1:

Una fábrica de coches fabrica tres tipos de coches A1 , A 2 y A3 , con una proporción de cada tipo de 4/10, 5/10, 1/10.

Además la probabilidad de que un coche de tipo A 1 se averíe durante el primer año es 0.07, la de que se averíe uno del 
tipo A 2 es 0.04 y del tipo A 3 es 0.09.

¿Cuál es la probabilidad de que ocurra el suceso B = “Un coche producido en esa fábrica tenga una avería antes de un 
año”?

El espacio muestral E es la producción total de la fábrica, por tanto

E=A1 ∪A2 ∪A3 

P ( B ) = P ( B ∩ E ) = P ( B ∩ ( A 1 ∪ A 2 ∪ A 3 ) ) =

= P ( ( B ∩ A 1 ) ∪ ( B ∩ A 2 ) ∪ ( B ∩ A 3 ) ) =

= P ( B ∩ A 1 ) + P ( B ∩ A 2 ) + P ( B ∩ A 3 ) =

= P ( B | A 1 ) P( A 1 ) + P ( B | A 2 ) P( A 2 ) + P ( B | A 3 ) P( A 3 ) =

4 5 1 = 0.07· + 0.04· + 0.09· = 0.057

10

10

10

140

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

Teorema de Bayes.

En muchas ocasiones se dispone de una descomposición del espacio muestral en un sistema completo de sucesos A1 , A2 , 
..., An , cuyas probabilidades P(Ai ) se conocen, en principio, para todos los A i (Probabilidades a priori). 
Supongamos que los Ai  no son directamente observables y que nos interesa calcular la probabilidad de que haya ocurrido 
concretamente el suceso Aj .

Si es posible realizar un experimento que produzca un resultado B, cuyas probabilidades condicionales P(B / Ai ) 
(verosimilitudes) también se conocen para todos los Ai , entonces el siguiente teorema permite usar la información 
aportada por B para calcular la probabilidad de que haya ocurrido Aj , esto es, la probabilidad P(A j / B) 
(probabilidad a posteriori)

Teorema de Bayes: Sea A1 , A 2 , ..., A n un sistema completo de sucesos y sea B un suceso que cumple que B ∩ A i ≠ 
∅. Se tiene entonces:

P d A j i P d B A j B iP d A j i = n ∑ P b B A i g P b A i g i =1

González J.J., Guerra N., Quintana M.P. y Santana A.

141 Métodos Estadísticos

Tema6: Probabilidad.

La demostración de este teorema es sencilla:

A j B P( B ∩ A j ) P( B | A j )·P( A j ) P( ∩ ) P(Aj |B) = = = P( B ) n n ∑ P( B ∩ A i ) ∑ P( B | A i )·P( A i ) i 
=1 i =1

Ejemplo 1:

Supongamos que en cierta población consideramos los siguientes grupos de personas en función de su edad: A1 

=Niño; A2 =Adulto; A 3 =Anciano. Sabemos qué proporción

representa cada uno de estos grupos de edad en la población, y conocemos también la incidencia de la gripe en cada 
grupo:

P(Niño)=0.25 P(Adulto)=0.55 P(Anciano)=0.2

P(Gripe | Niño)=0.4 P(Gripe | Adulto)=0.35 P(Gripe | Anciano)=0.6

Entre las personas que proporción de ancianos?

tienen gripe, ¿cuál es la

Esta pregunta se puede reformular en términos de probabilidad del siguiente modo: Calcular P(Anciano | Gripe). 
Utilizando el teorema de Bayes:

∩ P(G)

P(Anc P(Anc|G) =

G)

=

=

P(G|Anc)• P(Anc)

P(G| N)• P(N) + P(G|Ad)• P(Ad) + P(G|Anc)• P(Anc)

0,6 * 0,2 ,012 = = = 0,2909 0,4 * 0,25 + 0,35 * 0,55 + 0,6 * 0,2 0,4125

=

142

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

Ejemplo 2:

Consideremos una prueba diagnóstica para la detección de determinado tipo de cáncer. Para que ésta sea aceptable ha de 
tener alta sensibilidad y alta especificidad. Estos conceptos se definen del siguiente modo (se entiende que dar 
positivo en la prueba significa que ésta detecta la presencia del cáncer):

P F H

Sensibilidad = Especificidad =

La prueba dé positivo

K I

P F H

El individuo está enfermo La prueba dé negativo El idividuo está

sano I K

Como las pruebas diagnósticas no son exactas, puede ocurrir que den positivo en individuos sanos (falsos positivos) y 
negativo en individuos enfermos (falsos negativos). Se definen también:

Coeficiente falso-positivo = 1 – Especificidad

Coeficiente falso-negativo = 1- Sensibilidad

Si llamamos:

C = “padecer cáncer” T = “dar positivo en la prueba diagnóstica”

Podemos expresar:

Sensibilidad = P(T | C ) Coeficiente falso-positivo = Especificidad = P(T | C ) Coeficiente falso-negativo =

P(T | C )

P(T | C )

González J.J., Guerra N., Quintana M.P. y Santana A.

143 Métodos Estadísticos

Tema6: Probabilidad.

Supongamos que se desea saber si una persona elegida arbitrariamente de una población padece cáncer. Si p C es la 
proporción de enfermos de cáncer en esa población, a priori la probabilidad de que esa persona en particular tenga 
cáncer puede tomarse como P(C) = pC .

Para mejorar su información, el médico le realiza una prueba diagnóstica cuya sensibilidad y especificidad se conocen. 
Supongamos que el resultado de la prueba es positivo. El médico (y más aún el presunto enfermo) debe ahora preguntarse:

¿cuál es la probabilidad de que el paciente esté realmente enfermo sabiendo que ha dado positivo en la prueba?.

Esta probabilidad se calcula mediante el teorema de Bayes de la siguiente forma:

P (C ∩ T ) P(T | C ) P(C ) P (C | T ) = = P (T ) P(T | C ) P(C ) + P(T | C ) P(C )

Si la prueba preguntarse:

hubiese

resultado

negativa,

interesaría

¿cuál es la probabilidad de que el paciente esté realmente sano sabiendo que ha dado negativo en la prueba?.

Esta probabilidad se calcula también mediante el teorema de Bayes:

P (C ∩ T ) P(T | C ) P(C ) P (C | T ) = = P (T ) P(T | C ) P(C ) + P(T | C ) P(C )

144

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

Ejemplo: (Falso-positivo)

En una población se sabe por datos históricos que una de cada 1000 personas padece cierta enfermedad. Existe un test 
para detectar esta enfermedad de manera que:

P(Test − | Enf ) = P(T | E ) = 0.001 ⎫ P (T | E ) = 0.999 ⎫ ⎬ ⇒ ⎬ P(Test + | Sano) = P(T | S ) = 0.01 ⎭ P (T | S 
) = 0.99 ⎭

¿Cuál es la probabilidad estar enfermo si el test da positivo, esto es, cuánto vale P ( E | T ) ?

Se sabe que la probabilidad de que una persona este enferma es:

999 ⇒

P

(

E

)

=

P

(

S

)

=

1

P(E ) =

1000

1000

P ( E ∩ T ) P (T | E ) P ( E ) P( E | T ) = = = P (T ) P (T | E ) P ( E ) + P(T | S ) P( S )

=

0.999·

1 0.999· 1000

1000 = 1000 999 +

= 0.999 0.01·

+

9.99

1

0.999

0.000999 = = 0.091

1000

1000

0.01089

González J.J., Guerra N., Quintana M.P. y Santana A.

145 Métodos Estadísticos

Tema6: Probabilidad.

Ejemplo: En una época del año se sabe por datos históricos que la probabilidad de que el agua de un río esté 
contaminada es 0.2. Se dispone de un Test para analizar el agua y se sabe que este test, cuando hay contaminación la 
detecta en un 95% de los casos, y cuando no hay contaminación también da positivo en un 7% de los casos.

Calcular la probabilidad de que habiendo dado negativo haya realmente contaminación.

146

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

Combinatoria

Estudia y recuenta las diferentes formas en que se puede realizar la ordenación o agrupamiento de un determinado número 
de objetos siguiendo ciertas condiciones. Estos recuentos están íntimamente relacionados con el cálculo de 
probabilidades, pues son los que permiten determinar en muchos casos el número de casos favorables y de casos posibles.

Factorial:

Sea n un número natural. Se define el factorial de n como:

n! = n·(n - 1)·(n - 2)·...·3·2·1

Nota: 0! = 1

Variaciones sin repetición (de n objetos tomados de r en r):

Son todas las formas de ordenar (importa el orden) n objetos en grupos de r objetos, con r ≤ n , sin que los objetos 
se repitan.

n! Vn r = (n − r )!

Ejemplo: ¿Cuántas clavess de 4 letras distintas pueden escribirse utilizando 6 letras distintas?

6! 6! 6·5·4·3·2·1 V 6 4 = = = = 180 (6 − 4)! 2! 2·1

González J.J., Guerra N., Quintana M.P. y Santana A.

147 Métodos Estadísticos

Tema6: Probabilidad.

Variaciones con repetición (de n objetos tomados de r en r):

Son todas las formas de ordenar (importa el orden) n objetos en grupos de r objetos, pudiendo repetir objetos. La r 
puede ser mayor, menor o igual que la n.

VR n r = nr 

Ejemplo: ¿Cuántas claves de 12 letras pueden formarse con las letras de la palabra COMPUTER?

VR 8 12 = 8 12 = 68.719.476.736

Permutaciones (de n objetos):

Son todas las formas de ordenar n objetos sin repetirlos.

P n = n !

Es obvio que:

P n = Vn n 

Ejemplo: ¿De cuántas formas se pueden ordenar 5 libros distintos en una estantería?

P 5 = 5! = 5·4·3·2·1 = 120

148

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

Permutaciones con repetición:

Son todas las formas de ordenar n objetos (importa el orden), entre los cuales hay sólo k distintos, el primero de 
ellos repetido n 1 veces, el segundo n 2 veces, …, y el k-ésimo n k veces, con n 1 + n 2 + ... + n k = n :

n! P n n ,n 2 ,...,n k = 1 n 1 !n 2 !...n k !

Ejemplo: ¿Cuántas palabras distintas pueden escribirse con las letras de la palabra RELEER?

n ! 6! 6·5·4·3·2·1 P 6 2,3,1 = = = = 60 n 1 !n 2 !n 3 ! 2!3!1! 2·1·3·2·1·1

Combinaciones sin repetición: (de n objetos tomados de r en r):

Son todas las formas de agrupar n objetos en grupos de r objetos, 0 ≤ r ≤ n , sin que importe el orden, y sin repetir 
objetos.

⎛ n ⎞ n! C n r = ⎜ ⎟ = ⎝ r ⎠ r !(n − r )!

Ejemplo: ¿De cuántas formas se pueden elegir 3 representantes para el claustro de un grupo formado por 40 alumnos?

C40 3 =

40! 3!(40 − 3)!

=

40!

3!37!

=

40·39·38 3·2·1

= 40·13·19 = 9980

González J.J., Guerra N., Quintana M.P. y Santana A.

149 Métodos Estadísticos

Tema6: Probabilidad.

Combinaciones con repetición: (de n objetos tomados de r en r)

Son todas las formas de agrupar n objetos en grupos de r objetos, sin que importe el orden, y pudiendo repetir objetos.

⎛ n + r − 1 ⎞ CR n r = C r n+r −1 = ⎜ ⎟ ⎝ r ⎠

Ejemplo: ¿De cuántas formas se pueden escoger 12 cartulinas de colores (pudiendo escogerse colores repetidos) en un 
almacén donde hay cartulinas de 20 colores distintos?

⎛ 31 ⎞ 31! 31! CR 20 12 = C 31 12 = ⎜ ⎟ = = = 141.120.525 ⎝ 12 ⎠ 12! ( 31 − 12 ) ! 12!19!

150

González J.J., Guerra N., Quintana M.P. y Santana A. Métodos Estadísticos

Tema6: Probabilidad.

Cuadro Resumen

Número de objetos

n n n n= n 1 +n 2 +... +np 

n n

Número de objetos por Agrupación

1

≤

r

≤

n

r ≥1

n n

1

≤

r

≤

n

r ≥1

Importa el orden

Sí Sí Sí Sí

No No

Se pueden repetir

No Sí No

n 1 , n 2 ,..., np 

No Sí

Número de agrupaciones posibles

n! Vn r = (n − r )!

VRn r 

=

nr 

P n = n !

=

n!

P n n1 ,n 2 ,...,nk 

n 1 ! !... !

n2 

nk 

n n! ⎛ C n r = ⎜ ⎟ = ⎝ r ⎠ r !(n − r )!

⎞

⎛ n + r − 1 ⎞ CR n r = ⎜ ⎟ ⎝ r ⎠

González J.J., Guerra N., Quintana M.P. y Santana A.

151
