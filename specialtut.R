#Q1a
1/6+1/4
#5/12 ✅

#x=0
1/6+1/4+1/8
#13/24 ✅

#x=1
1/8+1/6+1/6
#11/24 ✅

#ADD: 0 OTHERWISE

#y=0
1/6+1/8
#7/24 ✅

#y=1
1/4+1/6
#5/12 ✅

#y=2
1/8+1/6
#7/24 ✅

#ADD: 0 OTHERWISE

#y=1 given x=0
1/4/(1/6+1/4+1/8)
#6/13 ✅

#no ✅
#ADD (reason): P(Y=1|X=0) = 6/13 != P(Y=1) = 5/12. Hence not independent


#Q2
EX = 0.2*(-300)+0.5*100+0.3*250
EY = 0.2*(200)+0.5*50+0.3*-100
CovXY = 0.2*(-300-EX)*(200-EY) + 0.5*(100-EX)*(50-EY) + 0.3*(250-EX)*(-100-EY)
#-19275 ✅

VarX = 0.2*(-300-EX)^2 + 0.5*(100-EX)^2 + 0.3*(250-EX)^2
#37525 ✅

VarY = 0.2*(200-EY)^2 + 0.5*(50-EY)^2 + 0.3*(-100-EY)^2
#11025 ✅

VarX + VarY + 2*1*1*CovXY
#10000 ✅

EP = w*EX + (1-w)*EY 
#✅

risk = w^2*VarX + (1-w)^2*VarY
#❌not independent: must include covariance
#❌question says risk is 6, i.e. standard dev, i.e. sqrt(Var)
# sqrt(w^2*VarX + (1-w)^2*VarY + 2*(w)*(1-w)*CovXY)

w = 0.5
EP
#50 ✅
risk
#12137.5 ✅❌ecf.


#Q3
percent = .995
pop_sd = 25
(pop_sd/(5/(qnorm(percent,0,1))))^2
#166 ✅

percent = .975
pop_sd = 25
(pop_sd/(5/(qnorm(percent,0,1))))^2
#97 ✅


#Q4
n=35
pop_mean = 1.68
pop_sd = 0.17
Xbar = 1.72
1-pnorm(q = Xbar, mean = pop_mean, sd = pop_sd/sqrt(n))
#0.08195836 ✅


#Q5
n = 100
#X_bar = ?
pop_sd = 6.5
#percent = ?
lowerLimit = X_bar-qnorm(percent,0,1)*pop_sd/sqrt(n) = 64.7394
upperLimit = X_bar+qnorm(percent,0,1)*pop_sd/sqrt(n) = 67.5606
(67.5606-64.7394)/2

CL = pnorm(1.4106*sqrt(n)/pop_sd,0,1)
CL
#0.9850024 ✅

n = 100
pop_sd = 6.5
percent = .985
X_bar = 64.7394 + qnorm(percent,0,1)*pop_sd/sqrt(n)
X_bar
#66.14996 ✅


#Q6
n = 50
#X_bar = ?
S = 0.00375
percent = .995
#lowerLimit = X_bar-qt(percent,n-1)*(S/sqrt(n)) 
#upperLimit = X_bar+qt(percent,n-1)*(S/sqrt(n)) 
#c(lowerLimit, upperLimit) 

n=98
qt(percent,n-1)*(S/sqrt(n)) 
#<= 0.001
# ✅(?)

#Q7
#             X      
#        100     200 
# Y 300  2/10    6/10 ✅
#   400  1/10    1/10 ✅

EY = 300*8/10 + 400*2/10
EX = 100*3/10 + 200*7/10
CovXY = 
    2/10*(100-EX)*(300-EY) + 
    1/10*(100-EX)*(400-EY) + 
    6/10*(200-EX)*(300-EY) + 
    1/10*(200-EX)*(400-EY)
CovXY
#-400 ✅

sdx = sqrt(
    3/10*(100-EX)^2 +
    7/10*(200-EX)^2
)

sdy = sqrt(
    8/10*(300-EY)^2 +
    2/10*(400-EY)^2
)

cor = CovXY/sdx/sdy
cor
#-0.0001190476❌MISTAKE: never square root sdx and sdy!
#You used Var X and Y instead. The working has been corrected.
#CORRECTED ANS: -0.218


#Q8
#hypo testing, not tested


#Q9


observations = 1000
X_bar = rep(0,observations)
for (i in 1:observations)
{
    set.seed(i)
    X_bar[i] = mean(sample(c(10,30,100,150), 3, prob=c(0.3,0.4,0.2,0.1), replace = T))
}
hist(X_bar)
# ✅



