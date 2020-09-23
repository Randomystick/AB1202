##############
##### Q1 #####
##############
pnorm(mean = 1, sd = sqrt(0.25), q = 1.5)

(1.5-1)/sqrt(0.25)

pnorm(mean = 0, sd = 1, q = 1)

##############
##### Q2 #####
##############

1-pnorm(q = 4.26, mean = 4.18, sd = sqrt(0.84^2/50))

##############
##### Q3 #####
##############

1 - pnorm(16, 18, sqrt(7^2/42))

pnorm(16, 17.5, sqrt(7^2/90))

##############
##### Q4 #####
##############

7788^2
6529^2
6278^2

##############
##### Q5 #####
##############

set.seed(200) 
x=runif(6,0,1) 
x 

set.seed(300) 
x=runif(3,10,20) 
x 

set.seed(300) 
x=runif(6,10,20) 
x 

##############
##### Q6 #####
##############

for (i in 1:5){ 
    print(i^2) 
} 

for (i in 2:200){ 
    print(i) 
} 

sum = 0 
for (i in 1:100){ 
    sum = sum + i^2 
} 
print(sum) 

##############
##### Q7 #####
##############

x_bar = rep(0,1000)
set.seed(1)
for (i in 1:1000){
    x_bar[i] = mean(rbinom(prob = 0.3,size = 10,n = 3))
}
hist(x_bar)

x_bar = rep(0,1000)
for (i in 1:1000){
    set.seed(i)
    x_bar[i] = mean(rbinom(prob = 0.3,size = 10,n = 3))
}
hist(x_bar)