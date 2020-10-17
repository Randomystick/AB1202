##################
###### QN 4 ######
##################

pop_mean = 100 
n = 16 
X_bar = 95 
pop_sd = 10 
Zscore = (X_bar - pop_mean)/(pop_sd/sqrt(n))
Zscore

2*pnorm(Zscore, 0,1)

##################
###### QN 5 ######
##################

pop_mean = 45
n = 36
X_bar = 47
pop_sd = 8.5
Zscore = (X_bar-pop_mean)/(pop_sd/sqrt(n))
Zscore

1-pnorm(Zscore, 0,1)

##################
###### QN 6 ######
##################

n = 35
pop_mean = 24
X_bar = 16.4
sample_sd = 7.3
Tscore = (X_bar - pop_mean) / (sample_sd/sqrt(n))
Tscore

pt(Tscore, n-1)

##################
###### QN 7 ######
##################

#View(EuStockMarkets)
pop_mean = 1620
n = 30
X_bar = mean(EuStockMarkets[1:30, "DAX"])
sample_sd = sd(EuStockMarkets[1:30, "DAX"])
Tscore = (X_bar - pop_mean) / (sample_sd / sqrt(n))
Tscore
2*(1-pt(Tscore,n-1))


samplee = c(EuStockMarkets[1:30, "DAX"],EuStockMarkets[361:390, "DAX"])
n = length(samplee)
pop_mean = 1620
X_bar=mean(samplee)
sample_sd = sd(samplee)
Tscore = (X_bar - pop_mean)/(sample_sd/sqrt(n))
Tscore

2*pt(Tscore, n-1)

##################
###### QN 8 ######
##################

n = 50
pop_mean = 5
X_bar = 4.6
sample_sd = 0.7
Tscore = (X_bar-pop_mean)/(sample_sd/sqrt(n))
Tscore

2*pt(Tscore, n-1)

lowerLimit = X_bar-qt(.975, n-1)*(sample_sd/sqrt(n))
upperLimit = X_bar+qt(.975, n-2)*(sample_sd/sqrt(n))
c(lowerLimit, upperLimit)
