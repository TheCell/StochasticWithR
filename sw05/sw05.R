
# Quizfrage Varianz. X
(0 - 0.8)^2 * 0.5 + (1 - 0.8)^2 * 0.2 + (2 - 0.8)^2 * 0.3

#Angenommen X∼Bin(n=5,π=0.2). Was ist P(X=3)?
# Erwartung, Wie viel mal?, Wahrscheinlichkeit
dbinom(3, 5, 0.2)

#Wir sind bei einem Abendessen mit Freunden insgesamt 8 Personen. Jeder stösst mit jedem einmal an. Wie oft klingen die Gläser?
n <- 8
( n*(n-1) ) / 2

# Wir betrachten eine Gruppe aus 2 Männern und 2 Frauen. Es wird zufällig ein Team aus 3 Personen gebildet. Sei X die Zufallsvariable, die die Anzahl Frauen in dem Team angibt. Richtig oder Falsch:
# X Bin(n=3,π=0.5)
dbinom(2, 3, 0.5)
# Das Modell stimmt nicht und ist auch nur eine unbrauchbare Näherung.

# Ein Casino kauft 100 neue Spielautomaten. Pro Abend werden ca. 100 Spiele pro Automat gemacht. Sowohl einzelne Spiele als auch verschiedene Automaten sind unabhängig. Pro Spiel und Automat folgt der Gewinn folgender Verteilung:
# X   -1   0   1
# X=x 0.3 0.2 0.5
AnzahlSpiele <- 100*100
mittelwert <- (-1*0.3+0*0.2+1*0.5) * AnzahlSpiele
# Var(X) = ∑x (x − E(X))^2*P(X = x)
erwartungswert <- -1*0.3 + 0*0.2 + 1*0.5
varianzX <- (-1 - erwartungswert)^2*0.3 + (0 - erwartungswert)^2*0.2 + (1 - erwartungswert)^2*0.5
varianzProAbend <- varianzX * AnzahlSpiele

# E(X)=−1⋅0.3+0⋅0.2+1⋅0.5=0.2
#σ2=E(X2)−E(X)2=0.8−0.22=0.76
#also ist der Mittelwert und die Varianz des Gewinns pro Abend: n⋅μ=2000 und n⋅σ2=7600.


# Wir nehmen an, die Wahrscheinlichkeit, dass bei einem Atomkraftwerk eine Kernschmelze eintrete, betrage p=10−6, und die Wahrscheinlichkeit, dass nichts passiert, sei 1−p. Falls eine Kernschmelze eintritt, so betrage der Schaden S=1′000′000 CHF, ansonsten entsteht kein Schaden (S=0). Wie gross ist die Standardabweichung des zufälligen Schadens S? (Nachkommastellen sind gerundet).
p = 10^-6
1 - p
varianz <- (0-10^-6)^2 * (1 - p)^2 + (1000000 - p)^2 * p
sqrt(varianz)

# Angenommen, 30% der Bevölkerung sind Raucher. Wie gross ist ungefähr die Standardabweichung der Anzahl Raucher unter 100 zufällig ausgewählten Personen?
Erwartungswert <- (100 * 0.3)
varianz <- Erwartungswert*(1-0.3)
stdabweichung <- sqrt(varianz)

#Die Anzahl Aufträge für ein Strassenbauunternehmen kann mit einer Poisson-Verteilung modelliert werden. Die erwartete Anzahl Aufträge pro Monat sei 5. Welche der folgenden Aussagen ist korrekt?
erwartungProMonat <- 5

