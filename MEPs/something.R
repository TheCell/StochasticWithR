# Aufgabe 1
options(scipen = 999)
options(scipen = 2)

# b
pbinom(0, 100, 0.6)

# c
0.6 * 0.6

# Aufgabe 2
# Stochastik 117 pdf seite 125
binom.test(70, 100, 0.6, "greater")
1 - pbinom(69, 100, 0.6)

pbinom(68, 100, 0.8)
hist(dbinom(0:100, 100, 0.8))
