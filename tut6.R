##################
###### QN 2 ######
##################
sample_2 = c(50,64,65,80,49,63,57)
summary(sample_2)
IQR(sample_2)
sd(sample_2)

##################
###### QN 3 ######
##################

length(ChickWeight$weight[ChickWeight$weight<100])
#View(ChickWeight)

diet2 = (ChickWeight$weight[ChickWeight$Diet==2])
median(diet2)

##################
###### QN 4 ######
##################

View(USPersonalExpenditure)
sum(USPersonalExpenditure) / 5

class(USPersonalExpenditure)
# "matrix" "array"
col(USPersonalExpenditure)
#      [,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    1    2    3    4    5
#[3,]    1    2    3    4    5
#[4,]    1    2    3    4    5
#[5,]    1    2    3    4    5
sum(USPersonalExpenditure[3,]) / 5
#or
mean(USPersonalExpenditure[3,])

##################
###### QN 5 ######
##################

mcap = c(150,70,120,80,100)
summary(mcap)

treturn = c(-2,300, 10, 20, 15)
summary(treturn)

sd(treturn)
IQR(treturn)
sd(mcap)
IQR(mcap)
