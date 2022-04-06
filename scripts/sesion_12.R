mi_funcion1 <- function(x){
  suma_total  <- sum(x)
  maximo  <- max(x)
  minimo <- min(x)
  return(suma_total-maximo-minimo)
}

mi_vec1  <- c(1,5,27,5,187,34)

mi_funcion1(mi_vec1)
mi_funcion1(c(1,5,27,5,187,34))

mi_funcion1(7)

mi_funcion1(c("hola","adios"))

mi_funcion1


####################

mi_funcion1_extendida <- function(x){
  suma_total  <- sum(x)
  maximo  <- max(x)
  minimo <- min(x)
  return(c(s_M_m=suma_total-maximo-minimo,suma=suma_total))
}

mi_resutado_extendido <- mi_funcion1_extendida(c(1,2,36,32))

mi_resutado_extendido[2]

##########################

mi_vec1  <- c(1,5,27,5,187,34)
mi_vec2  <- c(45,848,24,7)

mi_vec1 + mi_vec2

mi_resultado <- mi_funcion1(mi_vec1 + mi_vec2)

##########################

mi_funcion2 <- function(X){
  promedios  <- colMeans(X)
  nvo_data  <- rbind(X,promedios)
  row.names(nvo_data) = c(row.names(X),"PROMEDIO")
  colnames(nvo_data) = colnames(X)
  return(nvo_data)    
}

mi_data <- data.frame(val1 = c(1,4,2,5),
                      val2 = c(2,1,1,6),
                      val3 = c(12,4,28,2))
row.names(mi_data) <- c("a","b","c","d")

mi_data
mi_funcion2(mi_data)

########################################

paste(c("1","2"),collapse = " ")
paste(c("Hola","a","todos"),collapse=" ")
paste(c(1,3,4,4),collapse = " ")

paste(c(1,2,3),c("hola","a","todos"),c(TRUE,TRUE,FALSE),
      sep="\\")

paste0(c(1,2,3),c("hola","a","todos"),c(TRUE,TRUE,FALSE))


substr(c("hola a todos","Ya me voy"),3,8)

mi_funcion3 <- function(palabras){
  primera <- substr(palabras,1,1)
  palabra <- paste(primera, collapse = "")
  return(palabra)
}

mi_funcion3(c("Hola","a","todos"))

mi_funcion3(c("Héctor","Garduño"))

mi_funcion3(c("Hola a todos","Ya me voy","nos vemos"))

###############
####### ax^2+bx+c=0
####### x1 = (-b + sqrt(b^2-4ac))/2a y x2 = (-b - sqrt(b^2-4ac))/2a

mi_funcion4 <- function(a,b,c){
  discriminante  <- b^2-4*a*c+0i
  resp1 <- (-b + sqrt(discriminante))/(2*a)
  resp2 <- (-b - sqrt(discriminante))/(2*a)
  return(c(resp1,resp2))
}


# x^2+1=0

mi_funcion4(1,0,1)

# x^2+(4-2i)x-8i=0

mi_funcion4(1,4-2i,-8i)


############################


mi_vector  <- c("123","hola","1","ab","cd")

# hola,ab,cd
# 4,2,2
# 3

mi_funcion5 <- function(palabras){
  cantidades  = nchar(palabras)
  pares = cantidades %% 2 == 0
  palabras_pares = palabras[pares]
  lista = list(palabras_pares,
               cantidades[pares],
               length(palabras_pares))
  names(lista) = c("Palabras","Cantidades","Total")
  return(lista)    
}

palabras = c("Hola a todos","adiós","ab")
cantidades = c(12,5,2)
pares = c(TRUE,FALSE,TRUE)  #cantidades %% 2 == 0
palabras[pares] = c("Hola a todos","ab")
cantidades[pares] = c(12,2)
lenght(palabras[pares])

mi_funcion5(c("Hola a todos","adiós","ab"))


mi_funcion5(c("123","hola","1","ab","cd"))

#########################


mi_funcion6 <- function(x){
  raiz = sqrt(x)
  salida = as.logical(as.integer(raiz)-raiz)
  return(!salida)
}


!as.logical(as.integer(sqrt(25))-sqrt(25))

mi_funcion6(c(1,4,3))


#########################

mi_funcion7 <- function(mis_palabras){
  vocal_si <- mis_palabras[substr(mis_palabras,1,1) %in% c("A","E","I","O","U","a","e","i","o","u")]
  vocal_no <- mis_palabras[! substr(mis_palabras,1,1) %in% c("A","E","I","O","U","a","e","i","o","u")]
  return(list(con_vocal=vocal_si, sin_vocal = vocal_no))
}

mi_funcion7(c("Esta","ha","sido","una","Excelente","clase","2022"))


############################


mi_funcion8 <- function(){
  print("HOla a todos")
}

mi_funcion9 <- function(X){
  X <- X[,c(2,1)]
  colnames(X) =  c("Hola","Adiós")
  return(X)
}

mi_data <- data.frame(col1=c(1:4),col2=c("a","b","c","d"))

mi_funcion9(mi_data)

