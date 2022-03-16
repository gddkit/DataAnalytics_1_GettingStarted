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
# The string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")


# include any external R files with my functions
# don't forget to set working directory under Session/Set Working Directory
source("1_Exercise_ThresholdFunction.R")   

# adding another function from an external R file
source("1_ExternalFunctions.R")
xyz <- myFunc(2,6)
xyz


############################ DATA TYPES ############################

# data types (numeric(floating-point), integer(L), complex, character, logical)
height <- 1.9
class(height)

#integer
population <- 1044

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
# m <- 100
# n <- 100

# operators (arithmetic, logical)
age1 <- 24
age2 <- 35
sum <- age1 + age2 # arithmetic (*, /, + -, %%)
sum
modResult1 <- 10 %% 3 #modulus = remainder
modResult1

modResult2 <- 7 %% 10 # modulus = 7
modResult2

# use parentheses to override operator precedence
amazing <- (age1 * (2.5 + 6.58))/(5.67 - age2)


# logical operator (<, >, <=, >=, !=, ==)
# Note: Use of == is for logical comparison i.e. SAME or DIFFERENCE yielding TRUE or FALSE
isYounger <- age1 == age2 #isYounger will be TRUE or FALSE
cat("Value of isYounger is", isYounger)

# name = "niall"
# if(name == "niall")
# {
#   print("Yes it was niall!")
# }


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
}else
{
  print("Still a few days until the start of the weekend!")
}

# logical operators (!, &, |, &&, ||)
salary <- 2800
isProbationComplete <- TRUE

# combining logical operator
# boolean logic tables
if(((salary >= 2000) && (isProbationComplete == TRUE)) || isEndYear == TRUE){
  print("Congratulations, you will get a pay-rise!")
}

age <- 64
if(age < 18)
{
  #print
}else if(age >= 18 && age <= 65)
{
  #print
}else #66+
{
  #print
}

############################ LOOPS ############################

# loops (while, for, repeat/break(we will not use this loop construct))
count <- 1
while(count <= 5)
{
  print("Count is...")  #\r\n
  print(count)
  count <- count + 1
}

for(i in 1:10)
{
  print(i)
}



############################ MATH FUNCTIONS & CONSTANTS ############################
# in-built functions 
logTest1 = log10(1000); logTest1   #log of 1000 to the base 10
logTest2 = log2(64); logTest2   #log of 64 to the base 2
logTest3 = log(64, exp(1)); logTest3 #user-defined base of e (natural log)
logTest4 = log(125, 5); logTest4 #user-defined base of 5

expTest1 = exp(1); expTest1  #exp = e = 2.718
powTest1 = 2^4; powTest1  #actually a mathematical operator
sqrtTest1 = sqrt(25); sqrtTest1

absTest1 = abs(-10.58); absTest1
absTest2 = abs(-1E6); absTest2

roundedPi = round(3.141598, 2)

# in-built constants
radius = 1
area1 = 2 * pi * (radius ^ 2)
paste("Circle area is ", area1)

############################ USER-DEFINED FUNCTIONS ############################

# user-defined functions

#name    #keyword  #parameters
logAbs <- function(someValue, base){
  log(abs(someValue), base)
}

# using/invoking function after it is defined
logAbsResult = logAbs(-100, 10); #10^2 = 100
print("Result")
print(logAbsResult)

square <- function(x){
  x * x
}

theSquare = square(12); theSquare

diff <- function(a,b){
  a - b
}

theDiff = diff(4, 10); theDiff

# exercise - calling/invoking the histogram stretching function 
myHistResult <- itHistStretch(10, 20, 15); myHistResult


############################ USER-INPUT ############################

# input
var = readline(prompt = "Enter a number:");

# convert the inputted value to an integer
var = as.integer(var);

# print the value
print(var)

############################ FILE-INPUT ############################

participants <- read.csv("Data/genderAgeHeight.csv")

# stat summary of the numerical data
summary(participants)

# dimensions of the data
dim(participants)

pGender <- participants[1,1]
pGender
class(pGender)

pAge <- participants[1,2]
pAge
class(pGender)

############################ DATA STRUCTURES ############################



