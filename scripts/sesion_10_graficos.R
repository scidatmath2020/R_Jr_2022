data(mtcars)

### Nubes de puntos

plot(x=mtcars$hp, y=mtcars$wt, main = "T�tulo de la gr�fica",
     xlab="caballos de fuerza",
     ylab="peso",col="blue",pch = 19)

#figure margins too large

### gr�ficos de barras

count_cyl <- table(mtcars$cyl)



barplot(count_cyl,main="Mi gr�fico de barras")


barplot(count_cyl,main="Gr�fico de barras",
        xlab="cilindros",ylab = "total",
        col = c("darkred","green","orange"))


#### Histograma
# Sturges
hist(mtcars$hp,col="darkgreen")

# 1er paso: instalar la paqueter�a
install.packages("ggplot2")  # pip install numpy

# Usualmente aparece una ventanta que dice
# selecciona un cran o un mirror

# 2do paso: Llamar a la paqueter�a
library(ggplot2) # import numpy as np

######################

ggplot(data = mtcars, aes(x=hp)) + 
  geom_histogram(fill="salmon",colour="black",binwidth=50)

ggplot(data = mtcars, aes(x=hp,y=wt)) + 
  geom_point(aes(col=factor(cyl),size = factor(cyl)),alpha=0.5) +
  theme_bw()

