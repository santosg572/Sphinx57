n = 100

peso = round(runif(n, min=60, max=75))
edad = round(rnorm(n, mean=57, sd=5))

print(peso)
print(edad)

y = 2 + 3*peso - 4*edad

y = y+ rnorm(100, sd=4)

library(rgl)

yr = lm(y ~ peso + edad)

print(summary(yr))

mat <- matrix(c(rep(1,n),peso, edad), ncol=3)

A <- t(mat) %*% mat
B <- t(mat) %*% y

print('AAAAAAAAAAAAAAAA')
print(A)
print(B)

cons = solve(A) %*% B
print(cons)
print('----------------')

open3d()
plot3d(peso, edad,y)


 

