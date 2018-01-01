#Bai 01
tong <- function(x, n) {
	ans = 0
	for (i in 1:n)
		ans = ans + x[i]
	return (ans)
}

#Bai 02
df <- function(radius) {
	volume = (4 / 3 * pi * (r ^ 3))
	return (data.frame(radius, volume))
}
r = c(3:20)
df(r)

#Bai 03
data = read.csv("Data/data01.csv", header = TRUE)
age = data[,1]
id = rep(0, length(age))
for (i in 1:length(age)) {
	x = age[i]
	if (x <= 60)
		{id[i] = 0}
	else {
		if (x <= 70)
			{id[i] = 1}
		else {
			if (x <= 80)
				{id[i] = 2}
			else 
				{id[i] = 3}
		}
	}
}
id

#Bai 04
data = read.csv("Data/data11.csv", header = TRUE)
information <- function(data) {

}

#Bai 05
phanvi <- function(x, p) {
	y = sort(x)
	n = length(x)
	i = round(p * n / 100, 0);
	if (p * n %% 100 == 0) {
		return (y[i])
	} else {
		return ((y[i] + y[i + 1]) / 2)
	}
}

#Bai 06
CRMethod <- function(R, c1, c2) {
        n_mean = (c1 + 1) * (c2 + 1) / (R + 1) - 1;
        n_var = (c1 + 1) * (c2 + 1) * (c1 - R) * (c2 - R) / ((R + 1) ^ 2 * (R + 2))
        cat(n_mean - 1.96 * sqrt(n_var), n_mean + 1.96 * sqrt(n_var))
}
CRMethod(4, 12, 15)