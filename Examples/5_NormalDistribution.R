# Author:       Niall McGuinness
# Title:        Normal Distribution
# Description:  Illustrating concepts relating to normal distribution
# Date:         03/2022
# Version:      1.0
# See:          [UPDATED 30.3.22]
#               https://data-flair.training/blogs/normal-distribution-in-r/
#               http://www.sthda.com/english/wiki/line-types-in-r-lty
#               https://www.youtube.com/watch?v=lPOSwfxMd3c
#               https://statisticsglobe.com/increase-font-size-in-plot-in-r


# cat is the concatenate and print function 
# The string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

######################################### rnorm #########################################

#rnorm - used to generate N random values in a normal distribution

#generate a set of 25 random values with mean and SD
y <- rnorm(250, 15, 3)
hist(y, 
     main = "Frequency of Normally Distributed Random Values [M=15, SD=3]", 
     ylab = "Frequency",
     col = "yellow")

######################################### dnorm #########################################

#dnorm - used to generate a probability density over a normal distribution

x <- seq(-4, 4, length=40); 
y <- dnorm(x, 0, 1)

plot(x, y,
     main="Probability Density of Normally Distributed Values in range [-4, 4] with [M=0, SD=1]",
     ylab="Probability Density")


######################################### pnorm #########################################

#pnorm - used to generate a cumulative density distribution function over a normal distribution

x <- -50:50
y <- pnorm(x, mean = 4, sd = 1)
plot(x,y,  
     main = "Cumulative Density of Normally Distributed Values in [-50,50] and with [M=4, SD=1]", 
     ylab = "Probability Density",
     col = "blue")

#pnorm - we can also use pnorm to calculate the percentile given X, M, and SD
grade <- 1800
mean <- 1500
sd <- 300

#zScore is 1
percentile <- pnorm(grade, mean, sd)
# percentile
print(paste("With a grade of", grade, ",Pam is in the", round(100*percentile,1), "percentile!"))

######################################### qnorm #########################################

#qnorm - we can use qnorm to convert from a percentile to a Z-score 
zScore <- qnorm(percentile); zScore
originalGrade <- zScore * sd + mean 
print(paste("With a percentile of ", percentile, ". Pam's original grade is", originalGrade))


v <- pnorm(1.48, mean = 0, sd = 1); v

z <- qnorm(0.815); z



