setwd("C:/Users/simon/Google Drive/HSLU/STOC/StochasticWithR/sw11/")

## Demonstration Betondruckfestigkeit

## Histogramm plotten
x <- c(24.4,27.6,27.8,27.9,28.5,30.1,30.1,30.3,31.7,32.2, 32.8,33.3,33.5,34.1,34.6,35.8,35.9,36.8,37.1,39.2,39.7)
hist(x,freq=FALSE)
box()

## Theoretische Verteilung

curve(dnorm(x,mean=mean(x),sd=sd(x)),add=T)

## Prozentsaetze der Datenpunkte, die kleiner als 
## ein gegebener Datenpunkt liegen

# x{a*n + 0.5} (a*n + 0.5 = k)
# k = a*n + 1
# (k - 0.5) / n = a
alphak <- (seq(1,length(x),by=1)-0.5)/length(x) 
alphak	

## Theoretische Quantile 

quantile.theor <- qnorm(alphak,mean=mean(x),sd=sd(x))

## 	Empirische Quantile

quantile.empir <- sort(x)

qqplot(quantile.theor, quantile.empir, xlab="Theoretische Quantile", ylab="Empirische Quantile")
qqnorm(x)
qqline(x)

besp <- rnorm(100)
qqnorm(besp)
qqline(besp)

# Aufgabe 2


# Mehrere Grafiken neben- und untereinander 
par(mfrow=c(4,2)) 
# moegliche Werte von X
werte <- c(0,10,11) 
# X simulieren
sim <- sample(werte,1000, replace = TRUE)  
# Histogramm erstellen
hist(sim,main=paste("Original"))   
# Normalplot erstellen         
qqnorm(sim)

n<-5
# X_1,...,X_n simulieren und in einer n-spaltigen Matrix (mit 1000 Zeilen) anordnen
sim<-matrix(sample(werte,n*1000,replace=TRUE),ncol=n)
#In jeder Matrixzeile Mittelwert berechnen
sim.mean<- apply(sim,1,"mean")   
hist(sim.mean,main=paste("Mittelwerte von",n,"Beobachtungen"))
qqnorm(sim.mean)

n<-10
# X_1,...,X_n simulieren und in einer n-spaltigen Matrix (mit 1000 Zeilen) anordnen
sim<-matrix(sample(werte,n*1000,replace=TRUE),ncol=n)   
#In jeder Matrixzeile Mittelwert berechnen  
sim.mean<- apply(sim,1,"mean")   
hist(sim.mean,main=paste("Mittelwerte von",n,"Beobachtungen"))
qqnorm(sim.mean)

n<-200
# X_1,...,X_n simulieren und in einer n-spaltigen Matrix (mit 1000 Zeilen) anordnen
sim<-matrix(sample(werte,n*1000,replace=TRUE),ncol=n)   
#In jeder Matrixzeile Mittelwert berechnen 
sim.mean<- apply(sim,1,"mean")   
hist(sim.mean,main=paste("Mittelwerte von",n,"Beobachtungen"))
qqnorm(sim.mean)

n<-200000
# X_1,...,X_n simulieren und in einer n-spaltigen Matrix (mit 1000 Zeilen) anordnen
sim<-matrix(sample(werte,n*1000,replace=TRUE),ncol=n)   
#In jeder Matrixzeile Mittelwert berechnen 
sim.mean<- apply(sim,1,"mean")   
hist(sim.mean,main=paste("Mittelwerte von",n,"Beobachtungen"))
qqnorm(sim.mean)



mean(sim.mean)

sd(sim.mean)


# Live Voting

n<-200
# X_1,...,X_n simulieren und in einer n-spaltigen Matrix (mit 1000 Zeilen) anordnen
sim<-matrix(sample(werte,n*1000,replace=TRUE),ncol=n)   
#In jeder Matrixzeile Mittelwert berechnen 
sim.mean<- apply(sim,1,"mean")   
hist(sim.mean,main=paste("Mittelwerte von",n,"Beobachtungen"))
qqnorm(sim.mean)

mean(sim.mean)
sd(sim.mean)



# Aufgabe 5 

# c)

x <- c(16.9, 4.20, 6.70, 8.83, 10.7, 22.4, 1.37, 3.00, 4.82, 4.53, 6.77, 4.81)
alphak <- (seq(1,12, by=1)-0.5)/12
qqplot(-log(1-alphak), sort(x), xlab="Theoretische Quantile", ylab="Empirische Quantile")

# Aufgabe 11.3
iron <- read.table(file="ironF3.dat", header=TRUE)
summary(iron)
# a
boxplot(iron)

# b
boxplot(log(iron))

# c
qqnorm(iron[,2])
# vorsicht, dabei muss dann mean etc.
# auch mit logarithmus angeschaut werden weil die daten transformiert wurden
qqnorm(log(iron[,2]))

# d
mean(iron[,2])
sd(iron[,2])

# Aufgabe 11.7

# Grenze des Verwerfungsbereiches
-1.64*1.5/sqrt(12)+70

# 2 seitiger test
qnorm(0.025)*1.5/sqrt(12)+70
qnorm(0.975)*1.5/sqrt(12)+70
