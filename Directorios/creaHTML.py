import sys

#print "test1"
#print sys.argv[0]
#print sys.argv[1]
#print len(sys.argv)

file = sys.argv[1]
#file = input("Introduce el nombre del archivo de directorios: ")

fil = open(file+'.txt', 'r')
filo = open(file+'.html', 'w')

datos = fil.readlines()
fil.close()

c1 = '''
<!DOCTYPE html>
<html>
<head>
<style>
h1 {
  font-size: 40px;
}

h2 {
  font-size: 30px;
}

p {
  font-size: 20px;
}
</style>
</head>
<body>
'''

c2 = '''
</body>
</html>
'''

filo.write(c1)

k = 1

for ss in datos:
  ss = ss.replace('\n','')
  ss = '<a href="' + ss + '"> ' + ss + '</a>' 
  ssn = '<p> ' + ss + ' </p> \n'
  filo.write(ssn)
  k = k+1

filo.write(c2)

filo.close()



