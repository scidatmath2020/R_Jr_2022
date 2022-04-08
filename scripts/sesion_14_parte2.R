# Se define el factorial de n como 1 si n=0 y 1*2*3*...*n si n>=1.
# Programar el factorial de n

# factorial de 5 es 1*2*3*4*5=120
# factorial de 3 es 1*2*3=6

mi_num = 5
mi_fac = 1
for(i in c(1,2,3,4,5)){
  mi_fac = mi_fac*i
}

mi_fac  # en R está la función factorial

# factorial(8)

palabra=""
for(x in c("a","b","c")){
  #palabra = paste(c(palabra,x),collapse = " ")
  print(x)
}

palabra


#############

es_primo <- function(n){
  divisores = c()
  for(x in 1:n){
    if(n %% x == 0){
      divisores = c(divisores, x)
    }
  }
  cantidad_divisores = length(divisores)
  if(cantidad_divisores == 2){
    primo = TRUE
  } else{
    primo = FALSE
  }
  return(list(Divisores = divisores,primalidad = primo))
}


es_primo(2879)

###################

set.seed(2022)
mi_data  <- data.frame(Absoluto_1 = sample(40:80,8,replace = FALSE),
                       Absoluto_2 = sample(40:80,8,replace = FALSE),
                       Absoluto_3 = sample(40:80,8,replace = FALSE),
                       Absoluto_4 = sample(40:80,8,replace = FALSE))


View(mi_data)


nuevo_data <- function(df){
  nvo_data <- rbind(df,colSums(df))
  n_col <- ncol(nvo_data)
  for(i in 1:n_col){
    nvo_data[,i+n_col] <- nvo_data[,i]*100/nvo_data[nrow(nvo_data),i]
  }
  colnames(nvo_data)[(n_col+1):(2*n_col)] <- paste0("Relativo_",c(1:n_col))
  return(nvo_data)
}

nuevo_data(mi_data)

x <- rbind(mi_data,colSums(mi_data))
n_col <- ncol(x)
for(i in c(1:n_col)){
  x[,i+n_col] <- x[,i]*100/x[nrow(x),i]
}

View(x)






