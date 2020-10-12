pop_sd = 70
hypo_mean = 115
X_bar = mean(ChickWeight$weight)
n = length(ChickWeight$weight)
pValue = 2*(1-pnorm(X_bar,hypo_mean, pop_sd/sqrt(n)))
pValue
