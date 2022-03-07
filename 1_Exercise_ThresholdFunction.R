# Exercise - Implement a range stretching function
#           where
#           max: largest, min: smallest, current: value represent the variables to be stretched
# See https://www.tutorialspoint.com/dip/histogram_stretching.htm

# mapping from (min, max) to (0, max)
# function(parameters) and when we invoke we do itHistStretch(10, 20, 15) and 10, 20, 15 are arguments
itHistStretch <- function(min, max, current){
  #no return keyword
  max * ((current - min)/(max - min))
}

# invoke with specific arguments
stretchedResult < - itHistStretch(10, 20, 15)
