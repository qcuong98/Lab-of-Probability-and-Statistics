#Bai 01
x <- c(4, 2, 6)
y <- c(1, 0, -1)

length(x)
sum(x)
sum(x ^ 2)
x + y
x * y
x - 2
x ^ 2

#Bai 02
7:11
seq(2, 9)
seq(4, 10, by = 2)
seq(3, 10, length = 10)
seq(6, -4, by = -2)

#Bai 03
rep(2, 4)
rep(c(1, 2), 4)
rep(c(1, 2), c(4, 4))
rep(1:4, 4)
rep(1:4, rep(3, 4))

#Bai 04
rep(6, 6)
rep(c(5, 8), 4)
rep(c(5, 8), c(4, 4))

#Bai 05
x <- c(5, 9, 2, 3, 4, 6, 7, 0, 8, 12, 2, 9)
x[2]
x[2:4]
x[c(2, 3, 6)]
x[c(1:5, 10:12)]
x[-(10:12)]

#Bai 06
y <- c(33, 44, 29, 16, 25, 45, 33, 19, 54, 22, 21, 49, 11, 24, 56)
for (i in 1:5) {
        v <- c()
        for (j in 1:3)
                v <- c(v, (i - 1) * 3 + j)
        print(summary(y[v]))
}
for (i in 1:3) {
        v <- c()
        for (j in 1:5)
                v <- c(v, i + (j - 1) * 3)
        print(summary(y[v]))
}

#Bai 07
x <- matrix(data = c(3, -1, 2, 1), nrow = 2, ncol = 2)
y <- matrix(data = c(1, 0, 4, 1, 0, -1), nrow = 2, ncol = 3)
z <- matrix(data = c(1, 2), nrow = 1, ncol = 2)
2 * x
x * x
x %*% x
x %*% y
t(y)
solve(x)

#Bai 08
x[1,]
x[2,]
x[,2]
y[1, 2]
y[, 2:3]

#Bai 09
x <- data.frame(quakes)
summary(x$depth)
summary(x$mag)

y <- data.frame(mtcars)
mean(y$wt)
mean(y$mpg)