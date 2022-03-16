# Author:       Niall McGuinness
# Title:        User Input
# Description:  Illustrating reading data from command line
# Date:         03/2022
# Version:      1.0
# Note:         To RUN this code, save the file, then click on the Source button in the top RHS of this script pane. 
#               We do this because the standard (CTRL+ENTER) approach wont work when we read user input
# See:          https://www.geeksforgeeks.org/taking-input-from-user-in-r-programming/


# cat is the concatenate and print function 
# The string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

# input an integer as a string
myAgeAsStr = readline(prompt = "Enter an age:");

#uncomment the line below to see what happens when we try to use a string as an integer (or float) (i.e. we get a non-numeric argument to binary operator error)
# doubleAge <- myAgeAsStr * 2; doubleAge

# convert the input value to an integer
myAgeAsInt = as.integer(myAgeAsStr);

# input
myHeightInCMSAsStr = readline(prompt = "Enter your height in cm:");

# convert the input value to an floating-point number
myHeightInCMSAsFloat = as.numeric(myHeightInCMSAsStr)

# now we have a float we can apply mathematical operators e.g. divide, multiple, mod etc
myHeightInMetresAsFloat = myHeightInCMSAsFloat / 100

#create a string from a concatenation of strings and the integer
outputStr <- paste("You are", myAgeAsInt, "years old and ", myHeightInMetresAsFloat, "metres tall!")

# print the output string
print(outputStr)