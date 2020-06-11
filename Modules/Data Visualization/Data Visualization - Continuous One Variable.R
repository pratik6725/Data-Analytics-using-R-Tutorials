#Import libraries
library(dplyr)

install.packages(
  "ggplot2",
  repos = c("http://rstudio.org/_packages",
            "http://cran.rstudio.com")
)

library(ggplot2)

db <- read.csv("diamonds.csv")
db <- sample_frac(db,0.1)

#Observe the dataset
View(db)

#We will choose a continuous variable 'price' for understanding how to deal with single continuous data

#Let's create ggplot with parameter as price
plot <- ggplot(db,aes(x= price))

#Plotting of graph
#We will start with histogram
plot + geom_histogram(binwidth=600)

#Let's change the color of the graph
plot + geom_histogram(binwidth=600, fill="Purple")

#Let's apply some aesthetics to the graph
#Classify the pricing of diamonds based on the cut of diamonds
plot + geom_histogram(binwidth = 600,aes(fill=cut))
#Let's try to classify price of diamonds with clarity
plot + geom_histogram(binwidth = 600,aes(fill=clarity))

#Add border to the classifications
plot + geom_histogram(binwidth = 600,aes(fill=cut), color = "Black")

#Let's try other graphs
plot + geom_freqpoly(binwidth=600)

#Adding Aesthetics
plot + geom_freqpoly(binwidth=600, aes(color=cut))

#Let's work with Area Graphs
plot+ geom_area(stat="bin")

plot+ geom_area(stat="bin",aes(color=cut))

#Fill the graph
plot+ geom_area(stat="bin",aes(fill=cut))

#Let's work with density plots
plot + geom_density(aes(color = cut))

plot + geom_density(aes(fill = cut))

#Some cut graphs are hidden behind the density fills
plot + geom_density(aes(fill = cut), alpha = .3)

plot + geom_density(aes(fill = cut), alpha = .3, size = 1)