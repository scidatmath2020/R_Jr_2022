# c(12,7,3,2,15,8,8) ---- c(24,14,6,4,15,8,8)
set.seed(2021)
mi_vector  <- sample(1:100,20)
mi_vector

mi_vector <- c(5,2,3,4,6,7,8)

n = 1
while(mi_vector[n] %% 5 != 0 & n<=length(mi_vector)){
    mi_vector[n] = 2*mi_vector[n]
    n = n+1
}

mi_vector


##########

mi_frase = "Hola a todos"
n=1
mi_lista = list()
while(n<=nchar(mi_frase)){
  letra = substr(mi_frase,1,n)
  mi_lista[[n]] = list(extraccion = letra, conteo = n)
  n = n+1
}

mi_lista[[1]][[2]]

######################


mi_frase = "Estamos a 8 de abril"
mi_simbolo = "."
n=1
while(n<=nchar(mi_frase) & substr(mi_frase,n,n)!=mi_simbolo){
  print(substr(mi_frase,n,n))
  n=n+1
}

if(n-1 == nchar(mi_frase)){
  print(paste(c("No se encontró el símbolo",mi_simbolo),
              collapse=" "))
}

####

X  <- c(1,2,23,16,76,16)
N  = 30
n = 1
while(TRUE){
  if(sum(X[1:n])>N){
    break
  } 
  n = n+1
}

sum(X[1:(n-1)])

sum(X[1:n])



mi_vector

