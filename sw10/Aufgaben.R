# 10.4
options(scipen = 5)
n <- 50
erwarungswert <- 1
standardabweichung <- 2

# b)
pnorm(2, erwarungswert, standardabweichung) - pnorm(0, erwarungswert, standardabweichung)

# c)
pnorm(51, 50, sqrt(standardabweichung^2 * n)) - pnorm (49, 50, sqrt(standardabweichung^2 * n))

# d)
pnorm(49 / n, 50, sqrt(standardabweichung^2 * n)) - pnorm(51 / n, 50, sqrt(standardabweichung^2 * n)/n)


# 10.5
# a)
methodA <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80.00, 80.02)
methodB <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97)
mean(methodA)
mean(methodB)

# Absoluter Fehler
sx <- sd(methodA)
sxb <- sd(methodB)
(mean(methodA) + sx/sqrt(length(methodA))) - (mean(methodA) - sx/sqrt(length(methodA)))
(mean(methodB) + sxb/sqrt(length(methodB))) - (mean(methodB) - sxb/sqrt(length(methodB)))

(mean(methodA) + (sx/sqrt(length(methodA)))/(mean(methodA))) - (mean(methodA) - (sx/sqrt(length(methodA)))/(mean(methodA)))
mean(methodB)