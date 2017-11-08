# Grund für Binomial
#1. Unabhängig
#2. Habe nur 1 oder 0
#3. Habe endliche Anzahl Werte
plot( dbinom(0:10, 10, 0.5) ) # von 0 bis .. jeweils einzelwahrscheinlichkeit
plot( pbinom(0:10, 10, 0.5) ) # von 0 bis .. Wahrscheinlichkeit aufsummieren


plot (dbinom(0:10, 10, 0.3))
pbinom(2, 10, 0.3)

# A7.1
plot( dbinom(3:10, 10, 0.3) )
dbinom(3:10, 10, 0.3)
for (i in 0:10)
{
  p <- sum(dbinom(i:10, 10, prob=0.3))
  cat(i, p, "\n")
}

# A7.2
#a
plot( dbinom(0:30, 100, 0.15) )
plot( dbinom(0:16, 16, 0.15) )
for (i in 0:16)
{
  p <- sum(dbinom(i:16, 16, 0.15))
  cat(i, p, '\n')
}

#b
1 - pbinom(5, 16, 0.30)
1 - sum( dbinom(0:5, 16, 0.30) )
sum ( dbinom(6:16, 16, 0.30) )

# A7.3
dbinom(0:5, 50, 0.1)
plot( dbinom(0:50, 50, 0.1) )
pbinom(0:5, 50, 0.1) # THIS weil X <= c

# A7.4
# a
dbinom(1, 4, 0.1)
plot (dbinom(0:4, 4, 0.1))

# b
dbinom(0:26, 28, 0.9)
plot (dbinom(0:28, 28, 0.9))
# ???

# c
# Wahrscheinlichkeit, dass 2 Personen den Flug nicht Antreten

