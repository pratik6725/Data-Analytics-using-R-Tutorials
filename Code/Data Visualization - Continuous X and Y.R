#Let's plot some two varibale graphs
#We will use a dataset called mtcars

library(ggplot2)

View(mtcars)
plot <- ggplot(mtcars, aes(wt, mpg, label=rownames(mtcars)))

#let's start with plotting a text graph
plot + geom_text()

#Plot with a label graph
plot + geom_label()

#Classify based on the no. of cylinders
plot + geom_label(aes(color=cyl))

plot + geom_label(aes(color=factor(cyl)))

#Let's learn about point and jitter plots

plot + geom_point(aes(color=factor(cyl)))

#Classify based on size of cylinder
plot + geom_point(aes(size=factor(cyl)))

#Lets's see the overlapping points also
plot + geom_point(aes(size=factor(cyl),alpha=0.5))

#Let's change the shape of the markers
plot + geom_point(aes(shape=factor(cyl)))
plot + geom_point(aes(shape=factor(cyl)), size=1)

#Let's do some simple linear regression

plot + geom_smooth() + geom_point()

plot + geom_smooth(method="lm") + geom_point()

#Quantile graph
plot + geom_quantile() + geom_point()
