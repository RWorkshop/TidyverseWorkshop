
library(ggplot2)
library(magrittr)
head(diamonds)

#  mtcars - scatterplot of wt vs mpg - coloured by vs

ggplot(aes(x=wt,y=mpg),data=mtcars) + 
    geom_point(col="red") + stat_smooth(method="lm") + 
    ggtitle("My Lovely Plot")  + facet_grid(am~vs)
