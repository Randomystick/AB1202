#Q1
# H0: rental <= 2400 ❌H0: rental >= 2400
# H1: rental > 2400 ❌H1: rental < 2400
# HYPO TESTING
# POP SD IS UNKNOWN
samplee = c(2300,2300,1900,2400,2450,2200,2400,2300)
pop_mean = 2400 #in H0 
n = length(samplee)
#sample mean = X_bar
X_bar = mean(samplee)
sample_sd = sd(samplee)
Tscore = (X_bar - pop_mean)/(sample_sd/sqrt(n))
Tscore

#Zscore negative: pt(...)
(pt(Tscore, n-1))

#p-value is 0.04672456. p-value is lower than significance level of 0.05, hence we reject H0 ✅ and conclude rental is indeed > 2400. ❌ 
#they should rent it out for $2400 or higher. ❌since average rental expected to <2400, they should also set below 2400.


#Q2
# Type 1 error is concluding that the mean feedback score is more than 5 when it is actually 5 or less  ✅
# Type 2 error is concluding that the mean feedback score is indeed 5 or less when it is actually more than 5.✅

# In the type 1 error, she will waste $1M in marketing budget to campaign on luxury brand awareness which will not be effective. ✅
# In the type 2 error, she will waste $500k in launching a heavy marketing campaign on product awareness which is not needed. ✅


#Q3
# b0: amount of Cristal demanded in 100,000s of 5kg boxes given that the price is zero, like its competitors, and nothing is spent on advertising is 7.41. ✅
# b3: every $100,000 increase in spending on advertising expenditure is associated with a 0.53 increase in demand for Cristal in 100,000s of 5kg boxes. ❌ELBE!!!!


#Q4a
# y = ax^(b+1)
# log y = log(ax^(b+1))
# log y = log(a) + (b+1)log(x) ✅❌ln not log

#Q4b
y = c(69.56, 218.08, 172.54, 76.72, 122.33, 201.35)
x = c(12.6, 24.1, 20.3, 15.6, 17.9, 22.2)
summary( lm(log(y, exp(1)) ~ log(x, exp(1))) )

# log(a) = -0.9177 ✅ --> a = 0.12086 ❌a = e^(-0.9177) = 0.3994
# (b+1) = 1.9896 ✅--> b = 0.9896 ✅

#Q4c
# Every 1% increase in the independent variable X is associated with a 0.9896% increase in Y  ❌(...) with a 1.9896% increase in Y.

#Q4d
# Assume that the data can be extrapolated to beyond 24.1, which is the maximum value in the data. Yes only if relationship between X and Y stays the same over the entire range of values of X.  ✅

#Q5a
# The competitors would want to prove the claim false, i.e. reject the null hypothesis. Hence they would want a high a. ✅

#Q5b
# The advertising agency would want to prove the claim true, i.e. accept the null hypothesis. Hence they would want a low a. ✅




