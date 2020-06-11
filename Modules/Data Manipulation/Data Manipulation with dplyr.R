#Data Manipulation with dplyr Package
install.packages('dplyr')

#Call dplyr package to use in the case
library(dplyr)

#Call the dataset of diamonds
db <- read.csv("diamonds.csv") 

#View the datset
View(db)

# Let's learn about the filter function
head(filter(db, carat>0.2, cut == "Premium"))
head(filter(db, carat>0.2, color == "E", price>500))

#Suppose we want a particular set of data to be separated from the whole
df<- slice(db, 20:45)

#Arrange the dataset based on priority of certain parameters
head(arrange(db, carat, depth, table))

#Renaming particular row for appropriate name
df<- rename(db, Purity=clarity)

#Create a column and add in databse which is function of other parameters
df<- mutate(db, Volume_of_diamond = x*y*z)
View(df)

#Suppose you want to see only the new dataset added to database
head(transmute(db, Volume_of_diamond = x*y*z))

#Finding out mean or sum of particular column
summarise(df, volume_avg=mean(Volume_of_diamond))

#I want to know the different types of cut in db dataset
distinct(select(db, cut))
#Distinct variables of color
distinct(select(db, color))

#Giving a random sample taken from the database
sample_n(db,10)

#Get a random sample of fraction of database
sample_frac(db,0.01)

#Adding data to existing table of dataset
db<- tail(add_row(db, X=53941, carat=0.25, cut="Premium", color="F", clarity="vs2", depth=63.2, table=62.4, price=3757, x=5.2, y=5.72, z=3.85))
