#Bai 01
Y <- function() rnorm(1, 0, 1) ** 2 + rnorm(1, 0, 1) ** 2;
VecY <- function(n) replicate(n, Y())
n = 10000
hist(VecY(n), freq = 0, breaks = 40)
curve(dchisq(x, 2), from = 0, to = 8, add = T)