data(mtcars)

### Nubes de puntos

plot(x=mtcars$hp, y=mtcars$wt, main = "Título de la gráfica",
     xlab="caballos de fuerza",
     ylab="peso",col="blue",pch = 19)

#figure margins too large

### gráficos de barras

count_cyl <- table(mtcars$cyl)



barplot(count_cyl,main="Mi gráfico de barras")


barplot(count_cyl,main="Gráfico de barras",
        xlab="cilindros",ylab = "total",
        col = c("darkred","green","orange"))


#### Histograma
# Sturges
hist(mtcars$hp,col="darkgreen")

# 1er paso: instalar la paquetería
install.packages("ggplot2")  # pip install numpy

# Usualmente aparece una ventanta que dice
# selecciona un cran o un mirror

# 2do paso: Llamar a la paquetería
library(ggplot2) # import numpy as np

######################

ggplot(data = mtcars, aes(x=hp)) + 
  geom_histogram(fill="salmon",colour="black",binwidth=50)

ggplot(data = mtcars, aes(x=hp,y=wt)) + 
  geom_point(aes(col=factor(cyl),size = factor(cyl)),alpha=0.5) +
  theme_bw()

