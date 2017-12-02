#MEP FS15
messungen <- c(8.18, 8.16, 8.17, 8.22, 8.19, 8.17, 8.15, 8.21, 8.16, 8.18)
messungSd = 0.02
messungSig = 0.05

summary(messungen)

# a)
# Verwerfungsbereich
qnorm(0.025, 8.2, messungSd/sqrt(length(messungen)))
qnorm(0.975, 8.2, messungSd/sqrt(length(messungen)))

# b)
sd(messungen)

#...