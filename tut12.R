#Q1-1
x = c(3,-1,5,-2,7,-2,-2,5,10) 
if (mean(x) > 0) { 
    print("the sample mean is positive") 
} else { 
    print("the sample mean is non positive") 
}


#Q1-2
y = runif(n = 1,min = -0.1,max = 1)
y
if (x > 0) {
    print("the sample mean is positive")
} else {
    print("the sample mean is non positive")
}


#Q1-3
x2 = c(3,-1,5,-2,7,-2,-2,5,10) 
if (mean(x2) > median(x2)) { 
    Y=1 
} else { 
    Y=0 
}
Y


#Q2-1
set.seed(200)
investment = 1000
for (i in 2:6){
    investment = investment * (1+runif(n = 1,min = -3/100,max = 7/100))
}
investment


#Q2-2
set.seed(200)
investments = 0
for (i in 1:100){
    investment = 1000
    for (j in 2:6){
        investment = investment * (1+runif(n = 1,min = -3/100,max = 7/100))
    }
    investments[i] = investment
}
mean(investments)


#Q2-3/4
set.seed(200)
investment = 0
for (i in 1:5){
    investment = investment + (1000*i)
    investment = investment * (1+runif(n = 1,min = -3/100,max = 7/100))
}
investment

#Q2-5
set.seed(200)
investmentVector = 0
ntucVoucherVector = 0
for (j in 1:100){
    investment = 0
    ntucVoucher = 0
    for (i in 1:5){
        investment = investment + 1000
        dividend = investment*runif(n = 1,min = -3/100,max = 7/100)
        if (dividend > 0){
            ntucVoucher = ntucVoucher + dividend
        } else {
            investment = investment + dividend
        }
    }
    investmentVector[j] = investment
    ntucVoucherVector[j] = ntucVoucher
}
mean(investmentVector)
mean(ntucVoucherVector)

#Q2-6
X_bar = mean(ntucVoucherVector)
S = sd(ntucVoucherVector)
n=100
lowerLimit = X_bar-qt(.975,n-1)*(S/sqrt(n))
upperLimit = X_bar+qt(.975,n-1)*(S/sqrt(n))

lowerLimit
upperLimit

#Q3-1
set.seed(200)
unsoldJuiceVector = 0
for (i in 1:1000){
    sell = sum(runif(n = 10,min = 3,max = 5))
    unsoldJuiceVector[i] = 50 - sell
}
mean(unsoldJuiceVector)

#Q3-2
set.seed(200)
stockout = 0
for (i in 1:100){
    sell = sum(rnorm(n = 10,mean = 4.5,sd = 1.5))
    if (sell > 50){
        stockout = stockout + 1
    }
}
stockout

#Q4
set.seed(200)
timeVector = 0
for (i in 1:1000){
    timeVector[i] = min(runif(n = 1,min = 3,max = 5), runif(n = 1,min = 0,max = 4))
}
#timeVector
mean(timeVector)

