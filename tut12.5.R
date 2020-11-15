# Q1
# False, ✅ a is the maximum p-value at which we reject H0.❌p-value is the MINIMUM a needed to reject H0.
# 
# Q2
# False, ✅ the smaller the p-value the greater the statistical significance.
# 
# Q3
# No, ✅ higher sample size simply means lower variance in the sample mean distribution.
# Hence for the observation of same sample mean, the p-value (probability of obtaining result more extreme than the one observed) is lower for the one with 120 samples, hence more likely able to fall below a and reject the null hypothesis.
# ❌using a different sample may result in different p-values which in turn result in different decisions.
# 
# Q4
# True❌if the dependent variable (Y) is categorical, we cannot use linear regression and instead need to use logistic regression (out of syllabus). If the variable was one of the independent variables instead then yes it is true.
# 
# Q5a
# False, girls score higher ✅
# 
# Q5b
# True ✅since slope B1 > 0
# 
# Q6
# False, log linearise only if >1 ✅applying log linearise here would make the variable even more skewed.
# 
# Q7
# b ✅
# 
# Q8a
set.seed(2222)
numBoys = sum(rbinom(n = 50,size = 1, prob = 0.49))
numGrls = 50-numBoys
maleWeight = rnorm(n = numBoys,mean = 72,sd = 5)
femWeight = rnorm(n= numGrls,mean = 60,sd = 7)
totalWeight = c(maleWeight,femWeight)
mean(totalWeight)
# 66.28954❌❌❌
# 
# ANSWER:
set.seed(2222)
weight = rep(0,50)
gender = rbinom(50,1,.51)
#male = 0
for (i in 1:50)
{
    if (gender[i] == 0)
    {
        #male = male + 1
        weight[i] = rnorm(1,72,5)
    } else
    {
        weight[i] = rnorm(1,60,7)
    }
}
mean(weight)
#male
#66.33742 ✅ ✅ ✅

# 
# Q8b
weightVector = rep(0,1000)
set.seed(2222)
for (j in 1:1000)
{
    weight = rep(0,50)
    gender = rbinom(50,1,.51)
    #male = 0
    for (i in 1:50)
    {
        if (gender[i] == 0)
        {
            #male = male + 1
            weight[i] = rnorm(1,72,5)
        } else
        {
            weight[i] = rnorm(1,60,7)
        }
    }
    weightVector[j] = mean(weight)
}
mean(weightVector)
sd(weightVector)
# mean weight ~ N(65.87806, 1.187799) ✅ ✅ ✅


