# A 9.4 a)
pnorm(40, 32, 6)

# c)
pnorm(27, 32, 6)

# d)
qnorm(0.975, 32, 6)

# e)
qnorm(0.1, 32, 6)
#test dazu:
pnorm(24.31069, 32, 6)

# f)
pnorm(38, 32, 6) - pnorm(26, 32, 6)


# Kreispunkte
n <- 1000
x <- runif(n, min=-1, max=1)
hist(x)
y <- runif(n, min=-1, max=1)

plot(x,y)

p.circle <- sum(sqrt(x^2+y^2)<1)

# 9.5
# a)
sdVal <- 0.45
meanVal <- 0

# probability rauschen so stark, das per zufall eine 1 
1 - pnorm(0.9, meanVal, sdVal)

# b)
qnorm(0.995, meanVal, sdVal) - qnorm(0.005, meanVal, sdVal)
# linker Rand
qnorm(0.005, meanVal, sdVal)
# rechter Rand
qnorm(0.995, meanVal, sdVal)

# c)
# Alle Wahrscheinlichkeiten der Signale die weniger als 0.9 Volt ergeben können ignoriert werden
pnorm(0.9, 1.8, sdVal)

# 9.6
sdVal <- 0.0005
meanVal <- 0.2508

# a)
pnorm(0.2515, meanVal, sdVal) - pnorm(0.2485, meanVal, sdVal)

# b)
pnorm(0.2515, 0.2500, sdVal) - pnorm(0.2485, 0.2500, sdVal)


# 9.3
lambda <- 0.04
# Erwartungswert
1/lambda
# Median
log(2)/lambda
#lambda * pexp()