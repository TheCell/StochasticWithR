#######################################
##
##     SERIE 2
##
#########################################





# Aufgabe 1

# (a)
## Datensatz einlesen
geysir <- read.table("./Dropbox/Statistics/Stochastik_HSLU_old_curr/Unterlagen_per_SW/SW2/Daten/geysir.dat",header = TRUE) 
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

# Boxplot
methodeA <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80.00, 80.02)
methodeB <- c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97)
boxplot(methodeA,methodeB,xaxt="n",xlab="Methode")
axis(1,at=c(1,2),labels=c("A","B"))


## Aufgabe 4




recession.velocity <- c(170,290,-130,-70,-185,-220,200,290,270,200,300,-30,650,150,500,920,450,500,500,960,500,850,800,1090)

distance <- c(0.032,0.034,0.214,0.263,0.275,0.275,0.450,0.500,0.500,0.630,0.800,0.900,0.900,0.900,0.900,1.000,1.100,1.100,1.400,1.700,2.000,2.000,2.000,2.000)

plot(recession.velocity, distance, ylab="Distanz (Megaparsecs)", xlab="Fluchtgeschwindigkeit (km/sec)")
cor(recession.velocity, distance)