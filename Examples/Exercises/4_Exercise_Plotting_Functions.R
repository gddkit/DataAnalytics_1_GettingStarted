#https://statisticsglobe.com/increase-font-size-in-plot-in-r

# exercise 1 - loading data from CSV
aqiData <- read.csv("aqi_2022.csv")

# extract the aqi data for all rows and store in a variable
aqi <- aqiData$aqi; aqi
  
#extract the ids for all rows and store in a variable
ids <- aqiData$id; ids

plot(x = ids, y = log(aqi,10), 
     main = "AQI Measurements for Sensors",
     sub = "Fig 1.0 Readings from Paris Sensor Network",
     col = "green",
     xlab = "Sensor ID",
     ylab = "AQI Reading (Log10)",
     type = "o",
     pch = 5,
     ylim = c(1, 3))

#exercise - generate a summary of all the data 
summary(aqiData)

#exercise - generate a summary of the data in the aqi
summary(aqiData$aqi)

stdDevAQI <- sd(aqiData$aqi); stdDevAQI

#exercise - use subset to filter only paris aqi levels in range [0,125]





#quadratic

#create a vector with values in [x, y] incrementing by z
xValues <- seq(0, 100, by = 2.5); xValues
  
#create a second vector using the first where y = 2*x*x + 10
yValues <- 2*xValues*xValues + 10; yValues

#plot x vs y values
plot(xValues, yValues, 
     main="Quadratic plot of x vs y",
     xlim = c(0, 125),
     ylim = c(0, 25000),
     xlab = "x value",
     ylab = "y value",
     cex.main = 1.25, cex.lab = 0.75, cex.axis = 0.5) #set font sizes


#logarithmic (base 5)
logValues <- log(xValues, 2)

#plot x vs log values
plot(xValues, logValues, 
     xlab = "x value",
     ylab = "log x values",
     xaxt = "n") 
axis(side = 3, labels=TRUE, tick=TRUE, col="#00ff00",
     at = seq(0, 100, by=5), # set tick frequency,
     tcl = -0.4 ) #set tick width and above/below the axis




