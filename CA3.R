# HYPO TESTING
# POP SD IS KNOWN
pop_mean = 24 #in H0 
n = 35
X_bar = 16.4 #sample mean
pop_sd = 8.5
Zscore = (X_bar - pop_mean)/(pop_sd/sqrt(n))
Zscore

#Zscore negative:
#Zscore positive: 1-pnorm(...)
#Two-tailed test: *2
1-pnorm(Zscore, 0,1)

########################################
########################################
########################################

# HYPO TESTING
# POP SD IS UNKNOWN
pop_mean = 5 #in H0 
n = 50
#sample mean = X_bar
X_bar = 4.6 #mean(EuStockMarkets[1:30, "DAX"])
sample_sd = 0.7 #sd(EuStockMarkets[1:30, "DAX"])
Tscore = (X_bar - pop_mean)/(sample_sd/sqrt(n))
Tscore

#Zscore negative: pt(...)
#Zscore positive: 1-pt(...)
#Two-tailed test: *2
2*(pt(Tscore, n-1))

########################################
########################################
########################################

lowerLimit = X_bar-qt(.975, n-1)*(sample_sd/sqrt(n))
upperLimit = X_bar+qt(.975, n-1)*(sample_sd/sqrt(n))
c(lowerLimit, upperLimit)