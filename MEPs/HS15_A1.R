# Aufgabe 1
options(scipen = 999)

# a)
PTplus <- ((0.99*0.993) + (0.01*0.002)) / (0.99 * 0.993 + 0.99 * 0.007 + 0.01 * 0.002 + 0.01 * 0.998)
PTminus <- 1 - PTplus

# b)
allesOKTestOk <- ((0.993 * 0.99) / PTplus)

# c)
platteDefAlarm <-(( 0.998 * 0.01 ) / PTminus)

# d)
PTminus * platteDefAlarm

qbinom(0.05, 100, 0.5)
pbinom(42, 100, 0.5)