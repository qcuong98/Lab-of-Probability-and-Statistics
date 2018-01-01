#Bai 01
data1 = read.csv("Data/profit.csv", header = T)
#data1 = read.csv(file.choose(), header = T)

x1 = data1[,1]
hist(x1)

x2 = x1[x1 > 65]
ci.mean = function(x, alpha){
        x.mean = mean(x)
        n = length (x)
        s = sd(x)
        epsilon = qt(df = n - 1,1 - alpha / 2) * s / sqrt(n)
        #Khi n >= 30 thi qt xap xi qnorm
        c(x.mean - epsilon, x.mean + epsilon)
}
ci.mean(x2, 0.01)

#n nho dung binom.test, n lon dung prop.test
t.test(x1, alternative = "less", mu = 60, conf.level=0.99)
#p-value nho hon 0.05 nen bac bo H0

