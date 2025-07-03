Lagrange Interpolation Approach for General Parameter-Shift Rule
================================================

Vu Tuan Hai and Le Bin Ho

1 Introduction
--------------

Quantum computing is an elegant fusion between computer science and principles
of quantum physics to facilitate calculations [1]. It promises an excellent computational capacity that is intractable for classical computers to solve challenging
problems, including materials science, information science, computer science,
mathematical science, and others. However, it turns out that fault-tolerant quantum
computers are challenging to realize due to: (i) the difficulty of accessing complete
information from entangled systems because of the state collapse upon measurements, and (ii) the difficulty of building, controlling, and measuring quantum states
with arbitrarily high accuracy [2]. In this regard, despite the tremendous rate of
development, the current state-of-the-art quantum computers mainly contain a small
number of quantum bits (qubits) with a noise level called the noisy intermediate-
scale quantum devices (NISQ) that prevents them from being practical [3].

Variational quantum algorithms (VQAs) are promising to speed up the computing capacity in the NISQ computers [4]. Massive applications of the VQAs
were extensively reported, from dynamic simulation to condensed matter physics,
machine learning, mathematical applications, and new frontiers quantum founda-

Fig. 1 A variational quantum algorithm consists of a quantum and a classical part. In the quantum
part, let |ψ> be the initial quantum state, it evolves under a parameterized ansatz U(θ) before being
subject to measurement. The cost function C(θ) is defined and optimized in the classical part. The
new parameters θ are derived and updated for each iteration to the quantum part. The scheme is
repeated until it converts


tions [4]. The main task of VQAs is to optimize a trainable parameterized circuit by
using a hybrid quantum-classical scheme, as shown in Fig. 1. Here, one measures
the cost function of interest C(θ) in the quantum part and iteratively optimize it in
the classical part until it converts. The optimization can use either gradient-free or
gradient-based methods.

A critical technique for the VQAs to compute analytic derivatives of the cost
function is known as the “parameter-shift rule” [5, 6], which is often required for
the gradient-based optimization. The method was first introduced by Mitarai et al.
[5] and then extended to a so-call two-term parameter-shift rule [6]. This approach
gives the exact gradient (first-order derivative) of the cost function by subtracting
the two cost functions with different shifts. It is, however, only applicable for single-
qubit quantum gates, whose generators have two distinguished eigenvalues, such as
the rotation gates [7, 8]. So far, Anselmetti et al. introduced a four-term parameter-
shift rule that applies to generators with three distinguished eigenvalues {−1, 0, 1},
such as the controlled-rotation gates [9]. In this case, the derivative is given in the
linear combination of four cost functions with different shifts. Recently, various
attempts were devoted to generalizing the parameter-shift rule for any assigned
quantum gates [10–12]. Remarkably, strategies for generalizing using polynomial
expansion were proposed [11, 12]. Apart from that, Wierichs et al. introduced a
general parameter-shift rule based on the finite Fourier series of the cost function
[10]. However, this method heavily consumes cost of computation to evaluate all
Fourier coefficients. So far, higher-order parameter-shift rule is also derived [13],
such as the second-order derivative can reduce to the Hessian formula of the finite
differential.

In this work, we introduce the Lagrange interpolation approach [14, 15] to derive
the general parameter-shift rule. We expand a quantum gate having a generator
G into a polynomial P (G) of degree n − 1, where n is the number of distinct
eigenvalues of G. Our approach is similar to the polynomial expansion Refs.
[11, 12]. However, here, we provide a general procedure to derive the parameter-
shift rule for arbitrary distinct eigenvalues automatically. It only requires fewer
evaluations to compute the derivative. We illustrate the approach for the well-known
two-term and four-term parameter-shift rules, and generalize to multiple-term
parameter-shift rule. Higher-order derivatives of the cost function are also discussed.
We finally numerically evaluate the accuracy of the method via the mean-square
error and demonstrate the variational quantum eigensolver for a many-body system.
So far, our approach can be applied to trapped atomic ions quantum gates, such as
collective quantum gates, whose generators have linear eigenvalues as number of
particles [16, 17].

For convenience, in Table 1, we present the major symbols used in this work.

2 Preliminary

Let us consider a parameterized quantum gate with a general form U(x) = e−i x
2 G where G is the generator and assume the cost function of interest is the expectation
value of a measured observable B as 

C(x) = <ψ|U†(x)BU(x)|ψ>, (1)

where |ψ> is the initial circuit’s state. The derivative w.r.t the parameter x yields

∂
∂x
C(x) = − i
2
<ψ|U†(x)[
B, G]
U(x)|ψ>. (2)

For generators that obey G2 = I , such as the standard rotation gates based on Pauli
matrices G = {σx , σy , σz} or G2 = G, such as projective operators, we have

[
B, G]
= i
sin(α)
[
U†(α)BU(α) − U†(−α)BU(−α)]

, (3)

where α is an arbitrary shift. Substituting (3) to (2) results in a two-term parameter-
shift rule as [6]

∂
∂x
C(x) = 1
2 sin(α)
[
C(x + α) − C(x − α)]

, (4)

where the gradient is proportional to the linear combination in the cost functions
with different shifts +α and −α. It is summarized in a scheme below:

This is the well-known parameter-shift rule used in various VQA approaches [4]. In
the following, we derive the parameter-shift rule for general quantum gates by using
the Lagrange interpolation.

3 General Parameter-Shift Rule with the Lagrange Interpolation Approach

The Lagrange interpolation is a calculus method that decomposes a quantum gate
in terms of the polynomials generator. It thus supports deriving the parameter-shift
rule with any generic generator. In this section, we derive the general parameter-
shift rule using the Lagrange interpolation and apply it to the first-order derivative
(gradient) for the cost function.

3.1 Lagrange Interpolation Approach
-----------------------------------

We begin with a general quantum gate represented by U(x) = e−i x
2 G, where E the Hermitian generator G has n distinguished eigenvalues {λk}, i.e., G = n−1
k=0 λk|φk><φk|. The Lagrange interpolation of the unitary U(x) is given by
[14, 15]

e−i x
2 G = En−1
k=0
e−i x
2 λk
n
| |−1
l=0,l/=k
G − λlI
λk − λl
, (5)

where I is an identity matrix having the same dimension as G. In the following, we
explicitly derive the general two-term, four-term, and multiple-term parameter-shift
rule from Eq. (5).

3.2 Two-Term Parameter-Shift Rule

We first consider case n = 2. Let λ0 and λ1 be two distinguished eigenvalues of G.
Equation (5) explicitly yields

e−i x
2 G = Λ0I + Λ1G, (6)

where

Λ0 = λ0e−i x
2 λ1 − λ1e−i x
2 λ0
λ0 − λ1
,

Λ1 = e−i x
2 λ0 − e−i x
2 λ1
λ0 − λ1
,

are the zero- and first-order coefficients of the Lagrange polynomial. Set a super-
operator

U(±α)[B] = U†(±α)BU(±α), (7)

which straightforwardly gives

U(α)[B] − U(−α)[B] = −2i sin( 1
2αλ)
λ
[
B, G]
, (8)

where λ = λ0 − λ1. Substituting Eq. (8) into Eq. (2), we obtain

∂
∂x
C(x) = λ
4 sin( 1
2αλ)
[
C(x + α) − C(x − α)]

. (9)

For example, let U(x) be a Pauli rotation gate, such as Rx (x) = e−i x
2 σx , Ry (x) = e−i x 2 σy , Rz(x) = e−i x2 σz , where G = {σx , σy , σz} are Pauli matrices. These generators have two eigenvalues as λ0 = −1, λ1 = 1. Then, Eq. (9) straightforwardly
deduces to Eq. (4). Besides these standard notations for superconducting-based
qubits, quantum computing with trapped ions uses spin-1/2 particle as a qubit. In
this case, a spin rotation gate is given in the terms of spin-1/2 operators, such as
Sx = σx /2, Sy = σy /2, Sz = σz/2. The derivative reads

∂
∂x
C(x) = 1
4 sin( 1
2α)
[
C(x + α) − C(x − α)]

. (10)

3.3 Four-Term Parameter-Shift Rule

For n = 3, i.e., G has three distinguished eigenvalues λ0, λ1, and λ2, we explicitly
recast Eq. (5) as [15]

e−i x
2 G = Λ0I + Λ1G + Λ2G2, (11)
Λ0 = −1
| |
{i,j }(λi − λj )
E
{k,l,m}
e−i x
2 λkλlλm(λl − λm),

Λ1 = 1
| |
{i,j }(λi − λj )
E
{k,l,m}
e−i x
2 λk (λ2
l − λ2
m),

Λ2 = E
2
k=0
e−i x
2 λk
| |
2
l=0,l/=k
1
λk − λl
,

where {i, j } takes{0, 1},{1, 2},{2, 0}, and {k,l,m} takes{0, 1, 2},{1, 2, 0},{2, 0, 1}.

Apply the super-operator U twice for the arbitrary shifts α1 and α2, we get the four-
term parameter-shift rule as

∂
∂x
C(x) = − i
2
{
d1
[
C(x + α1) − C(x − α1)
]

+ d2
[
C(x + α2) − C(x − α2)
]}
, (12)

where the coefficients d1,2 depend on the choice of α1,2.

For example, let U(x) be a controlled-rotation gate, where the eigenvalues of
G are λ0 = −1, λ1 = 0, λ2 = 1, which yields Λ0 = 1, Λ1 = −i sin(x/2), Λ2
= cos(x/2) − 1. Then, Eq. (11) explicitly gives

e−i x
2 G = I − i sin(x/2)G + [

cos(x/2) − 1
]
G2, (13)

which obeys the relation [9]:

d1 sin(α1/2) + d2 sin(α2/2) = 1
4
d1 sin(α1) + d2 sin(α2) = 1
2
.

(14)

We can choose α1 = π/2 and α2 = π, then d1 = i and d2 = i(1 − √2)/2.

3.4 Multiple-Term Parameter-Shift Rule

For an arbitrary n > 3, we have

e−i x
2 G = Λ0I + Λ1G +···+ Λn−1Gn−1, (15)

where all Λ terms are solvable. Explicitly, the super-operator U(α)[B] in Eq. (7)
yields

U(α)[B] = En−1
k,l=0
[
Λ∗
k (α)Λl(α)GkBGl
]
= Tr[
M(α) · FT]
, (16)

where the superscript T denotes the transpose, M(α) and F are (n × n)-matrices

M(α) =
⎛
⎜
⎜
⎜
⎝
Λ∗
0(α)Λ0(α) Λ∗

0(α)Λ1(α) ··· Λ∗
0(α)Λn−1(α)

Λ∗
1(α)Λ0(α) Λ∗

1(α)Λ1(α) ··· Λ∗
1(α)Λn−1(α)

.
.
. .
.
. ... .
.
.

Λ∗
n−1(α)Λ0(α) Λ∗

n−1(α)Λ1(α) ··· Λ∗

n−1(α)Λn−1(α)
⎞
⎟
⎟
⎟
⎠ , (17)

F =
⎛
⎜
⎜
⎜
⎝
G0BG0 G0BG1 ··· G0BGn−1
G1BG0 G1BG1 ··· G1BGn−1
.
.
. .
.
. ... .
.
.
Gn−1BG0 Gn−1BG1 ··· Gn−1BGn−1
⎞
⎟
⎟
⎟
⎠ . (18)


We next compute

U(α)[B] − U(−α)[B] = Tr[(M(α) − M(−α))
· FT
]

= Tr[
ΔM(α) · FT]

. (19)

Notable that ΔM(α) is a complex symmetry matrix with diag[ΔM(α)] = 0 and
[ΔM(α)]ij = ([ΔM(α)]j i)∗. We set a column matrix D = (d1, d2, ··· , dm
)T that obeys

Em
k=1
dk
(
U(αk)[B] − U(−αk)[B]
)
= ℘[B, G]. (20)

Here, m depends on the number of non-vanish elements [ΔM(α)]ij , ∀j>i, and ℘
is a coefficient similar as in Eq. (8)

℘ = Em
k=1
dk
[
ΔM(αk)
]
01 . (21)

We normalize dk by dk/℘. Finally, by substituting Eq. (20) into Eq. (2), we get the
multiple-term parameter-shift rule as

∂
∂x C(x) = − i
2
Em
k=1
dk
[
C(x + αk) − C(x − αk)
]
. (22)

Here, we need to compute m coefficients d1, ··· , dm regarding the shifts
α1, ··· , αm. See Algorithm 1 for the pseudo-code deriving all {dk} terms. For
the symmetry set of {λk}, we obtain m = L2n/4. − 1 for n ≥ 4. We summarize all
cases of m in Table 2.

4 Higher-Order Derivative
-------------------------

In this section, we compute higher-order derivatives of the cost function using the
parameter-shift rule. Let a variational circuit is governed by a set of quantum gates
U(θ) = V MUM(θM)··· V 1U1(θ1), (23)

where θ = (θ1, ··· , θM) is an M-tuple of classical parameters, and {V k} are
arbitrary constant gates. The derivative of an arbitrary order τ is defined by

∂τ
θ1,θ2,··· ,θτ C(θ) = ∂τ C(θ)
∂θ1∂θ2 ··· ∂θτ

. (24)

The first-order derivative of the cost function is given in the terms of parameter-
shift rule as in Eq. (22)

∂C(θ)
∂θj
= − i
2
Emj
k=1
dk
[
C(θ + αkej ) − C(θ − αkej )
]
, (25)

where ej is the unit vector along the θj axis. We next derive for higher-order
derivatives.

4.1 Second-Order Derivatives (Hessian)

The second-order derivative gives

∂2C(θ)
∂θj ∂θl
=
(−i
2
)2Emj
k=1
dk
{Eml
r=1
d
(α+
k )
r
[
C(α+
k + βrel) − C(α+
k − βr el)
]

− d
(α−
k )
r
[
C(α−
k + βrel) − C(α−
k − βrel)
]}
,
(26)

where α±
k = θ ± αkej .


For the two-term parameter shift rule, we have mj = ml = 1. From Eq. (9), if
λ = −2 (such as Pauli generators), then d1 = i/ sin(α1), and d
(α±1 ) 1 = i/ sin(β1).

The second-order derivative explicitly gives

∂2C(θ)
∂θj ∂θl
= 1
4 sin2(α)
[
C
(
θ + α(ej + el)
)
− C
(
θ + α(ej − el)
)

− C
(
θ − α(ej − el)
)
+ C
(
θ − α(ej + el)
)]
, (27)

where we used α1 = β1 = α.

For the four-term parameter shift rule, we have mj = ml = 2. Choosing α1 =
π/2 and α2 = π, then d1 = i and d2 = i(√2 − 1)/2. The second-order derivative
explicitly gives

∂2C(θ)
∂θj ∂θl
=
(−i
2
)2
{
− 1
[
C
(
θ + α1ej + α1el
)
− C
(
θ + α1ej − α1el
)]

− 1 − √2
2
[
C
(
θ + α1ej + α2el
)
− C
(
θ + α1ej − α2el
)]

+
[
C
(
θ − α1ej + α1el
)
− C
(
θ − α1ej − α1el
)]

+
1 − √2
2
[
C
(
θ − α1ej + α2el
)
− C
(
θ − α1ej − α2el
)]

− (1 − √2)
2
[
C
(
θ + α2ej + α1el
)
− C
(
θ + α2ej − α1el
)]

− (1 − √2)2
4
[
C
(
θ + α2ej + α2el
)
+ C
(
θ + α2ej − α2el
)]

+ (1 − √2)
2
[
C
(
θ − α2ej + α1el
)
− C
(
θ − α2ej − α1el
)]

+ (1 − √2)2
4
[
C
(
θ − α2ej + α2el
)
+ C
(
θ − α2ej − α2el
)]}
.
(28)

Similarly, one can extend the second-order derivatives for the general multiple-term
parameter-shift rule.

4.2 Fubini-Study Metric Tensor

We apply the above results to compute the Fubini-Study metric tensor. It is a
Riemannian metric that measures the “quantum distance” (in parameter spaces)
between the two quantum states. For pure quantum states, the metric tensor
associates with the Fisher information matrix or the Bures metric tensor [18].
Mathematically, for a pure state |ψ(θ)> = U(θ)|ψ>, the metric is defined in terms
of the second-order derivative as

gij (θ) = −1
2
∂2
∂θi∂θj
|
|
|
|
|<ψ(θ'
)|ψ(θ)>
|
|
2
|
|
|
θ'
=θ
. (29)

Here, the cost function is C(θ) = ||<ψ(θ')|ψ(θ)>||2, which is the transition
probability from |ψ(θ)> to |ψ(θ')>, under the action of U†(θ')U(θ) on the initial
state |ψ>. In other words, C(θ) is the probability of finding the outcome state |ψ>
when measuring the final state |ψ(θ', θ)> = U†(θ')U(θ)|ψ>:

C(θ) ≡ p = |
|<ψ(θ'
)|ψ(θ)>
|
|
2

= |
|<ψ|ψ(θ'
, θ)>
|
|
2 (30)

where p is the probability of obtaining the outcome state |ψ>. Notable that in
Eq. (29), we set θ' = θ after the partial derivatives. However, in the quantum circuit
using the parameter-shift rule, we first apply U(θ ± shift) onto |ψ> according with
Eqs. (27) and (28), then apply U†(θ), and measure the final circuit’s state.

Concretely, let us consider the example shown in Fig. 2. The circuit consists
of two qubits, which is initially prepared in the state |ψ>=|00>. The evaluation
operator U(θ) is parameterized by two single-qubit rotation gates Rx (θx ) and
Rz(θz), and a controlled-rotation gate CRy (θy ). Here, the parameters are given in
the order as θ = (θx , θz, θy). The state evolves to |ψ(θ)> = U(θ)|00>.

Conventionally, we can derive U(θ) into two layers: one with the two single-
qubit rotation gates and one with the controlled-rotation gate. Then, the Fubini-
Study is a tensor of (2×2)-matrix and (1×1)-matrix, i.e., becomes a (3×3)-matrix
[19]. Nevertheless, here we can directly apply the above method and get the same
result


⎛
⎝
gxx gxz gxy
gzx gzz gzy
gyx gyz gyy
⎞
⎠ =
⎛
⎝
1
4 0 0
00 0
0 0 1
4 sin2( θx
2 )
⎞
⎠ , (31)

where gjl, ∀j,l ∈ {x, z, y} are given in Eq. (29) and computed from the parameter-
shift rule as described in Eq. (30).

5 Numerical Simulations
-----------------------

In this section, we first revisit the finite-difference gradient and quantify the mean-
square error (MSE) as the figure of merit for evaluating different estimators (finite-
difference and parameter-shift rule estimators). We later demonstrate the numerical
evaluation of the MSE. Afterward, we also examine a variational quantum circuit to
find the ground state of a many-body system.

5.1 Finite-Difference Approximation of Derivatives

For a given step size h > 0, the finite-difference gradient of a function f (θ) gives

∂f (θ)
∂θj
= f (θ + hej ) − f (θ − hej )

2h . (32)

The second-order derivatives is given via the Hessian formula [20]

∂f 2(θ)
∂xj ∂xl
= 1
4h2
[
f
(
θ + h(ej + el)
)
− f
(
θ + h(ej − el)
)

− f
(
θ − h(ej − el)
)
+ f
(
θ − h(ej + el)
)]
. (33)

These are approximate methods that give high accuracy when h → 0.

5.2 Mean-Square Error

Following Ref. [13], we consider the mean-square error (MSE) as the figure of merit
to evaluate the accuracy of different estimators. The MSE of an estimator<∂τ
θ1,θ2,··· ,θτ is given as

Δ(<∂τ
θ1,θ2,··· ,θτ ) = E
[ (
<∂τ
θ1,θ2,··· ,θτ − ∂τ
θ1,θ2,··· ,θτ
)2 ]
, (34)

where ∂τ θ1,θ2,··· ,θτ is the analytical derivative equation (24), the estimator <∂τ
θ1,θ2,··· ,θτ is either given by the parameter-shift rule or the finite-difference approximation.

5.3 Numerical Simulation the MSE

We investigate the precision of the two estimators based on the parameter-shift rule
and finite-difference approximation for the first-order derivatives. Let us consider
the example circuit shown in Fig. 2 and measure the expectation value <Z ⊗ Z> as

f (θ) = <ψ(θ)|Z ⊗ Z|ψ(θ)>
= 1
2
[
1 + cos(θx ) + (
cos(θx ) − 1
)
cos(θy )
]
. (35)

Analytically, we have

∇f (θ) =
⎛
⎝
∂θx f
∂θy f
∂θzf
⎞
⎠ =
⎛
⎜
⎝
− cos2 (
θy
2 )sin (θx )
sin2 ( θx
2 )sin (θy )
0
⎞
⎟
⎠ . (36)

For the finite-difference estimator, we compute the partial derivatives {<∂θj f (θ)}
by using Eq. (32) and investigate the MSE (34) as a function of the step size h. For
the parameter-shift estimator, <∂θx f (θ) and <∂θzf (θ) are given by the two-term (9)
while<∂θy f (θ) is given by the four-term (12). We choose the shift α of the two-term
the same as step size h and fix the four-term coefficients as above. The simulation
runs in Qiskit’s Aer simulator, and the expectation values are given after 103 shots,
and other 103 repetitions are used to determine the average of the MSE.

The results are shown in the main Fig. 3. The MSE for the parameter-shift
estimator gradually reduces and saturates at the optimal value when increasing
the step size. Similarly, the finite-difference curve reduces, then matches with the
parameter-shift curve, and finally deviates from the expected behavior since the
Taylor expansion is no longer viable for large step sizes [13]. For small step sizes,
the two estimators do not coincide because their <∂θy f (θ) are different, i.e., one is
varied with h, and one is fixed. Details are shown in the inset Fig. 3.

5.4 Variational Quantum Eigensolver

In this subsection, we demonstrate our approach in the variational quantum
eigensolver (VQE) to find the ground state of a given system. We consider the
Lipkin-Meshkov-Glick (LMG) model [21] consisting of N spin-1/2 particles with
infinite-range interaction and exposing under a magnetic field along the z axis, as
shown in Fig. 4a. The interaction Hamiltonian is given by

Fig. 3 Log-log plot of the mean-square error (MSE) versus the step size h for two estimators
parameter-shift and finite-difference. The shaded areas show the standard deviation, and the solid
lines represent the average MSE over 103 repetitions. For each MSE, we perform 103 shots to
compute the expectation value. Insets: the plot of MSE for partial differences<∂θx f (θ) and<∂θy f (θ)

Fig. 4 (a) The LMG model with N spin-1/2 particles that obeys the infinite-range interaction and
is placed under the magnetic field along the z axis. (b) The learning circuit used in VQE consists
of (RX − RZ − RX)×L gates. The expectation value <H> is measured and be the cost function.
(c) The cost function versus iterations for γ = 0, −0.05, −0.1 and the theoretical bounds are
{−0.10583, −0.269744, −0.509973}, respectively. (d) The minimum energy for γ from −0.1 to
0.1. The solid curve is the exact result from theoretical analysis by diagonalizing the Hamiltonian
(37), and the dotted curve is obtained from the generalize parameter-shift rule

H = −2γ Jz − 2λ
N
(
J 2
x − J 2
y
)
, (37)

where γ is an effective magnetic field, λ is the spin-spin exchange coupling, and
Jk, (k = x, y, z) is a collective angular momentum

Jk = 1
2
E
N
l=1
I ⊗···⊗ σ(l)
k ⊗···⊗ I , (38)

where σ(l) k is a Pauli matrix at the site l. The purpose is to find the ground state of
the Hamiltonian (37) by using the VQE and compare it with the theoretical result.

The learning circuit is shown in Fig. 4b with the initial state is ρ = q1 ⊗ q2 ⊗
···⊗ qN . The training ansatz U(θ) reads

U(θ) = (
RX(θ3)RZ(θ2)RX(θ1)

)×L, (39)

with several layers L. Here, RX and RZ are collective rotation gates [17] that
are sufficient to generate any quantum state in the Bloch sphere, and θ = (
θ1, θ2, θ3, ··· , θ3L)
are training parameters. The quantum state evolves to ρ(θ) =
U(θ)ρU†(θ) under the action of U(θ). Finally, we measure the expectation value
of the Hamiltonian and define the cost function as

C(θ) = <H> = Tr[
H · ρ(θ)
]
, (40)

from which its minimum value is the lowest energy, and the corresponding state
ρ(θ) becomes the ground state.

The simulation is executed in the tqix code [17]. Here we fit N = 5, L = 5
layers, and λ = 0.05. We also add random noises in every quantum gates. We train
the model in 30 iterations with the standard gradient descent (SGD) optimizer

θ(t+1) = θ(t) − η∇θC(θ), (41)

where learning rate is η = 0.4, and ∇θC(θ) is calculated via the generalize
parameter-shift rule (see detailed in the Appendix).

Figure 4c displays the cost function versus the number of iterations, where
it moves toward the theoretical bound after a certain number of iterations. The
minimum energy given by the VQE and a comparison with the theoretical result
are shown in Fig. 4d. The plots are given for different γ from -0.1 to +0.1, offering
an excellent match between these two approaches.

6 Conclusion

We introduced the Lagrange interpolation approach for the general parameter-shift
rule. This method is based on the interpolation of any given quantum gate into
a polynomial form of its generator. We thus derived the general multiple-term
parameter-shift rule and the higher-order derivative. We provided the numerical
benchmarking via the mean-square error and further applied to the variational
quantum eigensolver. Our approach can apply to various collective rotation gates
in spin ensemble-based quantum computers.
The code is available in https://github.com/vutuanhai237/LagrangeGPSR.

Appendix

Generalized Parameter-Shift Rule for VQE

We compute the generalized parameter-shift rule for two quantum gates RX and
RZ in the circuit Fig. 4b. They read

RX(x) = e−ixJx , and RZ(x) = e−ixJz . (42)

Since both Jx and Jz have the same eigenvalues, hereafter, we derive for RZ
while RX can be done the same. The eigenvalues of Jz for N = 5 include
λ = {−5/2, −3/2, −1/2, 1/2, 3/2, 5/2}. Hence, n = 6 and m = L2n/4. − 1 = 15.
Apply Algorithms 1 with random {αk}15k=1 ∈ [0, 2π], we find the corresponding
{dk}. The derivatives associated RZ is given from Eq. (22) as

∂
∂x RZ(x) = −i
E
15
k=1
dk
[
RZ(x + αk) − RZ(x − αk)
]
. (43)

Note that here we replace −i/2 from Eq. (22) by −i because RZ contains parameter
x instead of x/2. Doing similarly for RX, and finally, we obtain ∂θ <H>.

References

1. J. D. Hidary, Quantum Computing: An Applied Approach, Springer Cham, 2019.

2. Y. Alexeev, D. Bacon, K. R. Brown, R. Calderbank, L. D. Carr, F. T. Chong, B. DeMarco,
D. Englund, E. Farhi, B. Fefferman, A. V. Gorshkov, A. Houck, J. Kim, S. Kimmel, M. Lange,
S. Lloyd, M. D. Lukin, D. Maslov, P. Maunz, C. Monroe, J. Preskill, M. Roetteler, M. J.
Savage, J. Thompson, Quantum computer systems for scientific discovery, PRX Quantum 2
(2021) 017001. doi:10.1103/PRXQuantum.2.017001. URL https://link.aps.org/doi/10.1103/
PRXQuantum.2.017001

3. J. Preskill, Quantum Computing in the NISQ era and beyond, Quantum 2 (2018) 79.
doi:10.22331/q-2018-08-06-79. URL https://doi.org/10.22331/q-2018-08-06-79

4. M. Cerezo, A. Arrasmith, R. Babbush, S. C. Benjamin, S. Endo, K. Fujii, J. R. McClean,
K. Mitarai, X. Yuan, L. Cincio, P. J. Coles, Variational quantum algorithms, Nature Reviews
Physics 3 (9) (2021) 625–644. doi:10.1038/s42254-021-00348-9. URL https://doi.org/10.
1038/s42254-021-00348-9

5. K. Mitarai, M. Negoro, M. Kitagawa, K. Fujii, Quantum circuit learning, Phys. Rev. A
98 (2018) 032309. doi:10.1103/PhysRevA.98.032309. URL https://link.aps.org/doi/10.1103/
PhysRevA.98.032309

6. M. Schuld, V. Bergholm, C. Gogolin, J. Izaac, N. Killoran, Evaluating analytic gradients on
quantum hardware, Phys. Rev. A 99 (2019) 032331. doi:10.1103/PhysRevA.99.032331. URL
https://link.aps.org/doi/10.1103/PhysRevA.99.032331

7. C. P. Williams, Explorations in Quantum Computing, Springer London, 2011.

8. M. A. Nielsen, I. L. Chuang, Quantum Computation and Quantum Information, Cambridge,
2010.

9. G.-L. R. Anselmetti, D. Wierichs, C. Gogolin, R. M. Parrish, Local, expressive, quantum-num-
ber-preserving VQE ansätze for fermionic systems, New Journal of Physics 23 (11) (2021)
113010. doi:10.1088/1367-2630/ac2cb3. URL https://doi.org/10.1088/1367-2630/ac2cb3

10. D. Wierichs, J. Izaac, C. Wang, C. Y.-Y. Lin, General parameter-shift rules for quantum
gradients, Quantum 6 (2022) 677. doi:10.22331/q-2022-03-30-677. URL https://doi.org/10.
22331/q-2022-03-30-677

11. O. Kyriienko, V. E. Elfving, Generalized quantum circuit differentiation rules, Phys. Rev.
A 104 (2021) 052417. doi:10.1103/PhysRevA.104.052417. URL https://link.aps.org/doi/10.
1103/PhysRevA.104.052417

12. A. F. Izmaylov, R. A. Lang, T.-C. Yen, Analytic gradients in variational quantum algorithms:
Algebraic extensions of the parameter-shift rule to general unitary transformations, Phys. Rev.
A 104 (2021) 062443. doi:10.1103/PhysRevA.104.062443. URL https://link.aps.org/doi/10.
1103/PhysRevA.104.062443

13. A. Mari, T. R. Bromley, N. Killoran, Estimating the gradient and higher-order derivatives on
quantum hardware, Phys. Rev. A 103 (2021) 012405. doi:10.1103/PhysRevA.103.012405.
URL https://link.aps.org/doi/10.1103/PhysRevA.103.012405

14. C. Moler, C. Van Loan, Nineteen dubious ways to compute the exponential of a matrix, SIAM
Review 20 (4) (1978) 801–836. arXiv:https://doi.org/10.1137/1020098, doi:10.1137/1020098.
URL https://doi.org/10.1137/1020098

15. L. B. Ho, N. Imoto, Full characterization of modular values for finite-dimensional systems,
Physics Letters A 380 (25) (2016) 2129–2135. doi:https://doi.org/10.1016/j.physleta.2016.05.
005. URL https://www.sciencedirect.com/science/article/pii/S0375960116301773

16. S. Debnath, N. M. Linke, C. Figgatt, K. A. Landsman, K. Wright, C. Monroe, Demonstration
of a small programmable quantum computer with atomic qubits, Nature 536 (7614) (2016)
63–66. doi:10.1038/nature18648. URL https://doi.org/10.1038/nature18648

17. N. T. Viet, N. T. Chuong, V. T. N. Huyen, L. B. Ho, tqix.pis: A toolbox for quantum dynamics
simulation of spin ensembles in dicke basis, Computer Physics Communications 286 (2023)
108686. doi:https://doi.org/10.1016/j.cpc.2023.108686. URL https://www.sciencedirect.com/
science/article/pii/S0010465523000310

18. J. Liu, H. Yuan, X.-M. Lu, X. Wang, Quantum fisher information matrix and multiparameter
estimation, Journal of Physics A: Mathematical and Theoretical 53 (2) (2019) 023001.
doi:10.1088/1751-8121/ab5d4d. URL https://doi.org/10.1088/1751-8121/ab5d4d

19. V. T. Hai, L. B. Ho, Universal compilation for quantum state tomography, Scientific Reports
13 (1) (2023) 3750. doi:10.1038/s41598-023-30983-4. URL https://doi.org/10.1038/s41598-
023-30983-4

20. I. A. S. Milton Abramowitz, Handbook of Mathematical Functions: with Formulas, Graphs,
and Mathematical Tables, Courier Corporation, 1965.

21. H. Lipkin, N. Meshkov, A. Glick, Validity of many-body approximation methods for a solvable
model: (i). exact solutions and perturbation theory, Nuclear Physics 62 (2) (1965) 188–
198. doi:https://doi.org/10.1016/0029-5582(65)90862-X. URL https://www.sciencedirect.
com/science/article/pii/002955826590862X


