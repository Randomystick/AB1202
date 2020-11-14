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
pop_mean = 24 #in H0 
n = 35
X_bar = 16.4 #sample mean
sample_sd = 7.3
Tscore = (X_bar - pop_mean)/(sample_sd/sqrt(n))
Tscore

#Zscore negative: pt(...)
#Zscore positive: 1-pt(...)
#Two-tailed test: *2
pt(Tscore, n-1)
