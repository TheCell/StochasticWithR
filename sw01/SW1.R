#########################################
##
##     SERIE 1
##
#########################################



#---------------------------------------------------------------------------------------------------------
# Aufgabe 1

# (a) 

setwd("C:/Users/simon/Google Drive/HSLU/STOC/StochasticWithR/sw01/")

data <- read.table(file="sw01_child.txt", sep=",", header=TRUE)

# Alternative : Import Dataset von csv-File
head(data)
dim(data)

# (b)

summary(data)

# (c)

colnames(data)
rownames(data)
rownames(data)=="Netherlands"
sum(rownames(data)=="Netherlands")
sum(rownames(data)=="China")


# (d)

data[5:10,"Bullying"]
data[5:10,20]
rownames(data)[5:10]


# (e)

colnames(data)
data[, "Drunkenness"]
data[,18]
# Order values of drunkenness according to their size
sort(data[, "Drunkenness"])
sort(data[, "Drunkenness"])[24] #sortiert und gibt den 24 eintrag aus

ordered_indices <- order(data[,"Drunkenness"])
length(ordered_indices)
index <- ordered_indices[30]
index
data[index,"Drunkenness"]
data[ordered_indices, "Drunkenness"]

?order

ordered_indices_na_last <- order(data[,"Drunkenness"], na.last=F)
data[ordered.indices_na_last,"Drunkenness"]
rownames(data[ordered_indices_na_last[26:30],])



# (f)

index <- which.min(data[,"Mortality.rates"])
index
rownames(data[index,])

# (g) 
mean(data[,"Physical.activity"])
mean(data[,"Physical.activity"],na.rm=T)
mean.physical.activity <- mean(data[,"Physical.activity"], na.rm=T)
indices <- which(data[,"Physical.activity"] < mean.physical.activity)
indices
rownames(data[indices,])
rownames(data[c(2,  3,  8,  9, 10, 11, 14, 17, 18, 21, 22, 23, 26, 27, 28, 29),])

# (h)

sort(data[,"Average.disposable.income"])
indices <- order(data[,"Average
                      .disposable.income"])
data[indices,"Average.disposable.income"]
rownames(data[indices,])
write.table(data[indices,],file="income_ordered.txt",col.names=TRUE,row.names=TRUE)

data.eingelesen <- read.table(file="income_ordered.txt",header=TRUE)
rownames(data.eingelesen)





# ---------------------------------------------------------------------------------------------------------
# Aufgabe 2

# (a) 

d.fuel <- read.table("C:/Users/simon/Google Drive/HSLU/STOC/Uebungen/sw01_d.fuel.dat",sep=",", header=TRUE)

# (b)

d.fuel

d.fuel[5,]

# (c) 

d.fuel[c(1,2,3,4,5),]
d.fuel[1:5,]

head(d.fuel)

# (d)

d.fuel[c(1:3,57:60),]

# (e)

mean(d.fuel[,3])

mean(d.fuel[,"mpg"])

mean(d.fuel$mpg)

# (f) 

mean(d.fuel[7:22,"mpg"])

# (g)

t.kml <- d.fuel[,"mpg"]*1.6093/3.789
t.kml
t.kg  <- d.fuel[,"weight"]*0.45359

# (h)

mean(t.kml)

mean(t.kg)






## Aufgabe 3

# (a)

x<-c(2.1,2.4,2.8,3.1,4.2,4.9,5.1,6.0,6.4,7.3,10.8,
     12.5,13.0,13.7,14.8,17.6,19.6,23.0,25.0,35.2,39.6)

sum(x)

sum(x^2)


# (b)

n <- length(x)

mean.x <- 1/n*sum(x)
mean.x

var.x <- 1/(n-1)*sum((x-mean.x)^2)
var.x
sqrt(var.x)


# (c)

x.sorted <- sort(x)
x.sorted
0.5*length(x)
k <- round(0.5*length(x)+0.5)
k
x.sorted[k]


# (d)

0.25*length(x)
k <- round(0.25*length(x)+0.5)
k
x.sorted[k]

0.75*length(x)
k <- round(0.75*length(x)+0.5)
k
x.sorted[k]


# (e)

mean(x)
sd(x)
median(x)
quantile(x,0.75)

# (f)

z <- (x-mean(x))/sd(x)
mean(z)
sd(z)









