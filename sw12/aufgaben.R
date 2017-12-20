# 12.1
zentiliter <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)

median(zentiliter)
mean(zentiliter)
sd(zentiliter)
qqnorm(zentiliter); qqline(zentiliter)
qt(0.05, 11)

pt((mean(zentiliter) -70) / sd(zentiliter)/sqrt(12), df=11)

t.test(zentiliter, mu = 70 ,alternative = "less")

# 12.5
schraubenFestigkeit <- c(520, 512, 499, 524, 505)
-qt(0.05, 4)
#oder
qt(0.95, 4)

# 12.5 b


# 12.5 c
mean(schraubenFestigkeit)
median(schraubenFestigkeit)
sd(schraubenFestigkeit)
qt(0.025, 4)
qt(0.925, 4)

t.test(schraubenFestigkeit, mu=500, alternative = "two.sided")
binom.test(sum(zentiliter>70), length(zentiliter), alternative = "less")

# 12.9 d
messungA <- c(120, 265, 157, 187, 219, 288, 156, 205, 163)
messungB <- c(127, 281, 160, 185, 220, 298, 167, 203, 171)
d <- messungA - messungB
mean.d <- mean(d)
sd.d <- sd(d)
n <- length(d)
testst.d <- mean.d/(sd.d/sqrt(n))

t.test(messungA, messungB, paired = TRUE, alternative = "less")
t.test(d, mu=0, alternative = "less")

# 12.11
zurich <- c(16.3, 12.7, 14.0, 53.3, 117, 62.6, 27.6)
basel <- c(10.4, 8.91, 11.7, 29.9, 46.3, 25.0, 29.4)

# a
zurich.mean <- mean(zurich)
zurich.sd <- sd(zurich)
basel.mean <- mean(basel)
basel.sd <- sd(basel)


# f wilcoxon

# Prüfungsstoff:
# bedingte w
# biominal
# ttest oder gepaart/ungep
# 10-12 multiplechoice 5 oder 6 hatten wir schon