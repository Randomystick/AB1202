#csv = read.csv(file.choose(),header=T)
csv = read.csv("C:/Users/bryan/OneDrive - Nanyang Technological University/AB1202-STATISTICS & ANALYSIS/PPT's and data files/Week 5- Bivariate distributions and correlations/xad-sale.csv", header = T)

cov(csv)
# Obtain covariance
#           sale            xad
# sale    Var(sale)     Var(sale,xad)
# xad   Var(sale,xad)     Var(xad)

cor(csv)
# Obtain correlation coefficient
#           sale            xad
# sale      1.0        p(sale,xad)
# xad   p(sale,xad)         1.0

plot(csv$sale,csv$xad)
