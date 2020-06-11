#Let's learn how to deal with categorical data or discrete data in x axis
library(ggplot2)

#Let's start with plotting single bar graph
plot <- ggplot(db, aes(x=clarity))
plot + geom_bar()

#Count of different clarity of diamonds based on cut
plot + geom_bar(aes(fill=cut))

#Let's add border to the colors for better understanding
plot + geom_bar(aes(fill=cut), color="black")

#How to distinguish color in terms of percentage
plot + geom_bar(aes(fill=cut), color="black", position="fill")

#Reversing the graph
plot + geom_bar(aes(fill=cut), color="black", position=position_fill(reverse=TRUE))

#Other ways to find out the values of color in each clarity category
plot + geom_bar(aes(fill=cut), color="black", position="dodge")

plot + geom_bar(aes(fill=cut), color="black", position="stack")

plot + geom_bar(aes(color=color), fill =NA, position="identity")
