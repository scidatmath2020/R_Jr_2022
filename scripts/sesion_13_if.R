# if simple

mi_animal = "gato"

es_gato <- function(mi_animal){
  if(mi_animal == "gato"){
  print("Este animal hace 'miau'")
  return("Mi gato")
  }
}

es_gato("gato")

print("Hola a todos")

################## if - else

mi_guerrero = "gato"

if(mi_guerrero == "Yamcha" | mi_guerrero == "Krilin"){
  print("Seguro se va a morir")
} else{
  print("Tenemos oportunidad de que nos salve")
}

print("Así pasa en DBZ")

######## If-else if-else

mi_guerrero = "krilin"

if(mi_guerrero == "Yamcha"){
  print("Seguro se va a morir")
} else if(mi_guerrero == "Krilin"){
  print("Seguro lo van a explotar")
} else if(mi_guerrero == "Vegeta"){
  print("Siempre llora cuando va perdiendo")
} else{
  print("No sé qué decir de este guerrero")
}

######## if anidado

dato_texto = "2002"
dato = as.numeric(dato_texto)
if(is.na(dato) == FALSE){
  print('Es un número.')
  if(dato < 0){
    print('Es negativo.')
  } else if(dato > 0){
    print('Es positivo.')
  } else{
    print('Es cero')
  }
} else{
  print('No es un número.')
}

###################

dato_texto = "1"
dato = as.numeric(dato_texto)
if(is.na(dato)==FALSE & dato>0){
  print("El número es positivo")
} else if(is.na(dato)==FALSE & dato<0){
  print("El número es negativo")
} else if(is.na(dato)==FALSE & dato ==0){
  print("El número es cero")
} else{
  print("No es un número")
}

##### versión vectorizada de if

mi_vector  <- c(1,5,27,5,187,34,45,848,24,7)
mean(mi_vector)

ifelse(mi_vector < mean(mi_vector),
       "Es menor que la media",
       "No es menor")

mi_data <- data.frame(nombre=c("Luis","Rosita","Marco"),
                      sexo = c("masculino","femenino","masculino"))


mi_data$sexo_cod <- ifelse(mi_data$sexo == "masculino",
                           1,
                           0)

#########

ifelse(mi_vector < mean(mi_vector),"Es menor que la media",
       ifelse(mi_vector<500,"Es menor que 500",
              "No es menor que la media ni que 500"))

#### Tarea: buscar información sobre in case of / switch() en R


library(dplyr)

x <- 1:50
x

case_when(
  x %% 35 == 0 ~ "fizz buzz",
  x %% 5 == 0 ~ "fizz",
  x %% 7 == 0 ~ "buzz",
  TRUE ~ as.character(x)
)