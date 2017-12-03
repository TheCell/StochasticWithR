options(scipen = 999)

# a)
# i)
A <- 1198 / 1647
Ac <- 1 - A

# ii)
BA <- 825 / 1198
BAc <- 108 / 449

# iii)
C <- 646 / 1647
Cc <- 1 - C

AundC <- 533 / 1647
AcundC <- 113 / 1647

# b)
# i)
B <- BA * A + BAc * Ac
C <- AundC + AcundC

# ii)
AundB <- BA * A
AcundB <- BAc * Ac

CA <- AundC / A
CAc <- AcundC / A
