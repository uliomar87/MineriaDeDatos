<p align="center">
    <img alt="Logo" src="https://www.tijuana.tecnm.mx/wp-content/uploads/2021/08/liston-de-logos-oficiales-educacion-tecnm-FEB-2021.jpg" width=850 height=250>
</p>

<H2><p align="Center">TECNOLÓGICO NACIONAL DE MÉXICO</p></H2>

<H2><p align="Center">INSTITUTO TECNOLÓGICO DE TIJUANA</p></H2>

<H2><p align="Center">SUBDIRECCIÓN ACADÉMICA</p></H2>

<H2><p align="Center">DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN</p></H2>

<H2><p align="Center">NOMBRE DE LOS ALUMNOS: </p></H2>

<H2><p align="Center">MADRIGAL RAMOS ULISES OMAR 18210496</p></H2>

<H2><p align="Center">LOZANO ALVAREZ MARCO POLO 18210846 </p></H2>

<H2><p align="Center">Carrera: Ing. Sistemas computacionales</p></H2>

<H2><p align="Center">MATERIA: Minería de datos</p></H2>

<H2><p align="Center">PROFESOR: JOSE CHRISTIAN ROMERO HERNANDEZ</p></H2>

<H2><p align="Center">TRABAJO: Practice 1 - Unidad 2</p></H2>


<br>
<br>
<br>
<br>

```R
### Practice 1

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
```
<img alt="Imagen4 " src=" ">


```R
#Graph facets 

v <- ggplot(top_anime, aes(x=Popularity.Rank))
v + geom_histogram(binwidth = 10, aes(fill=Type), color="Black") + facet_grid(Type~., scales=”free”)
```
<img alt="Imagen5 " src=" ">


```R
#Graph with theme 

s <- ggplot(data = top_anime, aes(x=Popularity.Rank))
s + geom_histogram(binwidth = 10, aes(fill=Type), color="Black") + theme_dark()
```
<img alt="Imagen6 " src=" ">
