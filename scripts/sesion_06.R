# vector con 8 elementos
mi_vector  <- c(24, 31, 35, 42, 49, 50, 51,58)

# array de dos filas, 4 columnas y una sola capa

class(array(data = mi_vector,dim = c(2,4)))

# array de dos filas, 3 columnas y cuatro capas

mi_array <- array(data = mi_vector, dim = c(2,3,4))
class(mi_array)

################

array(data = c(1,2,"3",4,5,0/0),dim=c(2,2,3))

################

dim(mi_array)
nrow(mi_array)
ncol(mi_array)

# Número de filas
dim(mi_array)[1]

# Número de columnas
dim(mi_array)[2]

# Número de capas
dim(mi_array)[3]

mi_array


# Mandar a llamar toda la segunda capa
mi_array[ , ,2]

# Mandar a llamar la primer columna de la tercerca capa
mi_array[,2,3]

# Mandar a llamar las columnas 1 y 3 de la cuarta capa
mi_array[,c(1,3),4]

# Mandar a llamar la segunda fila, 
# tercera columna de la quinta capa

mi_array <- array(data = mi_vector, dim = c(2,3,5))
mi_array[2,3,5]

# Mandar a llamar la tercera columna de todas las capas
mi_array[,3,]

# Mandar a llamar las columnas 2 y 3 de las capas 1, 3 y 5
mi_array[,c(2,3),c(1,3,5)]

######################################################
########################### Modificación 
######################################################

mi_array[1,,]
mi_array[1,,] <- 1

mi_array

mi_array[,,2]

mi_array[1,,] <- c(2,5)

mi_array[1,,] <- c(-1,0,1)

mi_array[,,5]

mi_array

#####################

mi_array[c(1,2),1:2,3]  <- array(c(1,2),dim=c(2,2))

mi_array[,,3]

##############################################################
################### Operaciones con arrays ###################
##############################################################

mi_array <- array(data = mi_vector, dim = c(2,3,5))
mi_array

sqrt(mi_array[,,1])

# cambiar la primera capa por las raíces cuadradas de sus elementos
mi_array[,,1] <- sqrt(mi_array[,,1])

mi_array

# Cambiar la segunda columna de la tercera capa por sus cuadrados
mi_array[,2,3] <- mi_array[,2,3]^2

mi_array

# Cambiar el elemento situado en la segunda fila 
# de la tercer columna de la quinta capa por 2022

mi_array[2,3,5] <- 2022

mi_array

##############################################################
################### Propiedad de nombres #####################
##############################################################

mi_array <- array(data = mi_vector, dim = c(2,3,5))

mi_array <- array(data = mi_vector,
                  dim = c(2,3,5),
                  dimnames = list(c("hombre","mujer"),
                                  c("edad","peso","altura"),
                                  c("México","Argentina","Perú","Chile","Colombia"))
)

mi_array

mi_array[,,c("Argentina","Chile")]

mi_array[,"peso",]

mi_array[,c("edad","altura"),"México"]

dimnames(mi_array)

dimnames(mi_array)[[3]][2] <- "Ecuador"

mi_array

################################################
################## Combinación de arrays #######
################################################

mi_array1  <- array(data=c(1:4), dim = c(2,3))
mi_array2  <- array(data=c(5:9), dim = c(4,3))
mi_array3  <- array(data=c(10:15), dim = c(2,5))

mi_array1
mi_array2

pegado <- rbind(mi_array1,mi_array2)
rbind(mi_array1,mi_array3)

cbind(mi_array1,mi_array3)
cbind(mi_array1,mi_array2)


