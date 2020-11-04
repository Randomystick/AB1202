library(wooldridge)
library(e1071)
View(wage2)
summary(lm(wage ~ educ + exper + tenure, data = wage2))
