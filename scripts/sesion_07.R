matrix(data = c(1,4,2,7,9,10), nrow = 4, ncol = 5)
matrix(data = c(1,4,2,7,9,10), nrow = 4, ncol = 5, byrow = TRUE)


matriz_1  <- matrix(1:4,nrow=2,ncol=3)
matriz_2  <- matrix(200:203,nrow=2,ncol=3)

matriz_1
matriz_2

# Producto de Hadamard o producto puntual
# Deben tener el mismo número de filas y el mismo
# número de columnas
matriz_1 * matriz_2

# Suma de matrices
# Deben tener el mismo número de filas y el mismo
# número de columnas
matriz_1 + matriz_2

# Resta de matrices
# Deben tener el mismo número de filas y el mismo
# número de columnas
matriz_1 - matriz_2

matriz_1
matriz_2

# Multiplicación y división por escalar

2 * matriz_1

matriz_1 / 2

##########

matriz_1 / matriz_2

####### Multiplicación algebraica
#### Si A y B son dos matrices, el producto algebraico AB
#### está bien definido si el número de columnas de A
#### es igual al número de filas de B

matriz_1 %*% matriz_2

matriz_3  <- matrix(c(10:13),nrow = 3, ncol =20, byrow=TRUE)
View(matriz_3)

matriz_1 %*% matriz_3

matriz_1
t(matriz_1)


########################################################################
######################## Construcción de dataframes ##################
########################################################################

mi_dataframe  <- data.frame(pais = c("Portugal","Luxemburgo","España"),
                            poblacion = c(1029898,716122,878971),
                            playa = c(TRUE,FALSE,TRUE))
                            

mi_dataframe

View(mi_dataframe)

#estructura
str(mi_dataframe)

#Resumen
summary(mi_dataframe)

class(mi_dataframe)
typeof(mi_dataframe)
mode()


head(mi_dataframe) #mi_dataframe.head()
tail(mi_dataframe)


#######################


mi_dataframe
View(mi_dataframe)

row.names(mi_dataframe)

row.names(mi_dataframe) <- c("U","V","W")
row.names(mi_dataframe)


########################################################################
######################## Indexado y modificación #######################
########################################################################

mi_dataframe[,c(2,3)]

mi_dataframe[1,]
mi_dataframe["U",]
mi_dataframe[,"pais"]

mi_dataframe[,c("poblacion", "pais")]

mi_dataframe$pais


names(mi_dataframe)[1] <- "Pais"

names(mi_dataframe)

mi_dataframe[2,2]
mi_dataframe$poblacion[2]


mi_dataframe$playa <- as.numeric(mi_dataframe$playa)

mi_dataframe$poblacion <- mi_dataframe$poblacion / 2

mi_dataframe

########################################################
##################### Expansión de dataframes ##########
########################################################

otro_dataframe <- data.frame(
  c("Francia","Alemania"),
  c(231213,87623),
  c(TRUE,TRUE))

rbind(mi_dataframe,otro_dataframe)

names(mi_dataframe)
names(otro_dataframe)

names(otro_dataframe) <- names(mi_dataframe)

rbind(mi_dataframe,otro_dataframe)


extra  <- data.frame(capital = c("Lisboa","Luxemburgo","Madrid"),
                     mundial = c(TRUE,FALSE,NA))

extra

cbind(mi_dataframe,extra)


mi_dataframe
mi_dataframe$mundial <- c(TRUE,FALSE,NA)

mi_dataframe

cbind(mi_dataframe,otro_dataframe)

mi_dataframe


mi_renglon <- data.frame(Pais = c("México"),
                         poblacion = c(128000000),
                         playa = c(1),
                         mundial = c(TRUE))
mi_renglon

mi_dataframe <- rbind(mi_dataframe,mi_renglon)


########## Eliminado de columnas

mi_dataframe

mi_dataframe[-4,]

row.names(mi_dataframe)
mi_dataframe$playa <- NULL

mi_dataframe