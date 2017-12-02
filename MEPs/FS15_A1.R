#MEP FS15
alleBewerber <- 1647
mBewerber <- 1198
wBewerber <- 449

# a) i)
# P(A)
pA <- mBewerber / alleBewerber
# P(Ac)
pAc <- wBewerber / alleBewerber

# ii)
aDep1 <- 825
aDep2 <- 373
aDepGes <- aDep1 + aDep2

aDep1 / aDepGes
aDep2 / aDepGes

acDep1 <- 108
acDep2 <- 341
acDepGes <- acDep1 + acDep2

acDep1 / acDepGes
acDep2 / acDepGes

#P(B|A)
pBA <- aDep1 / mBewerber
#P(B|Ac)
pBAc <- acDep1 / wBewerber

anzZugelassen <- 646
anzZugelassenM <- 533
anzZugelassenW <- 113

# iii)
# P(A und C)
pAundC <- anzZugelassenM / alleBewerber
# P(Ac und C)
pAcundC <- anzZugelassenW / alleBewerber

# b)
# i)
# P(B) Bewerber am Dep 1
pBA*pA + pBAc * pAc

# P(C) Bewerber am Dep 1 und wird zugelassen
pAundC + pAcundC

# ii)
# P(B)
pA * pBA
# P(C)
pAc * pBAc

# iii)
(pAundC) / pA
(pAcundC) / pAc