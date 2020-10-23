csvQ1 = read.csv("C:/Users/bryan/OneDrive - Nanyang Technological University/AB1202-STATISTICS & ANALYSIS/Tutorial/W5-Question 1.csv",header=T)
View(csvQ1)

#Pr(X=2) 
sum(csvQ1$probabilities[csvQ1$x==2]) 

#Pr(Y>=3) 
sum(csvQ1$probabilities[csvQ1$y>=3]) 

#Pr(X<=2 and Y<=2) 
sum(csvQ1$probabilities[csvQ1$x<=2 & csvQ1$y<=2]) 

#Pr(X=Y) 
sum(csvQ1$probabilities[csvQ1$x==csvQ1$y]) 

#Pr(X>Y) 
sum(csvQ1$probabilities[csvQ1$x>csvQ1$y])

#################################################
#################################################

csvQ2 = read.csv("C:/Users/bryan/OneDrive - Nanyang Technological University/AB1202-STATISTICS & ANALYSIS/Tutorial/W5-Question 2.csv",header=T)
#View(csvQ2)
total <- sum(csvQ2$frequencies)
csvQ2$probability = csvQ2$frequencies/total

#1. What is the joint probability Pr(X=4,Y=0)? 
csvQ2$probability[csvQ2$x==4 & csvQ2$y==0]

#2. What is the marginal probability function f(X=4)? 
sum(csvQ2$probability[csvQ2$x==4])

#3. What is the conditional probability function of Y given X=4? 
csvQ2$probability[csvQ2$x==4] / (sum(csvQ2$probability[csvQ2$x==4]))

prx.4 = sum(csvQ2$probability[csvQ2$x==4]) 
csvQ2$probability[csvQ2$x==4 & csvQ2$y==4] / prx.4 

#4. What is the conditional mean of Y given X=4? 
sum(csvQ2$y[csvQ2$x==4]*csvQ2$frequencies[csvQ2$x==4]) / sum(csvQ2$frequencies[csvQ2$x==4])

sum((csvQ2$probability[csvQ2$x==4] / sum(csvQ2$probability[csvQ2$x==4])) * csvQ2$y[csvQ2$x==4])
