##################
###### QN 1 ######
##################

n<-22 
X_bar<-106 
pop_sd<-15 
percent<-0.90+(1-0.90)/2 
lowerLimit = X_bar-qnorm(percent,0,1)*pop_sd/sqrt(n) 
upperLimit = X_bar+qnorm(percent,0,1)*pop_sd/sqrt(n) 
print(c(lowerLimit, upperLimit))

lowerLimit = 106-qnorm(0.995,0,1)*15/sqrt(22) 
upperLimit = 106+qnorm(0.995,0,1)*15/sqrt(22) 
print(c(lowerLimit, upperLimit)) 

##################
###### QN 2 ######
##################

n=100 
X_100 = 7790 
pop_sd = 500 
percent = 0.99+(1-0.99)/2 
lowerLimit = X_100-qnorm(percent,0,1)*pop_sd/sqrt(n) 
upperLimit = X_100+qnorm(percent,0,1)*pop_sd/sqrt(n) 
print(c(lowerLimit,upperLimit))

##################
###### QN 3 ######
##################

n=18 
X_18 = 11.5 
S = 9.2 
percent = .95+(1-.95)/2 = 0.975
lowerLimit = X_18-qt(percent, n-1)*S/sqrt(n) 
upperLimit = X_18+qt(percent, n-1)*S/sqrt(n) 
print(c(lowerLimit, upperLimit))

##################
###### QN 4 ######
##################

percent = 0.95 
X10 = ChickWeight$weight[ChickWeight$Time==10] 
n=length(X10) 
S=sd(X10) 
X_bar = mean(X10) 
lowerLimit = X_bar-qt(percent, n-1)*S/sqrt(n) 
upperLimit = X_bar+qt(percent, n-1)*S/sqrt(n) 
print(c(lowerLimit, upperLimit)) 


percent = 0.975 
X0 = ChickWeight$weight[ChickWeight$Time==0] 
n=length(X0) 
S=sd(X0) 
X_bar = mean(X0) 
lowerLimit = X_bar-qt(percent, n-1)*S/sqrt(n) 
upperLimit = X_bar+qt(percent, n-1)*S/sqrt(n) 
print(c(lowerLimit, upperLimit)) 

##################
###### QN 5 ######
##################

40000*((qnorm(0.975,0,1)))^2

##################
###### QN 6 ######
##################

qnorm(0.975,0,1)
(1.959964 * (0.206) / 0.04)^2

(1.959964 * (0.128) / 0.04)^2

##################
###### QN 7 ######
##################

w8csv = read.csv(file='C:\\Users\\bryan\\OneDrive - Nanyang Technological University\\AB1202-STATISTICS & ANALYSIS\\Tutorial\\W8-Question 7.csv', header=T) 
mean = mean(w8csv$score) 
S = sd(w8csv$score) 
n = length(w8csv$score) 
percent = 0.975 
lowerLimit = mean-qt(percent,n-1)*S/sqrt(n) 
upperLimit = mean+qt(percent,n-1)*S/sqrt(n) 
print(c(lowerLimit, upperLimit)) 


w8csv = read.csv(file='C:\\Users\\bryan\\OneDrive - Nanyang Technological University\\AB1202-STATISTICS & ANALYSIS\\Tutorial\\W8-Question 7.csv', header=T)  
mean = mean(w8csv$score)  
S = sd(w8csv$score)  
n = length(w8csv$score)  
percent = 0.995 
lowerLimit = mean-qt(percent,n-1)*S/sqrt(n)  
upperLimit = mean+qt(percent,n-1)*S/sqrt(n)  
print(c(lowerLimit, upperLimit)) 
