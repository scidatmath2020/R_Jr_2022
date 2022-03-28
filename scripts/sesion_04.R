mis_personas = c(71.4, 65.1, 63, 94.5)

# Suma y multiplicación
sum(mis_personas)
prod(mis_personas)

# suma = 0
# for i in range(0,3):
#   suma = suma + mis_personas[i]

## NA significa "No disponible" (not allowable)
faltante_NA <- c(1,2,3,NA,4,8)
faltante_NA

sum(faltante_NA)

# Las funciones de agregación admiten un segundo parámetro:
# na.rm = TRUE (siginifica NA remove, es decir, remover NA)

sum(faltante_NA,na.rm=TRUE)
prod(faltante_NA,na.rm=TRUE)

faltante_NaN <- c(1,2,3,0/0,4,8)
faltante_NaN

sum(faltante_NaN,na.rm=TRUE)

## Otras funciones de agregación

mean(mis_personas) # calcula el promedio
max(mis_personas) # calculo el máximo
min(mis_personas) # calcula el mínimo

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
mis_personas > 63  ## da como resultado un vector lógico (booleano)


mis_personas[mis_personas > 63]

mis_indices_logicos <- mis_personas > 63
mis_personas[mis_indices_logicos]

20278781 %% 3 == 0

# Con esto recupero los pesos mayores a 63
mis_personas[mis_personas > 63]

# Con esto recupero las posiciones de los pesos > a 63
which(mis_personas > 63)
mis_personas

# Cuántos elementos del vector son > 63
length(which(mis_personas > 63))

##########################################################
############################# Operadores lógicos #########
##########################################################

# Pesos menores que 65 o mayores que 70
mis_personas < 65 | mis_personas > 70

# Pesos mas grandes que 65 Y menores que 70
mis_personas > 65 & mis_personas < 70

# Pesos que no cumplen: mas grandes que 65 y menores que 70
!(mis_personas > 65 & mis_personas < 70)

X <- c(TRUE,FALSE,0,6)
Y <- c(FALSE,TRUE,FALSE,TRUE)

!X #negación

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

names(mis_personas) <- c("Luis","Raúl","María","Ramón") 

names(mis_personas)
mis_personas

mis_personas["María"]

sort(names(mis_personas))

names(which(mis_personas > 60 & mis_personas < 70)) 





