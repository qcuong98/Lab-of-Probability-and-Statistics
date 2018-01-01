#Bai 01
x = 0:15
plot(x, dhyper(x, 25, 100 - 25, 15), type = "h")

#Bai 02
sum(dhyper(5:15, 25, 75, 15))
phyper(12, 25, 75, 15) - phyper(4, 25, 75, 15)

#Bai 03
curve(dexp(x, 0.6), 0, 10)
curve(dexp(x, 0.3), 0, 10, add = T)
pexp(10, 0.6) - pexp(0, 0.6)
pexp(10, 0.3) - pexp(0, 0.3)

#Bai 04
x = 0:8
plot(x, dpois(x, 1), type = "h")

#Bai 05
x = 0:10
plot(x, dchisq(x, 3), type = "h")

#Bai 06
layout(matrix(c(1, 2), nrow = 1))
x = 0:50
plot(x, ylim = c(0, 0.25), dbinom(x, 50, 0.08), type = "h")
plot(x, ylim = c(0, 0.25), dpois(x, 50 * 0.08), type = "l")


#Bai 07
x = 0:50
plot(x, dbinom(x, 50, 0.4))
curve(dnorm(x, 20, 12), 0, 50, add = T)