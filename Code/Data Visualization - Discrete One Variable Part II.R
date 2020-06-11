#Let's create more discrete graphs with one variables
#to understand how to use position, coordinates, labels and facets

install.packages("ggplot2",dependencies=TRUE)
library(ggplot2)

plot<- ggplot(db, aes(cut))

plot + geom_bar()

#Let's fill the grpah with clarity
plot <- ggplot(db, aes(cut, fill = clarity))
plot + geom_bar

#Let's revise how to use position
plot + geom_bar(position = "dodge")
plot + geom_bar(position = "fill")
plot + geom_bar(position = "stack")

#Learn to deal with coordinates

#Flipping the coordinate
plot + geom_bar() + coord_flip()

#Polar Coordinate
plot + geom_bar() + coord_polar()

#Labels
plot + geom_bar(position = "stack") + ggtitle("Cut Classification based on Clarity")

#Adding x and y labels
plot + geom_bar(position = "stack") + ggtitle("Cut Classification based on Clarity") + xlab("Cut") + ylab("Count")

#Adding all of them in a single command
plot + geom_bar(position="stack") + labs(titles = "Classification", x="Cut", y="Count")

#Let's create some facets
plot + geom_bar(position = "dodge") + facet_grid(.~cut)

plot + geom_bar(position = "dodge") + facet_wrap(.~cut)
