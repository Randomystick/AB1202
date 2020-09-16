#####################
###### PART C #######
#####################

# Calculate expected number of seats booked
p = dbinom(size = 11,prob = 0.8,x = 11:0)
bookingNumbers = c(11:0)
EX = sum(p*bookingNumbers)
#EX = 8.8

# Calculate probability of an overbooked flight
pOverbook = dbinom(size=11, prob=0.8, x=11)
#pOverbook is 0.08589935

EProfit = 12000*EX - 30000*pOverbook
#EProfit = 103023

#####################
###### PART D #######
#####################

# Calculate expected number of seats booked
p2 = dbinom(size = 10,prob = 0.8,x = 10:0)
bookingNumbers2 = c(10:0)
EX2 = sum(p2*bookingNumbers2)
#EX2 = 8

EProfit2 = 12000*EX2
#EProfit2 = 96000

#####################
###### PART E #######
#####################

