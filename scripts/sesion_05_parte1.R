mis_personas = c(71.4, 65.1, 63, 94.5)

# Suma y multiplicaci�n
sum(mis_personas)
prod(mis_personas)

# suma = 0
# for i in range(0,3):
#   suma = suma + mis_personas[i]

## NA significa "No disponible" (not allowable)
faltante_NA <- c(1,2,3,NA,4,8)
faltante_NA

sum(faltante_NA)

# Las funciones de agregaci�n admiten un segundo par�metro:
# na.rm = TRUE (siginifica NA remove, es decir, remover NA)

sum(faltante_NA,na.rm=TRUE)
prod(faltante_NA,na.rm=TRUE)

faltante_NaN <- c(1,2,3,0/0,4,8)
faltante_NaN

sum(faltante_NaN,na.rm=TRUE)

## Otras funciones de agregaci�n

mean(mis_personas) # calcula el promedio
max(mis_personas) # calculo el m�ximo
min(mis_personas) # calcula el m�nimo

mean(faltante_NaN, na.rm=TRUE)
min(faltante_NA, na.rm=TRUE)

max(c("Adelante","Ahora"))
min(c("Adelante","Ahora"))

max(c("Adelante","Rodrigo","Ahora"))

max(c("1000","4"))

######################
######################
######################

2022 %% 11

2022 %/% 11

2022 %% 2

2021 %% 2

2022 %% 3

0   1  2  3  4  5  6  7  8  9 10 11 
12 13 14 15 16 17 18 19 20 21 22 23 

20 %% 12

##########################################################
############################# Ordenaciones ###############
##########################################################

sort(c(33,21,54,3,-7)) #ascendente
sort(c(33,21,54,3,-7),decreasing = TRUE) #descendente

sort(faltante_NA)

mis_datos  <- c("L","L","H","A","A","L","M","A","B","C","L")
sort(mis_datos)
sort(mis_datos,decreasing=TRUE)

##########################################################
############################# Comparaciones ##############
##########################################################

mis_personas  <- c(71.4, 65.1, 63, 94.5)
mis_personas > 63  ## da como resultado un vector l�gico (booleano)


mis_personas[mis_personas > 63]

mis_indices_logicos <- mis_personas > 63
mis_personas[mis_indices_logicos]

20278781 %% 3 == 0

# Con esto recupero los pesos mayores a 63
mis_personas[mis_personas > 63]

# Con esto recupero las posiciones de los pesos > a 63
which(mis_personas > 63)
mis_personas

# Cu�ntos elementos del vector son > 63
length(which(mis_personas > 63))

##########################################################
############################# Operadores l�gicos #########
##########################################################

# Pesos menores que 65 o mayores que 70
mis_personas < 65 | mis_personas > 70

# Pesos mas grandes que 65 Y menores que 70
mis_personas > 65 & mis_personas < 70

# Pesos que no cumplen: mas grandes que 65 y menores que 70
!(mis_personas > 65 & mis_personas < 70)

X <- c(TRUE,FALSE,0,6)
Y <- c(FALSE,TRUE,FALSE,TRUE)

!X #negaci�n

X & Y # Y: recordemos que Y es verdad solamente si sus componentes
      # son todas verdaderas

X | Y # O: recordemos que O es falso solamente si sus componentes
      # son todas falsas

X && Y  # X[1] & Y[1]
X || Y  # X[1] | Y[1]

############################################################
#################### Propiedad de nombres ##################
############################################################

mis_personas  <- c(71.4, 65.1, 63, 94.5)

names(mis_personas)

names(mis_personas) <- c("Luis","Ra�l","Mar�a","Ram�n") 

names(mis_personas)
mis_personas

mis_personas["Mar�a"]

sort(names(mis_personas))

names(which(mis_personas > 60 & mis_personas < 70)) 

############################################################
########## Modificaci�n de elementos de un vector ##########
############################################################

mis_personas["Luis"] <- 65
mis_personas

mis_personas[1] <- 71.4
mis_personas

mis_personas[2:4] <- c(63,64,90.9)

mis_personas

mis_personas[2:4] <- c(60,61)

mis_personas

mis_personas[c("Luis","Mar�a")]
mis_personas[c(1,3)]

mis_personas = c(71.4, 65.1, 63, 94.5)

### A�adir un nuevo elemento.

mis_personas[5] <- 90
mis_personas

names(mis_personas) <- c("Luis","Ra�l","Mar�a","Ram�n","Alberto") 

mis_personas["Ana"] <- 72
mis_personas

mis_personas[9] <- 50

mis_personas[10:15] <- 10:15

names(mis_personas)[c(7,8)] <- c("Juan Ramirez","Marco")
mis_personas


mis_personas <- c(71.4, 65.1, 63, 94.5)
mis_personas[5] <- 90

mis_personas

## A 120 quitarle el 25%: (1-0.25)*120
## A 120 aumentarle el 15%: (1+0.15)*120

# Si a cada persona la queremos bajar 
# 20%, 20%, 10%, 5% y 5%, �cu�nto pesar�an?
(1-c(0.2,0.2,0.1,0.05,0.05))*mis_personas
## 

mis_personas <- c(71.4, 65.1, 63, 94.5)
mis_personas[5] <- 90
mis_personas
# Bajar el 30% y el 22% de la segunda y la quinta

(1-c(0.3,0.22))*mis_personas[c(2,5)]

# Cambiemos a las personas con peso mayor a 70 por el valor 70
mis_personas[mis_personas > 70] <- 70
mis_personas

# Cambiemos el peso de las personas en posici�n 2 y 4
# por su promedio.

mis_personas[c(2,4)] <- mean(mis_personas[c(2,4)])
mis_personas

# Tomemos a las personas cuyo peso es mayor a 68
# y guardemoslas en otro vector.

mis_personas_pesadas <- mis_personas[mis_personas > 68]
mis_personas_pesadas

mis_personas[c(2,4)] <- mean(mis_personas[c(2,4)])



