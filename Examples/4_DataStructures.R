# Author:       Niall McGuinness
# Title:        Data Structures
# Description:  Illustrating common R language data types (e.g. vector, list, matrix, array)
# Date:         03/2022
# Version:      1.0
# See:          https://www.tutorialspoint.com/r/r_vectors.htm
#               https://www.w3schools.com/r/r_vectors.asp

#vector examples
names <- c('alan','bea','ciara', 'dave', 'erica') # ""
names

heights <- c(1.78, 1.84, 1.81)
heights

theNamesLength <- length(names)
theNamesLength

sortedHeights <- sort(heights)
sortedHeights

aName <- names[2]
aName

someNames <- names[c(2,4)]
someNames

exclName <- names[-2]
exclName

names[2] <- "beatrix"
names

repeatTeams <- rep(c("liverpool", "arsenal"), each = 5)
repeatTeams

repeatTeamIDs <- rep(c(1001, 1002, 3005), times = 4)
repeatTeamIDs

repeatTeamAllocations <- rep(c("acc", "sales", "QA"), times = c(3, 5, 2))
repeatTeamAllocations

#sequence
numbers <- 1:20
numbers

otherNumbers <- 2.5:8.5
otherNumbers

someOtherNumbers <- seq(from = -10, to = 20, by = 2.7)
someOtherNumbers

#list examples


# barplot(names, heights)



