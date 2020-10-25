library(wooldridge)
library(e1071)

###### Q3 ######
skewness(kielmc$price)

summary(lm(log(price) ~ log(dist), data=kielmc))

summary(lm(log(price) ~ log(dist)+log(area)+log(land)+rooms, data=kielmc))

###### Q4 ######
skewness(apple$ecolbs)
#View(apple)

summary(lm(ecolbs ~ ecoprc + regprc, data=apple))

