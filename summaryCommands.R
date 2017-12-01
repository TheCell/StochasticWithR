#exampledata
methodA <- c(2,5,6,7,1,2,3,8,9,4,2,1,6,8,4,3,5,7,8)
methodB <- seq(0, 50, 2)
seite <- c(seq(50, 500, 50))
preis <- c(6.4, 9.5, 15.6, 15.1, 17.8, 23.4, 23.4, 22.5, 26.1, 29.1)
poissZahlen <- rpois(50, lambda = 5)

#Kennzahlen
arithmetischesMittel <- mean(methodA)
empirischeVarianz <- var(methodA)
standardabweichung <- sd(methodA) # oder sqrt(var())
median <- median(methodA)

unteresQuartil <- quantile(methodA, 0.25, type = 2)
oberesQuartil <- quantile(methodA, 0.75, type = 2)
unteresUndObereseQuartil <- quantile(methodA, seq(0.25, 1, 0.50), type = 2)
streuungsmass <- quantile(methodA, 0.75, type = 2) - quantile(methodA, 0.25, type = 2)

#Grafische Methoden
hist(methodA, main = "Histogramm von Methode A")
hist(methodA, breaks = 7, main = "Histogramm von Methode A")
hist(methodA, freq = F, main = "Histogramm von Methode A")

boxplot(methodA)

#empirische kumulative Verteilungsfunktion
plot(sort(methodA), (1:length(methodA))/length(methodA), type = "s", ylim = c(0, 1), ylab = "Kumulative Verteilungsfunktion", xlab = "Methode A")
abline(h=0.5)

#Streudiagramm
plot(methodB[1:19], methodA)

# Einfache lineare Regression
plot(seite, preis)
abline(lm(preis~seite))

#corelationsfaktor
# hoch
cor(seite, preis)
# tief
cor(methodB[1:19], methodA)

# Grund für Binomial
#1. Unabhängig
#2. Habe nur 1 oder 0
#3. Habe endliche Anzahl Werte
plot( dbinom(0:10, 10, 0.5) ) # von 0 bis .. jeweils einzelwahrscheinlichkeit
plot( pbinom(0:10, 10, 0.5) ) # von 0 bis .. Wahrscheinlichkeit aufsummieren
hist( rbinom(100, 10, 0.5) ) # 100 Ergebnise mit 10 Patienten # Erfolgreich bei Wahrscheinlichkeit 0.5
qbinom(0.5, 10, 0.5) # q = Quantil, Das ist der Median in dem Fall weil 50% Quantil (0.5)

# Grund für Poisson-Verterilung
# n unbekannt bzw. unbeschränkt
# Zahlen beliebig
# Regel:
# lambda > 0
# Generiert 10 Daten mit verteilung um Lambda
rpois(10, Lambda = 5)
# punktWahrscheinlichkeit für jede Zahl bei Verteilung um Lambda
dpois(poissZahlen, lambda = 5)
# poisson Wahrscheinlichkeit Kumulativ von 0 bis und mit 4
ppois(0:4, lambda = 5)

# todo
binom.test(25, 100, 0.3, alternative = "greater")

# Keine e-xx Zahlen mehr
options(scipen = 999)