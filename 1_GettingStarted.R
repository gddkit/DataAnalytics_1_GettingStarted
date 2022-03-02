# Author:       Niall McGuinness
# Title:        Getting Started
# Description:  Illustrating types, operators, constants, and functions 
# Date:         03/2022
# Version:      1.0
# Note:         Variable names are chosen for simplicity and would not reflect the best choice of varaible name within a typical script
# See:          https://iqss.github.io/dss-workshops/R/Rintro/base-r-cheat-sheet.pdf
#               https://www.guru99.com/r-functions-programming.html
#               https://www.delftstack.com/howto/r/value-of-e-in-r/
#               https://www.geeksforgeeks.org/taking-input-from-user-in-r-programming/
#               https://www.earthdatascience.org/courses/earth-analytics/multispectral-remote-sensing-data/source-function-in-R/

# cat is the concatenate and print function 
# The literal "\014" sends a CTRL + L to the console to clear it
cat("\014") 

############################ DATA TYPES ############################

# data types (numeric, integer, complex, character, logical)
height <- 1.9
class(height)

#integer
population <- 1044L

#complex
x <- 3i + 4

#character
name <- "jane smith"
fname <- 'Jane'

#logical (generally ALWAYS capitalised) 
isRaining <- TRUE 

############################ OPERATORS ############################

#assignment operator
s <- 10
y <- "jane"
z <- TRUE

# assigning 100 to 3 variables i.e. l, m, n
l <- m <- n <- 100

# operators (arithmetic, logical)
age1 <- 24
age2 <- 35
sum <- age1 + age2
sum
modResult <- 10 %% 3
modResult


# logical operator
isYounger <- age1 <= age2 #isYounger will be TRUE or FALSE
cat("Value of isYounger is", isYounger)

############################ CONTROL FLOW ############################

# control flow (e.g. if)
if(age1 <= age2)  #less than or equal
{
  print("You are younger then I!")
}

# control flow (e.g. if...else)
today <- "sat"
if(today == "fri"){
  print("It's the start of the weekend!")
}else{
  print("Still a few days until the start of the weekend!")
}

############################ LOOPS ############################

# loops (while, for, repeat/break(we will not use this loop construct))
count <- 1
while(count < 5)
{
  print("Count is...")
  print(count)
  count <- count + 1
}

for(i in -5:5)
{
  print(i)
}


############################ MATH FUNCTIONS & CONSTANTS ############################
# in-built functions
logTest1 = log10(64); logTest1
logTest2 = log2(64); logTest2
logTest3 = log(64, exp(1)); logTest3

expTest1 = exp(4); expTest1
powTest1 = 2^4; powTest1
sqrtTest1 = sqrt(25); sqrtTest1

absTest1 = abs(-10.58); absTest1
absTest2 = abs(-1E6); absTest2

# in-built constants
radius = 1
area1 = 2 * pi * radius * radius
paste("Circle area is ", area1)

############################ USER-DEFINED FUNCTIONS ############################

# user-defined functions

square <- function(x){
  x * x
}

theSquare = square(12); theSquare

diff <- function(a,b){
  a - b
}

theDiff = diff(4, 10); theDiff

############################ USER-INPUT ############################

# input
var = readline(prompt = "Enter a number:");

# convert the inputted value to an integer
var = as.integer(var);

# print the value
print(var)

############################ FILE-INPUT ############################


############################ DATA STRUCTURES ############################



