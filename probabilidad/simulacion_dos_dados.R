s1 = c(1,2,3,4,5,6)

n = 100

ss = rep(0, 12)

for (i in 1:n){
  dd = sample(s1, 2, replace=T)
  j = sum(dd)
  ss[j] = ss[j] +1
}

for (i in 1:12){
  cat(i, ' - ', ss[i],'\n')
}




