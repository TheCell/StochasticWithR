1 - dpois(0, 0.96)
ppois(1, 0.96)
ppois(0, 0.96)
1 - ppois(0, 0.96)
1 - ppois(0, 1.92)
1 - ppois(0, 4.43)

pbinom(1, 96, 0.01) - pbinom(0, 96, 0.01)
pbinom(1, 96, 0.01) - dbinom(0, 96, 0.01)
dbinom(0, 96, 0.01) + dbinom(1, 96, 0.01)

barplot(dbinom(80:110, 96, 0.96), 10, horiz = FALSE)
