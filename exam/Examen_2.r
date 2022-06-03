#Exam 2

#Create a new project in Rstudio and put the file(Project-Data.csv) inside the project folder.



# The following line is placed to read the database
movies <-  read.csv("Project-Data.csv")
colnames(movies) 


# We indicate which columns are the ones that we will use from our dataset
#Genre, Studios, Budget, Groos %US respectivamente
movies <- movies [c(3,6,8,18)]


# rename columns
colnames(movies) <- c("Genre", "Studio", "BudgetM", "GrossUS")


#this command helps us to filter the genres that we are going to occupy
# we will assign to movies only those that meet the logical condition
movies$Genre== ...

#The studies will also be filtered as they are Buena Vista Studios, Fox
#Paramount Pictures, Sony, Univerdal, WB

movies<-movies[((movies$Genre=="action"|movies$Genre=="adventure"|movies$Genre=="animation"|movies$Genre=="comedy"|movies$Genre=="drama") & (movies$Studio=="Buena Vista Studios" | movies$Studio=="Fox" | movies$Studio=="Paramount Pictures"|movies$Studio=="Sony" |movies$Studio=="Universal" |movies$Studio=="WB")), ]


# import the ggplot2 library to plot and use aesthetics
library(ggplot2)

# Each color in the chart will be determined by Studio and Size by BudgetMIllions
# We assign movies to our variable u , we determine that x will be for Genere as to y


u <- ggplot(movies, aes(x=Genre, y=GrossUS,
                        color=Studio, size=BudgetM))



# box plot
u + geom_boxplot()  

<img alt="Imagen " src="https://github.com/uliomar87/MineriaDeDatos/blob/unit3/practices/practice1/img/img1.png?raw=true">



#overlay all the points for that group on each boxplot to get an idea of the sample size
#This can be achieved by adding the geom_jitter

u +  geom_jitter() + geom_boxplot(size=0.3,color="Black") 





# Format our boxplot

u + geom_jitter(shape=20) + geom_boxplot(size=0.3,alpha=0.5,color="Black",outlier.shape = NA)+
  theme(
    plot.title = element_text(family="Chandas",color="Black", size=12, face="bold", hjust = 0.5),
    axis.title.x = element_text(family="Chandas",color="purple", size=8, face="bold"),
    axis.title.y = element_text(family="Chandas",color="purple", size=8, face="bold")
  )  +  ggtitle("Domestic Gross % by Genre") + ylab("Gross%US") 












#Analysis: In the box plot analysis, we can notice that the data is segmented into 5 movie genres and 6 studios.

#Regarding the results, we can see that the “action” genre has a higher concentration of data and its boxes are in a medium position.


#As for the "adventure" genre, not much can be said because it does not present much data and its average is the lowest of the rest.

#On the part of the “animation” genre, we can notice an increase in data compared to the previous one and present a media position with respect to the other genres.

#In the "comedy" genre we find that its numbers are above the rest, which indicates that it is perhaps the one that generates the best numbers.

#Finally, the “drama” genre presents the smallest box of the group and the one with the least amount of data, although its midpoint is in a good position.

#In conclusion, the "comedy" genre obtained higher profits, but the "action" genre has a greater amount and concentration of data, which makes it a stable option.
