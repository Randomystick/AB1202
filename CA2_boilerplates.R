library(wooldridge)


#Sample probabilities (CLT)
n=90
pop_mean = 17.5
pop_sd = 7
Xbar = 16
pnorm(q = Xbar, mean = pop_mean, sd = pop_sd/sqrt(n))


#Generate sample & multi-observations
observations = 1000
X_bar = rep(0,observations)
for (i in 1:observations)
{
    X_bar[i] = mean( rbinom/rnorm/runif... / sample(elements, n, prob=, replace=T) )
}
hist(X_bar)


#Calculate CI when pop variance is known
n = 20
X_bar = 100
pop_sd = 10
percent = .995
lowerLimit = X_bar-qnorm(percent,0,1)*pop_sd/sqrt(n) 
upperLimit = X_bar+qnorm(percent,0,1)*pop_sd/sqrt(n) 
c(lowerLimit, upperLimit)


#Calculate CI when pop variance is NOT known
#length(ChickWeight$Chick[ChickWeight$Time==0])
#mean(ChickWeight$weight[ChickWeight$Time==0])
#sd(ChickWeight$weight[ChickWeight$Time==0])

n = 16
X_bar = 5
S = 4
percent = .975
lowerLimit = X_bar-qt(percent,n-1)*(S/sqrt(n)) 
upperLimit = X_bar+qt(percent,n-1)*(S/sqrt(n)) 
c(lowerLimit, upperLimit) 

