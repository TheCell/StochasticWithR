#setwd("C:/Users/simon/Google Drive/HSLU/STOC/StochasticWithR/sw03/")
#data <- read.table(file="Schokolade_Nobelpreis.txt", sep=" ", header=TRUE)

# SW 3

# Aufgabe 1
# a
#Messungen <- c(rep(2, 18), rep(5, 17))
anzahl.zerfaelle <- seq(2,17,by=1)
anzahl.beobachtungen <- c(18,28,56,105,126,146,164,161,123,101,74,53,23,15,9,5)
messungen <- rep(anzahl.zerfaelle,anzahl.beobachtungen)
sum(messungen)

# b
hist(messungen,breaks=c(0,anzahl.zerfaelle[-16],25),
     xlab="Anzahl Zerfaelle in 10 Sekunden", main="messungen", freq=TRUE)
box()

# Balkenfläche ist die Relative Häufigkeit
hist(messungen,breaks=c(0,anzahl.zerfaelle[-16],25),
     xlab="Anzahl Zerfaelle in 10 Sekunden", main="messungen", freq=FALSE)
box()

# c
wahrscheinlichkeiten <- anzahl.beobachtungen/sum(anzahl.beobachtungen)
plot(anzahl.zerfaelle,wahrscheinlichkeiten,type="h",
     xlab="Anzahl Zerfaelle in 10 Sekunden", ylab="Wahrscheinlichkeit")
# e
mean(messungen)
median(messungen)
sd(messungen)

plot(anzahl.zerfaelle,wahrscheinlichkeiten,type="h",
     xlab="Anzahl Zerfaelle in 10 Sekunden", ylab="Wahrscheinlichkeit")
abline(v=8.37,col="red")
lines(x=c(8.37-2.92,8.37+2.92),y=c(0.08,0.08),col="blue")

# f
# kumulative Verteilungsfunktion
n <- length(messungen)
plot(sort(messungen),(1:n)/n, type="s",ylim=c(0,1),
     xlab="Anzahl Zerfaelle in 10 Sekunden")
abline(h=0.5)