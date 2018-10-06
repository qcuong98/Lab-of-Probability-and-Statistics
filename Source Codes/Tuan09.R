#Cau a
#H0: m1 = m2
#H1: m1 # m2
data = read.csv("Data/volume.csv", header = T)
attach(data)
t.test(x = machine1, y = machine2, alternative = "two.sided", conf.level = 1 - 0.05)
#p-value lon hon alpha khong co can cu bac bo H0

#Cau b
#Dua vao cau a

#Cau c
#Dua vao cau a

#Cau d
test.leq.oneside = function(x, y, mu0, sig1, sig2, alpha) {
        z0 = (mean(x) - mean(y)) / sqrt( sig1 ^ 2 / length(x) + sig2 ^ 2 / length(y))
        p.value = dnorm(z0)
        res = ifelse(p.value < alpha, "Bac bo H0", "Khong co can cu Bac bo H0")
        cat(res)
}
test.leq.oneside(machine1, machine2, 1,0.002, 0.0025, 0.05)

#Cau e
test.geq.oneside = function(x, y, mu0, sig1, sig2, alpha) {
        z0 = (mean(x) - mean(y)) / sqrt( sig1 ^ 2 / length(x) + sig2 ^ 2 / length(y))
        p.value = 1 - dnorm(z0)
        res = ifelse(p.value < alpha, "Bac bo H0", "Khong co can cu Bac bo H0")
        cat(res)
}
test.geq.oneside(machine1, machine2, 1,0.002, 0.0025, 0.05)