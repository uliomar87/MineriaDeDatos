### Practice 3

#The excel file is loaded
stats <- read.csv("top2000_anime.csv", header=TRUE) 

#Shows that the records are uploaded successfully
View(stats)
stats

# top_anime It will contain the data from the database 
top_anime <- read.csv("top2000_anime.csv")

#Download library 
library(ggplot2)

#Dispersion diagram 
ggplot(data=top_anime, aes(x=Score.Rank, y=Popularity.Rank, color=Type)) + geom_point()


#Graph facets 

v <- ggplot(top_anime, aes(x=Popularity.Rank))
v + geom_histogram(binwidth = 10, aes(fill=Type), color="Black") + facet_grid(Type~., scales=”free”)


#Graph with theme 

s <- ggplot(data = top_anime, aes(x=Popularity.Rank))
s + geom_histogram(binwidth = 10, aes(fill=Type), color="Black") + theme_dark()


