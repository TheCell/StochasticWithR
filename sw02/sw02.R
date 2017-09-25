# Quizfragen

setwd("C:/Users/simon/Google Drive/HSLU/STOC/StochasticWithR/sw02/")
data <- read.table(file="Schokolade_Nobelpreis.txt", sep=" ", header=TRUE)

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
