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

<H2><p align="Center">TRABAJO: Evaluative Practice - Unit 4</p></H2>


<br>
<br>
<br>
<br>

# Evaluative Practice - Unit 4


```R

#importación de los datos con los que vamos a trabajar
dataset = read.csv('iris.csv')
dataset = dataset[1:4]

#Creamos una variable vectorial y luego un bucle for que guardará la suma de los cuadrados en la variable 
#con la ayuda de k-means
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)

#Hacemos la plot para poder visualizar la gráfica y hallar el codo
plot(1:10,
     wcss,
     type = 'b',
     main = paste('the elbow method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

```
<img alt="Imagen 1" src="">


```r

#Establecer nuestra semilla de aleatoriedad
set.seed(29)

#Ajuste de K-Means al conjunto de datos
kmeans = kmeans(x = dataset, centers = 3)

#Hacer la predicción
y_kmeans = kmeans$cluster

#Visualización de los clústeres
#instalamos e importamos la biblioteca del clúster
install.packages('cluster')
library(cluster)

clusplot(dataset,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of flowers'),
         xlab = 'Width',
         ylab = 'length')

```
<img alt="Imagen 2" src="">
