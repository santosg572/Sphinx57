Chapter 2 Linear Systems
========================

This chapter deals with linear systems of ordinary differential equations (ODEs),
both homogeneous and nonhomogeneous equations. Linear systems are extremely
useful for analyzing nonlinear systems. The main emphasis is given for finding
solutions of linear systems with constant coefficients so that the solution methods
could be extended to higher-dimensional systems easily. The well-known methods
such as eigenvalue–eigenvector method and the fundamental matrix method have
been described in detail. The properties of fundamental matrix, the fundamental
theorem, and important properties of exponential matrix function are given in this
chapter. It is important to note that the set of all solutions of a linear system forms a
vector space. The eigenvectors constitute the solution space of the linear system. The
general solution procedure for linear systems using fundamental matrix, the concept
of generalized eigenvector, solutions of multiple eigenvalues, both real and complex,
are discussed.

2.1 Linear Systems

Consider a linear system of ordinary differential equations as follows:

.. math::

   \left.\begin{matrix}
   \frac{dx_1}{dt} = \dot{x}_1 = a_{11}x_1 + a_{12}x_2 + ··· + a_{1n} xn + b1 \\
   \frac{dx_2}{dt} = \dot{x}_2 = a_{21}x_1 + a_{22}x_2 + ··· + a_{2n} xn + b2 \\
   \frac{dx_3}{dt} = \dot{x}_3 = a_{31}x_1 + a_{32}x_2 + ··· + a_{3n} xn + b3 \\
   ... \\
   \frac{dx_n}{dt} = \dot{x}_n = a_{n1}x_1 + a_{n2}x_2 + ··· + a_{nn} xn + bn
   \end{matrix}\right\} 


where :math:`a_{ij}, b_j` (i, j = 1, 2,..., n) are all given constants. The system (2.1) can be
written in matrix notation as

.. math::

   \dot{x} = ̇ = A x + b

, (2.2)

where :math:`x(t) = (x_1(t), x_2(t), ... , x_n(t))^t`, :math:`b  = (b_1, b_2,..., b_n)^t` are the 
column vectors and :math:`A = [a_{ij}]_{n \times n}` is the square matrix of order n, known as the 
coefficient
matrix of the system. The system (2.2) is said to be homogeneous if b = 0; that is,
if all :math:`b_i`’s are identically zero. On the other hand, if :math:`b \neq = 0`, that is, if at least one
:math:`b_i` is nonzero, then the system is called nonhomogeneous. We consider first linear
homogeneous system as

.. math::

   \dot{x}̇ = A x

 (2.3)

A differentiable function x(t) is said to be a solution of (2.3) if it satisfies the
equation :math:`\dot{x} = A x`. Let :math:`x_1(t)` and :math:`x_2(t)` be two solutions of (2.3). Then 
any linear combination :math:`x(t) = c_1x_1(t) + c_2x_2(t)` of :math:`x_1(t)` and :math:`x_2(t)`
 is also a solution of (2.3).

This can be shown very easily as below.

.. math::

   \dot{x} = c_1 \dot{x}_1 + c_2 \dot{x}_2

and so

.. math::

   A x = A(c_1x_1+ c_2x_2) = c_1 Ax_1+ c_2 Ax_2 = c_1 \dot{x}_1 + c_2 \dot{x}_2 = \dot{̇x}


The solution :math:`x = c_1x_1+ c_2x_2` is known as general solution of the system (2.3).
Thus, the general solution of a system is the linear combination of the set of all
solutions of that system (superposition principle). Since the system is linear, we may
consider a nontrivial solution of (2.3) as

.. math::

   x(t) = \alpha e^{λt}

, (2.4)

where α  is a column vector with components α

∼ = (α1, α2,...,αn)

t and λ is a

number. Substituting (2.4) into (2.3) we obtain
λ α
∼ eλt = A α
∼ eλt
or, (A − λI ) α
∼ = 0
∼
, (2.5)
where I is the identity matrix of order n. Equation (2.5) gives a nontrivial solution if
and only if

det(A − λI ) = 0.

On expansion, Eq. (2.6) gives a polynomial equation of degree n in λ, known
as the characteristic equation of matrix A. The roots of the characteristic equation
(2.6) are called the characteristic roots or eigenvalues or latent roots of A. The
vector α
∼
, , which is a nontrivial solution of (2.5), is known as an eigenvector of A
corresponding to the eigenvalue λ. If α

∼ is an eigenvector of a matrix A corresponding

to an eigenvalue λ, then x
∼
(t) = eλt α
∼ is a solution of the system .
x
∼ = A x
∼
. The
set of linearly independent eigenvectors constitutes a solution space of the linear
homogeneous ordinary differential equations which is a vector space. All properties
of vector space hold good for the solution space. We now discuss the general solution
of a linear system below.

2.2 Eigenvalue–Eigenvector Method

As we know, the solution of a linear system constitutes a linear space and the solu-
tion is formed by the eigenvectors of the matrix. There may have four possibilities

according to the eigenvalues and corresponding eigenvectors of matrix A, Friedberg
and Insel [1], Hoffman and Kunze [2]. We proceed now case-wise as follows.
Case I: Eigenvalues of A Are Real and Distinct

If the coefficient matrix A has real distinct eigenvalues, then it has linearly indepen-
dent (L.I.) eigenvectors. Let α

∼ 1, α
∼ 2,..., α
∼ n be the eigenvectors corresponding to

the eigenvalues λ1, λ2, λn of matrix A. Then each x
∼ j
(t) = α
∼ j eλj t
, j = 1, 2, ..., n is

a solution of x ̇
∼ = A x
∼
. The general solution is a linear combination of the solutions

x
∼ j
(t) and is given by

x
∼
(t) = ∑n
j=1
c j x
∼ j
(t),

where c1, c2,..., cn are arbitrary constants. In R2, the solution can be written as

x
∼
(t) = ∑
2
j=1
c j α
∼ j eλj t = c1 α

∼ 1eλ1t + c2 α
∼ 2eλ2t
.

Case II: Eigenvalues of A Are Real but Repeated
In this case matrix A may have either n linearly independent eigenvectors or only
one or many (<n) linearly independent eigenvectors corresponding to the repeated
eigenvalues. The generalized eigenvectors have been used for linearly independent
eigenvectors. We discuss this case in the following two subcases.

Subcase 1: Matrix A Has Linearly Independent Eigenvectors
Let α
∼ 1, α
∼ 2,..., α
∼ n be n linearly independent eigenvectors corresponding to the
repeated real eigenvalue λ of matrix A. In this case the general solution of the linear
system is given by

x
∼
(t) = ∑n
i=1
ci α
∼ i eλt
.

Subcase 2: Matrix A Has Only One or Many (<n) Linearly Independent
Eigenvectors
First, we give the definition of generalized eigenvector of A. Let λ be an eigenvalue
of the n × n matrix A of multiplicity m ≤ n. Then for k = 1, 2, ..., m, any nonzero
solution of the equation (A − λI )k v
∼ = 0
∼ is called a generalized eigenvector of A.
For simplicity consider a two-dimensional system. Let the eigenvalues be repeated
but only one eigenvector, say α

∼ 1 be linearly independent. Let α

∼ 2 be a generalized

eigenvector of the 2 × 2 matrix A. Then α

∼ 2 can be obtained from the relation

(A − λI ) α
∼ 2 = α
∼ 1 ⇒ A α
∼ 2 = λ α
∼ 2 + α
∼ 1. So the general solution of the system

is given by
x
∼
(t) = c1 α
∼ 1eλt + c2(t α
∼ 1eλt + α
∼ 2eλt ).

Similarly, for an n × n matrix A, the general solution may be written as x
∼
(t) = ∑n
i=1 ci x
∼i
(t), where
x
∼ 1(t) = α
∼ 1eλt
,

x
∼ 2(t) = t α
∼ 1eλt + α
∼ 2eλt
,

x
∼ 3(t) = t 2
2! α
∼ 1eλt + t α
∼ 2eλt + α
∼ 3eλt
,

.
.
.
x
∼ n(t) = t n−1
(n−1)! α
∼ 1eλt + ··· + t 2
2! α
∼ n−2eλt + t α
∼ n−1eλt + α
∼ neλt
.

Case III: Matrix A Has Nonrepeated Complex Eigenvalues
Suppose the real n × n matrix A has m-pairs of complex eigenvalues a j ± ibj , j =
1, 2,..., m. Let α
∼ j ±i β
∼ j , j = 1, 2,..., m denote the corresponding eigenvectors.

Then the solution of the system x ̇
∼
(t) = A x
∼
(t)for these complex eigenvalues is given

by

x
∼
(t) = ∑m
j=1
c j u
∼ j + dj v
∼ j

where u
∼ j = exp(a j t){α

∼ j cos(bj t) − β

∼ j sin(bj t)}, v

∼ j = exp(a j t){α

∼ j sin(bj t) +

β
∼ j cos(bj t)} and c j , dj (j = 1, 2,..., m) are arbitrary constants. We discuss each
of the above cases through specific examples below.
Example 2.1 Find the general solution of the following linear homogeneous system
using eigenvalue–eigenvector method: x  ̇ = 5x + 4y, y  ̇ = x + 2y.
Solution In matrix notation, the system can be written as x ̇
∼ = A x
∼
, where x
∼ = (
x y )T

and A =
(54
1 2)
. The eigenvalues of A satisfy the equation
det(A − λI ) = 0
⇒
|
|
|
|
5 − λ 4
12 − λ
|
|
|
| = 0
⇒ (5 − λ)(2 − λ) − 4 = 0
⇒ λ2 − 7λ + 6 = 0.

The roots of the characteristic equation λ2−7λ+6 = 0 are λ = 1, 6. So the eigen-
values of A are real and distinct. We shall now find the eigenvectors corresponding

to these eigenvalues.
Let e
∼ =
(e1
e2
)
be the eigenvector corresponding to the eigenvalue λ1 = 1. Then
(A − I ) e
∼ = 0
∼
⇒
(5 − 14
12 − 1
)(e1
e2
)
=
(0
0
)

⇒
(4e1 + 4e2
e1 + e2
)
=
(0
0
)
⇒ 4e1 + 4e2 = 0, e1 + e2 = 0.

We can choose e1 = 1, e2 = −1. So, the eigenvector corresponding to the
eigenvalue λ1 = 1 is e
∼ =
( 1
−1
)
.

Again, let e
∼
' =
(e'
1
e'
2
)
be the eigenvector corresponding to the eigenvalue λ2 = 6.

Then

(A − 6I ) e
∼
' = 0
∼

⇒
(5 − 64
12 − 6
)(e'
1
e'
2
)
=
(0
0
)

⇒
(−e'
1 + 4e'
2
e'
1 − 4e'
2
)
=
(0
0
)

⇒ −e'
1 + 4e'
2 = 0e'
1 − 4e'
2 = 0.

We can choose e'
1 = 4, e'

2 = 1. So, the eigenvector corresponding to the eigen-
value λ2 = 6 is e

∼
' =
(4
1
)
. The eigenvectors e
∼
, e
∼
' are linearly independent. Hence

the general solution of the system is given as

x
∼
(t) = c1 e
∼ et + c2 e
∼
'
e6t = c1
( 1
−1
)
et + c2
(4
1
)
e6t

or, x(t) = c1et + 4c2e6 t
y(t) = − c1et + c2e6 t
)
, where c1, c2 are arbitrary constants.
Example 2.2 Find the general solution of the linear system.

d
dt
( x
y
)
=
(30
0 3)( x
y
)
.

Solution The characteristic equation of matrix A is
det(A − λI ) = 0
or, λ = 3, 3.

So, the eigenvalues of A are 3, 3, which are real and repeated. Clearly, e
∼ 1 =

(
1 0 )T and e
∼ 2 = (
0 1 )T are two linearly independent eigenvectors corresponding
to the repeated eigenvalue λ = 3. Thus, the general solution of the system is

x
∼
(t) = c1 e
∼ 1eλ t + c2 e
∼ 2eλ t

⇒
( x(t)
y(t)
)
= c1
(1
0
)
e3t + c2
(0
1
)
e3t =
(c1e3t
c2e3t
)
.

⇒ x(t) = c1e3t

, y(t) = c2e3t

, where c1, c2 are arbitrary constants.
Example 2.3 Find the general solution of the system x  ̇ = 3x −4y, y  ̇ = x − y using
eigenvalue-eigenvector method.
Solution The characteristic equation of matrix A is

det(A − λI ) = 0
⇒ λ = 1, 1.
So, matrix A has repeated real eigenvalues λ = 1, 1.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ = 1. Then
(A − I ) e
∼ = 0
∼

⇒ 2e1 − 4e2 = 0, e1 − 2e2 = 0.

We can choose e1 = 2, e2 = 1. Therefore, e
∼ = (
2 1 )T
.

Let g
∼ = (
g1 g2
)T be the generalized eigenvector corresponding to the eigenvalue

λ = 1. Then

(A − I ) g
∼ = e
∼

⇒ 2g1 − 4g2 = 2, g1 − 2g2 = 1.

We can choose g2 = 1, g1 = 3. Therefore g
∼ = (
3 1 )T
.
Therefore, the general solution of the system is

x
∼
(t) = c1 e
∼ et + c2
(
e
∼ t et + g
∼ et
)

or,
( x(t)
y(t)
)
= c1
(2
1
)
et + c2
(2
1
)
tet + c2
(3
1
)
et

or, x(t) = {2c1 + (2t + 3)c2}et
y(t) = {c1 + (t + 1)c2}et
)
, where c1 and c2 are arbitrary constants.
Example 2.4 Find the general solution of the linear system x  ̇ = 10x − y, y  ̇ =
25x + 2y.
Solution Given system can be written as

x ̇
∼ = A x
∼
, where A =
(10 −1
25 2 )
and x
∼ =
( x
y
)
.

The characteristic equation of matrix A is
det(A − λI ) = 0
⇒ λ = 6 ± 3i.

Therefore, matrix A has a pair of complex conjugate eigenvalues 6 ± 3i.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ = 6 + 3i.

Then

(A − (6 + 3i)I ) e
∼ = 0
∼

⇒ (4 − 3i )e1 − e2 = 0, 25e1 − (4 + 3i )e2 = 0.

A nontrivial solution of this system is e1 = 1, e2 = 4 − 3i.e1 = 1, e2 = 4 − 3i.
Therefore e
∼ =
( 1
4 − 3i
)
= α
∼ 1 + i α
∼ 2, where α
∼ 1 =
(1
4
)
and α
∼ 2 =
( 0
−3
)
.
Similarly, the eigenvector corresponding to the eigenvalue λ = 6 − 3i is '
e
∼ =

(
14 + 3i
)T = α
∼ 1 − i α
∼ 2. Therefore,

u
∼ 1 = ea t(
α
∼ 1 cos bt − α
∼ 2 sin bt)
= e6t
((1
4
)
cos 3t −
( 0
−3
)
sin 3t
)

and
v
∼ 1 = eat(
α
∼ 1 sin bt + α
∼ 2 cos bt)
= e6t
((1
4
)
sin 3t +
( 0
−3
)
cos 3t
)
.

Therefore, the general solution is
x
∼(t) = c1 u
∼ 1 + d1 v
∼ 1
= e6t
(( 1
4
)
c1 cos 3t −
(
0
−3
)
c1 sin 3t
)
+ e6t
(( 1
4
)
d1 sin 3t +
(
0
−3
)
d1 cos 3t
)

= e6t
(
c1 cos 3t + d1 sin 3t
(4c1 − 3d1) cos 3t + (3c1 + 4d1)sin 3t
)

⇒ x(t) = e6t (c1 cos 3t + d1 sin 3t), y(t) = e6t [(4c1 − 3d1) cos 3t + (3c1 + 4d1)sin 3t]
where c1 and d1 are arbitrary constants.
Example 2.5 Find the solution of the system x  ̇ = x − 5y, y  ̇ = x − 3y satisfying
the initial condition x(0) = 1, y(0) = 1. Describe the behavior of the solution as t →
∞.
Solution The characteristic equation of matrix A is
det(A − λI ) = 0
⇒ λ = −1 ± i.

So, matrix A has a pair of complex conjugate eigenvalues (−1 ± i).
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ = − 1

+ i. Then

(A − (−1 + i )I ) e
∼ = 0
∼

⇒ (2 − i )e1 − 5e2 = 0, e1 − (2 + i )e2 = 0.

A nontrivial solution of this system is
e1 = 2 + i, e2 = 1.

Therefore e
∼ = (
2 + i 1
)T
= α
∼ 1+i α
∼ 2, where α
∼ 1 = (
2 1 )T and α
∼ 2 = (
1 0 )T
.
Similarly, the eigenvector corresponding to the eigenvalue λ = − 1 − i is '
e
∼ =

(
2 − i 1
)T = α
∼ 1 − i α
∼ 2.

∴ u
∼ 1eat(
α
∼ 1 cos bt − α
∼ 2 sin bt)
= e−t
((2
1
)
cos t −
(1
0
)
sin t
)
and

v
∼ 1 = eat(
α
∼ 1 sin bt + α
∼ 2 cos bt)
= e−t
((2
1
)
sin t +
(1
0
)
cos t
)
.

Therefore, the solution of the system is
x
∼
(t) = x(0) u
∼ 1 + y(0) v
∼ 1

= e−t
((2
1
)
cos t −
(1
0
)
sin t
)
+ e−t
((2
1
)
sin t +
(1
0
)
cos t
)

= e−t
((2
1
)
(cos t + sin t) +
(1
0
)
(cos t − sin t)
)
.

When t → ∞, e−t → 0. So, in this case x
∼
(t) → 0
∼
, that is, the solution of the

system is stable in the usual sense.
Example 2.6 Solve the system x ̇
∼ = A x
∼
, where.

A =
⎛
⎝
1 −33
3 −53
6 −64
⎞
⎠.

Solution The characteristic equation of matrix A is
det(A − λI ) = 0
⇒ λ = 4, −2, −2.

So (−2) is a repeated eigenvalue of A. The eigenvector for the eigenvalue λ1 = 4
is given as (

112 )T . The eigenvector corresponding to the repeated eigenvalue

λ2 = λ3 = −2 is (
e1 e2 e3
)T such that A e
∼ = 0
∼

which is equivalent to 3e1 −3e2 +3e3 = 0, 3e1 −3e2 +3e3 = 0, 6e1 −6e2 +
6e3 = 0;
that is, e1 −e2 +e3 = 0. We can choose e1 = 1, e2 = 1 and e3 = 0, and so we can
take one eigenvector as (

110 )T . Again, we can choose e1 = 0, e2 = 1 and e3 = 1.

Then we obtain another eigenvector (

0 1 1 )T . Clearly, these two eigenvectors are

linearly independent. Thus, we have two linearly independent eigenvectors corre-
sponding to the repeated eigenvalue − 2. Hence, the general solution of the system

is given by
x
∼
(t) = c1
(
112 )T
e4t + c2
(
110 )T
e−2t + c3
(
0 1 1 )T
e−2t
,

where c1, c2, and c3 are arbitrary constants.
Example 2.7 Solve the system x ̇
∼ = A x
∼
, A =
(
a
∼1
a
∼2
a
∼3
a
∼4
)
, where

a
∼1
= (
−1 −1 0 0 )T
, a
∼2
= (
1 −1 0 0 )T
,

a
∼3
= (
000 −2
)T
, a
∼4
= (
0 0 1 2 )T
.

Solution Here matrix A has two pair of complex conjugate eigenvalues λ1 = −1±i
and λ2 = 1 ± i. The corresponding pair of eigenvectors is

w
∼ 1 = α
∼ 1 ± i β
∼ 1 = (
0 1 0 0 )T ± i
(
1 0 0 0 )T and

w
∼ 2 = α
∼ 2 ± i β
∼ 2 = (
00 −1 1 )T ± i
(
0 0 1 0 )T
.
Therefore, the general solution of the system is expressed as
x
∼
(t) = ∑
2
j=1
c j u
∼ j + dj v
∼ j

= c1e−t
{(
0 1 0 0 )T
cos t − (
1 0 0 0 )T sin t
}
+ c2et
{(
00 −1 1 )T
cos t

(
0 0 1 0 )T sin t
}
+ d1e−t
{(
0 1 0 0 )T sin t + (
1 0 0 0 )T
cos t
}

+ d2et
{(
00 −1 1 )T sin t + (
0 0 1 0 )T
cos t
}

=
⎛
⎜
⎜
⎝
e−t (d1 cos t − c1 sin t)
e−t (c1 cos t + d1 sin t)
et
{(d2 − c2) cos t − (d2 + c2)sin t}
et (c2 cos t + d2 sin t)

⎞
⎟
⎟
⎠
where c j , dj (j = 1, 2) are arbitrary constants.

2.3 Fundamental Matrix
A set {x
∼1
(t), x
∼2
(t), . . . , x
∼n
(t)} of solutions of a linear homogeneous system x ̇
∼ = A x
∼
is said to be a fundamental set of solutions of that system if it satisfies the following
two conditions:
(i) The set {x
∼1
(t), x
∼2
(t), ..., x
∼n
(t)} is linearly independent, that is, for

c1, c2,..., cn ∈ R, c1x
∼1
+c2x
∼2
+···+cn x
∼n
= 0
∼ ⇒ c1 = c2 = ··· = cn = 0.

(ii) For any solution x
∼
(t) of the system x ̇
∼ = A x
∼
, there exist c1, c2,..., cn ∈ R such

that x
∼
(t) = c1x
∼1
(t) + c2x
∼2
(t) + ··· + cn x
∼n
(t), ∀t ∈ R.

The solution, expressed as a linear combination of a fundamental set of solutions
of a system, is called a general solution of the system.
Let {x
∼1
(t), x
∼2
(t), . . . , x
∼n
(t)} be a fundamental set of solutions of the system x ̇
∼ =

A x
∼ for t ∈ I = [a, b]; a, b ∈ R. Then the matrix

Φ(t) =
(
x
∼1
(t), x
∼2
(t), . . . , x
∼n
(t)
)
is called a fundamental matrix of the system x ̇
∼ = A x
∼
, x
∼ ∈ Rn. Since the set

{x
∼1
(t), x
∼2
(t), . . . , x
∼n
(t)} is linearly independent, the fundamental matrix Φ(t) is

nonsingular. Now the general solution of the system is

x
∼
(t) = c1 x
∼ 1(t) + c2 x
∼ 2(t) + ··· + cn x
∼ n(t)

=
(
x
∼1
(t), x
∼ 2(t), . . . , x
∼ n(t)
)
⎛
⎜
⎜
⎜
⎝
c1
c2
.
.
.
cn
⎞
⎟
⎟
⎟
⎠

= Φ(t) c
∼

where c
∼ = (c1, c2,... cn)T is a constant column vector. If the initial condition is
x
∼
(0) = x
∼0
, then
Φ(0) c
∼ = x
∼ 0
⇒ c
∼ = Φ−1 (0) x

∼ 0[Since Φ(t)is nonsingular for all t].

Thus, the solution of the initial value problem x ̇
∼ = A x
∼ with the initial conditions

x
∼
(0) = x
∼0
can be expressed in terms of the fundamental matrix Φ(t) as

x
∼
(t) = Φ(t)Φ−1 (0)x
∼0
. (2.7)
Note that two different homogeneous systems cannot have the same fundamental
matrix. Again, if Φ(t) is a fundamental matrix of x ̇
∼ = A x
∼
, then for any constant C,

CΦ(t) is also a fundamental matrix of the system.
Example 2.8 Find the fundamental matrix of the system x ̇
∼ = A x
∼

, where A = ( 1 −2
−3 2 )
. Hence find its solution.
Solution The characteristic equation of matrix A is
|A − λI| = 0
⇒ λ = −1, 4.

So, the eigenvalues of matrix A are − 1, 4, which are real and distinct.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ1 = −1.

Then

(A + I ) e
∼ = 0
∼

⇒ 2e1 − 2e2 = 0, −3e1 + 3e2 = 0.
A nontrivial solution of this system is e1 = 1, e2 = 1. Therefore, e
∼ = (
1 1 )T
. e
∼ =

(
1 1 )T
.
Again, let g
∼ = (
g1 g2
)T be the eigenvector corresponding to the eigenvalue

λ2 = 4. Then

(A − 4I ) g
∼ = 0
∼
⇒ 3g1 + 2g2 = 0

Choose g1 = 2, g2 = −3. Therefore, g
∼ = (
2 −3
)T
.

Therefore, the eigenvectors corresponding to the eigenvalues λ = − 1, 4
are respectively (

1 1 )T and (
2 −3
)T , which are linearly independent. So, two

fundamental solutions of the system are

x
∼1
(t) =
(1
1
)
e−t
, x
∼2
(t) =
( 2
−3
)
e4t

and a fundamental matrix of the system is

Φ(t) =
(
x
∼1
(t) x
∼2
(t)
)
=
(e−t 2e4t
e−t −3e4t
)
.

Now Φ(0) =
(12
1 −3
)
and so Φ−1(0) = 1
5
(32
1 −1
)
.
Therefore, the general solution of the system is given by
x
∼
(t) = Φ(t)Φ−1 (0) x
∼ 0 = 1
5
(e−t 2e4t
e−t −3e4t
)(32
1 −1
)
x
∼ 0

= 1
5
(3e−t + 2e4t 2e−t − 2e4t
3e−t − 3e4t 2e−t + 3e4t
)
x
∼ 0.

2.3.1 General Solution of Linear Systems
Consider a simple linear equation

x  ̇ = ax (2.8)
with initial condition x(0) = x0, where a and x0 are certain constants. The solution
of this initial value problem (IVP) is given as x(t) = x0eat . Then we may expect that
the solution of the initial value problem for n × n system

x ̇
∼ = A x
∼ with x
∼
(0) = x
∼ 0 (2.9)

can be expressed in term of exponential matrix function as

x
∼
(t) = eAt x
∼0

(2.10)
where A is an n × n matrix. Comparing (2.10) with the solution obtained by the
fundamental matrix, we have the relation

eAt = Φ(t)Φ−1 (0). (2.11)

Thus we see that if Φ(t) is a fundamental matrix of the system x ̇
∼ = A x
∼
, then
Φ(0) is invertible and eAt = Φ(t)Φ−1(0). Note that if Φ(0) = I , then Φ−1(0) = I
and so, eAt = Φ(t)I = Φ(t).
Example 2.9 Does Φ(t) =

( 2et −e−3t
−4et 2e−3t
)
a fundamental matrix for a system

x ̇
∼ = A x
∼
?
Solution We know that if Φ(t) is a fundamental matrix, then Φ(0) is invertible.
Here Φ(t) =

( 2et −e−3t
−4et 2e−3t
)
. So, Φ(0) =
( 2 −1
−4 2 )
.

Since det(Φ(0)) = 4 − 4 = 0, Φ(0) is not invertible and hence the given matrix
is not a fundamental matrix for the system x ̇
∼ = A x
∼
.
Example 2.10 Find eAt for the system x ̇
∼ = A x
∼
, where A =
(11
4 1)
.

Solution The characteristic equation of A is
|A − λI| = 0
⇒ λ = 3, −1.

So, the eigenvalue of A is λ = 3, − 1. The eigenvector corresponding to the eigen-
values λ = 3, − 1 is, respectively, (

1 2 )T and (
1 −2

)T , which are linearly inde-
pendent. So, two fundamental solutions of the system are x

∼1
(t) =
(1
2
)
e3t
, x
∼2
(t) =

( 1
−2
)
e−t
. Therefore, a fundamental matrix of the system is

Φ(t) =
(
x
∼1
(t) x
∼2
(t)
)
=
( e3t e−t
2e3t −2e−t
)
.

Now, Φ(0) =
(11
2 −2
)
and Φ−1(0) = −1
4
(−2 −1
−2 1 )
=
(1/2 1/4
1/2 −1/4
)
.

Therefore,
eAt = Φ(t)Φ−1 (0) =

( e3t e−t
2e3t −2e−t
)( 1
2
1
4
1
2 −1
4
)
=
( 1
2
(
e3t + e−t
) 1
4
(
e3t − e−t
)

(
e3t − e−t
) 1
2
(
e3t + e−t
)
)

2.3.2 Fundamental Matrix Method
The fundamental matrix can be used to obtain the general solution of a linear system.
The fundamental theorem gives the existence and uniqueness of solution of a linear
system .
x
∼ = A x
∼
, x
∼ ∈ Rn subject to the initial conditions x

∼ 0 ∈ Rn. We now present

the fundamental theorem.
Theorem 2.1 (Fundamental theorem) Let A be an n × n matrix. Then for given any
initial condition x
∼0
∈ Rn, the initial value problem x ̇
∼ = A x
∼ with x
∼
(0) = x
∼0
has the

unique solution x
∼
(t) = eAt x
∼ 0.

Proof The initial value problem is given by
x ̇
∼ = A x
∼
, x
∼
(0) = x
∼0
. (2.12)

We have

eAt = I + At +
A2t 2
2! +
A3t 3
3! + ··· . (2.13)

Differentiating (2.13) w.r.to t,
d
dt
(
eAt )
= d
dt
(
I + At +
A2t 2
2! +
A3t 3
3! + ···)

= d
dt
(I ) +
d
dt
(At) +
d
dt
( A2t 2
2!
)
+
d
dt
( A3t 3
3!
)
+ ··· .
The term-by-term differentiation is valid because the series of eAt is convergent
for all t under the operator.
or, d
dt
(
eAt )
= φ + A + A2 t +
A3t 2
2! +
A4t 3
3! + ···

= A
(
I + At +
A2t 2
2! +
A3t 3
3! + ···)

= AeAt .

Therefore,

d
dt
(
eAt )
= AeAt . (2.14)

This shows that the matrix x

∼ = eAt is a solution of the matrix differential equation

x ̇
∼ = A x
∼
. The matrix eAt is known as the fundamental matrix of the system (2.11).

Now using (2.14)
d
dt
(
eAt x
∼ 0
)
= d
dt
(
eAt )
x
∼ 0 = AeAt x
∼ 0

⇒  ̇x
∼ = d
dt
(x
∼
) = A x
∼
,

where x
∼ = eAt x
∼0
.
Also, x
∼
(0) =
[
eAt x
∼0
]
t=0
= [
eAt]
t=0 x
∼0
= I x
∼0
= x
∼0
. Thus x
∼
(t) = eAt x
∼0
is a
solution of (2.12). We prove the uniqueness of solution as follows. Let x
∼
(t) be a

solution of (2.12) and y
∼
(t) = e−At x
∼
(t) be its another solution. Then

y ̇
∼
(t) = −Ae−At x
∼
(t) + e−At x ̇
∼
(t)

= −Ae−At x
∼
(t) + Ae−At x
∼
(t) = 0.

This implies y
∼
(t) which is constant. At t = 0, for t ∈ R, it shows that y
∼
(t) = x
∼0
.

Therefore, any solution of the IVP (2.12) is given as x
∼
(t) = eAt y
∼
(t) = eAt x
∼0
. This

completes the proof.

2.3.3 Matrix Exponential Function
From the fundamental theorem, the general solution of a linear system can be obtained
using the exponential matrix function. The exponential matrix function has some
interesting properties in which the general solution can be obtained easily. For an n
× n matrix A, the matrix exponential function eA of A is defined as

eA = ∑∞
n=0
An
n! = I + A +
A2
2! + ··· . (2.15)
Note that the infinite series (2.15) converges uniformly for all n × n matrix A. If
A = [a], a 1 × 1 matrix, then eA = [ea], L. Perko [3], Jordan and Smith [4]. We now
discuss some of the important properties of matrix exponential function eA.
Property 1 If A = φ, the null matrix, then eAt = I .
Proof By definition
eAt = I + At +
A2t 2
2! +
A3t 3
3! + ··· = I + φt + φ2t 2
2! + φ3t 3
3! + ··· = I.

So, eAt = I for A = φ.
Property 2 Let A = I, the identity matrix. Then eAt = I et
.

Proof We know that eAt = I + At + A2t 2
2! + A3t 3
3! + ··· . Therefore.

eIt = I + It +
I 2t 2
2! +
I 3t 3
3! + ··· = I
(
1 + t +
t 2
2!
+
t 3
3!
+ ···)
= I et
.

Note If A = αI, α being a scalar, then eαIt = I eαt
.eαIt = I eαt
.

Property 3 Suppose D =
[
λ1 0
0 λ2
]
, a diagonal matrix. Then eDt =
[
eλ1t 0
0 eλ2t
]
.

Proof By definition.
eDt = I + Dt +
D2t 2
2! +
D3t 3
3! + ···

=
[
10
0 1 ]
+
[
λ1 0
0 λ2
]
t +
[
λ1 0
0 λ2
]2
t 2
2!
+ ···

=
[
10
0 1 ]
+
[
λ1 0
0 λ2
]
t +
[
λ2
1 0
0 λ2
2
]
t 2
2!
+ ···

=
[
1 + λ1t + λ2
1t 2
2! + ··· 0
01 + λ2t + λ2
2t 2
2! + ···]
=
[
eλ1t 0
0 eλ2t
]
.
Property 4 Let P−1 AP = D, D being a diagonal matrix. Then eAt = PeDt P−1.
Proof We have
eAt = lim
n→∞
∑n
k=0
Ak t k
k !
= lim
n→∞
∑n
k=0
(
P D P−1
)k
t k
k ! [∵ D = P−1 AP, so A = P D P−1
]

= lim
n→∞
∑n
k=0
(
P Dk P−1
)
t k
k !
⎡
⎢
⎣
(
P D P−1
)k = (
P D P−1
)(P D P−1
)
··· (
P D P−1
)

= P D(
P−1 P
)
D
(
P−1 P
)
··· (
P−1 P
)
D P−1

= P Dk P−1

⎤
⎥
⎦

= P
(
lim
n→∞
∑n
k=0
Dk t k
k !
)
P−1

= PeDt P−1
.

Property 5 Let N be a nilpotent matrix of order k. Then eNt is a series containing
finite terms only.
Proof A matrix N is said to be a nilpotent matrix of order or index k if k is the least
positive integer such that N k = φ but N k−1 /= φ, φ being the null matrix. Since N
is a nilpotent matrix of order k, N k−1 /= φ but N k = φ. Therefore.

eNt = I + Nt +
N 2t 2
2! + ··· +
N k−1t k−1
(k − 1)! +
N k t k
k ! + ···

= I + Nt +
N 2t 2
2! + ··· +
N k−1t k−1
(k − 1)!

which is a series of finite terms only.
Property 6 If A =
[
a −b
b a ]
, then eAt = ea I t[I cos(bt) + J sin(bt)], where I =

[
10
0 1 ]
and J =
[
0 −1
1 0 ]
.
Proof We have A = aI + b J.
Therefore
eAt = ea I t+b J t
= ea I t · ebJ t = ea I t[

I + bJ t + (bJ t)2
2! + (bJ t)3
3! + ···]

= ea I t[
I
(
1 − b2t 2
2! +
b4t 4
4! − ···)
+ J
(
bt − b3t 3
3! + ···)]
= ea I t [I cos(bt) + J sin(bt)] ∵ J 2 = −I, J 3 = J 2 J = (−I )J
= −J, J 4 = J 3 J = (−J )J = −J 2 = I, etc.
Property 7 eA+B = eAeB, provided AB = BA.
Proof Suppose AB = BA. Then by binomial theorem,

(A + B)
n = ∑n
k=0
n!
(n − k)!k !
An−k Bk = n!
∑
j+k=n
A j Bk
j !k !
.

Therefore

eA+B = ∑∞
n=0
(A + B)
n
n! = ∑∞
n=0
∑
j+k=n
A j Bk
j !k !

= ∑∞
j=0
A j
j !
∑∞
k=0
Bk
k !

= eA eB .

It is true that eA+B = eAeB if AB = BA. But in general eA+B /= eAeB.
Property 8 For any n × n matrix A, d
dt
(
eAt )
= AeAt .

Proof By definition
eAt = I + At +
A2t 2
2! +
A3t 3
3! + ···

∴
d
dt
(
eAt )
= d
dt
(
I + At +
A2t 2
2! +
A3t 3
3! + ···)

= d
dt
(I ) +
d
dt
(At) +
d
dt
( A2t 2
2!
)
+
d
dt
( A3t 3
3!
)
+ ··· .
The term-by-term differentiation is valid because the series of eAt is convergent
for all t under the operator.
or, d
dt
(
eAt )
= φ + A + A2 t +
A3t 2
2! +
A4t 3
3! + ···

= A
(
I + At +
A2t 2
2! +
A3t 3
3! + ···)

= AeAt .

Therefore, d
dt
(
eAt )
= AeAt .

We now establish the important result below.
Result Multiplying both sides of d
dt
(
eAt )
= AeAt by Φ(0) in right, we have

d
dt
(
eAt )
Φ(0) = AeAtΦ(0)
⇒
d
dt
(
eAtΦ(0)
)
= AeAtΦ(0)

⇒
d
dt
(
Φ(t)Φ−1 (0)Φ(0)
)
= AΦ(t)Φ−1 (0)Φ(0)[since eAt = Φ(t)Φ−1 (0)]

⇒
d
dt
(Φ(t)) = Φ(  ̇ t) = AΦ(t).
This shows that the fundamental matrix Φ(t) must satisfy the system x ̇
∼ = A x
∼
.
This is true for all t. So, it is true for t = 0. Putting t = 0 in Φ(  ̇ t) = AΦ(t), we get

Φ(  ̇ 0) = AΦ(0) ⇒ A = Φ(  ̇ 0)Φ−1 (0).

This gives that the coefficient matrix A can be expressed in terms of the
fundamental matrix Φ(t).
Example 2.11 Does Φ(t) =
( et e−2t
2et 3e−2t
)
a fundamental matrix for the system

x ̇
∼ = A x
∼
? If so, then find the matrix A.
Solution We know that if Φ(t) is a fundamental matrix, then Φ(0) is invertible.
Here Φ(t) =
( et e−2t
2et 3e−2t
)
. So, Φ(0) =
(11
2 3)
.

Since det(Φ(0)) = 3 − 2 = 1 /= 0, Φ(0) is invertible. Hence the given matrix
is a fundamental matrix for the system x ̇
∼ = A x
∼
. We shall now find the coefficient

matrix A.
We have Φ(0) =
(11
2 3)
. So Φ−1(0) =
( 3 −1
−2 1 )
.

Also Φ(  ̇ t) =

( et −2e−2t
2et −6e−2t
)
, and Φ(  ̇ 0) =
(1 −2
2 −6
)
.

Therefore, the matrix A is
A = Φ(  ̇ 0)Φ−1 (0) =
(1 −2
2 −6
)( 3 −1
−2 1 )
=
( 7 −3
18 −8
)
.

Example 2.12 Find eAt for the matrix A =
(31
1 3)
. Hence find the solution of the

system x ̇
∼ = A x
∼
.

Solution We see that the eigenvectors corresponding to the eigenvalues λ = 2, 4 of
A are respectively e
∼ = (
1 −1
)T and g
∼ = (
1 1 )T , which are linearly independent.

Therefore, two fundamental solutions of the system are x
∼1
(t) =
( 1
−1
)
e2t and

x
∼2
(t) =
(1
1
)
e4t
. So, a fundamental matrix of the system is

Φ(t) =
(
x
∼1
(t) x
∼2
(t)
)
=
( e2t e4 t
−e2t e4 t
)
.

We find Φ(0) =
( 11
−1 1)
and Φ−1(0) = 1
2
(1 −1
1 1 )
. Therefore

eAt = Φ(t)Φ−1 (0) = 1
2
( e2t e4t
−e2t e4t
)(1 −1
1 1 )
= 1
2
(e2t + e4 t e4t − e2t
e4t − e2t e2t + e4 t
)

By fundamental theorem, the solution of the system x ̇
∼ = A x
∼ is

x
∼
(t) = eAt x
∼0
= 1
2
(e2t + e4 t e4t − e2t
e4t − e2t e2t + e4 t
)(c1
c2
)
,

where x
∼0
= (
c1 c2
)T is an arbitrary constant column vector.

2.4 Solution Procedure of Linear Systems
The general solution of a linear homogeneous system can be easily deduced from
the fundamental theorem. According to this theorem the solution of x ̇
∼ = A x
∼ with

x
∼
(0) = x
∼0
is given as x
∼
(t) = eAt x
∼0
and this solution is unique.

For a simple change of coordinates x
∼ = P y
∼ where P is an invertible matrix, the

equation x ̇
∼ = A x
∼ is transformed as
x ̇
∼ = A x
∼
⇒ P y ̇
∼
= AP y
∼
⇒  ̇y
∼
= P−1 AP y
∼

⇒  ̇y
∼
= C y
∼
, where C = P−1 AP.

The initial conditions x
∼
(0) = x
∼0
become y
∼
(0) = P−1 x
∼
(0) = P−1 x
∼ 0 = y
∼ 0. So,

the new system is y ̇
∼
= C y
∼ with y
∼
(0) = y
∼ 0, where C = P−1 AP.

It has the solution

y
∼
(t) = eCt y
∼ 0.
Hence the solution of the original system is

x
∼
(t) = P y
∼
(t) = PeCt y
∼ 0 = PeCt P−1x
∼0
.

We see that eAt = PeCt P−1. The matrix P is chosen in such a way that matrix C
takes a simple form. We now discuss three distinct cases.

(i) Matrix A has distinct real eigenvalues
Let P =
(
α
∼ 1, α
∼ 2,..., α
∼ n
)
so that P−1 exists. The matrix C is obtained as C =
P−1 AP which is a diagonal matrix. Hence the exponential function of C becomes

eCt = diag(eλ1t
, eλ2t
,..., eλn t ).
Therefore, we can write the solution of x ̇
∼ = A x
∼ with x
∼
(0) = x
∼0
as x
∼
(t) =

eAt x
∼0
= PeCt P−1x
∼0
. So
x
∼
(t) = P diag(eλ1t
, eλ2t
,..., eλn t )P−1x
∼0

where x
∼0
= (c1, c2,..., cn)T is an arbitrary constant.
(ii) Matrix A has real repeated eigenvalues
In this case the following theorems are relevant (proofs are available in the book
Hirsch and Smale [5]) for finding general solution of a linear system when matrix A
has repeated eigenvalues.
Theorem 2.2 Let the n × n matrix A have real eigenvalues λ1, λ2, ..., λn repeated
according to their multiplicity. Then there exists a basis of generalized eigenvectors
{α
∼ 1, α
∼ 2,..., α
∼ n} such that the matrix P = (α
∼ 1, α
∼ 2,..., α
∼ n) is invertible and A
= S + N, where P−1 SP = diag(λ1, λ1,...,λn) and N(=A − S) is nilpotent of order
k ≤ n, and S and N commute.
Using the theorem the linear system subject to the initial conditions x
∼
(0) = x
∼0

has the solution
x
∼
(t) = P diag(eλj t )P−1
[
I + Nt + ··· +
N k−1t k−1
(k − 1)!
]
x
∼0
.

(ii) Matrix A has complex eigenvalues
Theorem 2.3 Let A be a 2n × 2n matrix with complex eigenvalues aj ± ibj, j =
1, 2, ..., n. Then there exists generalized complex eigenvectors (α
∼ j ± i β
∼ j ), j =

1, 2 ..., n such that the matrix P = (β
∼ 1, α
∼ 1, β
∼ 2, α
∼ 2,..., β
∼ n, α
∼ n) is invertible

and A = S + N, where P−1 SP = diag[
a j −bj
bj a j
]
, and N(=A − S) is a nilpotent

matrix of order k ≤ 2n, and S and N commute.

Using the theorem the linear system of equations subject to the initial conditions
x
∼
(0) = x
∼0
has the solution

x
∼
(t) = Pdiag(ea j t )
[
cos(bj t) − sin(bj t)
sin(bj t) cos(bj t)
]
P−1
[
I + Nt + ··· +
N k−1t k−1
(k − 1)!
]
x
∼0
.
For a 2 × 2 matrix A with complex eigenvalues (α ± iβ) the solution is given by

x
∼
(t) = Peαt
(cos βt − sin βt
sin βt cos βt
)
P−1x
∼0
.

Example 2.13 Solve the initial value problem x  ̇ = x + y, y  ̇ = 4x − 2y with initial
condition x
∼
(0) = (
2 −3
)T
.

Solution The characteristic equation of matrix A is
|A − λI| = 0
⇒ λ = 2, −3.

So, the eigenvalues of matrix A are 2, − 3, which are real and distinct.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ1 = 2.

Then

(A − 2I ) e
∼ = 0
⇒ −e1 + e2 = 0, 4e1 − 4e2 = 0.
A nontrivial solution of this system is e1 = 1, e2 = 1. Therefore, e
∼ = (
1 1 )T
.

Again let g
∼ = (
g1 g2
)T be the eigenvector corresponding to the eigenvalue

λ2 = −3. Then

(A + 3I ) g
∼ = 0
⇒ 4g1 + g2 = 0, 4g1 + g2 = 0.
A nontrivial solution of this system is g1 = 1, g2 = −4. Therefore, g
∼ = (
1 −4
)T
.

Let P =
(
e
∼
, g
∼
)
=
(11
1 −4
)
. Then P−1 = −1
5
(−4 −1
−1 1 )
= 1
5
(41
1 −1
)

∴ C = P−1 AP = 1
5
(41
1 −1
)(11
4 −2
)(11
1 −4
)

= 1
5
( 82
−3 3)(11
1 −4
)
= 1
5
(10 0
0 −15)
=
(20
0 −3
)

∴ eCt =
(e2t 0
0 e−3t
)
.

Therefore by the fundamental theorem, the solution of the system is
x
∼
(t) = eAt x
∼0
= PeCt P−1 x
∼0

=
(11
1 −4
)(e2t 0
0 e−3t
)1
5
(41
1 −1
)
x
∼0

= 1
5
( 4e2t + e−3t e2t − e−3t
4e2t − 4e−3t e2t + 4e−3t
)
x
∼0

⇒
( x(t)
y(t)
)
=
( 4
5 e2t + 1
5 e−3t 1
5 e2t − 1
5 e−3t

4
5 e2t − 4
5 e−3t 1
5 e2t + 4
5 e−3t
)( 2
−3
)
=
( e2t + e−3t
e2t − 4e−3t
)

⇒ x(t) = e2t + e−3t

, y(t) = e2t − 4e−3t
.

Example 2.14 Solve the system x ̇1 = −x1 − 3x2, x ̇2 = 2x2. Also sketch the phase
portrait.
Solution The characteristic equation of matrix A is
|A − λI| = 0
⇒ λ = −1, 2.

The eigenvalues of matrix A are − 1, 2, which are real and distinct.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ1 = −1.

Then

(A + I ) e
∼ = 0
⇒ −3e2 = 0, 3 e2 = 0
⇒ e2 = 0 and e1 is arbitrary.

Choose e1 = 1 so that e
∼ = (
1 0 )T
.

Again, let g
∼ = (
g1 g2
)T be the eigenvector corresponding to the eigenvalue

λ2 = 2. Then

(A − 2I ) g
∼ = 0
∼
⇒ g1 + g2 = 0.

Choose g1 = 1, g2 = −1. Then g
∼ = (
1 −1
)T
.

Let P =
(
e
∼
, g
∼
)
=
(11
0 −1
)
. Then P−1 =
(11
0 −1
)
.

Therefore

C = P−1 AP =
(11
0 −1
)(−1 −3
0 2 )(11
0 −1
)

=
(−1 −1
0 −2
)(11
0 −1
)
=
(−10
0 2)

and so eCt =
(e−t 0
0 e2t
)
.

Therefore by fundamental theorem, the solution of the system is
x
∼
(t) = eAt x
∼0
= PeCt P−1x
∼0

=
(11
0 −1
)(e−t 0
0 e2t
)(11
0 −1
)
x
∼0

=
(e−t e−t − e2t
0 e2t
)(c1
c2
)

⇒
( x1(t)
x2(t)
)
=
(e−t e−t − e2t
0 e2t
)(c1
c2
)
=
((c1 + c2)e−t − c2e2t
c2e2t
)

⇒ x1(t) = c1e−t + c2
(
e−t − e2t
)
, x2(t) = c2e2t
,

where c1, c2 are arbitrary constants. The phase diagram in x1 − x2 is presented in
Fig. 2.1. Here, origin is the equilibrium point which is semi-stable in nature.

Example 2.15 Solve the following system using the fundamental theorem x  ̇ =
5x + 4y, y  ̇ = −x + y.
Solution The characteristic equation of matrix A is
|A − λI| = 0
⇒ λ = 3, 3.

This shows that matrix A has an eigenvalue λ = 3 of multiplicity 2. Then S = [
30
0 3 ]
and N = A − S =
[ 24
−1 −2
]
. Clearly, matrix N is a nilpotent matrix of

order 2. So, the general solution of the system is given by
x
∼
(t) = eAt x
∼0
= e(S+N)t x
∼0
= eSt eNt x
∼0
=
[
e3t 0
0 e3t
]
[I + Nt]x
∼0

=
[
e3t 0
0 e3t
][ 1 + 2t 4t
−t 1 − 2t
]
x
∼0
.
Example 2.16 Find the general solution of the system of linear equations.
x  ̇ = 4x − 2y, y  ̇ = 5x + 2y.
Solution The characteristic equation of matrix A is

|A − λI| = 0
⇒ λ = 6 ± √36 − 72
2 = 3 ± 3i.
So matrix A has a pair of complex conjugate eigenvalues 3 ± 3i.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ1 = 3+3i.

Then

(A − (3 + 3i )I ) e
∼ = 0
∼

⇒
(4 − (3 + 3i ) −2
52 − (3 + 3i )
)(e1
e2
)
=
(0
0
)

⇒
(1 − 3i −2
5 −1 − 3i
)(e1
e2
)
=
(0
0
)
⇒ (1 − 3i )e1 − 2e2 = 0, 5e1 − (1 + 3i)e2 = 0.

A nontrivial solution of this system is e1 = 2, e2 = 1 − 3i. Therefore, e
∼ =

(
21 − 3i
)T

Similarly, the eigenvector corresponding to the eigenvalue λ2 = 3 − 3i is g
∼ =

(
21 + 3i
)T
.
Let P =
( 02
−3 1)
. Then P−1 = 1
6
(1 −2
3 0 )
.
Let C = P−1 AP. Then C = P−1 AP = 1
6
(1 −2
3 0 )(4 −2
5 2 )( 02
−3 1)
=

(3 −3
3 3 )
.
So,

eCt = e3t
(cos 3t − sin 3t
sin 3t cos 3t
)
.

Therefore, the solution of the system is

x
∼
(t) = eAt x
∼0
= PeCt P−1 x
∼0

= 1
6
e3t
( 02
−3 1)(cos 3t − sin 3t
sin 3t cos 3t
)(1 −2
3 0 )
x
∼0
.
In this problem equilibrium point origin is unstable spiral.
Example 2.17 Solve the initial value problem x ̇
∼ = A x
∼
, with x
∼
(0) = (
1 0 )T , where

A =
(−2 −1
1 −2
)
, x
∼ =
( x
y
)
. Also sketch the solution curve in the phase plane R2.

Solution The characteristic equation of matrix A is

|A − λI| = 0
⇒ λ = −4 ± √16 − 20
2 = −2 ± i.
So, matrix A has a pair of complex conjugate eigenvalues − 2 ± i.
Let e
∼ = (
e1 e2
)T be the eigenvector corresponding to the eigenvalue λ1 = −2+i.

Then

(A − (−2 + i )I ) e
∼ = 0

⇒ −ie1 − e2 = 0, e1 − ie2 = 0.
A nontrivial solution of this system is e1 = 1, e2 = −i.Therefore, e
∼ = (
1 −i
)T
.
Similarly, the eigenvector corresponding to the eigenvalue λ2 = −2 − i is g
∼ =

(
1 i
)T . Let P =
( 01
−1 0)
. Then P−1 =
(0 −1
1 0 )
and

C = P−1 AP =
(0 −1
1 0 )(−2 −1
1 −2
)( 01
−1 0)
=
(−2 −1
1 −2
)
.

So,

eCt = e−2t
(cos t − sin t
sin t cos t
)
.

Hence the solution of the system is

x
∼
(t) = eAt x
∼0
= PeCt P−1x
∼0

= e−2t
( 01
−1 0)(cos t − sin t
sin t cos t
)(0 −1
1 0 )
x
∼0
.

= e−2t
( sin t cos t
− cos t sin t
)(0 −1
1 0 )
x
∼0

= e−2t
(cos t − sin t
sin t cos t
)(1
0
)

= e−2t
(cos t
sin t
)

∴ x(t) = e−2t cos t, y(t) = e−2t sin t.

Phase Portrait
The phase portrait of the solution curve is shown in Fig. 2.2. It is a spiral curve
moving toward the equilibrium point origin in the x–y plane and so, the origin is a
stable focus (point attractor).

Example 2.18 Solve the system x ̇
∼ = A x
∼ with x
∼
(0) = x
∼0
, where A =
⎛
⎜
⎜
⎝
213 −1
022 −1
002 −5
000 2
⎞
⎟
⎟
⎠.
Solution Clearly, matrix A has the eigenvalue λ = 2 with multiplicity 4. Therefore,

S =
⎛
⎜
⎜
⎝
2000
0200
0020
0002
⎞
⎟
⎟
⎠
and N = A − S =
⎛
⎜
⎜
⎝
013 −1
002 −1
000 −5
000 0
⎞
⎟
⎟
⎠.

It is easy to check that the matrix N is nilpotent of order 4. Therefore, the solution
of the system is
x
∼
(t) = eSt(
I + Nt +
N 2t 2
2! +
N 3t 3
3!
)
x
∼0
.

2.5 Nonhomogeneous Linear Systems
The most general form of a nonhomogeneous linear system is given as

x ̇
∼
(t) = A(t) x
∼
(t) + b
∼
(t), (2.16)

where A(t) is an n × n matrix, usually depends on time and b
∼
(t) is a time-dependent
column vector. Here we consider matrix A(t) to be time independent, that is, A(t) ≡
A. Then (2.16) becomes
x ̇
∼
(t) = A x
∼
(t) + b
∼
(t). (2.17)

The corresponding homogeneous system is given as

x ̇
∼
(t) = A x
∼
(t). (2.18)
We have described solution techniques for homogeneous system (2.18). We now
find the solution of the nonhomogeneous system (2.17), subject to initial conditions
x
∼
(0) = x
∼0

As discussed earlier if Φ(t) be the fundamental matrix of (2.18) with x
∼
(0) = x
∼0
,

then the solution of (2.18) is given by
x
∼
(t) = Φ(t)Φ−1 (0)x
∼0
.

We assume that
x
∼
(t) = Φ(t)Φ−1 (0)x
∼0
+ Φ(t)Φ−1 (0) u
∼
(t) (2.19)
be the solution of the nonhomogeneous linear system (2.17). Then the initial
conditions are obtained as u
∼
(0) = 0. Differentiating (2.19) with respect to t, we

get
x ̇
∼
(t) = Φ(  ̇ t)Φ−1 (0)x
∼0
+ Φ(  ̇ t)Φ−1 (0) u
∼
(t) + Φ(t)Φ−1 (0) .
u
∼
(t). (2.20)

Substituting (2.20) and (2.19) into (2.17),
Φ(  ̇ t)Φ−1 (0)x
∼0
+ Φ(  ̇ t)Φ−1 (0) u
∼
(t) + Φ(t)Φ−1 (0) .
u
∼
(t)

= AΦ(t)Φ−1 (0)x
∼0
+ AΦ(t)Φ−1 (0) u
∼
(t) + b
∼
(t). (2.21)

Since Φ(t) is a fundamental matrix solution of (2.18),
Φ(  ̇ t) = AΦ(t).

Using this in (2.21), we get
Φ(t)Φ−1 (0) .
u
∼
(t) = b
∼
(t)

⇒ .
u
∼
(t) = Φ(0)Φ ̇ −1 (t) b
∼
(t).

Integrating w.r.to t and using u
∼
(0) = 0, we get

u
∼
(t) =
ʃt
0
Φ(0)Φ−1 (t) b
∼
(t)dt.

Hence the general solution of the nonhomogeneous system (2.17) subject to
x
∼
(0) = x
∼0
is given by

x
∼
(t) = Φ(t)Φ−1 (0)x
∼0
+ Φ(t)
ʃt
0
Φ−1 (α) b
∼
(α)dα. (2.22)

Example 2.19 Find the solution of the nonhomogeneous system x  ̇ = x + y+t, y  ̇ =
−y + 1 with the initial conditions x(0) = 1, y(0) = 0.
Solution In matrix notation, the system takes the form x ̇
∼
(t) = A x
∼
(t) + b
∼
(t), where

A =
(11
0 −1
)
and b
∼
(t) =
( t
1
)
.
The initial conditions become x
∼
(0) = x
∼0
, where x
∼0
= (

1 0 )T .Matrix A has eigen-
values λ1 = 1, λ2 = −1 with corresponding eigenvectors (

1 0 )T and (
1 −2
)T
.

Therefore

Φ(t) =
(et e−t
0 −2e−t
)
.

This gives
Φ−1 (t) = 1
2
(2e−t e−t
0 −et
)
, Φ(0) =
(11
0 −2
)
and Φ−1 (0) = 1
2
(21
0 −1
)
.

Therefore, the required solution is

x
∼(t) = Φ(t)Φ−1(0)x
∼0
+ Φ(t)
ʃt
0
Φ−1(α) b
∼
(α)dα

= 1
2
Φ(t)
⎧
⎨
⎩
(
21
0 −1
)( 1
0
)
+
ʃt
0
(
2e−α e−α
0 −eα
)( α
1
)
dα
⎫
⎬
⎭

= 1
2
Φ(t)
(( 2
0
)
+
(
3 − (2t + 3)e−t
1 − et
)) = 1
2
(
et e−t
0 −2e−t
)( 5 − (2t + 3)e−t
1 − et
)

= 1
2
(
5et − 2t − 4 + e−t
2 − 2e−2t
)
.

Example 2.20 Prove that the flow evolution operator φt (x
∼
) = eAt x
∼ satisfies the

following properties:
(i) φ0(x
∼
) = x
∼
,
(ii) φ◦
−t φt (x
∼
) = x
∼
,
(iii) φ◦
t φs(x
∼
) = φt+s(x
∼
) for all s, t ∈ R and x
∼ ∈ Rn. Is φ◦
t φs = φ◦
s φt ?

Solution We have
(i) φ0(x
∼
) = eA· 0 x
∼ = x
∼ .

(ii) φ◦
−t φt (x
∼
) = φ−t (y
∼
) = e−At y
∼ = e−At eAt x
∼ = x
∼
, where y
∼ = eAt x
∼
.

(iii) φ◦
t φs(x
∼
) = φt (y
∼
) = eAt y
∼ = eAt eAs x
∼ = eA(t+s) x
∼ = φt+s(x

Now,
φ◦
t φs(x
∼
) = φt (y
∼
) = eAt y
∼ = eAt eAs x
∼ = eAs eAt x
∼ = φs(z
∼
) = φ◦
s φt (x
∼
)

for all x
∼ ∈ Rn, where z
∼ = eAs x
∼
.

Hence φ◦
t φs = φ◦
s φt . This indicates that the given flow evolution operator is

commutative.

2.6 Exercises
1. Prove that for a square matrix A of order n, the set of solutions of the linear
homogeneous system x ̇
∼ = A x
∼ in R n forms an n-dimensional vector space.
2. Find the eigenvalues and the corresponding eigenvectors of the following
matrices:
(i) (1/2 1/2
1/2 1/2
)
(ii) [ 13
√23 √2
]
(iii) (27
5 −10)
(iv) (α β
0 γ
)
.

3. (a) Consider the matrix A =
( p 0
1 1)
. Find the value(s) of p for which the matrix

A has repeated eigenvalues.
(b) Find the 2 × 2 matrix A whose eigenvalues are 1, 4 and the corresponding
eigenvectors are (
1 −1
)T
and (
2 1 )T
.

(c) Find all 2 × 2 matrices A whose eigenvalues are 0 and 1.
4. Consider the linear homogeneous system x  ̇ = −4x + y, y  ̇ = −2x − y.
(a) Write the system as x ̇
∼ = A x
∼
.

(b) Show that the characteristic polynomial is λ
2
+ 5λ + 6.

(c) Find the eigenvalues and the corresponding eigenvectors of the matrix A.
(d) Find the general solution of the system.
(e) Solve the system subject to the initial condition x
∼ (0) = (
1 2 )T
.
5. Find the general solution to each of the following systems of homogeneous linear
equations:
(i) x  ̇ = x + 3y, y  ̇ = x − y, (ii)( x  ̇
y ̇
)
=
( 1 i
−i 1
)( x
y
)
,i = √−1,

(iii) x ̇
∼ = A x
∼
, A =
[
−42
−3 1 ]
, (iv) x ̇
∼ (t) = A x
∼ (t), A =
( 54
−1 0)
,

(v) x ̇
∼ = A x
∼
, A =
( 31
−2 1)
, (vi) x  ̇ = −5x, y  ̇ = −5y,

(vii)x ̇
∼ =
(ab
c a )
x
∼
, where bc > 0, (viii) d
dt
( x(t)
y(t)
)
=
(λ 1
0 λ
)( x(t)
y(t)
)
,

(ix)x ̇
∼ = A x
∼
,A =
⎛
⎝
111
022
003
⎞
⎠, (x) d
dt
⎛
⎝
x(t)
y(t)
z(t)
⎞
⎠ =
⎛
⎝
12 −1
01 1
0 −11
⎞
⎠
⎛
⎝
x(t)
y(t)
z(t)
⎞
⎠,
(xi)x  ̇ = y, y  ̇ = z,z  ̇ = x + y −z, (xii)x  ̇ = x +2y −z, y  ̇ = y +z,z  ̇ = −y +z,
(xiii) x  ̇ = x, y  ̇ = 2y−3z, z  ̇ = x +3y+2z, (xiv) x  ̇ = y +z, y  ̇ = x +z, z  ̇ =
x + y.
6. Solve the following initial value problems:
(i) x  ̇ = 9x + 5y, y  ̇ = −6x − 2y; x(0) = 1, y(0) = 0.
(ii) x ̇
∼ =
(3 −1
1 5 )
x
∼ , x
∼ (0) =
(1
2
)
. (iii) x ̇
∼ =
(10
0 1)
x
∼
, x
∼ (0) =
( 1
−1
)
.

(iv) x ̇
∼ = A x
∼ , x
∼ (0) =
( 1
−2
)
, A =
(−32
−1 −1
)
.

(v) ( x ̇(t)
y ̇(t)
)
=
(−3 −1
2 −1
)( x(t)
y(t)
)
, x
∼ (π/2) =
(0
1
)
.

(vi) x ̇
∼ (t) =
⎛
⎝
12 −1
10 1
4 −45
⎞
⎠ x
∼ (t), x
∼ (0) =
⎛
⎝
−1
0
0
⎞
⎠.

7. Find the solution of the IVP x ̇
∼ = A x
∼ subject to the initial condition x
∼ (0) = (2
4
)
, where A =
( 39
−1 −3
)
and x
∼ (t) =
( x (t)
y(t)
)
. Also draw the diagram

for the solution set.
8. Convert the second-order differential equation x  ̈ + a x  ̇ + bx = 0 to a system
of two first-order differential equations. Find all values of a and b for which
the system has real, distinct eigenvalues. Also find the general solution of the
system. Find the solution of the system that satisfies the initial condition (
0 1 )T
.

Draw the diagram for the solution set.
9. Find the general solution of the system ( x  ̇ (t)
y ̇(t)
)
=
(ab
c d )( x (t)
y(t)
)
, where

a + d /= 0 and ad − bc = 0. Also sketch the diagram.
10. Consider the system x ̇
∼ =
( 01
−k −b
)
x
∼
, where b ≥ 0, k > 0.
(a) For what values of k and b does the system has
(i) Complex conjugate eigenvalues?
(ii) Repeated real eigenvalues?
(iii) Real and distinct eigenvalues?
(b) Find the general solution of the system in each case.
11. Solve the following second-order differential equation after reducing them into
a system of two first-order differential equations:

(i) x  ̈ + x = 0 with x (0) = 1, x  ̇ (0) = 0 (ii) x  ̈ + 3x  ̇ + 5x = 0 with
x (0) = 1, x  ̇ (0) = −1.
12. Find the general solution of the system below and determine the possible values
of α, β so that the initial value problem has a solution that tends to zero as t → ∞

x ̇
∼ =
(5 −1
7 3 )
x
∼
, x
∼
(0) =
(α
β
)
.

13. (a) What do you mean by a fundamental matrix of a homogeneous system of
linear equations?
(b) Show that two different homogeneous systems cannot have the same
fundamental matrix.
(c) Let Φ(t) be a fundamental matrix of the system x ̇
∼ = A x
∼
. Show that for any
nonzero constant k, kΦ(t) is also a fundamental matrix of the system.
14. Find the fundamental matrix of the following systems and hence find the solution
of each system:
(i) x ̇
∼ =
( 1 −2
−3 2 )
x
∼

(ii) ( x  ̇
y ̇
)
=
(31
0 2)( x
y
)

(iii) x ̇
∼ =
(11
4 1)
x
∼
(iv) d
dt ( x
y
)
=
( 95
−6 −2
)( x
y
)

(v) x ̇
∼ = A x
∼
, where A =
(3 −1
1 5 )
(vi) x  ̇ = x + y, y  ̇ = −5x − 3y
(vii) x ̇
∼ =
( 54
−1 0)
x
∼ .

15. Find the fundamental matrix of the system x ̇
∼ =
( 2 −1
−4 2 )
x
∼ and use it to find

the solution of the system satisfying the initial condition x
∼ (0) = (
1 −3
)T
.
16. Find a fundamental matrix of the system x  ̇ = 2x − y, y  ̇ = 3x − 2y. Also,
find the fundamental matrix Φ(t) satisfying Φ(0) = I . Find the solution of the
system satisfying the initial condition x(0) = −1, y(0) = 1.
17. Does Φ(t) =
(2e
3t 2e
−2t
3e
3t 5e
−2t
)
a fundamental matrix of the system x ̇
∼ = A x
∼
? If

yes, then find the coefficient matrix A.
18. Does Φ(t) =
( 2e
4t
−2
−e
4t 1
)
a fundamental solution of a system x ̇
∼ = A x
∼
?

19. Find e
At and then solve the linear system x ̇
∼ = A x
∼ for

(i) A =
(9 −5
4 5 )
(ii) A =
(13
3 1)
(iii) A =
(−4 12
−3 8 )
(iv) A =
(11
0 2)
.

20. Compute the exponentials of the following matrices:
(i) (01
0 0)
(ii) (ab
0 a
)
, a, b ∈ R (iii) (a 0
0 b
)
, a, b ∈ R (iv) (20
3 2)
.

21. If A =
(a −b
b a )
then prove that e
A
= e
a
(cos b − sin b
sin b cos b
)
.

22. If AB = B A, then show that
(i) e
A
e
B
= e
B
e
A (ii) Ae B
= Be A (iii) e
(A+B)t
= e
At
e
Bt
.

23. If α
∼ is an eigenvector of the matrix A corresponding to the eigenvalue λ,
then show that α

∼ is also an eigenvector of the matrix e

A corresponding to the

eigenvalue e
λ
.
24. For the matrix A =
(11
0 2)
, compute e
A (i) directly from the expression, (ii) by

diagonalizing the matrix A.
25. Find the solution of the following systems using fundamental theorem:
(i) x ̇
∼ =
(01
1 0)
x
∼
, (ii) x  ̇ = A x
∼
, where A =
(5 −3
3 −1
)
, (iii) x ̇
∼ =
( 21
−2 0)
x
∼

(iv) x ̇
∼ = A x
∼
, where A =
⎡
⎣
200
002
020
⎤
⎦ (v) x ̇
∼ = A x
∼
, where A =

⎡
⎢
⎢
⎣
0 −2 −1 −1
12 1 1
01 1 0
00 0 1
⎤
⎥
⎥
⎦.

26. Solve the following system and sketch its phase portrait

d
dt
( x(t)
y(t)
)
=
(−1 −1
1 −1
)( x(t)
y(t)
)
.

27. Solve the initial value problem x ̇
∼ =
(−2 −1
1 2 )
x
∼
, x
∼ (0) =
(1
0
)
and sketch

the solution curve in the phase plane R2.
28. Find the solution of the problem

x  ̈ + αx  ̇ + βx = f (t), x(0) = 1, x ̇(0) = 0
where α, β > 0 are constants and f (t) is a function of t.
29. Find the solution curve of the system x  ̇ = x + y + 1, y  ̇ = x + y subject to the
initial condition x(0) = a, y(0) = b, where a, b are some constants.

30. Consider the nonhomogeneous linear system x ̇
∼
(t) = A x
∼
(t) + b
∼
(t).

Now apply the coordinate transformation x
∼ = P y
∼
, x
∼
, y
∼ ∈ Rn, where P is a
n × n nonsingular matrix. Find the transformed system. Hence show that every
nonhomogeneous system in R2 can be transformed into a nonhomogeneous
system with a Jordan matrix.
31. Does the translation property always hold for nonautonomous system of
equations? Justify your answer.
32. Show that if the coefficient matrix A of a nonhomogeneous system x ̇
∼
(t) =

A x
∼
(t) + b
∼
(t) in R2 has two real distinct eigenvalues, then the system can be
decomposed.
33. Show that x
∼
(t) = x
∼ 0et is a trajectory passing through the point x

∼ 0 of a linear

vector field x ̇
∼ = A x
∼ where A is a constant matrix.

34. Show that x
∼
(t +τ ) = x
∼ 0eA(t+τ ), t, τ ∈ R is also a solution of x ̇
∼ = A x
∼ subject

to the initial condition x
∼
(0) = x
∼0
. Does it violate the uniqueness of solution?

Justify.
35. Define a flow in R2. Write the properties of flow φ(t, x
∼
). Show that φ(t, x
∼
) =

eAt x
∼ satisfies all properties of flow.
36. Find the flow evolution operator φ(t, x
∼
) for the following systems: (i) x  ̇ =
−x, y  ̇ = −2y, (ii) x  ̇ = x y, y  ̇ = y2, (iii) r  ̇ = r (1−r), θ ̇ = 1, (iv) x ̈+  ̇x+x = 0.

References
1. Friedberg S.H., Insel A.J., Spence L.E.: Linear Algebra. Prentice Hall (2003)
2. Hoffman, K., Kunze, R.: Linear Algebra. Prentice Hall (1971)
3. Perko, L.: Differential Equations and Dynamical Systems, 3rd edn. Springer, New York (2001)
4. Jordan, D.W., Smith, P.: Non-linear Ordinary Differential Equations. Oxford University Press,
Oxford (2007)
5. Hirsch, M.W., Smale, S.: Differential Equations. Dynamical Systems and Linear Algebra.
Academic Press, London (1974)


