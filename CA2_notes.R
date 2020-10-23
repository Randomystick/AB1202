#Append new columns 
csv$probabilities = csv$frequencies/100 

#Calculate marginal distribution 
sum(csv$probabilities[csv$x==1])
sum(csv2&money[csv2$y>=2 & csv2$x<=5])

#Calculate covariance
cov(csv)
#                sale                         xad 
#sale   Cov(sale,sale) = Var(Sale)       Cov(sale,xad) 
#xad         Cov(sale,xad)          Cov(xad,xad) = Var(xad)


#Calculate correlation coefficient
cor(csv)
#                sale                         xad 
#sale      psale,sale = 1.0                psale,xad
#xad           psale,xad                 pxad,xad = 1.0

#Plot graph
plot(csv$sale, csv$xad)

#Draw sample
runif(numberOfDraws, min=, max=)
rbinom(numberOfDraws, desiredNumber, probability) 
rnorm(numberOfDraws, mean= , sd= ) 

#Show stats
summary(csv)

#Correlation coefficient (special)
cor(ChickWeight[,c("weight", "Time")])
#some columns e.g. chick

#Determine column datatype
class(ChickWeight$Chick)

#Box-whisker Plot
library("datasets")
chick <- ChickWeight
boxplot(chick$weight~chick$Diet)
#first value (y axis) ~ second value (x axis)

