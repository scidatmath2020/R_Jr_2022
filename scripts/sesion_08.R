lista_ejemplo  <- list(1,2,"3",list("a",2))

class(lista_ejemplo)
typeof(lista_ejemplo)

##########

mi_lista  <- list(c(1,2,3),
                  array(data = 1:4, dim = c(2,2)),
                  TRUE)

mi_lista

mi_lista <- list(mi_vector = c(1,2,3),
                 mi_array = array(data = 1:4, dim = c(2,2)),
                 mi_booleano = TRUE)
mi_lista

names(mi_lista) <- c("mi_vector","mi_array","mi_booleano")

names(mi_lista)[3] <- "mi_logico"

names(mi_lista)

mi_lista

#########################

lista_nombres <- list(c(1,2,3), letra_a = "a", TRUE )

names(lista_nombres)

lista_nombres

###################

# dim es para multidimensional en tanto length es para unidimensionales

dim(lista_nombres)
length(lista_nombres)

####

str(lista_nombres)
str(mi_lista)

####################################################################
######################### Indexado de listas ######################
####################################################################

mi_lista

mi_lista[[2]]
class(mi_lista[[2]])

mi_lista[2]
class(mi_lista[2])


mi_lista[c(2,3)]

mi_lista[[2]][2,]

class(mi_lista[2])


mi_lista

mi_lista["mi_logico"] <- FALSE

mi_lista[["mi_logico"]]

mi_lista["mi_array"][1,] <- c(3,4) 
mi_lista[["mi_array"]][1,] <- c(3,4)

mi_lista$mi_vector # nivel de objeto subyacente: [[  ]]

mi_lista

####################################################################
######################### Modificació de listas ####################
####################################################################

mi_lista <- list(mi_vector = c(1,2,3),
                 mi_array = array(data = 1:4, dim = c(2,2)),
                 mi_booleano = TRUE)

ejemplo_lista  <- list(c("a","b","c"),array(1:10,dim=c(2,5)))

### Añadir elementos: se usa nivel de objeto subyacente

ejemplo_lista[[5]] <- c(1,2,3)

ejemplo_lista

### Cambiar el elemento 5 por un TRUE. Se usa [[ ]]
ejemplo_lista[[5]] <- TRUE
ejemplo_lista

####
ejemplo_lista$nuevo <- c(FALSE,TRUE)

ejemplo_lista

####################################################################
######################### Eliminado de elementos en listas #########
####################################################################

ejemplo_lista  <- list(c("a","b","c"),array(1:10,dim=c(2,5)),TRUE)
ejemplo_lista

ejemplo_lista[2] <- NULL
ejemplo_lista

ejemplo_lista[[2]] <- NULL
ejemplo_lista

mi_lista <- list(mi_vector = c(1,2,3),
                 mi_array = array(data = 1:4, dim = c(2,2)),
                 mi_booleano = TRUE)

mi_lista

mi_lista$mi_vector <- NULL
mi_lista

mi_lista[-c(1,3)]

mi_lista[c(1,3)] <- NULL

mi_lista[[1]]

####################################################################
######################### combinación de listas ####################
####################################################################

lista1 <- list(c(1,2),"A")
lista2 <- list("l1" = c(10,11),matrix(1:10,nrow=5,ncol=2))

lista1
lista2

# Utilizamos el operador de concatenación: c()

c(lista1,lista2)

lista_extendida <- c(lista1,lista2)

class(lista_extendida)
str(lista_extendida)