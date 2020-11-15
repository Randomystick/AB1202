library(wooldridge)
library(e1071)

#Q1a
length(ceosal1$salary)
#209 ✅

#Q1b
length(ceosal1)
#12 ✅

#Q1c
indus = mean(ceosal1$salary[ceosal1$indus==1]) #1139.3 ✅
consprod = mean(ceosal1$salary[ceosal1$consprod==1]) #1722.4 ✅
finance = mean(ceosal1$salary[ceosal1$finance==1]) #1344.9 ✅
utility = mean(ceosal1$salary[ceosal1$utility==1]) #727.97 ✅

indus-finance
#They're different?? Roughly the same magnitude and direction but exact number is different. ✅

#Q1d
indusCEOs = length(ceosal1$salary[ceosal1$indus==1]) #67 ✅
consprodCEOs = length(ceosal1$salary[ceosal1$consprod==1]) #60 ✅
financeCEOs = length(ceosal1$salary[ceosal1$finance==1]) #46 ✅
utilityCEOs = length(ceosal1$salary[ceosal1$utility==1]) #36 ✅
indusCEOs + consprodCEOs + financeCEOs + indusCEOs
#240 ✅
#No??? ✅


#Q2a
value = 1
x = 2
denom = 1
for (i in 1:19)
{
  denom = denom*i
  value = value + (x^i)/denom
}
value
#7.389056 ✅

################################
t = 0
for (i in 1:19)
{
  t[i] = 2^i/factorial(i)
}
e2 = 1+sum(t)
e2
################################

#Q2b
differenceVector = 0
j = 1
x = 0.02
while (x>=0.001)
{
  value = 1
  denom = 1
  for (i in 1:19)
  {
    denom = denom*i
    value = value + (x^i)/denom
  }
  differenceVector[j] = 1+x - value
  
  j = j + 1
  x = x - 0.001
}
mean(differenceVector)
# Mean of difference between e^x and 1+x is -7.5888x10^-5, which is negligible.
# Hence e^x ~= 1+x

################################
x = 0
e = exp(1)
for (i in 0:19)
{
  x = 0.02-0.001*i
  a = c(e^x-(1+x))
}
a
################################

#Q3a
75-70
#5. Overstock. ✅

#Q3b
differenceVector = rep(0,1000)
#set.seed(10)
for (i in 1:1000)
{
  set.seed(10)
  n=1
  S = runif(n = n,min = 50,max = 100)
  D = rnorm(n = n,mean = 70,sd = 10)
  differenceVector[i] = S-D
}
mean(differenceVector)
#5.197251 ✅
hist(differenceVector)

#Q3c
differenceVector = rep(0,100000)
for (i in 1:100000)
{
  set.seed(100*i)
  n=1
  S = runif(n = n,min = 50,max = 100)
  D = rnorm(n = n,mean = 70,sd = 10)
  differenceVector[i] = S-D
}
mean(differenceVector)
#5.026391 ✅
hist(differenceVector)

#Q3d
differenceVector = rep(0,1000000)
for (i in 1:1000000)
{
  set.seed(1000*i)
  n=1
  S = runif(n = n,min = 50,max = 100)
  D = rnorm(n = n,mean = 70,sd = 10)
  differenceVector[i] = S-D
}
mean(differenceVector)
#5.000595 ✅
hist(differenceVector)

#Q3e
# As we increase the number of simulations, the mean of the difference approaches the expected value of 5 ✅

#Q3f
#??? ❌setting the seed outside the loop will also produce results that are reproducible.  


#Q4
avgVector = 0
n = c(1,2,3,5,8,20)
for (j in 1:length(n))
{
  set.seed(1000)
  scoreVector = 0
  for (i in 1:100000)
  {
    scoreVector[i] = mean(runif(n = n[j],min = 1,max = 6))
    
  }
  avgVector[j] = mean(scoreVector)
}
avgVector
# ❌runif allows you to generate non-integer numbers too!

################################
avgVector = 0
n = c(1,2,3,5,8,20)
for (j in 1:length(n))
{
  set.seed(1000)
  scoreVector = 0
  for (i in 1:100000)
  {
    scoreVector[i] = mean( sample(c(1,2,3,4,5,6), n[j], prob=rep(1/6,6), replace = T) )
    
  }
  avgVector[j] = mean(scoreVector)
}
avgVector
# 3.508320 3.506370 3.507290 3.502720 3.501305 3.499731
################################

#Q5a
log(2^10, 2)
# ✅

#Q5b
log(10^6, 10)
# ✅

#Q5c
log(2.718281828^2.5, 2.718281828)
#❌use exp

#log gives you the exponent of the number when using a specified base.
