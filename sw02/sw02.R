# Quizfragen

setwd("C:/Users/simon/Google Drive/HSLU/STOC/StochasticWithR/sw02/")
data <- read.table(file="Schokolade_Nobelpreis.txt", sep=" ", header=TRUE)
geysir <- read.table(file="geysir.dat", sep=" ", header=TRUE)
income <- read.table(file="income.dat", sep=" ", header=TRUE)
schlamm.all <- read.table(file="klaerschlamm.dat", sep=" ", header=TRUE)
schlamm <- schlamm.all[,-1]

#Korrelationskoeffizient
plot(data[2:3])
cor(data[2:3])

#20%quantil
numbers <- c(1, 3, 4, 5, 6, 10, 23, 46)
quantile(numbers,.20)

numbers <- c(1, 3, 4, 5, 6, 10, 23)
median(numbers)
mean(numbers) #arithmetisches Mittel (Durchschnitt)

numbers <- c(1, 3, 4, 5, 6, 10, 2300)
median(numbers)
mean(numbers) #arithmetisches Mittel (Durchschnitt)

#Aufgabe 2.1
#geysir
head(geysir)
summary(geysir)
dim(geysir)
nrow(geysir)
ncol(geysir)
colnames(geysir)
geysir[,"Zeitspanne"]
geysir[,2]
par(mfrow = c(2,2)) 
hist(geysir[,"Zeitspanne"])
hist(geysir[,"Zeitspanne"], breaks = 20)
hist(geysir[,"Zeitspanne"], breaks = seq(41, 96, by = 11))

# Sturges Rule
1+3.3*log10(nrow(geysir))

# (b)

hist(geysir[,"Eruptionsdauer"])
hist(geysir[,"Eruptionsdauer"], freq=FALSE)
plot(geysir[,"Zeitspanne"], geysir[,"Eruptionsdauer"])
identify(geysir[,"Zeitspanne"], geysir[,"Eruptionsdauer"], plot=TRUE)

cor(geysir[,"Eruptionsdauer"],geysir[,"Zeitspanne"])

# (c)
eruptionsdauern <- geysir[,"Eruptionsdauer"]
n <- length(eruptionsdauern)
plot(sort(eruptionsdauern), (1:n)/n , type="s", ylim=c(0,1), 
     ylab="Kumulative Verteilungsfunktion", 
     xlab="Der Groesse nach geordnete Eruptionszeiten (in Minuten)", 
     main="")
abline(h=0.5)
abline(v=3.8)

#Aufgabe 2.2
daten <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)
datenChanged <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 1, 5.9, 6, 4, 1, 5, 5.2, 4.5, 3.6, 5, 6, 1, 3.3, 5.5, 4.2, 4.9, 5.1)
summary(daten)
summary(datenChanged)
hist(daten)
hist(datenChanged)
boxplot(daten)
boxplot(datenChanged)

#Aufgaben 2.3
# a
boxplot(schlamm)
abline(h=400)
summary(schlamm)

# b
#boxplot(t(schlamm))
#abline(h=400)
summary(t(schlamm))
#medians <- apply(t(schlamm), 2, median)
#medianOfAll <- median(medians)
#medianOfAll
mediansAll <- apply(schlamm, 2, median) #1= zeile, 2=spalte
mediansAll
schlamm.centered <- scale(schlamm, scale = FALSE, center = mediansAll)
schlamm.centered
boxplot(t(schlamm.centered))

#scale(medians, center=schlamm.centered, scale=FALSE)
#boxplot(scale(medians, center=schlamm.centered, scale=FALSE))

# Boxplot
methodeA <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80.00, 80.02)
methodeB <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97)
boxplot(methodeA,methodeB,xaxt="n",xlab="Methode")
axis(1,at=c(1,2),labels=c("A","B"))

# Aufgabe 4
recession.velocity <- c(170,290,-130,-70,-185,-220,200,290,270,200,300,-30,650,150,500,920,450,500,500,960,500,850,800,1090)
distance <- c(0.032,0.034,0.214,0.263,0.275,0.275,0.450,0.500,0.500,0.630,0.800,0.900,0.900,0.900,0.900,1.000,1.100,1.100,1.400,1.700,2.000,2.000,2.000,2.000)

plot(recession.velocity, distance, ylab="Distanz (Megaparsecs)", xlab="Fluchtgeschwindigkeit (km/sec)")
cor(recession.velocity, distance)
lm(distance ~ recession.velocity)
abline(lm(distance ~ recession.velocity))

# Aufgabe 6
# a
plot(income[,"Educ"], income[,"Income2005"], ylab="Jahre in Ausbildung", xlab="Einkommen 2005")
plot(income[,"AFQT"], income[,"Income2005"], ylab="Armed Forces Qualifying Test", xlab="Einkommen 2005")

#b
lm(income[,"Income2005"] ~ income[,"Educ"])

plot(income[,"Educ"] ,  -40200 + 6451 * income[,"Educ"], type="l", xlab="Anzahl Jahre Schulbildung", ylab="Einkommen")
cor(income[,"Educ"], income[,"Income2005"])
