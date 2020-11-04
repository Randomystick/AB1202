#################################################################
################ P R O C E S S   T H E   D A T A ################
#################################################################
data = read.csv(file = "C:\\Users\\bryan\\Downloads\\AB1202DATA.csv", header = T)
View(data)

# Add probability column
data$probabilities = data$number/37

# CHOCOLATE, CONE
# X ~ N(MEANchocoCone, VARchocoCone)
MEANchocoCone = sum(
    data$probabilities[data$flavour=="chocolate" & data$medium=="cone"] 
    *
    data$price[data$flavour=="chocolate" & data$medium=="cone"]
    )

VARchocoCone = sum(
    data$probabilities[data$flavour=="chocolate" & data$medium=="cone"] 
    *
    (data$price[data$flavour=="chocolate" & data$medium=="cone"]-MEANchocoCone)^2
)

# VANILLA, CONE
# Y ~ N(MEANvanillaCone, VARvanillaCone)
MEANvanillaCone = sum(
    data$probabilities[data$flavour=="vanilla" & data$medium=="cone"] 
    *
    data$price[data$flavour=="vanilla" & data$medium=="cone"]
)

VARvanillaCone = sum(
    data$probabilities[data$flavour=="vanilla" & data$medium=="cone"] 
    *
    (data$price[data$flavour=="vanilla" & data$medium=="cone"]-MEANvanillaCone)^2
)

#################################################################
############################## C I ##############################
#################################################################

# POP VARIANCE IS NOT KNOWN

# FOR CHOCO CONE:
n = 37
X_bar = MEANchocoCone
S = sqrt(VARchocoCone)
percent = .95
lowerLimitChoco = X_bar-qt(percent,n-1)*(S/sqrt(n)) 
upperLimitChoco = X_bar+qt(percent,n-1)*(S/sqrt(n)) 
print("Confidence Interval for Chocolate ice cream:")
c(lowerLimitChoco, upperLimitChoco) 

# FOR VANILLA CONE:
n = 37
X_bar = MEANvanillaCone
S = sqrt(VARvanillaCone)
percent = .95
lowerLimitVanil = X_bar-qt(percent,n-1)*(S/sqrt(n)) 
upperLimitVanil = X_bar+qt(percent,n-1)*(S/sqrt(n)) 
print("Confidence Interval for Vanilla ice cream:")
c(lowerLimitVanil, upperLimitVanil) 

#################################################################
############### L I N E A R   R E G R E S S I O N ###############
#################################################################

data2 = read.csv(file = "C:\\Users\\bryan\\Downloads\\AB1202DATA.csv", header = T)

for (j in 0:3)
{
    for (i in (15+16*j):(1+16*j))
    {
        data2$number[data2$X==i] = data2$number[data2$X==i] + data2$number[data2$X==i+1]
    }
}

data2$flavour.factor = factor(data2$flavour)
data2$medium.factor = factor(data2$medium)
summary(lm(number ~ medium.factor + flavour.factor + price, data=data2))



