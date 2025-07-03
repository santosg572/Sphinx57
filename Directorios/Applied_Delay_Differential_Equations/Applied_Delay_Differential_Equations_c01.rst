1
Introduction

After the First World War, the development and use of automatic con-
trol systems resulted in studies of an entirely different class of differential

equations the so-called delay differential equations or difference differen-
tial equations (DDE). Any system involving a feedback control will almost

certainly involve time delays. A time delay arises because a finite time is

required to sense information and then react to it. Severe stability prob-
lems, however, appear as soon as several mechanisms need to be controlled

simultaneously. The so-called pilot-induced oscillations (PIO), for example,
consist of unintentional sustained oscillations resulting from efforts of the
pilot to control the aircraft [168]. The books by Pinney [192] and Driver [52]
contain a large compilation of DDEs that have appeared in the literature.
The more recent books by MacDonald [146], St ́ep ́an [217], Kuang [132],
Fowler [65, 67], Epstein and Pojman [55], Murray [172], Fall et al. [63],
Beuter et al. [25], and Britton [34] emphasize particular DDE problems

appearing in mechanical engineering, chemistry, and biology. Mathemati-
cally, the subsequent research of Mishkis [167], Bellman and Danskin [20],

Bellman and Cooke [21], and Krasovskii [130] set the stage for the monu-
mental work of Hale [84] and students at Brown. Advanced mathematical

issues on DDEs, functional equations,1 and robust control are treated in the
books by Hale and Verduyn Lunel [85], Diekmann et al. [51], Kolmanovskii

and Myshkis [119], and Michiels and Niculescu [161]. A large part of the re-
vised “Handbook of Chaos Control” is devoted to delayed feedback control

techniques [210]. Finally, reliable numerical methods have been developed
for DDEs [227].
In this introduction, we emphasize two fundamental properties of a DDE
and then propose a variety of examples.

1.1 Properties
A time-dependent solution of a DDE is not uniquely determined by its
initial state at a given moment but, instead, the solution profile on an
interval with length equal to the delay (or time lag) τ has to be given.
That is, we need to define an infinite-dimensional set of initial conditions
between t = −τ and t = 0. Thus, DDEs are infinite-dimensional problems,
even if we have only a single linear DDE.
The simplest way to illustrate how a DDE differs from an ordinary
differential equation (ODE) is to consider a linear first-order differential
equation. We all know that the initial value problem

dy
dt = ky, y(0) = 1 (1.1)

admits the exponential solution

y(t) = exp(kt). (1.2)
Physically, the knowledge of the present (here: y(0) = 1) allows us to
predict the future at any time t. The past is not involved in this solution.
For a DDE, the past exerts its influence on the present and, hence, on the
future. The following DDE
dy
dt = ky(t − τ), y(t) = 1 when − τ ≤ t < 0 (1.3)
exhibits a right hand side that depends on y at time t − τ. τ is called
the delay or time lag. Moreover, the initial condition is now replaced by an
initial function defined on a finite interval of time. There are two important
properties of this equation that need to be stressed.
1.1.1 Oscillations
In contrast to the exponential solution (1.2), the solution of Eq. (1.3) can
be oscillatory. This can be seen by seeking a particular solution of the form
y = A sin(ωt). (1.4)

Inserting (1.4) into Eq. (1.3), we find
ωA cos(ωt) = kA sin(ωt − ωτ )

= kA [sin(ωt) cos(ωτ ) − cos(ωt) sin(ωτ )] . (1.5)
Equating to zero the coefficients of cos(ωt) and sin(ωt), we find the following
two conditions,

cos(ωτ) = 0 and ω = −k sin(ωτ ). (1.6)
The first condition is satisfied if ωτ = π/2 or 3π/2 and with the second
condition, we obtain the following possibilities,
(1) ωτ = π/2 and kτ = −π
2
, (1.7)

(2) ωτ = 3π/2 and kτ = 3π

2 . (1.8)

For these particular values of kτ, the DDE (1.3) admits the harmonic so-
lution (1.4). Condition (1.7) is used in Section 1.2 below.

1.1.2 Short time solution
The second and most obvious difference between ODEs and DDEs is the
initial data. For DDEs we must provide not just the value of the solution
at the initial point, but also the history, that is, the solution y0(t) at times
prior to the initial point. We may analytically investigate the effect of y0(t)
by using the method of steps [248]. For mathematical clarity, we consider
the case k = −1, and τ = y0 = 1. We first solve Eq. (1.3) on the interval
[0, τ[ . During this interval, Eq. (1.3) becomes
dy
dt = −1 (1.9)

which we solve using y(0) = 1. The solution is

y = 1 − t for 0 ≤ t < 1. (1.10)
See Figure 1.1. Now that y is known up to 1, we consider the interval [1, 2[.
Equation (1.3) becomes
dy
dt = −1+(t − 1) (1.11)
with initial condition obtained from (1.10) at time t = 1; that is y(1) = 0.
The solution is

y = −(t − 1) + 1
2
(t − 1)2 for 1 ≤ t < 2. (1.12)

Figure 1.1: The method of steps is used for solving y = −y(t − 1) with
y = 1 during the time interval [−1, 0[. It provides the solution y = 1 − t for
[0, 1[ and y = −(t − 1) + 1

2 (t − 1)2 for [1, 2[ (open circles).

See Figure 1.1. One can then consider the next interval [2, 3[, and so on.
This procedure can, in principle, be continued as far as desired. But the
calculations quickly become unwieldy without revealing essential properties
of the solution2. As we show in the next chapter, there is a more interesting
way to analyze the solution of Eq. (1.3). The method of steps is nevertheless
valuable if we analyze the effect of y0(t) on a short time interval. In [16],
the time history is analyzed in order to explain the staircase growth of a
population of yeast cells.
Besides its effect on the short time behavior of the solution, the fact
that we have an initial history has another impact when we numerically
solve a DDE. Because numerical methods for both ODEs and DDEs are

intended for problems with solutions that have several continuous deriva-
tives, discontinuities in low-order derivatives require special attention. In

our particular example, we note that

y
(0−)=0 = −1 = y
(0+),

y(1−)=0 =1= y(1+) (1.13)

so that the jump in y

(t) at t = 0 propagates to a jump in y(t) at t = 1,

and so on. More generally, the jump in y

(t) at time t = 0 propagates to
2Marc R. Roussel lecturing on DDEs proposed to automate these calculations using
Maple. The damped oscillatory solution is then made up in piecewise fashion by a set
of functions. See: http://people.uleth.ca/ ̃roussel/.

a jump in yn+1(t) at time t = n. The propagation of discontinuities is a
feature of DDEs that does not occur in ODEs. This is important for the
numerical solution of the DDE because once the orders are high enough,
the discontinuities will not interfere with the numerical method and we can
stop tracking them.

In summary, our analysis of the simple linear first-order DDE (1.3) sug-
gests that a long-time oscillatory solution is possible and that its initial

history may have an effect on the short-time solution. Keeping these two
properties in mind, we now introduce a variety of case studies appearing in
diverse areas. The need for a bifurcation diagram where a property of the
solution (extrema, period) is recorded as a function of a control parameter
progressively appears as a priority.
1.2 Cyclic behaviors
A familiar example of delay-induced oscillations is when we try to adjust
the shower temperature. The water flows at a uniform rate from the faucet
to the shower head and we take this time to be τ seconds. We would never
get into the shower before getting the temperature adjusted, but someone
else might. Let T (t) be the temperature at the faucet at time t and Td is our
desired temperature. We adjust the faucet based on the temperature at the
faucet τ seconds ago and so the evolution of the temperature is described by
T  = −κ(T (t − τ) − Td). (1.14)
The constant κ measures our reaction rate to a wrong temperature. A
phlegmatic person would choose a small value of κ whereas an energetic

person would prefer a large value of κ. But if κ is too small, the temper-
ature will adjust very slowly and if κ is too large, oscillations may occur

maybe with increasing amplitude leading to burns or frostbite. And how
would we describe the “two-shower problem” when two showers share the
same hot water resource?
Comparative studies between the observation of cyclic behaviors and

the solution of a DDE are still rare. An example of such an analysis con-
centrates on the NFL football teams during the last 40 years. Banks [15]

convincingly showed that the up and down of a football team experiences a
simple periodicity that can be described by a DDE. See Figure 1.2. Banks
considered the following linear DDE
dU
dt = b(
1
2 − U(t − τ)), (1.15)
where 0 <U< 1 is defined as the decimal fraction of games won by an
NFL team during one season. U is computed as follows. U = (1 × # games
won + 1
2 ×# tied games + 0×# games lost)/total number of games. b > 0

Figure 1.2: Performance of the Buffafo Bills, 1960 through 1992. Data taken
from Banks [15]. Only the biennial values are shown. Separations between
peaks are successively 10, 6, and 10 yr. Separations between troughs are
successively 10, 6, and 8 yr. The average value of these six numbers gives
a period close to 8 yr.

is defined as the growth rate. In this form, Eq. (1.15) says that the rate
at which U changes at the present time is proportional to the difference
between the average value U = 1/2 and the value of U at some previous
time t − τ. In other words, it takes a certain amount of time for a team
to turn around for better or worse. What would be interesting to know is
this “turnaround time” or delay τ. In his analysis, Banks found that the
averaged periodicity between best performances of a team was close to 8 yr
(see Figure 1.2.) Introducing y ≡ U −1/2, we may rewrite Eq. (1.15) as Eq.
(1.3) with k = −b < 0. Using then (1.7), we know that Eq. (1.15) admits
the harmonic solution U = 1/2 + A sin(ωt) if
ωτ = π/2 and bτ = π

2 . (1.16)
Because the period P in Figure 1.2 is approximately 8 yr, we determine ω
from the expression P = 2π/ω = 8 yr. We find ω = π/4 yr−1 and using
(1.16), we obtain the delay τ as

τ = 2 yr. (1.17)
There are, of course, many other factors that influence the success of a
team (new coach, injuries of key players, player trades, etc.). But Eq.
(1.15) is based on the idea that the growth of a human activity (here

the performance of a football team) depends on its status at a previous
time. If the performances are poor, we intend to invest in new resources to
achieve a better result in the future. If, on the contrary, the performances
are high, we are not likely to invest and we become more vulnerable with
respect to competition. If the competition or the pressure to succeed is

high, a cyclic behavior is inevitable. This idea has been discussed in a vari-
ety of businesses including the growth of scientific results. In this case, the

delay represents, for example, the time needed to write an essential paper.
Goffman and Harman [76] analyzed the list of publications in the field of
symbolic logic and discovered an oscillatory pattern. They analyzed these
observations as an epidemic process although a linear DDE such as Eq.
(1.3) was later proposed [221].

1.3 Car-following models
It is hardly necessary to emphasize the importance of transportation in our
lives. In the US, vehicles are driven an average of 10,000 miles per year for
passenger cars and 50,000 miles per year for trucks on a highway system
that comprises more than 4 million miles. The indices in other countries

may be somewhat different, but the importance of the transportation sys-
tem, and especially the highway component of it, is just the same or even

greater. Traffic flow theories seek to describe in a precise mathematical way
the interactions between the vehicles and their operators, and the highway
system with all its operational elements. The scientific study of traffic flow

had its beginnings in the 1930s with the application of probability the-
ory to the description of road traffic but it was in the 1950s that major

theoretical developments emerged using a variety of approaches, such as
car-following, traffic wave theory (hydrodynamic analogy), and queueing
theory [83, 33].
The following equation
x
n+1(t + τ ) = α(x
n − x
n+1) (1.18)
can be used for determining the location and speed of the following car (at
x = xn+1) given the speed pattern of the leading vehicle (at x = xn). If a
driver reacts too strongly (large value of α representing excessive braking)
or too late (long reaction time τ ), the spacing between vehicles may become
unstable (i.e., we note damped oscillations in the spacing between vehicles).
A typical solution of Eq. (1.18) for two cars is shown in Figure 1.3. The
distance between the two cars dangerously drops from 10 m to about 5 m
after the leading vehicle reduces its speed. If ατ is increased, the number
of damped oscillations increases. A sober driver needs about 1 s in order
to start breaking in view of an obstacle. With 0.5 g/l alcohol in blood

Figure 1.3: Car-following models. Top: Speed v = x

1 and v = x
2. Bottom:
Distance d = x1 − x2 between the two cars. The lead vehicle reduces its
speed of 80 km/h to 60 km/h and then accelerates back to its original speed
with constant braking and acceleration rates. The initial spacing between
vehicles is 10 m. α = 0.5 s−1 and τ =1s.
(2 glasses of wine), this reaction time is estimated to be about 1.5 s3.
Figure 1.4 shows that the oscillations near the stable equilibrium increase.
It is clear that a driver’s acceleration or deceleration also depends on the
distance to the precedent car. The closer the driver is, the more likely the
driver is to respond strongly to an observed relative velocity. The simplest
way to model this is to let the sensitivity be inversely proportional to the
distance. Many models considered the general function [33]

λ = c
(x
n(t + τ ))m
(xn−1 − xn)

l , (1.19)
where c is a positive parameter and m, l are nonnegative parameters not
necessarily integers. For example, m = 0 and l = 1 or 2.
3At a Blood Alcohol Content (BAC) of 0.8 g/l, (0.08 % BAC is the legal limit in
the U.S. and in the U.K.), the average driver reaction time doubles from 1.5 to 3 s. In
France, Belgium, and Germany the legal limit is 0.05 % BAC.

Figure 1.4: Alcohol and driving. Alcohol decreases the reaction time of
driver 2 allowing more oscillations near the stable distance between driver
1 and driver 2.
1.4 Population dynamics

Pierre Francois Verhulst (1804–1849) was a Belgian professor of mathemat-
ics at the Universit ́e Libre de Bruxelles and at the Ecole Royale Militaire

(also located in Brussels) in 1835. Forced by the administration to make
a choice in 1840, he kept the more lucrative position at the Ecole Royale
Militaire. Stimulated by Malthus’s “Essay on the Principle of Population,”
Verhulst (1838) [237] published what he called a “logistique” equation4

to describe the sigmoidal growth of population density to carrying capac-
ity. See Mawhin [152] for an excellent review of the Verhulst legacy. The

Verhulst equation was rediscovered by Pearl and Reed (1920) [184]. Then,
Lotka (1925) [143] derived the same equation mathematically, calling it
“the law of population growth,” and the Russian biologist Gause (1934)
[69] demonstrated its validity in laboratory experiments. See Kingsland
[125] for a historical review. The so-called continuous logistic equation is
given by

dN
dt = rN(1 − N

K ), (1.20)
where r and K are defined as the growth rate and the carrying capacity of
the population, respectively. The solution of Eq. (1.20) can be determined
analytically because the equation is separable. It has a sigmoidal form
starting exponentially from N(0) K and saturating at N = K.
4To presumably differentiate from the Malthusian “logarithmique.”

Figure 1.5: The growth of Paramecium aurelia in test tubes containing
Osterhaut culture medium with bacteria as food. Population size is number
per 0.5 ml (after Gause [69], redrawn from Case [45] p. 104).
The population growth of the protozoan Paramecium in test tubes is
a typical example (Figure 1.5). Under the conditions of the experiment,
the population stopped growing when there were about 552 individuals
per 0.5 ml. The time points show some scatter, which is caused both by
the difficulty in accurately measuring population size (only a subsample of
the population is counted) and by environmental variations over time and
between replicate test tubes. A linear regression of the data N
/N versus

N gives r = 0.99 and K = 552.
The logistic equation (1.20) assumes that organisms’ birth and/or death
rates respond instantaneously to changes in population size. However, there
are some organisms that exhibit pulses of reproduction and have some lag
time (on the order of one generation) before they reproduce again. Delays
occur if the organism stores the nutrient or due to the cell cycle or from
environmental conditions (supply of food). Hutchinson [105] was one of
the first mathematicians to introduce a delay into the logistic equation to

account for hatching and maturation periods. He pointed out that the ob-
served oscillations could be explained by a finite time delay in the crowding

or resource term. Specifically, he studied the following equation

dN
dt = rN(1 − N(t − τ )

K ). (1.21)
This equation can be rewritten in dimensionless form if we introduce

y ≡ N/K and t ≡ t

/τ. (1.22)

Eq. (1.21) then becomes
dy
dt = λy(1 − y(t − 1)), (1.23)

Figure 1.6: Oscillatory solutions of the logistic DDE. Top: λ = 1, the so-
lution quickly decays to the stable steady state y = 1. Bottom: λ = 1.8,

the oscillations grow and become sustained. The intial function is y = 0.5
(−1 ≤ s < 0).
where

λ ≡ rτ (1.24)
is the only parameter. Figure 1.6 represents the solution of Eq. (1.23) for
two different values of λ. The figure suggests that the stable steady-state
y = 1 becomes unstable at a value of λ between λ = 1 and λ = 1.8. We
analyze the stability of y = 1 in Section 2.1 and find indeed a change of
stability at

λc = π/2  1.57. (1.25)
As λ>λc, the system transfers its stability to a stable period solution. We
may represent the extrema of y as function of λ. See Figure 1.7. We note
that the amplitude of the oscillations smoothly grows from zero. This is an
example of a bifurcation diagram showing a Hopf bifurcation at λ = λc.
Lemming population cycles in the arctic north are nicely described by the
logistic DDE with r = 3.333/yr and τ = 9 months (λ = 3.333 × 9/12 = 2.5
is larger than λc). See Figure 1.8. When the time lag is 2.8 (or nearly three
times r), the population overshoots K so much that it crashes down to

extinction. This behavior is not unlike the population dynamics of rein-
deer introduced on two small islands in the Alaskan Pribiloff Islands (see

Figure 1.9). Note, however, that the solution of the logistic DDE is still

Figure 1.7: Bifurcation diagram of the stable solutions. A Hopf bifurcation
to sustained oscillations appears at λ = λc  1.57 (black dot).

Figure 1.8: The full curve shows the density of lemmings in the Churchill
area of northern Manitoba, Canada (number of individuals per hectare).
The dashed curve is the solution of the logistic DDE with r = 3.333/year
and τ = 0.72 years (after May [154] redrawn from Case [45] p. 120).

Figure 1.9: Introduced reindeer populations on two small islands in the
Alaskan Pribiloff Islands (after Scheffer [208] redrawn from Case [45]
p. 119).

Figure 1.10: Strongly pulsating solution of the logistic DDE with λ = 3.
The initial function is y = 0.5 (−1 ≤ s < 1). The first minimum is about
10−2 small (arrow) and the next minima are close to 10−6. Under these
conditions, the population physically disappears after the first pulse.

time-periodic if λ ≥ 3 but the minima are so small that the value of y is
meaningless in terms of population. See Figure 1.10. An asymptotic analysis

of the oscillations for large values of λ is given by Fowler [66]. The incor-
poration of the delay in Eq. (1.21) allows us to describe the appearance of

sustained oscillations in a single species population, without any predatory

interaction of other species. However, the model description raises a num-
ber of questions such as the meaning of the finite time τ or why the delay

enters the removal term y2/K and not the production term y.

1.5 Nonlinear optics

In 1979, the Japanese physicist Kensuke Ikeda considered a nonlinear ab-
sorbing medium containing two-level atoms placed in a ring cavity and

subject to a constant input of light. If the total length of the cavity is
sufficiently large, the optical system undergoes a time-delayed feedback
that destabilizes its steady-state output. Ikeda derived a set of coupled
differential-difference equations from the Maxwell–Bloch equations [106].
Then introducing more assumptions, Ikeda formulated the following scalar
DDE [107, 150]

τφ = −φ + A2 [1 + 2B cos (φ(t − tD) − φ0)] (1.26)

which is known as the Ikeda DDE. If the ratio td/τ is sufficiently large, we
may neglect the left hand side and obtain the equation for a map given by

φn = A2 
1+2B cos 
φn−1 − φ0
 (1.27)
which is called the Ikeda map. Using (1.26), Ikeda then showed numerically
that periodic and chaotic outputs are possible. In 1983, the experimental
system was realized by his colleagues with a train of light pulses injected
in a long single-mode optical fiber [108] but the Ikeda physical system is
poorly described by Eq. (1.26). Efforts to develop an experimental device

that is accurately modeled by a simple DDE such as Eq. (1.26) immedi-
ately followed the early work of Ikeda and today quantitative comparisons

between experiments and theory are possible.
In Besan ̧con (France), work has been done on a delayed optical system
where the dynamical variable is the wavelength [74]. An improved device
using a tunable DBR laser was then realized [75, 138]. This experience then
led to the development of a system based on coherence modulation. The
dynamical variable is the optical-path difference in a coherent modulator
driven electrically by a nonlinear delayed feedback loop [139]. The system
is realized from an MZ coherence modulator powered by a short coherence
source and driven by a nonlinear feedback loop that contains a second MZ
interferometer and a delay line. In dimensionless variables, the response of
the system is well described by [139],
τX = −X + β

1 +
1
2 cos(X(t − tD) + Φ)

, (1.28)
where X is proportional to the optical-path difference. The bifurcation
parameter β is proportional to the photodetector gain K which can be
varied. The phase Φ can be changed electrically by means of a bias voltage
applied to the first MZ. Experimentally, the ratio tD/τ is chosen sufficiently
large so that we may neglect the term in the left-hand side of Eq. (1.28).
The resulting equation then is an equation for a map relating Xn+1 = X(t)
and Xn = X(t − tD):
Xn+1 = β

1 +
1
2 cos(Xn + Φ)

. (1.29)
The experimental bifurcation diagram is shown in Figure 1.11 for Φ = 0.
This bifurcation diagram is well reproduced by the numerical bifurcation
diagram obtained from Eq. (1.29). Numerical and experimental values of
the three marked points are compared in the next table.

Figure 1.11: Experimental bifurcation diagram for Φ = 0 from [139]. The
points at β = 2.07 and β = 5.30 are two Hopf bifurcation points. The third
point at β = 6.69 marks the transition to a “chaotic” output exhibiting
erratic oscillations.
1.6 Fluid dynamics
DDEs appear in fluid mechanics when some memory effects need to be
taken into account [238, 240]. We illustrate this by considering the case of
vertical water fountains exhibiting oscillatory motion of their tips. Only for
very low-momentum fluxes, ρu2 (ρ = 103 kg m−3 is the fluid density and
u is the initial velocity of the jet), the water exiting the fountains remains
attached to the nozzle due to capillary and gravity forces. But, above a
threshold of the momentum flux, a new regime is observed where the fluid
detaches from the nozzle, forming an upward moving jet. The upward
moving fluid then changes kinetic into potential energy until it reaches a

maximum height (Figure 1.12 (1)) at which a lump of fluid begins to accu-
mulate at the tip of the fountain. The maximum height that it can reach

is given by h = u2/(2g) where g is the acceleration due to gravity. As the
mass of the lump increases (Figure 1.12 (2)), the pull of gravity eventually
overcomes the jet’s momentum and the jet begins to fall. The backflow
initially takes the form of a lump perched on the top of the jet and fed with

liquid from below, falling under its own weight, flattening out the ascend-
ing column of fluid, and deforming under the inertial pressure of the jet

(Figure 1.12 (3)). The lump eventually breaks up into a dispersed corolla
(Figure 1.12 (4)), the jet re-emerges, and a new cycle begins (Figure 1.12
(5) to (8)). The overall effect is a pulsating motion of the jet, which is
apparent not only to the eye but also to the ear (the breakup of the corolla

Figure 1.12: From left to right and from top to bottom: A period of the

pulsation of a vertical fountain. d = 3 mm, u0 = 1.5 ms−1. The pic-
tures are spaced by 2/25 seconds and the oscillation frequency is about

2 Hz. Note the corolla breakup of the gravity-induced backflow. Reprinted
by permission from Macmillan Publishers Ltd (Nature) Villermaux [238]
Copyright 1994.
is accompanied by a characteristic dripping sound). The pressure at the

orifice of the jet is related to its instantaneous height and its variation os-
cillates with a dominant period. For fountains with moderate aspect ratios

(height/diameter, h/d ≤ 50), this oscillatory behavior develops before the
onset of the Raleigh capillary breakup instability, which would otherwise
cause the liquid column to fragment. If the fountain is oriented slightly away
from the vertical, the backflow is no longer possible and the jet describes
a parabola with a fixed maximum elevation. The gravity-induced backflow
is thus essential for the onset of the oscillatory behavior. Villermaux [238]
proposed that the oscillations are the result of the interplay between linear
growth and a delayed nonlinear saturation and he mathematically models

this mechanism by formulating a DDE for the amplitude A(t) of the distur-
bances in the flow, equivalent to the fluctuating height of the fountain [239]

dA
dt = rA − μ|A(t − τ )|

2A, (1.30)
where τ is the transit time through the recirculation loop. This timelag

represents the interaction time of a fluid packet initially topping the foun-
tain during its deformation until it breaksup in dispersed droplets and is

estimated as the time for the packet to fall by a distance of the order of its
own size (d) and independent of u0 : τ ∼ d/(dg)1/2 = (d/g)1/2. Eq. (1.30)
rewritten in terms of y ≡ μA2/r and the new time t

 = t/τ is equivalent

to the delayed logistic equation (1.23) with λ = 2rτ and t

 replacing t.

We know that the solution is time-periodic if λ > π/2. Moreover, the fre-
quency of the oscillations is independent of μ (because λ does not include

μ after rescaling A2) and approximate as f ∼ 1/(4τ) if the amplitude of
the oscillations is not too large. Villermaux [238] was criticized because
he did not specify the parameter r and therefore no comparison can be
made. The problem was later revived by Clanet [46] who proposed new
experiments and a detailed physical model. He found that the frequency
of the oscillations equals

f = g
3u0
. (1.31)
Using the velocity u0 = 1.5 ms−1 given by Villermaux [238], we find f = 2.2
Hz which compares well with the experimental observation of f ∼ 2 Hz.
It is thus possible to propose a complete physical model of the fountain
oscillations. For other fluid dynamical phenomena such as turbulent flows,
a detailed description is not always available and a global mathematical
description using a DDE could be an interesting alternative [240].
1.7 Economics
The recurring fluctuations in economic activities (prices, output, inflation)
that appeared in market economies since the spread of industrialization
soon led to the idea that a business cycle is a self-sustained oscillation
resulting from the lagged reaction of economic factors and the nonlinear
relations between them. Kalecki’s business cycle mode (1935) [118] is maybe

the first mathematically detailed treatment of cyclical phenomena in eco-
nomics. A key element of the theory is to posit a lag between the investment

decision and installation of investment goods.5 The Hopf bifurcation theory
as a tool for demonstrating the emergence of a limit-cycle solution came
to the attention of economists much later [233]. Today, DDEs have found
their way in a variety of economical models [32] and bifurcation techniques
are frequently used to analyze the effects of specific nonlinearities [19].

5Michal Kalecki’s 1935 model used a linear difference-differential equation mix to
yield cycles but his work in 1937 and 1939 used a nonlinear system to obtain limit-cycles.
In economics, one should always publish in English. Although Kalecki claimed to have
anticipated many of the principles stated in Keynes’s General Theory, his articles (1933,
1935) were published in Polish and French and thus went unrecognized. Attempting to
rectify this, Kalecki decided to publish a claim of precedence to Keynes in a 1936 article
but in Polish again.

We illustrate the importance of delay in economy by first considering
a problem that does not exhibit a cyclic behavior. We wish to describe

the aggregate human capital stock H(t) in terms of the individual’s hu-
man capital. Overlapping generations offer new ideas and technologies and

a long life working expectancy may not necessarily be interesting for ad-
vanced economies. But we need to take into account the time T devoted

to schooling before entering the job market. To this end, de la Croix and
Licandro [47] formulated the following DDE for H(t)

H = exp(−βT )T H(t − T ) − βH. (1.32)
The last term on the right-hand side of Eq. (1.32) means that the aggregate
human capital decreases at a rate β. This is compensated by the entry of
new generations in the job market. At time t, exp(−βT ) individuals of
generation t − T enter the job market with human capital T H(t − T ). The
human capital is here assumed proportional to the time spent in school but
also on H(t) because we expect that the cultural ambiance of society at
the time of birth will have a positive impact (through, e.g., the quality of
the schools). Finally, the optimal time spent in school is not a constant but
needs to take into account the effect of the loss of wage income if the entry
on the job market is delayed and the negative effect of the instantaneous
probability of death β. This is modeled by writing
T = 1
β0 + β . (1.33)
The important quantity to compute is the growth rate σ. The growth rate
is determined by substituting H = exp(σt) into Eq. (1.32). This then leads
to an equation for σ called the characteristic equation (see Chapter 2). It
is given by

β + σ = T exp(−(β + σ)T ). (1.34)

This equation admits the parametric solution

β = −β0 + exp(−x)/x, (1.35)
σ = −β + (β0 + β)x, (1.36)
and σ = σ(β) is shown in Figure 1.13. Provided β0 is sufficiently small,
an increase of β from zero first leads to an increase of growth. After some
point any increase of β implies a decrease of the growth. Simply saying, the
effect of life expectancy on growth is positive for countries with a relatively
low life expectancy, but could be negative in more advanced countries.
We next consider a problem that displays unusual oscillations. For the
last 30 years, efforts have been directed to model foreign exchange rates.
Several events have contributed to these research activities such as the
adoption of the common currency Euro in 2002. A common feature of many
models is to describe the exchange rate S(t) = S0(t)+x(t) as the sum of two

Figure 1.13: Growth rate of the aggregate human capital H(t) as a function
of the instantaneous probability of death β (β0 = 0.1).

distinct quantities. S0(t) is defined as the “natural” foreign exchange rate
based on pure economical factors. The second term x(t) denotes the effect of
perturbations that depend on noneconomical factors such as expectations,
speculation, or random disturbances. The following DDE has been recently
proposed by Erd ́elyi [56] as a minimal model describing the evolution of x,
x = a [x − x(t − 1) − |x| x] . (1.37)
The first two terms in Eq. (1.37) describe the growth of the exchange
rate based on comparing rates at time t and at time t − 1, respectively.
If the exchange rate increases because x(t) > x(t − 1), it is worthwhile
to purchase foreign currency. Hence, the demand for foreign currency goes
up and the exchange rate will continue to increase. On the contrary, if the
exchange rate decreases because x(t) < x(t−1), the tendency will be to sell
foreign currency and the demand will go down. At some time, a number
of agents will realize that the absolute deviation |x(t)| increases and will
start to trade. The last term in Eq. (1.37) describes this effect. Because
x = −x2 (x > 0) and x = x2 (x < 0), |x| will continuously decrease.
In reality, the depreciation (or appreciation) of the domestic current rate
leading to a growth of |x| and the rescuing nonlinear feedback are competing
and we expect an oscillatory behavior. Figure 1.14 shows a bifurcation to
a periodic solution that appears as soon as a passes 1. This bifurcation
is not a Hopf bifurcation. As we approach a Hopf bifurcation point, the
amplitude of the oscillations goes to zero and the period goes to a fixed
quantity. Here, the amplitude of the oscillations goes to zero but the period

Figure 1.14: Bifurcation diagram of the periodic solutions emerging from
a = 1. As a → 1+, the extrema of the oscillations decrease to zero but the
period goes to infinity.

goes to infinity. By using asymptotic techniques, it is possible to show that
the extrema of oscillations xM and the period P scale such as xM ∼ a − 1
and P ∼ (a − 1)−1/2, respectively, as a → 1+ [62].

1.8 Mechanical engineering
Gantry cranes can lift several hundred tons and can have spans of well over
50 meters. See Figure 1.15. For fabrication and freight-transfer applications,
it is important for the crane to move payloads rapidly and smoothly. If the
gantry moves too fast the payload may start to sway, and it is possible for

the crane operator to lose control of the payload. At the 2005 ASME meet-
ing, the question was raised whether a delayed feedback control for con-
tainer cranes could be more efficient than conventional techniques. Henry

et al [90] and Masoud et al [156, 157, 158] developed a control strategy
based on a time-delayed position feedback of the payload cable angles. Its
goal was to significantly reduce the sway at the end of motion.

Figure 1.15: Container crane and ship (from H. Park and K.-S. Hong [181]).

The formulation of the pendulum model for the container crane is de-
scribed in Section 2.3. In its simplest form, it is given by

y + εy + sin(y) = −k cos(y)(y(t − τ) − y), (1.38)
where y represents the angle. The left-hand side models a weakly damped

oscillator and the right-hand side is the contribution of the feedback con-
trol. Without going into details, it is not too difficult to understand why a

delayed feedback may have a stabilizing effect. Near the equilibrium solu-
tion y = 0, sin(y) ∼ y and cos(y) ∼ 1 and Eq. (1.38) can be rewritten as

y + εy + y = −k(y(t − τ ) − y). (1.39)
If now τ is small, we expand the delayed variable as y(t − τ ) ∼ y − τy and
reformulate Eq. (1.39) as

y + (ε − kτ)y + y = 0. (1.40)
The effect of the delay appears in the damping coefficient. If k < 0, this
coefficient increases with the delay allowing faster decaying oscillations.
This conclusion is valid provided y is sufficiently close to zero. On the other
hand, if the size of y is arbitrary, then we need to worry about nonlinear

effects. Figure 1.16 illustrates the possible danger of using a delayed feed-
back control. For small amplitude perturbation of the equilibrium position

y = 0, the oscillations are damped. On the other hand, if the perturbation
is large enough, the oscillations of the pendulum become sustained.

Figure 1.16: The values of the fixed parameters are τ = 12, ε = 0.1, and
k = −0.15. (a): y

(0) = 0 and y =1(−τ<t< 0); (b): y

(0) = 0 and

y = 1.5 (−τ<t< 0).
1.9 Combustion engines

Improving the control of the air-to-fuel ratio (A/F) allows gasoline port-
fuel injection engines to meet more stringent emission regulations. With the

growing use of Universal Exhaust Gas Oxygen (UEGO) sensors more flexi-
ble air-to-fuel ratio control architectures capable of achieving low emission

levels can be implemented. The delay between the fuel injection and UEGO
sensor measurement can, however, limit the performance of the air-to-fuel

ratio control loop. Figure 1.17 (right) shows a plot of measured engine air-
to-fuel ratio in response to a step in the fuel injection rate from an engine

operating at 1000 rev/min (rpm) and at constant air flow.
The two relevant quantities are Fac(t) and Ff c(t) defined as the airflow

rate and the fuel flow rate into the engine cylinders, respectively. The air-
to-fuel ratio is then defined as R(t) ≡ Fac/Ff c and the control objective is

to regulate R to the desired value Rd. The amount of fuel available to the
engine is determined by the injection fuel flow rate Ff i(t). Averina et al.
[10] considered a simple mathematical model for the A/F control problem
that takes into account the signal coming from the UEGO sensor. The
latter is described in terms of xsen = R−1 sen and is related to x = R−1 via
first-order dynamics

Figure 1.17: Left: Gasoline engine. Right: Delay from fuel injection step
(broken line) to A/F changes at 1000 rpm. The delay varies with engine
speed, mass flow rate through the engine, exhaust pressure, and exhaust
temperature. At 2000 rpm, the delay reduces to 0.2 s and to 0.1 s at 3000
rpm (redrawn from Averina et al. [10], copyright 2005 IEEE).

dxsen
dt = −a(xsen − x(t − td)), (1.41)
where a (∼5 s−1)and td (∼0.25 s) correspond to the rate and the delay
of the A/F sensor. Assuming a constant airflow rate (dFac/dt = 0), the
evolution of the deviation y = xsen − xd, where xd = R−1

d is given by

y + y
(a + τ −1) + aτ −1y = ky(t − td) (1.42)
where prime means differentiation with respect to time t, τ (∼0.2 s) is the
fuel evaporation rate from the liquid puddle, and k < 0 is the gain of the
controller command.

1.10 Classes of DDEs
In the previous examples, we saw two different bifurcations to a periodic
solution, we noted that square-wave oscillations are possible if the delay
is large, and we also learned how delay could have a stabilizing effect.
Mathematicians have tried to classify DDEs by their difficulty in order to
identify some of their key properties. The problems that are the most often
discussed are first-order nonlinear DDEs exhibiting square-wave oscillations
and second-order nearly conservative equations exhibiting both periodic
and quasiperiodic oscillations.

1.10.1 Delay recruitment equation

Equation (1.28) belongs to the family of Ikeda equations that can be refor-
mulated as

εy = −y + f(λ, y(t − 1)). (1.43)
Here y denotes the derivative of y with respect to the dimensionless time
t (t ≡ t
/td where td is the delay time). The fixed parameter ε ≡ τ /td is
defined as the ratio between the linear decay time of the dependent variable
and the delay time. In Eq. (1.43), f(λ, y) represents a nonlinear function of
y and λ is a control parameter. As we have seen for Eq. (1.28), an equation
for a map can be obtained by setting ε = 0 in (1.43). The solutions of the
map give valuable information on the solutions of Eq. (1.43) for ε small. The
DDE (1.43) has also been called a delay recruitment equation [65] in the
context of biological or medical applications. Mackey [147] (see Chapter 3)
formulated an equation of the form (1.43) where
f(λ, y) = λ
1 + yp (1.44)
describes a negative feedback (p > 0). Note that Eq. (1.43) exhibits a
simple damping term (−y) and that the nonlinear function f only depends
on y(t − 1). The linear DDE εy = ±y(t − 1) and the delayed logistic
equation εy = λy(1 − y(t − τ )) do not belong to this class of equations.
The bifurcation diagram of the Ikeda equation with

f(λ, y) ≡ λ(1 − sin(y)) (1.45)
has been studied in detail and has revealed a large number of bifurcation

transitions [151, 173]. The parameter ε is naturally small and is respon-
sible for a sharp Hopf bifurcation transition [61] (see Figure 1.18). Other

functions f(λ, y) have been investigated. Shanz and Pelster [207] studied
Eq. (1.43) with

f(λ, y) = −λ sin(y) (1.46)
where λ > 0 and y is defined as a phase variable (first-order phase locked
loop describing the synchronization of two oscillators (see Chapter 8). Hong
et al. [99] investigated Eq. (1.43) with

f(λ, y)=1 − λy2. (1.47)

1.10.2 Harmonic oscillator with delay
Another class of DDEs concentrates on the harmonic oscillator with delayed
forcing [40] and has the form

y + ax + y = f(y(t − τ), y

(t − τ )), (1.48)

Figure 1.18: Periodic solutions of Ikeda DDE near the first Hopf bifurcation
point. ε = 10−2 and, from small to large amplitude, λ = 1.17, 1.18, 1.19,
1.20. The Hopf bifurcation point is located at λH = 1.177. Note the rapid
change of the oscillations from harmonic to square-wave as the deviation
λ − λH = O(ε) progressively increases from zero.

where the function f(y, y

) is nonlinear. In a mechanical system subject to
a delayed feedback, y and y represent the position and velocity at time t.
If the function f only depends on y(t − τ ), we talk about position feedback
whereas if f only depends on y

, we refer to the case of velocity feedback.
Machine tool vibrations have negative effects on the quality of machined
surfaces. One of the most important causes of undesired vibrations in the
cutting process is the so-called regenerative effect. Its physical basis is a
time delay that arises naturally in the cutting process, where the delay
is inversely proportional to the cutting speed (see Chapter 6). Johnson
and Moon [115] investigate an electromechanical system and simulate their
experiments by studying the following equation,
y + ay + b(y − y3) = c(y − y

(t − 1)). (1.49)
They found periodic, quasiperiodic, and chaotic oscillations. The values of

the parameters were a = 2.623, b = 170π2, and c is the control parame-
ter. Figure 1.19 shows the bifurcation diagram where a Hopf bifurcation is

followed by a bifurcation to quasiperiodic oscillations. Quasiperiodic oscil-
lations are oscillations characterized by two noncommensurable frequencies.

As a consequence the maxima (minima) are changing at each oscillation
but are bounded by an upper and lower limit.

Figure 1.19: Bifurcation diagram of the stable solutions of Johnson and
Moon equations. Points 1 and 2 mark a Hopf bifurcation followed by a
bifurcation to quasiperiodic oscillations.

The so-called sunflower equation

y +
a
τ
y +
b
τ sin(y(t − τ)) = 0 (1.50)
was originally proposed by Israelsson and Johnsson [113] to describe the
geotropic circumnutations of Helianthus annus. More than a century ago,
plant physiologists were aware that elongating plant organs–roots, shoots,

branches, flower stalks – rarely grow in just one direction. The organ’s in-
stantaneous growth direction usually oscillates slowly about a mean growth

direction. The plant organ tip, as seen from a distant viewpoint, describes

an ellipse and, in three dimensions, the tip traces a helix. Such “circum-
nutations” of sunflower seedlings were modelled in 1967 by Israelsson and

Johnsson [113]. According to the model, the movement was completely de-
pendent on gravity. However, a Spacelab experiment in 1983 showed that

under microgravity conditions oscillations were still occurring. They are,
however, less regular [37, 116]. Here, y denotes the angle with the plumb
line. Using numerical simulations, Johnsson [117] determined the values of
a and b for which Eq. (1.50) has a numerical periodic solution with period
157 minutes assuming a delay τ of 30 minutes. The equation was later
studied mathematically by Somolinos [216] who showed that for a = 4.8
and b = 0.186, there is a periodic solution for τ between 35 and 80 minutes.

1.11 Analytical tools

Many of the problems that we are facing with DDEs involve such diffi-
culties as transcendental equations or nonlinear evolution equations that

preclude solving them exactly. Consequently, solutions are approximated
using numerical techniques, analytic techniques, and combinations of both.
Foremost among the analytic techniques are the systematic methods of

perturbations (asymptotic expansions) in terms of a small or a large pa-
rameter. In this book, several such techniques are highlighted. They have

been developed for solving particular DDE problems and they are listed in
the following table.
Methods Sect.
Linear stability analyses 2
Construction technique for a single Hopf
bifurcation

3.2, 6.6.2
Piecewise constant nonlinearities 2.6, 3.3
Weakly perturbed strongly nonlinear relaxation
oscillators

5.3.2
Multiple time-scale methods for weakly nonlinear
oscillators

6.2,6.3
Weakly perturbed strongly nonlinear conservative
oscillators

7.2.1

Construction technique for a double Hopf
bifurcation

7.2.3

One can’t do everything, however. If the model equations are too complex,
numerical approaches are needed. But it is important to make clear that
asymptotic methods are available, analytical tools capable of extracting
information of physical significance.


