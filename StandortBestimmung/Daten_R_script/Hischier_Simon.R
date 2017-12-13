#######################################################################
##                                                                   ##
##                      Standortbestimmung                           ##
##                                                                   ##
#######################################################################


# Aufgabe 1 a

# Aufgabe 1 b

...

# Quizfragen

# Einlesen der Daten-Datei Schokolade_Nobelpreis.txt
# Daten-File und R-Script File name_vorname.R
# m??ssen im selben Verzeichnis sein

datei <- read.table(file="C:/Users/simon/Google Drive/HSLU/STOC/StochasticWithR/StandortBestimmung/Daten_R_script/Schokolade_Nobelpreis.txt", header=TRUE)


# A 1a
0.993*0.99 + 0.01 * 0.002

# A 1b
0.998 * 0.01 + 0.007 * 0.99

# A 1c meh
#(0.99 + 0.993) / ((0.99 + 0.993) * (0.01 + 0.998))
(0.993*0.99)/(0.98309)

# A4 meh
#(0.01 + 0.002) / ((0.01 + 0.002) * (0.99 + 0.007))
(0.998*0.01)/(0.01)

# A5
0.01*0.998

# A 2b alle P betrachten
dbinom(100, 100, 0.4)
dbinom(59, 100, 0.6)

#A 2c 1 und 5 nicht
0.6 * 0.6

# A 2d
binom.test(77, 100, 0.6, alternative = "less")
1 - sum(dbinom(0:68, 100, 0.6))

# A 2e
binom.test(50, 100, 0.5, alternative = "less")
1 - pbinom(58, 100, 0.5)
pbinom(58, 100, 0.6)
1 - sum(dbinom(0:57, 100, 0.5))
sum(dbinom(59:100, 100, 0.5))
1 - sum(dbinom(59:100, 100, 0.6))

# Q 04
dunif(0.75, 0.0, 1)

# Q 06
cor(datei[,2:3])
