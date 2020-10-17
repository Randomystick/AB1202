#Q2
20 + 10*80 + 0.6*7.5


#Q3
-301.45 + 53.23*20 + 4.93*50


#Q4
csv4 = read.csv(file.choose(), header=T)
#View(csv4)
reg.results = lm(score ~ female, data=csv4)
summary(reg.results)


#Q5
library(wooldridge)
#View(ceosal1)
reg.results = lm(salary ~ sales + finance + consprod + utility, data=ceosal1)
summary(reg.results)

reg.results = lm(salary ~ sales + indus + consprod + utility, data=ceosal1)
summary(reg.results)


#Q6
library(wooldridge)
#View(bwght)
reg.results = lm(bwght ~ cigs, data = bwght)
summary(reg.results)

119.77-0.51377*20
(119.77-125)/0.51377

#Q7
library(wooldridge)
#View(gpa2)
reg.results = lm(colgpa ~ hsperc + sat, data=gpa2)
summary(reg.results)

1.392 - 0.01352*20 + 0.001476*1050
0.001476*140

#Q8
library(wooldridge)
reg.results = lm(educ ~ sibs + meduc + feduc, data = wage2)
summary(reg.results)

1/0.09364
0.13079*(16-12) + 0.21*(16-12)


#Q9
#View(ChickWeight)
chickweightt = ChickWeight
chickweightt$diet.factor = factor(ChickWeight$Diet)
reg.results = lm(weight ~ Time + diet.factor, data=chickweightt)
summary(reg.results)
#reg.results = lm(weight ~ Time + Diet, data = ChickWeight)
#summary(reg.results)

chickweighttt = ChickWeight
chickweighttt$diet.factor = factor(ChickWeight$Diet)
chickweighttt$time.factor = factor(ChickWeight$Time)
reg.results = lm(weight ~ time.factor + diet.factor, data=chickweighttt)
summary(reg.results)


