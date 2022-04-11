mi_funcion1 <- function(x){
  paste(c("Texto_",x),collapse="")
}

lapply(1:20, mi_funcion1)

paste0("texto_",1:20)

#################


cambio_vocales <- function(texto){
  n = nchar(texto)
  letras <- c()
  for(x in 1:n){
    letras[x] <- substr(texto,x,x)
    if(letras[x] %in% c("a","e","i","o","u")){
      letras[x] <- c("A","E","I","O","U")[letras[x]==c("a","e","i","o","u")]
    }
  }
  return(paste(letras,collapse=""))  
}

cambio_vocales("Hola a todos")


mis_frases <- c("La vida es una obra teatral que no importa cuánto haya durado, sino lo bien que haya sido representada",
                "Elige un trabajo que ames, y no tendrás que trabajar un solo día de tu vida",
                "Nuestra mayor gloria no es no caer nunca, sino levantarnos cada vez que caemos")

lapply(mis_frases,cambio_vocales)

################

getwd()
setwd("./mis_archivos")

dir()

archivos <- c(1,2,4)
mis_archivos <- lapply(dir()[archivos],read.csv)
names(mis_archivos) <- unlist(strsplit(dir(),split=".csv"))[archivos]

mis_archivos

#############################

data(mtcars)

mtcars

mi_max_prom <- function(columna){
  valores  <- c(max(columna),mean(columna))
  names(valores) = c("Maximo","Promedio")
  return(valores)
}

mi_max_prom(mtcars$cyl)

mi_lista <- lapply(mtcars[,c("mpg","hp","wt")],mi_max_prom)

mi_lista

###############################

categorias_carb <- sort(unique(mtcars$carb))

lista_carb <- lapply(categorias_carb,
       function(x){mtcars[mtcars$carb == x,]}
       )

###################################
##### sapply
###################################

sapply(mis_frases,cambio_vocales,simplify = "array", USE.NAMES = FALSE)

sapply(mtcars[,c("mpg","hp","wt")],mi_max_prom,simplify=TRUE, USE.NAMES=FALSE)

class(sapply(dir()[archivos],read.csv,simplify = TRUE,USE.NAMES = TRUE))


lista_carb <- sapply(categorias_carb,
                     function(x){mtcars[mtcars$carb == x,]},
                     simplify=FALSE,
                     USE.NAMES=TRUE)

do.call(rbind,lista_carb)
##################
nombres_partidos <- strsplit(row.names(mtcars)," ")


mtcars$marcas <- sapply(nombres_partidos,
       function(x){x[1]})

mtcars

########################


tapply(mtcars$mpg,mtcars$marcas,mean)

tapply(mtcars$disp,list(mtcars$cyl,mtcars$gear),min)

tapply(mtcars$disp,list(mtcars$cyl,mtcars$gear,mtcars$marca),min)[,,22]

tapply(mtcars$disp,list(mtcars$cyl,mtcars$gear,mtcars$marca=="Merc"),min)[,,2]

# tidyverse