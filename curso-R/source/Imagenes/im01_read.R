rm(list=ls())

library(jpeg)

img = readJPEG('img.jpg')

print(img)

image(img, col = gray.colors(256))






