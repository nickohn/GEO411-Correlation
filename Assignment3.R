wdt <- read.csv("WorldDataTable.csv")
wdt[1:10,]
head(wdt, 10)

#Histograms
hist(wdt$LifeExpectancy)
hist(wdt$GDPPerCapita)

#scatter plot
plot(wdt$GDPPerCapita,wdt$LifeExpectancy)

#Pearson Test
r <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")
r

n <- length(wdt$GDPPerCapita)

t <- (r * sqrt(n-2)) / sqrt(1 - r^2)
t

tcrit <- qt(p = 0.025, df = n-2, lower.tail = TRUE)

cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "pearson")

#Spearman Test
rs <- cor(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")
rs

ts <- rs * sqrt(n-1)
ts

tcrits <- qt(p = 0.025, df = n-1, lower.tail = TRUE)

cor.test(wdt$GDPPerCapita,wdt$LifeExpectancy,method = "spearman")

#Tests Scatterplot
plot(wdt$GDPPerCapita,wdt$LifeExpectancy, col = "white")
text(wdt$GDPPerCapita,wdt$LifeExpectancy, labels = wdt$Country, cex = 0.5)
