#User defined Functions

#Let's create a simple user defined function
say.hello<- function()
{
  print("Hello")
}

#Let's create a simple user defined function with one variable
say.hello<- function(x,y)
{
  print(sprintf(" Hello %s %s", x, y))
}

#Do Call Function List
math.it <- function(x , func = mean)
{
  do.call(func, args = list(x))
}