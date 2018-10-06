#Bai 01
f <- function(p) { 0.07 * (p ** (-0.93)) };
F <- function(p) integrate(f, lower = 0, upper = p)
F(0.2)

#Bai 02
n = 100
x = sample(1:5, 100, TRUE, c(0.1, 0.2, 0.4, 0.2, 0.1))
plot(1:5, table(x) / n, type = "h", xlab = "x", ylab = "P(X = x)")