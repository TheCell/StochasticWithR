#exampledata
methodA <- c(2,5,6,7,1,2,3,8,9,4,2,1,6,8,4,3,5,7,8)
methodB <- seq(0, 50, 2)
seite <- c(seq(50, 500, 50))
preis <- c(6.4, 9.5, 15.6, 15.1, 17.8, 23.4, 23.4, 22.5, 26.1, 29.1)

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
