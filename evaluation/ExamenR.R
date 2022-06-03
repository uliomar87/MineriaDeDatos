
#Cargamos el archivo excel 
stats <- read.csv("DataFramesEvaluation_Data.csv", header=TRUE) 


#Muestra que los registros se cargen correctamente
View(stats)
stats

#Cargamos  vectores para construir nuestro dataframe

#creamos nuestro dataframe con el nombre mydf asigna los siguientes valores 
mydf <- data.frame(Country= Country_Code, Life1960= Life_Expectancy_At_Birth_1960,
                   life2013= Life_Expectancy_At_Birth_2013)


head(stats) # visualizamos los primeros 6 datos de nuestro dataset principal
head(mydf) # visualizamos los primeros 6 datos de nuestro dataframe 


#Unimos nuestro data set con el datamframe que acabamos de crear mediante la variable contry.Code y la variable country del dataframe 

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Country")



#mostramos los primeros 6 valores de la unión 
head(merged)

#traemos las ultimas filas de la union 
tail(merged)

#resumen de nuestro dataframe 
summary(mydf)



# Ploteo para datos de 1960 
qplot(data = merged, x = Fertility.Rate, y = Life1960, 
      color = Region, size=I(3), shape=I(19), alpha =I(.4), 
      main = "Tasa Fertilidad ")


#ploteo para datos del 2013 
qplot(data = merged, x = Fertility.Rate, y = life2013, 
      color = Region, size=I(3), shape=I(19), alpha =I(.4), 
      main = "Tasa Fertilidad ")