Chapter 1
Probability

There seems to be no alternative to accepting some sort of
incomprehensible quality to existence. Take your pick. We all
fluctuate delicately between subjective view and objective view
of the world, and this quandary is central to human nature.
Douglas R. Hofstadter, “THE MIND’S I”.

1.1 Chance, Chaos and Determinism

In this introduction, before looking into the phenomena known as casual, stochastic
or random, we will briefly analyse the importance and the role of these physical
processes into our reality.

At the beginning of a scientific measurement or observation of a natural
phenomenon, one usually tries to identify all the causes, conditions and external
factors that determine its evolution. Subsequently, one operates in order to keep
these external causes fixed or, as much as possible, under control, and then one
proceeds to record the results of the observations.

When repeating the observations, two situations can occur:

• One always gets the same result. As an example, think of the measurement of a
table with a commercial meter tape.

• One gets a different result each time. Think of a very simple natural phenomenon:
the toss of a coin.

While, for the moment, in the first case there is not much to say, in the second case,
we could ask ourselves what causes the observed variations of the results. Possible
reasons are not having checked all the conditions that influence the phenomenon or
having incorrectly defined the quantity to be observed. Once these corrections have
been applied, the phenomenon can become stable or continue to show fluctuations.

Let’s explain with an example: suppose we want to measure the time of sunrise
on the horizon at a given location. We will observe that repeated measurements
in successive days give different results. Obviously, in this case the variation of
the results is due to a bad definition of the measure. The time of sunrise must be
measured in a certain place and for a certain day of the year and must be repeated
one year later in the same day and place. Redefining the observation in this way,
the results of repeated measurements coincide. As it is well known, the laws of
planet motion provide in this case a model that allows to predict (apart from small
corrections that we don’t want to discuss) the times of dawn for every day of the
year.1

Let us now consider the measurement of another quantity, the temperature at
a certain time of a day. In this case, even considering a certain day of the year
and repeating the measurements from year to year, different results are observed.
Unlike the time of sunrise, we are not in possession of a model that allows us to
accurately predict the result. Why does the temperature, unlike dawn, seem to have
an inherently random behaviour? The reason is that, while the time of dawn depends
on a few body interactions (the sun and the planets), the temperature depends not
only on astronomical conditions but also on the state of the atmosphere, which is
the result of the interaction of countless factors, which not even in principle can be
determined with absolute precision or, in any case, kept under control.

This distinction is crucial and is the key to establish the difference between quan-
tities that fluctuate and those that appear to be fixed or are accurately predictable
based on deterministic models.

Historically, deterministic systems have been considered, for a long time, free
of fluctuations, and their study, in the context of classical physics, is continued in
parallel to that of the systems called stochastic, casual or random, born with the
study of gambling: toss of dices, card games, roulette, slot machines, lotto games
and so on. The latter systems are specifically designed and built to ensure the
randomness of the results. There were therefore two separate physics domains: the
one of deterministic phenomena, without fluctuations, governed by the fundamental
laws of classical physics, usually consisting of simple systems (generally few bodies
systems), and the world of the random phenomena, subject to fluctuations, often
related to complex systems (usually consisting of many bodies).

However, already at the beginning of the last century, the French mathematician-
physicist H. Poincaré noticed that, in some cases, the knowledge of the deterministic
laws was not enough to make exact predictions on the dynamics of some systems
starting from known initial conditions. The problem, which today is called the study
of chaos, was thoroughly investigated only much later, starting from the 1970s,
thanks to the help of computers. Today, we know that, in macroscopic systems,
the origin of the fluctuations can be twofold, that is, due to deterministic laws which
present high sensitivity regarding the initial conditions (chaotic systems) and due to
the impossibility of defining in a deterministic way all the variables of the system
(stochastic systems). One of the best paradigms for explaining chaos is the logistic
map, proposed since 1838 by the Belgian mathematician P.F. Verhulst and studied
in detail by the biologist R. May in 1976 and by the physicist M. Feigenbaum in
1978:

x(k + 1) = λ x(k)[1 − x(k)] , (1.1)

where k is the population growth cycle, λ is related to the growth rate and 0 ≤
x(k) ≤ 1 is a state variable proportional to the number of individuals in the
population. The condition 0 ≤ λ ≤ 4 assures that x remains within the fixed limits.
The logistic law well describes the dynamics of evolution of populations where there
is an increase per cycle proportional to λ x(k) with a negative feedback −λ x2(k)
proportional to the square of the size already reached by the population.

Without going too far into the study of the logistic map, we notice that the
behaviour of the population evolves with the number of cycles according to the
following characteristics (also shown in Fig. 1.1):

• When λ ≤ 1 the model always leads to the extinction of population.
• When 1 < λ ≤ 3 the system reaches a stable level, which depends on λ but is
independent of the initial condition x(0).
• When 3 < λ ≤ 3.56994 ... the system oscillates between some fixed values. For
example, as shown in Fig. 1.1 for λ = 3.5, there are four possible values (in the
figure a continuous line joins the discrete x values). Also in this case the states
reached by the system do not depend on the initial condition.
• When λ > 3.56994 ... the system is chaotic: the fluctuations seem regular, but,
as can be seen by looking carefully at Fig. 1.1 for λ = 3.8, they are neither
periodic nor do they seem entirely random. A thorough study also shows that
the fluctuations are not even predictable precisely, because the initial condition
values x(0) very close to each other lead to completely different evolutions.
This phenomenon, which is called sensitive dependence on initial conditions
or butterfly effect,2 is one of the main characteristics of chaos. Note that the
fluctuations in chaotic systems are objective, intrinsic or essential, since the
reproducibility of the results would require initial conditions at an accuracy
level comparable to that of the atomic scale, which is not possible, not even in
principle.

You can gain numerical experience with the logistic map and check the butterfly
effect using our R Logist and LogiPlot routines3 with which we produced
(Fig. 1.1).

The methods for distinguishing the chaotic systems from the stochastic ones
are based essentially on the study of dispersions, that is, the difference between
the values of the same state variable in subsequent evolutions of the system, as a
function of the whole number of the state variables.

In a chaotic system, once a certain number of variables have been identified,
the deviations stabilize or tend to decrease. This behaviour indicates that a number
of state variables adequate to describe the system have been reached and that the
deterministic law that regulates its dynamics can be obtained. The fluctuations in
the results of repeated experiments in this case are attributed, as we have seen, to
the sensitivity of the system with respect to the initial conditions.

In a stochastic system, conversely, the number of state variables needed for the
complete description of the system is never reached, and the sum of the deviations,
or the quantities connected to them, continues to grow with the number of state
variables considered [AAN+07]. The fluctuations of the system variables appear
random and follow the distributions of probability theory.

The study of chaos and of the transitions from chaotic to stochastic states (and
vice versa) is a very recent and still open research area, where many problems still
remain unsolved. The interested reader can enter into this fascinating topic through
the introductory readings [AAN+07, Rue96, Ste97].

In the remainder of the book, we will not deal with chaos, but we will instead
devote ourselves to the study of random or stochastic systems, that is, of all the
systems in which, as we have previously noted, there are variables following, in
principle, the statement:4

Statement 1.1 (Random Variable in a Broad Sense) A stochastic, random or
aleatory variable is the result of the interaction of many factors, each of which
is not dominant over the others. These factors (and their dynamic laws) cannot be
completely identified, fixed and in any case kept under control, not even in principle.

In the present book, we will mainly use the term “random variable”. Let us now try
to identify some stochastic systems or processes which in nature produce random
variables. All many-body systems have a very high degree of randomness: the
dynamic observables of molecular systems, ideal gases and thermodynamic systems
generally follow Statement 1.1 very well. These are systems studied by statistical
physics.

At this point we can specify the meaning of the term “factors and dynamic laws
impossible to determine, not even in principle” we used in Statement 1.1. Suppose
we roll a dice 100 times. To build a deterministic model that can predict the outcome
of the experiment, it would be necessary to introduce in the dice equations of motion
all the initial conditions of the toss, the constraints given by the surfaces of the
hands or the cup in which the dice is shaken before throwing, the constraints given
by the table where the dice falls down and perhaps more. We would thus have a
huge set of numbers, describing the initial conditions and constraints for each one
of the hundred tosses, enormously larger than the one hundred numbers giving the
final result of the experiment. Clearly, the predictive power of such a theory and its
practical applicability are totally absent. A deterministic model, to be such, must
be based on a compact set of equations and initial conditions and must be able to
predict a vast set of phenomena.

For example, this is the case of the logistic law (1.1) or of the simple law of the
fall of the bodies, which connects the path space s to the gravitational acceleration g
and to the fall time t through the formula s = gt2/2. This formula alone allows you
to predict, assigning s or t as the initial conditions, the results of any experiment.

We can summarize the above considerations by saying that a deterministic model
becomes meaningless when it generates algorithms requiring a numerical set of
initial conditions, constraints and equations enormously larger than the set of results
that one intends to predict. Alternatively, one should use the statistical approach
which, based on the a posteriori study of the results obtained, try to quantify the
extent of the fluctuations and extract global regularities that can be useful for the
prediction of future results.

This line of thinking, developed during the last three centuries, arrived, by
studying the pure stochastic systems, at identifying the fundamental mathematical
laws for the description of random phenomena. The set of these laws is now known
as the probability theory.

All the books dealing with probability theory, including the present one, make
extensive use of examples taken from the games of chance, such as dice throwing.
These examples well delineate the essence of the problem, because only by
studying pure stochastic systems it is possible to discover the laws of chance. Great
mathematicians and statisticians, like P. Fermat (1601–1665), P.S. Laplace (1749–
1827) and J. Bernoulli (1654–1705), often discuss experiments they performed with
dices, cards or other devices taken from games. One of their goals was precisely
to provide winning strategies for gambling games, which were already widespread
at that time and that they played too. In this way they set the foundation of the
probability calculus and statistics, based exclusively on experimental facts, as the
scientific method requires.

In addition to traditional games, today there is another “artificial” laboratory,
consisting of computer-generated random processes. As we will see, it is indeed
possible to simulate pure stochastic systems of any kind and complexity using a
uniform random number generator (a kind of electronic roulette): rolls of the dice,
card games, many-body physical systems, and more.

These techniques, named Monte Carlo (recalling the homeland of the games of
chance) or simulation methods, are very practical and effective, because they allow
to obtain artificial datasets in a few seconds, whereas a real experiment in some cases
would take years. However, it is important to note that, conceptually, these methods
do not introduce new elements. The aim is always to obtain random variables
from models consisting of stochastic systems also including, when necessary,
deterministic components. These data are then used to develop and optimize the
logical-mathematical tools to be applied to the study of real systems.

And now let’s start to examine real systems in general. For example, consider
Fig. 1.2, which represents the average temperature of the earth’s surface over the
past 142 years. As you can well imagine, our future depends on the trend of
this curve in the next years. Comparing “by eye” this curve with that of Fig. 1.3,
representing a pure stochastic process, it seems that, starting from the beginning of
the last century, an increasing trend is superimposed to a random behaviour. We do

Fig. 1.3 Computer simulation of the number of heads obtained by throwing 10 coins in 120 tosses.
The progressive number of tosses is reported on the abscissas, the number of heads in ordinates.
The continuous line is the expected mean value (five heads). Compare this figure with Fig. 1.1 for
λ = 3.8, which displays chaotic fluctuations

not go further into this rather alarming example that just served us to show that, in
real cases, the simultaneous presence of both stochastic and deterministic effects is
very common.

To account for these possible complications, the study of a real system is
performed with a gradual approach, according to the following steps:

(a) To identify the purely stochastic processes of the system and deduce, based on
the rules of probability and statistics, their evolution laws.

(b) To separate stochastic from non-stochastic components (sometimes called
systematic), if any. This step is generally performed using statistical methods.

(c) If the problem is particularly difficult, to perform a computer simulation of the
system on the computer and compare the simulated data with the real ones.

It is often necessary to repeat steps (a) to (c) until the simulated data are in a
satisfactory agreement with the real ones. This recursive technique is a powerful
method of analysis and is now applied in many fields of scientific research, from
physics to economics.

Before closing this introduction, we would like to mention what happens in the
microscopic world. Let us consider, for simplicity, a system consisting of a single
subatomic particle as an electron. In this case the fundamental equations of physics
provide a complex state function ψ(r) whose square modulus gives the localization
probability of a particle in space: P (r) = |ψ(r)|2. The probability thus defined
obeys the general laws of probability which will be described in the following.

Since the fundamental laws of the microscopic world contain a probability
function and so far no one has been able to find more basic fundamental laws
based on different quantities, one deduces that probability is a fundamental quantity
of nature. Indeterminism, being present in the fundamental laws that govern the
dynamics of the microscopic world, assumes in this case an objective character
(called non-epistemic), not linked to ignorance or limited abilities of the observer.

1.2 Some Basic Terms

Here we informally introduce some fundamental definitions of current use in the
study of stochastic phenomena. In the following, these terms will gradually be
redefined in a mathematically rigorous way.

• Sample space: it is the set of all possible different values (cases) that a random
variable can assume. For example, the random variable card of a playing deck
gives rise to a sample space of 52 elements. The structure of the space depends
on the way used to define the random variable. In fact the space relative to the
random variable card of a playing deck is consisting of 52 cards, or 52 integer
numbers if we create a correspondence between cards and numbers.

• Event: it is a particular combination or a particular subset of cases. For example,
in the case of playing cards, if you define an event as an odd card, the set of cases
obtained is 1, 3, 5, 7, and 9, for each of the four colours. This event gives rise to
a subset of 20 elements selected among the 52 elements of the sample space (all
the cards in the deck).

• Spectrum: it is the set of all the different elements of the subset of cases defining
the single event. For odd playing cards, the spectrum is given by 1, 3, 5, 7, and 9.
Obviously, the spectrum can coincide with the entire space of the random variable
under study (if, e.g. the event is defined as any card of a deck).

• Probability: is the quantitative evaluation of the possibility of obtaining a certain
event. It is evaluated based on experience, using mathematical models or even
on a purely subjective basis. For example, the probability that, at this point, you
continue reading our book is, in our opinion, 95% ...

• Trial: it is the set of operations that realize the event.

• Experiment, measurement, sampling: it is a collection of trials. The term
familiar to statisticians is sampling, whereas the physicists usually use the term
experiment or measurement. In physics an experiment can be a sampling, but not
necessarily.

• Sample: it is the result of an experiment or sampling.

• Population: it is the result of that number of trials, finite or infinite, which run
through all the possible events. For example, in the lottery game, the population
can be the finite set of all possible combinations of 5 numbers drawn from an
urn of 90 numbers; in the case of the height of the Italians, we can imagine the
set of measurements of the heights of each individual. When the population is
thought as a sample of an infinite number of elements, it should be considered as
a mathematical abstraction not achievable in practice.

9999

These ideas can be summarized as in Fig. 1.4. Once the elementary probabilities
have been assigned to the elements of the sample space (inductive step), using
probability theory one can calculate the probability of all events, thus deducing
mathematical models for the population (deductive step). Instead, by running a
series of measurements, one can get a sample of events (experimental spectrum)
representative of the population under consideration. Then, using the statistical data
analysis (inductive/deductive step), one tries to identify, from a detailed examination
of the sample, the properties of the parent population. These techniques are called
statistical inference. Once a model has been assumed, it is possible to verify
its congruence with the collected data samples. This method is called hypothesis
testing.
In this text, the fundamentals of probability calculus will be at first explained with
particular regard to the assignment of elementary probabilities to the components of
the sample space. Then, calculus and combinatorial analysis will be used to obtain
some fundamental mathematical models of populations. Afterwards, the methods of
statistical analysis will be explained. They allow to estimate, starting from measured

quantities, the “true” values of physical parameters or to verify the congruity of
experimental samples with mathematical models of population. The elements of
probability and statistics previously acquired will then be extensively applied to
simulation techniques.

1.3 The Concept of Probability
Experience shows that, when a stochastic or random phenomenon is stable over
time, some values of the spectrum occur more frequently than others. If we flip ten
coins and count the number of heads, we see that the outcome of five heads occurs
more frequently than eight, while ten heads is a really rare, almost impossible, event.
If we consider an experiment consisting of 100 trials (where each trial is the toss of
10 coins), we observe that the number of times one gets 5, 8 and 10 heads is quite
regular, even if with little variations from experiment to experiment, because the
values 5, 8 and 10 always (or almost always) show up with decreasing frequency.
If we imagine all the possible alignments of 10 coins, we can have an intuitive
explanation of this fact: the event 10 heads (or 10 crosses) corresponds to only one
alignment, while for the event 5 crosses (or 5 heads) many possible alignments
are possible. (5 tails and then 5 heads, tails-to-heads alternately, and so on up to
252 different alignments). When tossing ten coins, we then choose at random, on
the same footing, one of the possible alignments, and it is intuitive that almost
always we will get balanced results (more or less five heads) and almost never the
extreme cases. A reasoning of this type, common to everyone’s daily experience,
leads instinctively to think that this regularity of the stochastic phenomena is due
to the existence of fixed quantities, called probabilities, that one can define, for
example, as the ratio between favourable and possible cases (alignments). These
considerations led J. Bernoulli to the formulation of the first mathematical law able
to predict the trend of the results in experiments such as the coin toss, taking also
into account the random fluctuations.
In the case of coins, the probability is introduced to account for the variability
of experimental results; however, each of us uses probability also to manage the
uncertainty of many non-repeatable situations that occur in real life, quantifying

subjectively the realistic possibilities and choosing those with the highest probabil-
ity, taking into account the resulting costs or benefits.

For example, when we are driving the car and we meet a red traffic light, we
have two options: stop or continue. If, around noon, we are crossing in a high traffic
road, we surely stop, because we know, based on our experience, that the collision
probability with other vehicles is very high. Instead, if we are in a low traffic road
in the middle of the night, we are tempted to continue, because we know that the
probability of a collision is very low.
Another example of a subjective and discrete probability is given by the
judgement of a defendant in a trial by a jury. In in this case, the probability can be
expressed with two values, 0 or 1, i.e. guilty or innocent. In general, current jurispru-

dence formulates the final judgement combining subjective individual probabilities
expressed by the individual jurors.
Given these observations, the approach currently considered more appropriate,
effective and ultimately cheaper for the study of random phenomena is to consider
the choice of probability as a subjective act, based on experience. A first possible
effective definition of probability is:

Statement 1.2 (Subjective or Bayesian Probability) The probability is the sub-
jective degree of belief about the occurrence of an event.

The subjective probability is free, but it is generally assumed that it must be
consistent, that is, expressed as a real number 0 ≤ p ≤ 1, p = 1 for a known
event and p = 0 for an impossible event. Then, considering two or more exclusive
events (like the faces 2 or 4 on a die roll), consistency requires their probabilities
to be additive. These assumptions are sufficient for the axiomatization according to
the Kolmogorov scheme, which will be presented shortly.
The subjective probability is widely used in soft sciences such as jurisprudence,
economics, part of medicine, etc. In hard sciences as physics (we will specify better
later, in Chap. 12, the meaning of the term “hard science”), the subjective probability
is generally avoided and the definitions of a priori and frequentist probabilities are
used (Laplace, 1749–1827) (Von Mises, 1883–1953).
Definition 1.3 (Classical or a Priori Probability) If N is the total number of cases
of the sample space of a random variable and n is the number cases with outcome
A, the classical or a priori probability of A is given by:
P (A) = n
N . (1.2)
For example, the a priori probability of a given face when throwing a fair die is:

P (A) = n
N = number of favorable cases
number of possible cases = 1
6 ,

while the probability of drawing the ace of diamonds from a deck of cards is 1/52,
the probability of extracting a suit of diamonds is 1/4 and so on.
Definition 1.4 (Frequentist Probability) If m is the number of occurrences of
outcome A over a total of M trials, the probability of A is given by:

P (A) = lim
M→∞
m
M . (1.3)
The limit appearing in this definition has an experimental meaning rather than a
mathematical one, because the true probability should be found only by carrying
out an infinite number of trials. In the following, we will call this operation, with
the limit written in italics, as frequentist limit.

The choice of the elementary probabilities to be assigned to the different events
is therefore inductive and arbitrary. The probability calculus applied to complex
events starts from arbitrarily assigned elementary probabilities and then proceeds
deductively, as we shall see, without departing from mathematical rigor. The use of
subjective probabilities is also called Bayesian approach, because in this case the
initial probabilities are often readjusted according to the results obtained using the
famous Bayes’ formula, which we will soon deduce in Sect. 1.7.

The frequentist approach is the one prevalent in physical and technical frame-
works. Based on our experience, we believe that in experimental physics the

frequentist approach is followed in 99% of cases, and this is a ... subjective
evaluation! Within this framework, it is believed that Eq. (1.3) allows the “objective”
evaluation of probability for those natural phenomena that can be easily sampled
or easily repeated in the laboratory. In many cases, experience shows that the
frequentist probability tends to coincide with the a priori one:

lim
M→∞
m
M
 n
N (from the experience!) . (1.4)
When this condition holds, one says that the cases are equiprobable and mutually
exclusive. Consider, for example, the roll of a dice: if you are sure that it is not
rigged, it is intuitive to assume that the probability of getting a certain face (let’s say,
the number 3) in a throw is equal to 1/6. Experience shows that, after several throws,
the frequentist probability (also called frequency limit, Eq. (1.3)) tends actually to
1/6, according to (1.4). If the die is not balanced, the probability of obtaining face
number 3 can only be evaluated by running many trials. Since the limit for an infinite
number of trials is not practically reachable, one usually stops to a high but finite
number n of trials and the true probability is estimated by the confidence interval
method (see Chap. 6).
The frequentist definition (1.3) would therefore seem the most general and
reliable; however, this is not true:
• Since an experiment cannot be repeated an infinite number of times, the
probability (1.3) will never be determined.
• The experiment must be repeatable, and the limit appearing in (1.3) does not
have a precise mathematical sense. This leads to insurmountable mathematical
inconsistencies in proving the validity of the empirical case law (1.4).
The statistician B. de Finetti, in one of his famous articles [DF33], comments on this
last point as follows: “... for a large category of the problems for probability theory
(but not for all, as it is shown by the absurdities found and by the ones which could
easily be found), by imagining an infinite sequence of similar experiences, one can
build up an example of a possible course of results in a way as to obtain a limit
frequency equal to probability, for each sequence of similar events.”
The decision on the best approach to use (subjective-Bayesian, a priori-classical
or frequentist), based on the type of problem to be addressed (uncertainty in a broad
sense or variability of the results of repeatable experiments), is still an open question
and is a continuous source of disputes.

To definitively get out of this confused situation, the modern probability theory
resorts to axiomatization. In the next paragraph, we will see in fact that, after
defining the probability in an abstract mathematical way, it is possible to outline a
consistent mathematical theory for the study of random phenomena. The inductive
and arbitrary approach is limited to the initial decision about what probability
to adopt: once the choice of a probability that obeys the required axioms is
made, this theory can be applied correctly. Then, if the obtained results are in
disagreement with the experimental outcomes, it will be necessary to change the
type of probability to be used for that problem. For example, it is perfectly possible
to invent a probability that, in a lottery, assigns a higher probability to the delayed
numbers. If this probability obeys the axioms, the approach is mathematically
correct. However, in this case you will always get results totally different from those
observed. Therefore, in fair games, as well as in statistical physics, the assumed
probabilities are classic and frequentist, which leads to results in accordance with
experience.
This book, which is dedicated to students and researchers in technical-scientific
fields, is based on the frequentist approach. However, we will mention in some cases
even the Bayesian point of view, referring the reader to more specific texts, such as
[Gre06].

1.4 Axiomatic Probability
To formalize in a mathematically correct way the concept of probability, it is
necessary to apply the set theory to the fundamental notions introduced so far. If
S is the sample space of a random variable, we consider the family F of subsets of
S according to the
Definition 1.5 (σ-algebra) Any collection F of subsets of S having the properties:
(a) the empty subset belongs to F: ∅ ∈ F;
(b) if a countable collection of subsets A1, A2,... ∈ F, then

∞
i=1
Ai ∈ F ;
(c) if A ∈ F, the same holds for the complement: A ∈ F;
is named σ-algebra.
Using the well-known properties:

A ∪ B = A ∩ B ,
A ∩ B = A − B ,

it is easy to show that also the intersection of a countable collection of sets belonging
to F and the difference A − B of two subsets of F are included in F:

∞
i=n
Ai ∈ F , (1.5)
A − B ∈ F . (1.6)
The correspondence between probability and set theories is summarized in
Table 1.1. If, to fix ideas, we consider a deck of cards and we define the draw
of an ace as event A and the extraction of a diamonds suit (Fig. 1.5) as event B, we
get the following correspondence between sets (events) and elements of S:
– S: all the 52 playing cards;
– a: 1 of the 52 playing cards;
– A ∪ B: diamonds suit or heart, clubs, aces of spades;
– A ∩ B: diamonds suit;
– A − B: hearts, clubs or aces of spades;
– A: any card except aces;
– B: a non-diamonds suit

Let us now consider a function P (A), for A belonging to a σ-algebra F, that brings
the set A to a real number in the range [0.1]. In symbols,

P : F → [0, 1] . (1.7)

According to the Kolmogorov approach, the probability follows the
Definition 1.6 (Kolmogorov Axiomatic Probability) A function P (A) satisfying
(1.7) and the properties:

P (A) ≥ 0 ; (1.8)
P (S) = 1 ; (1.9)

and,
P

∞
i=1
Ai

= ∞
i=1
P (Ai) if Ai ∩ Aj =∅ ∀i

= j , (1.10)
for any countable collection A1, A2,... of mutually disjoint subsets included in F,
is called probability.
Definition 1.7 (Probability Space) The probability triplet:

E ≡ (S, F,P) , (1.11)
composed by the sample space, a σ-algebra F and P is named probability space.
The Kolmogorov probability satisfies the following important properties:
P (A) = 1 − P (A) , (1.12)
P (∅) = 0 , (1.13)
P (A) ≤ P (B) if A ⊆ B . (1.14)
Equation (1.12) is valid since the complement A is such that by definition A∪A = S;
therefore, P (A) + P (A) = P (S) = 1 from (1.9, 1.10), since A and A are disjoint.
Moreover:

P (S ∪ ∅) = P (S) = 1 from (1.9) , (1.15)
P (S ∪ ∅) = P (S) + P (∅) = 1 from (1.10) , (1.16)
from which Eq. (1.13) follows: P (∅) = 1 − P (S) = 1 − 1 = 0. Finally, when
A ⊆ B one can write B = (B − A) ∪ A, where B − A is the set of the elements of

B not in A. Then:

P (B) = P[(B − A) ∪ A] = P (B − A) + P (A)
and, since P (B − A) ≥ 0, the property (1.14) is also proved.
Another important proposition is:
Theorem 1.1 (of Addition) The probability of the event given by the occurrence
of the events A or B, when A ∩ B

= ∅, is given by:

P (A ∪ B) = P (A) + P (B) − P (A ∩ B) . (1.17)

Proof It easy to show that (you can draw the sets):
A ∪ B = A ∪ [B − (A ∩ B)] ,
B = [B − (A ∩ B)] ∪ (A ∩ B) ;

since A ∪ B and B are disjoint sets, it is possible to apply Eq. (1.10) to obtain:

P (A ∪ B) = P (A) + P[B − (A ∩ B)] ,
P (B) = P[B − (A ∩ B)] + P (A ∩ B) .

Then, one gets, by subtraction:

P (A ∪ B) = P (A) + P (B) − P (A ∩ B) .


Both classical and frequentist probabilities follow the axioms (1.8–1.10). In fact, for
the classical probability, we have:

P (A) = (nA/N) ≥ 0 always, because n, N ≥ 0 ,
P (S) = N/N = 1 ,
P (A ∪ B) = nA + nB
N = nA
N + nB
N = P (A) + P (B) .

Similarly, the validity of the axioms can also be proved for the frequentist
probability, since its limit can be considered as a linear operator.
The classical and frequentist probabilities previously defined satisfy therefore to
the properties (1.8–1.17). For example, the classical probability to draw an ace or a
red card from a deck of cards, based on (1.17), is given by:
A = ace of hearts, ace of diamonds, ace of clubs, ace of spades,
B = 13 diamonds cards, 13 hearts cards,

P (A ∩ B) = ace of hearts, ace of diamonds ,
P (A ∪ B) = P (A) + P (B) − P (A ∩ B) = 4/52 + 1/2 − 2/52 = 7/13 .
The probability associated with the set A∩B covers, as we will see, a particularly
important role in the algebra of the probability. It is called compound probability:
Definition 1.8 (Compound Probability) The compound probability

P (A ∩ B) or P (AB)
is the probability that events A and B both occur.
Now we introduce a new kind of probability. Suppose we are interested in the
probability that, after extracting a suit of diamonds, the card is an ace or that, when
an ace is drawn, the suit is diamonds. We denote by A the set of aces, with B that of
the diamond cards and with P (A|B) the probability of A occurring after B, that is,
once a suit of diamonds is drawn, the card is an ace. Obviously, we have:
P (A|B) = #(outcomes of the diamonds ace )
#(outcomes of the diamonds suit )
= 1
13 = 1
52
13
52 = P (A ∩ B)
P (B) . (1.18)
Similarly, the probability of getting a suit of diamonds if an ace is drawn is given
by:
P (B|A) = #(outcomes of the diamonds ace)
#(outcomes of an ace) = 1
4 = 1
52
 4
52 = P (B ∩ A)
P (A) .
In the example just seen, the conditional probability P (A|B) to get an ace once a
suit of diamonds is drawn is equal to the unconditional probability P (A) of hitting
an ace; indeed:

P (A|B) = 1
13 = P (A) = 4
52 .

In this case, we say that the events A and B are independent. However, if A is the
set [ace of diamonds, aces of spades] and B is, as before, the set of diamonds cards,
we have:

P (A|B) = 1
13
= P (A) = 2
52 = 1
26 .

We see that events A and B are now dependent, because, if one draws a diamonds
suit, the probability of A is modified. However, Eq. (1.18) is also valid in this case:

P (A|B) = P (A ∩ B)
P (B) = 1
52
52
13 = 1
13 .

These examples suggest the following.
Definition 1.9 (Conditional Probability) The conditional probability of B given
A is the quotient of the probability of the occurrence of A and B and the probability
of A:

P (B|A) = P (A ∩ B)
P (A)
if P (A) > 0 . (1.19)
It is easy to show (this is left as an exercise) that the definition of conditional
probability (1.19) is in agreement with the general axioms of Kolmogorov (1.8–
1.10). It is also important to note that
P (A|B)
= P (B|A) , (1.20)
a fact that appears obvious from the examples just made but that often does not
appear obvious to our logical-intuitive abilities. Failure to comply with Eq. (1.20)
is perhaps the source of most of the errors which are done by dealing with
probabilities. The crucial point is that the correct connection between the two
probabilities is possible only through Bayes’ theorem, as we will see shortly. On

this point we recommend Problems 1.16 and 1.17 and also to read about the so-
called Sally Clark case (see, e.g. [Wik22]).

We also note that the conditional probability has been introduced as a definition.
However, for the probabilities we are dealing with, the following property holds.

Theorem 1.2 (Product of Probabilities) In the classical and frequentist frame-
works, the probability of the event formed by the occurrence of both A and B is:

P (A ∩ B) = P (A|B)P (B) = P (B|A)P (A) . (1.21)
Proof For the classical probability, if N is the total number of cases and nAB that
of the favourable ones to both A and B, we have:

P (A ∩ B) = nAB
N = nAB
nB
nB
N = P (A|B)P (B) ,

since, by definition, nAB/nB ≡ P (A|B). This property obviously continues to hold
by exchanging A and B, hence Eq. (1.21).
For the frequentist probability, the proof is analogous if one replaces the number of
cases with that of trials.

In the previous examples, we have introduced the notion of independent events; in
a general way, we can adopt the
Definition 1.10 (Independent Events) Two events A and B are independent if

P (A ∩ B) = P (A)P (B) .

More generally, the events of a family (Ai, i = 1, 2 . . . , n) are independent if

P


i∈J
Ai

= 
i∈J
P (Ai) , (1.22)

for any subset J of different indices of the family.
From Eq. (1.19) it follows that for independent events P (A|B) = P (A) and
P (B|A) = P (B). Another useful definition is:
Definition 1.11 (Incompatible Events) Two events are incompatible or disjoint
when the condition

A ∩ B = ∅
holds. From Eqs. (1.13) and (1.19) we then have:

P (A ∩ B) = 0 , P (A|B) = P (B|A) = 0 .

For example, if A is the ace of spades and B the suit of diamonds, A and B are
incompatible events. According to these definitions, the essence of the probability
calculus can be summarized in the following formulae:
• For incompatible events:

P (A or B) ≡ P (A ∪ B) = P (A) + P (B) . (1.23)

• For independent events:
P (A and B) ≡ P (A ∩ B) ≡ P (AB) = P (A) · P (B) . (1.24)

1.5 Repeated Trials
Up to now we have considered experiments performed with one single trial.
However, often one has to deal with experiments consisting of many trials: two
cards drawn from a deck, the score obtained rolling five dices and so on. We address

this problem by considering two repeated trials because the generalization to any
finite number of trials is obvious, as we shall see later.
Two repeated trials can be considered as the realization of two events related to
two experiments(S1, F1, P1) and (S2, F2, P2) which satisfy Definitions 1.6 and 1.7.
It is therefore natural to define a new sample space S = S1 × S2 as a Cartesian
product of the two initial sample spaces, in which a single event is constituted by the
ordered pair (x1, x2), where x1 ∈ S1 and x2 ∈ S2 and the new space S contains n1 n2
elements, if n1 and n2 are the elements of S1 and S2, respectively. For example, [ace
of hearts, queen of clubs] is an element of the set S of the probability space relative
to the extraction of two cards from a deck. Note that the Cartesian product can also
be defined when S1 and S2 are the same sample space.
Using definition of events, and since A1 ⊆ S1 and A2 ⊆ S2, it is easy to realize
that:

A1 × A2 = (A1 × S2) ∩ (S1 × A2) . (1.25)
The next step is now to define a probability P in S1 ×S2, which satisfies the axioms
of Kolmogorov (1.8–1.10) and can be associated in a unique way with experiments
consisting of repeated trials. Equation (1.24), which is valid for independent events,
and Eq. (1.25) allow to write:

P (A1 × A2) = P[(A1 × S2) ∩ (S1 × A2)]
= P (A1 × S2|S1 × A2) P (S1 × A2)
= P (A1 × S2) P (S1 × A2) (1.26)
= P (A1)P (A2) A1 ∈ F1 , A2 ∈ F2 ,

where the last equality is valid because the probability of the set of pairs Ak × Sj in
the sample space Sk × Sj obviously has the same probability as the Ak event in the
Sk sample space. The probabilities of the events A1 ∈ S1 and A2 ∈ S2 can therefore
be computed in the space S using the equalities:

P (A1 × S2) = P1(A1) P2(S2) = P1(A1) ,
P (S1 × A2) = P1(S1) P2(A2) = P2(A2) , (1.27)
which are obvious both for classical and frequentist probabilities. For example, in
the drawing of two playing cards, the probabilities of the events A1 = [draw an
ace the first time] and A1 × S2 =[ace, any card] are equal, like those of the events
A2 = [extraction of a diamonds suit the second time] and S1 × A2 =[any card, suit
of diamonds].

As we said, Eq. (1.26) is only considered valid for independent events, for which,
based on (1.24), the occurrence of any event does not alter the probability of the
others.
To better fix ideas with an example, suppose we pull out two cards from a playing
deck (with replacement into the deck of the first card after the first draw) and let be
A1 the set of aces and A2 the set of diamonds suits. Equation (1.27) becomes:

P1(A1) = 4
52 = P (A1 × S2) = 4
52
52
52 ,

P2(A2) = 13
52 = P (S1 × A2) = 52
52
13
52 ,

whereas Eq. (1.26) gives:

P (A1 × A2) = 4
52
13
52 ,

according to the ratio between the number of favourable cases (4 · 13) and the
possible ones (52 · 52) in the sample space S1 × S2.
The family of sets F1 × F2 = {A1 × A2 : A1 ∈ F1, A2 ∈ F2} is not in general
a σ-algebra, but it is possible to show that a single σ-algebra F1 ⊗ F2 of subsets
of S1 × S2 exists containing F1 × F2 and that Eq. (1.26) allows the extension, in
a unique way, of the probability of each event A ⊂ S1 × S2 from the family set
F1 × F2 to the product σ-algebra F1 ⊗ F2 [GS92]. Therefore, we can write the
product probability space as:

E = E1 ⊗ E2 ≡ (S1 × S2, F1 ⊗ F2,P).

An extension of (1.26) is used when the space S2 cannot be defined in advance but
depends from the results of the previous experiment E1. A good example is given by
the Italian lottery, in which five numbers are drawn, without replacing them in the
box.
In the case of two trials, we can imagine the extraction of two playing cards: if
you reinsert the first card drawn into the deck, S2 consists of 52 elements and 51
otherwise. Given these conditions, you need to define the space S = S1 × S2 not as
a Cartesian product but as the set of all possible ordered pairs of the two initial sets,
as they result from each particular experiment. We can say that, in this situation,
event A2 depends on event A1 and generalize Eq. (1.26) as:

P (A × B) = P2(B|A) P1(A) , (1.28)

resulting in an extension of the product Theorem 1.2 (see also Eq. 1.21). It is
immediate to show that the a priori and frequentist probabilities match Eq. (1.28).
The proof for the frequentist probability is identical to that of Theorem 1.2, whereas,
for the classical probability, it is required to redefine N as the set of possible pairs,
nAB as the set of favourable pairs and nA as the set of pairs in which, at the first
extraction, event A occurred.

At this point, to avoid confusion, it is important to distinguish between inde-
pendent experiments and independent events. The hypothesis of independent exper-
iments, which we will use throughout the text, is completely general and implies

that the experimental procedures that lead to the occurrence of any event are
independent of those which lead to the occurrence of all the other events. This
hypothesis has no connection with the number of elements of the sample space.
On the contrary, in the repeated trial scheme the events will be considered
dependent when the size of the i-th space Si depends on the (i − 1) trials carried
out previously. This is the only kind of dependency that one assumes, considering
repeated trials, when writing the conditional probability P (A|B). Let us consider
a simple example, where (W1 × B2) is the event which consists in the extraction,
from an urn containing two white and three black marbles, of one white marble and
one black marble in this order (without replacing the marble into the urn after the
drawing). In this case we have (with obvious meaning of the symbols):

S1 = [W1, W2, B1, B2, B3] ,
S2 = [set formed by 4 marbles, 2 white and 2 black ones
or 1 white and 3 black ones] ,

S1 × S2 =
W1W2, W2W1, B1W1, B2W1, B3W1
W1B1, W2B1, B1W2, B2W2, B3W2
W1B2, W2B2, B1N2, B2B1, B3B1
W1B3, W2B3, B1N3, B2B3, B3B2

= 5 × 4 = 20 elements.

Since the marbles are not reinserted after the drawing, the events as W1W1, B2B2,
etc. are excluded. Now we define:
W1 × S2 = [white marble, any marble] ,
S1 × B2 = [any marble, black marble] ,
W1 × B2 = [white marble, black marble] =
⎛
⎝
W1B1,W2B1
W1B2,W2B2
W1B3,W2B3
⎞
⎠=6 elements .

In the situation of equally probable cases, the classical probability gives:

P (W1 × B2) = six favorable cases
twenty possible pairs = 6
20 = 3
10 .

So far we have used in a general way the definition of classical or a priori probability.
Now we note that the probabilities (1.27) of the events W1 and B2 are given by:

P1(W1) = 2/5 , P2(B2|W1) = 3/4 ,

because initially we have in the urn W1, W2, B1, B2, B3, (i.e. two white marbles
over a total number of five) and, in the second drawing, we have three black marbles
and one white marble in the urn if the first extracted marble was white, so there are
three black marbles over four. Now we apply Eq. (1.28) and obtain again:
P (W1 × B2) = P2(B2|W1)P1(W1) = 3/4 × 2/5 = 6/20 = 3/10 ,
according to the direct calculation of the favourable cases over the total ones.
If we neglect the order of extraction and define as event the extraction of a white
and a black marble or vice versa, we must define the sets:
W1 × S2 = [white marble, any marble] ,
B1 × S2 = [black marble, any marble] ,
S1 × B2 = [any marble, black marble] ,
S1 × W2 = [any marble, white marble] ,

and apply Eq. (1.28):
P[(B1 × W2) ∪ (W1 × B2)] = P2(W2|B1)P1(B1) + P2(B2|W1)P1(W1) = 3
5 .
The result agrees with the ratio between favourable (12) and possible pairs (20).
The generalization of this scheme for a higher number of repeated trials requires
the natural extension of the equations discussed here for two trials only and does not
present any relevant difficulty.

1.6 Elements of Combinatorial Analysis
Assuming you are already familiar with the topic, we briefly summarize here the
basic formulae of combinatorial analysis, which are often helpful in calculating
probabilities by counting the number of possible or favourable cases.

To count well, it must be kept in mind that the number of possible pairs (matches)
A×B between two sets A of a elements and B of b elements is given by the product
ab and that the number of possible permutations of n objects is given by the factorial
n!. A selection or arrangement in which order is important is called a permutation;
a selection in which order is neglected is called a combination.

Based on these properties, four fundamental formulae can be easily demon-
strated, which refer to arrangements without repetition D(n, k) of n objects in

groups of k (using k of the objects at a time), to those with repetition D∗(n, k)
and to combinations without and with repetition C(n, k) and C∗(n, k), in which the
order of the k elements does not matter.
The formulae, as perhaps you already know, are:
D(n, k) = n(n − 1)···(n − k + 1) , (1.29)
D∗(n, k) = nk , (1.30)
C(n, k) = n(n − 1)···(n − k + 1)
k! = n!
k!(n − k)!
≡
n
k

, (1.31)

C∗(n, k) = (n + k − 1)(n + k − 2)··· n

k!
= (n + k − 1)!
k!(n − 1)! ≡

n + k − 1
k

, (1.32)

where the binomial coefficient formula has been used.
To understand these formulae, just imagine the group of k objects such as the
Cartesian product of k sets. In D(n, k) the first set contains n elements; the second
set contains n−1 elements because the first element is excluded, until you get, after k
times, a set of (n−k+1) elements. Instead, if the repetitions in the group of k objects
are allowed, all the sets will contain n elements each; hence, we obtain Eq. (1.30).
The base n number system is just a D∗(n, k) arrangement: if, for instance, n =
10, k = 6, we have 106 numbers, from 000,000 to 999,999.
In Eq. (1.31), where C(n, k) = D(n, k)/k!, the number of groups containing the
same k objects is not counted, because in this case the order does not matter.
Finally, to obtain Eq. (1.32) one has to imagine to write, for instance, a
combination C∗(n, 5) as a1a2a2a2a7 in a new way: a1 ∗a2 ∗∗∗a3a4a5a6a7∗, where
any element is followed by a number of asterisks equal to the number of times of
its occurrence; it is easy to verify that there is a one-to-one correspondence between
the original combinations and all possible permutations in the alignment of letters
and asterisks in the alternative representation. Since each alignment starts with a1,
it is possible to permute in total n − 1 + k objects, that is, k asterisks and n − 1
elements (ai with i = 2,...,n) equal to each other, obtaining Eq. (1.32).
In R, it is possible to calculate n! with the routine factorial(n) and
the binomial coefficients (1.31) with the routine choose(n,k). Moreover, the
routine combn(n,k) prints the combinations (1.31) by columns, but a routine for

the calculation of the permutations is not available. For this purpose our routines
Perm, Combn and Dispn are available to print permutations and combinations
by rows.
A particularly useful formula is the hypergeometric law, which allows the
calculation of the probability to extract k marbles of type A having extracted
n ≤ a + b marbles without replacement from an urn containing a marbles of type
A and b marbles of type B. Assuming that all marbles have the same probability of
being extracted and that extractions are independent, adopting the a priori definition
(1.2) and using the binomial coefficients, we have:

P (k; a, b, n) =
a
k

b
n − k

a + b
n
 , max(0, n − b) ≤ k ≤ min(n, a) . (1.33)
In fact, the number of possible cases in the denominator is given by the binomial
coefficient, while in the numerator we have the number of favourable cases, given
by the number of elements of the Cartesian product of the two sets consisting of
C(a, k) and C(b, n − k) elements, respectively.
In R, the hypergeometrical law probabilities are calculated by the routine
dhyper(k,a,b,n).

Exercise 1.1
Find the probability, in a lottery, of a combination of two (pair) or three
(triplet) numbers out of five numbers between 1 and 90 drawn from an urn
(Italian lottery).

Answer The solution, if the game is not rigged, is given by the hypergeomet-
ric law (1.33) with a = k and b = 90 − k:

P (2; 2, 88, 5) =
88
3

90
5
 = 2
800 (pair) ,

P (3; 3, 87, 5) =
87
2

90
5
 = 1
11 748 (triplet) .

Exercise 1.1 (continued)
The same results are obtained by calling dhyper(2,2,88,5) and
dyper(3,3, 87,5). The pair probability is about 1 over 400 and that
of the triplet is about 1 over 12,000. A game is fair if the payout equals the
inverse of the probability of the bet; in the Italian lottery, the pair is paid 250
times and the triplet 4250 times ...

1.7 Bayes’ Theorem
In principle, any problem involving the use of probability can be solved with
the two fundamental laws of additivity and product. However, the algebra of
probability leads quickly to complicated formulae, even in the case of relatively
simple situations. In these cases two basic formulae are of great help, those of total
probabilities and the Bayes’ theorem, as we will show. If the sets Bi (i = 1, 2, ..n)
are pairwise disjoint and collectively exhaustive:

n
i=1
Bi = S, Bi ∩ Bk =∅ ∀i, k , (1.34)

by means of Eq. (1.21), it is easy to show that, for every set A in S:
P (A) = P[A ∩ (B1 ∪ B2 ∪···∪ Bn)]
= P[(A ∩ B1) ∪ (A ∩ B2) ∪···∪ (A ∩ Bn)]
= P (A|B1)P (B1) + P (A|B2)P (B2) +···+ P (A|Bn)P (Bn)
= n
i=1
P (A|Bi)P (Bi) . (1.35)
Equation (1.35) is called partition theorem or law of total probability. When B1 = B
e B2 = B, the theorem gives:

P (A) = P (A|B)P (B) + P (A|B)P (B) . (1.36)
With these formulae, you can solve problems that happen frequently, such as those
shown in the following two examples.

Exercise 1.2
A disease H affects 10% of men and 5% of women per year. Knowing that
the population is composed by 45% men and 55% women, find the expected
number N of sick persons in a population of 10,000 people.
Answer The probability of getting sick for each man or woman of the
population is given by the probability that the individual is a woman times the
probability that a woman has to get sick plus the probability that the individual
is a man times of the probability a man has of getting sick. This situation is
summarized into Eqs. (1.35, 1.36). Therefore, we have:
P (H ) = 0.45 · 0.10 + 0.55 · 0.05 = 0.0725 .

The expected number of sick persons is obtained by multiplication of the
number of trials (individuals) times the probability P (H ) we have just found.
We then have:

N = 10,000 · 0.0725 = 725 .

Exercise 1.3
A box contains six white and four black marbles. After two extractions
without replacement, what is the probability to get a white marble at the
second draw?
Answer By indicating with A and B the outcome of a white marble at the first
and second extraction, respectively, from Eq. (1.36) one obtains, with obvious
meaning of symbols:
P (B) = P (B|A)P (A) + P (B|A)P (A) = 5
9
6
10 +
6
9
4
10 = 0.60 .

If we now use Eq. (1.35) to express the probability P (A) that appears in (1.21),
we get the famous Bayes’ theorem.

Theorem 1.3 (Bayes) When the sets Bk follow Eq. (1.34), the conditional proba-
bility P (Bk |A) can be written as:

P (Bk |A) = P (A|Bk)P (Bk )

n
i=1
P (A|Bi)P (Bi)

, P (A) > 0 . (1.37)

This theorem is perhaps the most relevant result of the elementary algebra of
probability, because it allows us to reverse the conditional probabilities, avoiding
the errors resulting from the violation of Eq. (1.20). It is often used to “readjust”,
based on a real data set Ak, the probabilities P (Bk ) arbitrarily assigned a priori.
The procedure to be used is shown in the following examples: we also recommend
physics students to solve the Problem 1.8 at the end of the chapter.

Exercise 1.4
A test for the diagnosis of a disease is 100% sensitive for sick people but is
also positive in 5% of the healthy people. Knowing that the illness is present
on average in 1% of the population, what is the probability of being really
sick if your test is positive?
Answer Since the diagnostic testing is an important medical problem, let’s
deal with the topic in a general way. We can define the following conditional
probabilities:
P (P|H ) = 0.05 False Positive (FP): probability to be positive when healthy,
P (N|H ) = 0.95 True Negative (TN): probability to be negative when healthy,
P (P|S) = 1. True Positive (TP): probability to be positive when sick,
P (N|S) = 0. False Negative (FN): probability to be negative when sick.
P (P|S) and P (N|H ) are known as sensitivity and specificity, respectively.
From the probability laws one obviously has:
P (P|H ) + P (N|H ) = 1.
P (P|S) + P (N|S) = 1.
A test is ideal when the following conditions hold:
P (P|H ) = 0 , P (N|H ) = 1 ,
P (P|S) = 1 , P (N|S) = 0 .

Exercise 1.4 (continued)
Now we have to find the probability P (S|P ) of being sick conditioned by the
positivity of the test. Applying Bayes’ theorem (1.37) and bearing in mind
that from the data we know that the probabilities to be healthy or sick are,
respectively, P (H ) = 0.99 and P (S) = 0.01, we obtain:
P (S|P ) = P (P|S)P (S)
P (P|S)P (S) + P (P|H )P (H ) = 1 × 0.01

1 × 0.01 + 0.05 × 0.99 = 0.168 ,

that is, a probability of about 17%.
The result (a low probability with the positive test) seems paradoxical at first
sight. To help your intuition, we invite you to examine Fig. 1.6, which shows
the graphical representation of Bayes’ theorem. If 100 people are subjected to
the test, on average 99 will be healthy and only 1 will be sick; the test, applied
to the 99 healthy, will fail in 5% of cases, corresponding to 0.05 × 99 =
4.95  5 positive cases; to these the correctly diagnosed case of disease must
be added. Eventually, we will have only one really sick person of a total six
positive tests:

1
6 = 16.67%

where the small difference with the exact calculation is due only to rounding
effects.
The test is then repeated for the positive persons. If the result is negative, then
the person is healthy, because the test here considered can never go wrong
on sick people. If the test results were still positive, then it is necessary to
calculate, based on Eq. (1.24), the probability of a doubly positive test on a
healthy person:
P (P P|H ) = P (P|H ) P (P|H ) = (0.05)

2 = 0.0025 ,
which is about 2.5 per thousand and that of a doubly positive test on a sick
(which obviously gives again P (P P|S) = 1) and reapply the Bayes’ theorem:
P (S|PP) = P (P P|S)P (S)
P (P P|S)P (S) + P (P P|H )P (H )
= 1 × 0.01
1 × 0.01 + 0.0025 × 0.99 = 0.802  80% .

Exercise 1.4 (continued)
The same result is obtained if one uses the initial probabilities P (P|S) and
P (P|H ) to people who have already undergone a test, for which P (S) =
0.168 and P (H ) = 0.802.
As you can see, not even two positive tests are enough for the certainty of the
disease. You can calculate by yourself that, in these conditions, the certainty
comes only after three consecutive tests (about 99%).
The example shows how careful you need to be with testing which may
result positive even on healthy people. The opposite is true with the tests that
are always negative on the healthy persons but not always positive on the
sick ones. In this case a positive test assures the disease, whereas a negative
test leaves some uncertainty. There are also cases where the tests have an
efficiency limited to both the healthy and sick persons. In all these situations,
Bayes’ theorem allows you to exactly calculate the probabilities of interest.

Exercise 1.5
A group of symptoms A1, A2, A3, A4 can be due to three diseases H1, H2,
H3, which, based on epidemiological data, have a relative frequency of 10%,
30% and 60%, respectively. The relative probabilities are therefore:
P (H1) = 0.1, P (H2) = 0.3, P (H3) = 0.6 . (1.38)
According to epidemiological data, the occurrence of the symptoms above in
the three diseases are as follows:

A1 A2 A3 A4
H1 .9 .8 .2 .5
H2 .7 .5 .9 .99
H3 .9 .9 .4 .7

from which it results, for example, that the symptom A2 occurs in 80% of
cases in the H1 disease, the symptom A4 occurs in 70% of cases in the H3
disease and so on.
A patient presents only A1 and A2 symptoms. Which of the three considered
diseases is the most likely?
Answer First of all, to apply Bayes’ theorem, it is necessary to define the
patient as an event A such that:

A = A1 ∩ A2 ∩ A3 ∩ A4 ,

and to calculate the probabilities of this event, conditional on the three
diseases (hypotheses) H1, H2, H3:
P (A|Hi) = P (A1|Hi) P (A2|Hi) P(A3|Hi) P(A4|Hi) (i = 1, 2, 3) .
From the table, we also obtain:

P (A|H1) = .9 × .8 × .8 × .5 = 0.288 ,
P (A|H2) = .7 × .5 × .1 × .01 = 0.00035 ,
P (A|H3) = .9 × .9 × .6 × .3 = 0.1458 .

The most likely disease seems to be H1, but we have not yet taken into account
the epidemiological frequencies (1.38); to deal with this crucial point, it is
necessary to use Bayes’ theorem!
We therefore apply Eq. (1.37) and finally get the probabilities for each of the
three diseases (note that the sum gives 1, thanks to the denominator of Bayes’

Exercise 1.5 (continued)
formula, which is just the normalization factor):
P (H1|A) = 0.288 × 0.1

0.288 × 0.1 + 0.00035 × 0.3 + 0.1458 × 0.6 = 0.2455 ,

P (H2|A) = 0.00035 × 0.3

0.288 × 0.1 + 0.00035 × 0.3 + 0.1458 × 0.6 = 0.0009 ,

P (H3|A) = 0.1458 × 0.6

0.288 × 0.1 + 0.00035 × 0.3 + 0.1458 × 0.6 = 0.7456 .
The final result shows that H3 is the most likely disease, with a probability of
about 75%.
The solution to the problem can also be found graphically, as shown in
Fig. 1.7: since there are small probabilities, in the figure we consider 100,000
subjects, who are divided according to the three diseases weighted with the
epidemiological frequencies 0.1, 0.3, 0.6; applying to these three groups the
probabilities of the set of symptoms A (0.288, 0.00035, 0.1458), one gets
the final numbers 2880, 10, 8748. Also in this way we obtain the results
provided by Bayes’ formula.

1.8 Learning Algorithms

Bayes’ formula is the basis of many machine learning codes and artificial intel-
ligence algorithms, from spam mail recognition to the proper function of electric

appliances and to the learning of neural networks. The topic is very broad and we
just want to give you a general idea with a simple example. Suppose Bob is attracted
to Alice (the example also applies to parts inverted) and that he wants to test if the
interest is mutual by inviting Alice to have a coffee. Having no information, Bob
assumes the following probabilities:
P (OK) = 0.5 , attraction,
P (OK) = 1 − P (OK) = 0.5 ,indifference,
P (Y ES|OK) = 0.9 , positive answer with attraction,
P (NO|OK) = 1 − P (Y ES|OK) = 0.1 , negative answer with attraction,
P (Y ES|OK) = 0.5 , positive answer and indifference,
P (NO|OK) = 1 − P (Y ES|OK) = 0.5 , negative answer and indifference,
which give 50% probability to the possible existence of attraction by Alice. In the
case of Alice’s first affirmative answer, the probability of mutual attraction becomes,
by using the initial data:
P (OK|YES) = P (Y ES|OK)P (OK)

P (Y ES|OK)P (OK) + P (Y ES|OK )P (OK) (1.39)
= 0.9 · 0.5
0.9 · 0.5 + 0.5 · 0.5 = 0.643 .
Instead, in the case of a first negative answer, one has:
P (OK|NO) = P (NO|OK)P (OK)

P (NO|OK)P (OK) + P (NO|OK)P (OK) (1.40)
= 0.1 · 0.5
0.1 · 0.5 + 0.5 · 0.5 = 0.167 .

Now the crucial step for learning takes place: in evaluating the probability after
a second answer, the substitution P (OK|YES) → P (OK) is performed (and
consequently (P (OK) = 1 − P (OK) ) in Eq. (1.39) in the case of affirmative
answer or P (OK|NO) → P (OK) in Eq. (1.40) in case of a first negative answer.
In this way, basic learning is achieved based on the data accumulation, so that the
probability P (OK), assumed initially to be 50% in lack of initial information, is
continuously updated and made more reliable. With our routine BayesBobAl, you
can interactively check how the probabilities evolve as a function of the answers.

It turns out, for example, that if there are three consecutive negative answers,
the chance of Alice’s attraction to Bob assumes gradually the decreasing values
0.167, 0.038, 0.008, confirming the advice given by a friend: “Bob, after three
refusals, it is better to give up...”

In the previous example, we showed how learning algorithms extend the applica-
tion of Bayes’ formula also to the cases where, at the beginning, the probabilities are

not known with reasonable certainty. In these situations, Eq. (1.37) can be also used
to modify, during the data collection, the initial probabilities of hypotheses P (Hi)
subjectively evaluated according to statement 1.2.
Following the method we have outlined above, if we indicate with the generic
event “data” the result of one or more trials (experiments), in the Bayesian approach
one applies Eq. (1.37) as follows:

P (Hk|data) = P (data|Hk)P (Hk)

n
i=1
P (data|Hi)P (Hi)

. (1.41)

The probabilities P (Hk|data) thus obtained are then substituted for P (Hk) in the
term to the right of Eq. (1.41) and the calculation can be repeated iteratively:

Pn(Hk|E) = P (En|Hk)Pn−1(Hk)

n
i=1
P (En|Hi)Pn−1(Hi)

, (1.42)

where En is the n-th event. In the following example, the probabilities P (En|Hk)
remain constant.

Exercise 1.6
An urn contains five black and white marbles in an unknown proportion.
Assuming the same probability P (Hi) = 1/6 for the six possible starting
hypotheses, written with obvious notation as:
Hi = (b, n) ≡

H1 = (5, 0), H2 = (4, 1), H3 = (3, 2),
H4 = (2, 3), H5 = (1, 4), H6 = (0, 5)
calculate the six probabilities P (Hi|data) when, with replacement into the
urn, n = 1, 5, 10 black marbles are extracted consecutively.
Answer The exercise is easily solved by defining the event “data”= E =
En as the extraction of a black marble, using, for the a priori probabilities
P (E|Hk) = P (En|Hk), the values:

Exercise 1.6 (continued)
P (black|H1) = 0, P(black|H2) = 1/5, P(black|H3) = 2/5,
P (black|H4) = 3/5, P(black|H5) = 4/5, P(black|H6) = 1
and applying iteratively Eq. (1.42). One gets Table 1.2, from which we see
that, when increasing the number of black marbles drawn consecutively,
hypothesis H6 (5 black marbles) becomes more and more probable.

It is important to note that this problem has not been solved with a pure
frequentist approach, because for the initial hypotheses the a priori probabilities
P (Hi = 1/6 (i = 1, 2,..., 6) were used, which are subjective and arbitrary.
However, this increased flexibility is paid with a certain amount of ambiguity,
because with different initial hypotheses, different results would have been obtained,
as in Problems 1.12 and 1.13. The dilemma “greater flexibility of application in spite
of some ambiguity of the results” often gives rise to heated debates, as in [JLPe00].
The example just seen is therefore fundamental to understand the difference
between the frequentist and the Bayesian approach:
• Frequentist approach (followed in this book): no arbitrary subjective probabilities
are assumed for the hypotheses. Therefore, probabilities of hypotheses of the
type P (H|data) ≡ P (hypothesis|data) are never determined. For a frequentist
solution of the exercise just seen, you can see later Exercise 6.1.
• Bayesian approach: probabilities as P (hypothesis|data) are determined. They
depend, via Eq. (1.41), on the initial probabilities arbitrarily assumed for the
hypotheses and from the data obtained during the trials.

1.9 Problems
1.1 Monty Hall’s game is named after the host of a television game that in 1990
made a lot of Americans discuss about probabilities. The competitor is placed in
front of three doors: behind one door there is a car, and behind the others, there
are goats. He picks a door, say n. 1, and Monty, who knows what’s behind the
doors, opens another door, say n. 3, which has a goat. He then says to you, “Do you
want to pick door number 2?” Is it better to change, not to change or the choice is
indifferent?
1.2 In the game of bridge, a deck of 52 cards is divided into 4 groups of 13 cards
and dealt to 4 players. Calculate the probability that 4 players who play 100 games
a day for 15 billion years (the age of the universe) can repeat the same game.
1.3 A device is made up of three elements, which can fail independently of each
other. The probabilities of operation of the three elements during a fixed time T are
p1 = 0.8, p2 = 0.9, p3 = 0.7. The machine stops due to a fault in the first element
or for failure of the second and third elements. Calculate the probability P for the
device to work within T .
1.4 A device is made up of four elements all having the same probability p = 0.8
of operation within the time T . The device stops for a simultaneous failure of the
elements 1 and 2 or for a simultaneous failure of elements 3 and 4. (a) Draw the
device operating flow and (b) calculate the probability P of working within T .
1.5 Calculate the probability of getting at least a face with 6 by rolling three dices.
1.6 A quality check of a batch containing ten pieces accepts the whole lot if all
three pieces chosen at random are good. Calculate the probability P that the lot will
be discarded in case of (a) one defective piece or (b) four defective pieces.
1.7 The famous “encounter problem”: two friends X and Y decide to meet in a
certain place at an hour between 12 and 13, randomly choosing the arrival time. X
arrives, waits for 10 minutes, and then leaves. Y behaves like X but waits for 12
minutes. What is the probability P that X and Y meet each other?
1.8 The trigger problem, common in physics: a physical system randomly produces
the events A and B with probability 90% and 10%, respectively. A device, designed
to select the good B events, enables (triggers) the recording of the events A and
B in 5% and 95% of cases, respectively. Calculate the percentage P (T ) of events
accepted by the trigger and the percentage P (B|T ) of B type events among those
accepted.

1.9 Evaluate the probability P{X ≤ Y } that in a test, in which two coordinates
0 ≤ X, Y ≤ 1 are randomly extracted in a uniform way, one gets the values x ≤ y.
1.10 Three electronic firms, A, B and C, supply identical components to a
laboratory. The supply percentages are 20% for A, 30% for B and 50% for C. The
percentage of defective components of the three suppliers is 10% for A, 15% for B
and 20% for C. What is the probability that a component chosen at random will turn
out to be defective?
1.11 A certain type of pillar has the breaking load R uniformly distributed between
150 and 170 kN. Knowing that it is subjected to a random load C evenly distributed
between 140 and 155 kN, calculate the probability of the pillar failure.
1.12 Solve Exercise 1.6 in the case of consecutive extraction of n = 5 black
marbles, assuming the following initial probabilities (of binomial type): P (H1) =
0.034, P (H2) = 0.156, P (H3) = 0.310, P (H4) = 0.310, P (H5) =
0.156, P (H6) = 0.034.
1.13 If you assume that your friend is 50% honest and 50% cheating, find the final
probability that the friend is a cheater after n = 5, 10, 15 consecutive wins.
1.14 The probability of the three events A, B and C is different from zero. State
whether the following statements are true or false:
1) P (ABC) = P (A|BC)P (B|C)P (C); 2) P (AB) = P (A)P (B); 3) P (A) =
P (AB) + P (AB) ̄ ; 4) P (A|BC) = P (AB|C)P (B|C).
1.15 A randomly chosen thermometer from a sample marks 21◦ Celsius. From
the production standards, you know that the probabilities that the thermometer
shows the temperature decreased by one degree, the right one and that increased
by one degree are 0.2, 0.6, 0.2, respectively. The subjective a priori probabilities
about the temperature of the environment, according to a survey, are: P (19◦) =
0.1, P(20◦) = 0.4, P(21◦) = 0.4, P(22◦) = 0.1 . Calculate the a posteriori
probabilities of the measured temperature.
(Hint: indicate the temperatures to be evaluated as P (true|measured) ≡
P (true|21◦)).
1.16 The probability of honestly winning a lottery is estimated at one over a million
(10−6). Prove that the probability for a winner to be honest is not 10−6!
1.17 The likelihood of a DNA test making a wrong association is evaluated in one
case over 10,000. In a town of 20,000 inhabitants, in which it is certain that the
responsible for a serious crime is present, all the inhabitants are tested for DNA.
What is the probability that a positive tested person is guilty?
1.18 Find the probability of the event depicted on the book cover.


