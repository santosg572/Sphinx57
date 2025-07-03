file = 'direc.csv'

fil = open(file, 'r')

datos = fil.readlines()

nombres = []

for ss in datos:
  ss = ss.replace('\n','')
  cc = ss.split(',')
  nombres.append(cc[1])

print(nombres)
print(dir(nombres))

nombres.sort()
print(nombres)

