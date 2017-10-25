############################################
##
##          SERIE 6
##
############################################

#Quizfragen
# Sie machen ein weiteres Experiment und beobachten 20 Zerfälle in 10 Sekunden. Wenn Sie eine Million Experimente durchführen, wie oft werden Sie ein solches oder extremeres Ereignis beobachten?
1 - ppois(19, 8.37)
(1 - ppois(19, 8.37)) * 10^6

# Aufgabe 1
anzahl.zerfaelle <- seq(0, 10000000, by = 1)
plot(anzahl.zerfaelle, dpois(anzahl.zerfaelle,
                             lambda = 8.37), type = "h",
     xlab = "Anzahl Zerfaelle in 10 Sekunden",
     ylab = "Wahrscheinlichkeit")

anzahl.zerfaelle <- seq(0, 25, by = 1)
plot(anzahl.zerfaelle, dpois(anzahl.zerfaelle,
                             lambda = 8.37), type = "h",
     xlab = "Anzahl Zerfaelle in 10 Sekunden",
     ylab = "Wahrscheinlichkeit")
abline(v = 8.37, col = "red")
lines(x = c(8.37 - 2.89, 8.37 +
              2.89), y = c(0.08, 0.08), col = "blue")



# Aufgabe 2

# Laden des package stats4 mit der Funktion mle(...)

require(stats4)
x.i <- c(2, 4) # gezogene Gewinne
n.i <- c(30, 50) # Anzahl gezogener Karten

# Definition der negativen Log-Likelihood-Funktion;
# log=TRUE fuehrt dazu, dass der Logarithmus der Wkeit
# berechnet wird
nLL <- function(pi, n) {
  -sum(dbinom(x.i, prob = pi, size = n.i, log = TRUE))
}
# Schaetzung des Parameters pi mit Startwert pi=0.010
# und festen Parametern n=30,50
fit0 <- mle(nLL, start = list(pi = 0.01), fixed = list(n = n.i),
            nobs = NROW(x.i))
fit0