# Aufgabe 8.1 
plot(0:30,dpois(0:30,7.5),type="h",xlab="Anzahl",ylab="Wahrscheinlichkeit",col="blue")
box()
lines(0:30,dpois(0:30,15),type="h",xlab="Anzahl",ylab="Wahrscheinlichkeit",col="red")
abline(v=12.5,col="green")

# Aufgabe 8.2
# 2
plot(dbinom(0:20, 20 ,0.7),type="h",xlab="Anzahl",ylab="Wahrscheinlichkeit",col="blue")
abline(v=10,col="red")
pbinom(10, 20, 0.7)
sum(dbinom(0:5, 20, 0.5))

# 4
pbinom(0:12, 20, 0.7) # Verwerfungsbereich liegt bei bis und mit 10
pbinom(0:14, 20, 0.75)# Verwerfungsbereich liegt bei bis und mit 11
pbinom(10, 20, 0.7) # Macht mit der Herstellerhypothese
pbinom(10, 20, 0.4) # Macht mit der Alternativhypothese

# 5
pbinom(0:12, 20, 0.7) # Verwerfungsbereich liegt bei bis und mit 10
pbinom(10, 20, 0.4) # Macht mit der Alternativhypothese

# 6
binom.test(5, 20, 0.4, alternative = "less")

# Aufgabe 8.3

# (a)
pi.trial <- seq(0.14,0,-0.01)
for (i in 1:length(pi.trial)){
  p <- sum(dbinom(7:50,size=50,prob=pi.trial[i]))
  cat(pi.trial[i],p,"\n")
}

pi.trial <- seq(0.15,0.50,0.01)
for (i in 1:length(pi.trial)){
  p <- pbinom(q=7,size=50,prob=pi.trial[i])
  cat(pi.trial[i],p,"\n")  
}

binom.test(7,50,alternative="two.sided")

# (b)
p <- 0.3
x <- rbinom(20,50, p)

# Aufgabe 8.4
# a)
# Erwartung 19x

p <- 0.3
x <- rbinom(20, 50, p)
## Grenzen der Intervalle in Matrix speichern
## 1. Spalte ist untere Grenze, 2. Spalte obere 
confint.bound  <- matrix(0, nrow = 20, ncol = 2) 
contains.truth <- logical(20)
## Alle 20 Faelle untersuchen und Grenzen speichern 
for(i in 1:20){
  test <- binom.test(x[i],50,p) ## Setzen Sie die richtigen Argumente!
  confint.bound[i,] <- test$conf.int 
  contains.truth[i] <-
    (p >= confint.bound[i,1]) & (p <= confint.bound[i,2])
}
sum(contains.truth)

# (b)

## Relative Haeufigkeiten plotten
plot(x / 50, 1:20, xlim = c(0, 1), xlab = "Probability",
     ylab = "Simulation Number")
## Vertrauensintervalle als Liniensegemente plotten 
for(i in 1:20){
  segments(confint.bound[i,1], i, confint.bound[i,2], i)
}
## Wahrer Wert als vertikale Linie einzeichnen
abline(v = 0.3)
