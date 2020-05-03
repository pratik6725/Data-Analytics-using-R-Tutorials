#Data Frames

#List of data frame present in R by default
data()
#How to view a particular dataset?
View(co2)
View(mtcars)

#Let's create our own data frames now
Students<- c("Rohan","Zack","Mona","Hannah","Rio","Taylor","Brendon","Smith","Jessica")
Weight <- c("58","62","53","56","58","72","81","73","67")
Gender <- c("M","M","F","F","M","F","M","M","F")

#Let's create a dataframe using these values
df<- data.frame(Students,Weight,Gender)

#No. of rows
nrow(df)

#No. of columns
ncol(df)

#Dimension of data frame
dim(df)

#Summary of the data frame
summary(df)

#Reading only few elements of the top
head(df)

#Reading few of the bottom data
tail(df)

#What is the structure of the data frame
str(df)

#How to access particular data set from the table?
df$Students

#Accessing particular data from the table
df[7,2]

#To access particular column
df[,3]

#To access whole data except particular column
df[,-3]

#Data frame for just particular set of data
df[2:4,]

#Similar to df$Students
df[["Students"]]

#Calling particular columns using column names
df[,c("Students","Weight")]

#Using drop command
df[,1, drop = FALSE]
df[,1, drop = TRUE]

#Lets work with Subset function
subset(df, subset = Gender == "M")
weight.ordered <- order(df["Weight"])
df[weight.ordered,]
