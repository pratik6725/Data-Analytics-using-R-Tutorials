#Conditions and Loops


#Lets start with if condition
check <-1
if(check == 1)
{
  print("Hello")
}

if(check == 0)
{
  print("Hello")
}

#ifelse condition
check <-1
ifelse(check==0, "True","False")

#Power of ifelse
testval <- c(1,0,1,0,0,1)

ifelse(testval==1, "True", "False")

ifelse(testval == 1, 3*testval, 5*testval)

#switch cases
lets.switch <- function(x)
{
  switch(x, "a"="Alpha", "b"="Beta", "o"="Omega", "t"="Theta", "Out of Bounds")
}

lets.switch("a")
lets.switch("x")
lets.switch("o")

#Loops
#Lets play with For loop
for(i in 1:10)
{
  print(i)
}

#Power of Print in R
print(1:10)

#While Loop
x <- 1
while(x <= 5)
{
  print(x)
  x <- x+1
}

#Loop Control Statements

#Next Statement
for(i in 1:10)
{
  if(i == 3)
  {
    next
  }
  print(i)
}

#Break Statement
for(i in 1:10)
{
  if(i == 3)
  {
    break
  }
  print(i)
}
