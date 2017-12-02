#MEP HS 2016
options(scipen = 999)

# Aufgabe 2
altPi <- 70/200

qbinom(0.05, 200, 0.45)
pbinom(78, 200, 0.45)
pbinom(77, 200, 0.45)
binom.test(70, 200, p = 0.45, alternative = "less")

pbinom(70, 200, 0.45)
