rm(list=ls())

library(jpeg)

img = readJPEG('eisten02.jpg')

print(dim(img))

img = img[,,1]

print(min(img))
print(max(img))

image(img, col = gray.colors(10000))






