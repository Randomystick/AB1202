#Q1
# H0: rental <= 2400
# H1: rental > 2400
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

#p-value is 0.04672456. p-value is lower than significance level of 0.05, hence we reject H0 and conclude rental is indeed > 2400.
#they should rent it out for $2400 or higher.

