############################ EXERCISES ############################

# exercise - print numbers from 20 to 0
index <- 20
while(index >= 0)
{
  print(index)
  index <- index - 5
}

# exercise - print only EVEN numbers from 20 to 0
number <- 20
while(number >= 0)
{
  if(number %% 2 == 0) #BUG????
  {
    paste("The number is", number)
  }
  number <- number - 1
}
