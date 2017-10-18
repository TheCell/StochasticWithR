##Aufgabe 5.1

##B
dbinom(x=0:50,size=50,prob=0.2)
(0.8)^50
plot(0:50,dbinom(x=0:50,size=50,prob=0.2),type="h")

##D
dbinom(x=10, size=50,prob=0.2)
choose(50,10)*(0.8)^(40)*0.2^(20)


##E
pbinom(q=5, size=50,prob=0.2)
sum(pbinom(q=5, size=50,prob=0.2))

##F
qbinom(p=0.99,size = 50,prob=0.2)


for(i in 0:20){
  cat(i, ":", sum(dbinom(0:i,size = 50,prob = 0.2)),"\n")
}
##nr17


##Aufgabe5.4
dbinom(x=2, size=4,prob=0.1)

##C ACHTUNG pBinom weil HÖCHSTENS

sum(pbinom(q=3, size=4,prob=0.1))


##aUFGABE5.6
#a
##d weil punktuell
dpois(x = 100,lambda = 100)
#b
##p weil höchstens
ppois(q=110,lambda = 100)
ppois(110,100)

#c
ppois(110,100)-ppois(89,100)

