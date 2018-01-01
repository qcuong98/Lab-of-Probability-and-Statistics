#Bai 01
x = c(1,2,5,7,-3,0,5,1,5,6) 
y = c(2,2,0,-5,7,8,11,9,3,2)
x + y
x - y
x * y

z = x[x %% 2 == 0]
z

t = y[y %% 2 == 1]
t
sort(x, decreasing = FALSE)
sort(y, decreasing = TRUE)

#Bai 02
data = read.csv("Data/data01.csv")

FPSA = data[,2] #data$FPSA or data['FPSA']
mean(FPSA)
var(FPSA)
median(FPSA)

boxplot(FPSA, horizontal = T)

K = data[,4]
k0 = FPSA[K == 0]
k1 = FPSA[K == 1]

data2 = read.csv("Data/data02.csv")
data3 = merge(data, data2, by = 'K')

Age = data[,1]
tPSA = Age
tPSA[Age <= 30] = 0
tPSA[30 < Age & Age <= 50] = 1
tPSA[50 < Age] = 2