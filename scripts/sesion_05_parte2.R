variable <- "2"

variable + 5
log(variable)

Num = 1

Num = 1L
Num = as.integer(1)

as.integer(2.8)  ## %/%

num = 1L + 2L

# Lenguajes declarativo
# num as integer
# num = 1.3 + 2


as.numeric(FALSE) #as.numeric(false) es incorrecto.
as.numeric(F)
as.numeric(T) 

as.numeric("Hola")
as.numeric("2022") + 89

as.logical(2022)
as.logical("hola")


###########################

numero = 1
class(numero)
typeof(numero)

entero = 1L
class(entero)
typeof(entero)

palabra = "este es un perico"
class(palabra)
typeof(palabra)

class(TRUE)
typeof(TRUE)

mi_vector = c(1,2L,3)
class(mi_vector)
typeof(mi_vector)

mi_vector <- as.integer(mi_vector)

######################

is.numeric(1)
is.character(1)
is.logical(1)

is.integer(1L)

is.numeric("hola a todos")
is.logical("hola a todos")
is.character("hola a todos")

is.numeric(TRUE)
is.character(TRUE)
is.logical(TRUE)

as.numeric(as.Date("2022-03-28"))

#########################

mi_vector  <-  c(1,2,3)
mi_vector_caracteres  <- as.character(mi_vector)

class(mi_vector_caracteres)
class(mi_vector)


as.logical("FALSE")

as.character(FALSE)
as.character(2022)

(mis_pesos  <- c(71.2,78.5,"No es un peso",73.2))
as.numeric(mis_pesos)

mi_vector_logico  <- c(TRUE,TRUE,FALSE,TRUE,FALSE)
as.numeric(mi_vector_logico)


################################################################
####################### Factores ###############################
################################################################


clasificaciones  <- c("América","Europa",
                      "Asia","Africa",
                      "Oceania","Antartida",
                      "América","Asia")

clasificaciones_factor <- factor(clasificaciones)

class(clasificaciones_factor)

sexos <- c("hombre","mujer","hombre","hombre","mujer")

sexo_factor <- factor(sexos)
sexo_factor
as.numeric(sexo_factor)

clasificaciones_factor
levels(clasificaciones_factor)
nlevels(clasificaciones_factor)

clasificaciones
as.numeric(clasificaciones_factor)

altitudes  <- c("media","alta","baja","alta","media")
factor(altitudes)

as.numeric(factor(altitudes, 
       order = TRUE, 
       levels = c("baja","media","alta")))

sexos <- c("hombre","mujer","hombre","hombre","mujer")

sexo_factor <- factor(sexos,order = TRUE,
                      levels = c("mujer","hombre"))

as.character(sexo_factor)

summary(factor(sexos))
sexos






