# Author:       Niall McGuinness
# Title:        Normal Distribution
# Description:  Illustrating concepts relating to normal distribution
# Date:         03/2022
# Version:      1.0
# See:          [UPDATED 25.3.22]https://data-flair.training/blogs/normal-distribution-in-r/


# cat is the concatenate and print function 
# The string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

#rnorm

#generate a set of 25 random values with mean and SD
y <- rnorm(250, 0, 1)
hist(y, main = "ND", col = "yellow")

#dnorm

#pnorm
x <- -50:50
y <- pnorm(x, mean = 4, sd = 1)
plot(x,y, ylab = "Probability", col = "blue")

#ans <- pnorm(3, 4, 1); ans

percentile <- pnorm(1800, 1500, 300)
percentile

#pam
# pnorm(1800, mean = 1500, sd = 150)

#ketchup (1000grams)
# hi <- pnorm(1034, mean = 1000, sd = 25)
#  lo <- pnorm(957, mean = 1000, sd = 25)
# range <- hi - lo; range 








