# 4.4
ges <- 1647
m <- 1198
w <- 449
mB <- 825
mBc <- 373
wB <- 108
wBc <- 341
B <- 933
Bc <- 714

# i)
#P[A]
1/ges*m
#P[Ac]
1/ges*w

# ii)
#P[B|A] -> P[BnA]/P[A]
prozentAB <- 1/m*mB
prozentABc <- 1/m*mBc
#P[B|Ac]
protenzAcB <- 1/w*wB
protenzAcBc <- 1/w*wBc

# iii)
# P[AnC]
prozentAnC <- 1/ges*533
# P[AcnC]
prozentAcnC <- 1/ges*113

# b)
# P[B] = P[A] * P[B|A] + P[Ac] * P[B|Ac]

# P[A]
PA <- 1/ges*m
# P[B|A]
PBA <- PA*1/m*mB
# P[Ac] probability Bewerberin
PAc <- 1/ges*w
# P[B|Ac] probability Bewerberin am Dep 1
#PBAc <- PAc*1/B*wB
