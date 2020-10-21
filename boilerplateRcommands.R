#Append new columns 
csv$probabilities = csv$frequencies/100 

#Calculate marginal distribution 
sum(csv$probabilities[csv$x==1])
sum(csv2&money[csv2$y>=2])

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

#for (i in 1:10)

#Generate random sample points
#Get sample mean
#Calculate sample distribution


#Calculate CI when pop variance is known
# Load data 
x<-read.csv(file.choose(), header=T) 
# Calculate left tail percentage (for 90% CI): 
percent = 0.95
# Get sample size 
n<-length(x$...) = 50 
# Get sample mean 
X_50<-mean(x$...) 
# Use qnorm to obtain lower and upper limits of CI (for n = 50): 
lowerLimit = X_50-qnorm(percent,0,1)*sqrt(var/50) 
upperLimit = X_50+qnorm(percent,0,1)*sqrt(var/50) 
c(lowerLimit, upperLimit)

#Calculate CI when pop variance is NOT known
# Load data 
x<-read.csv(file.choose(), header=T) 
# Calculate left tail percentage (for 95% CI): 
percent = .975
# Get sample size 
n<-length(x$...) 
# Get sample mean 
X_bar<-mean(x$...) 
# Get sample standard deviation 
S<-sd(x$...) 
# Use qt to obtain lower and upper limits of CI: 
lowerLimit = X_bar-qt(percent,n-1)*(S/sqrt(n)) 
upperLimit = X_bar+qt(percent,n-1)*(S/sqrt(n)) 
c(lowerLimit, upperLimit) 

