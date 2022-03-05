##### . Create a Histogram type graph

# Create data for the graph.
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
# Create the histogram.
hist(v,xlab = "Weight",col = "yellow",border = "blue")

##### . Create a graph of type ScatterPlot

input <- mtcars[,c('wt','mpg')]
# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)

##### . Create a boxplot chart

input <- mtcars[,c('mpg','cyl')]
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

##### . Change the string to uppercase
result <- toupper("Changing To Upper")
print(result)

##### . Change the string to lowercase
result <- tolower("Changing To Lower")
print(result)

##### . Applies a function to an array, list or vector that is passed as a parameter.
#Argument x: matrix, list or vector.
#Argument and: "1" to operate on the columns and "2" to operate on the rows.
#Argument z: Operator that is applied on rows or columns, according to the argument y.
##### Example:
apply (x, 1, sum)
apply (x, 2, sum)

##### .  names (x) <- value  
#Allows you to assign names to the elements of a variable.
##### Example:
n <- c (2,4,6) # Assigns three values to the variable x
names (n) <- c ("I", "II", "III") # Assigns names to the three previous values
n

##### .  length (x)
#Shows the number of elements in a vector.
##### Example:
x <- 1:20
length (x)

##### .  trunc (x)
#Remove the decimals of a number.
##### Example:
x <- 56.13
trunc (x)


##### .  max (x)
#Shows the maximum number in a vector.
##### Example:
and <- 1:20
max (y)

##### . min (x)
#Shows the minimum value in a vector.
##### Example:
z <- 1:20
min (z)

##### . mean (x)
#Shows the average of the data in a vector.
##### Example:
z <- 1:20
mean (z)

##### . head (x)
#Shows the first three data of a field or vector.
##### Example:
z <- 1:20
head (z)

##### . matrix (x: y)
#Create a one-dimensional matrix, the "x" marks the beginning and the "y" the end of the range.
##### Example:
x <- matrix (4:10)
x

##### . is.matrix (x)
#Returns a Boolean value TRUE or FALSE if it is an array or is not.

##### . colnames (x) = c ("data", "data", ...)
#Command to rename the columns of a vector.
##### Example:
colnames (x) = c ("Age", "Weight", "Height")

##### . rownames (x) = c ("data", "data", ...)
#Command to rename the columns of a vector.
##### Example:
rownames (x) = c ("lozano", "marco", "polo")

##### .  names (x) <- value  
#Allows you to assign names to the elements of a variable.
##### Example:
n <- c (2,4,6) # Assigns three values to the variable x
names (n) <- c ("I", "II", "III") # Assigns names to the three previous values
n

##### .  c (a1, a2, ...) 
#This function allows you to concatenate (join) objects: variables text, numbers, etc.
##### Example:
x <- c (1,2,3)
t <- c ("one", "two", "three")
x; t

##### .  invisible (x)
#Hide x in the return function so that the result is not visible. x can still be assigned even if it does not appear.
##### Example:
sum <- function (a, b) {
  s <- a + b
  return (invisible (s))
}
sum (5.4)

##### . tail (x)
#Shows the last three data of a field or vector.
##### Example:
z <- 1:20
tail (z)
