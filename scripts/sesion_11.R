getwd()

setwd("C:/Users/hp master/OneDrive/Escritorio/r_jr_2022")

getwd()


setwd("C:\\Users\\hp master\\OneDrive\\Escritorio\\mi_carpeta")

dir()

setwd("C:/Users/hp master/OneDrive/Escritorio/r_jr_2022")
setwd("../")

getwd()

setwd("./r_jr_2022")

getwd()


mi_data <- data.frame(col1=c(1,2,3),col2=c(4,5,6))
mi_vector <- c(1:2022)
mis_frase <- "Hoy es un buen día"

save(list = c("mi_data", "mis_frase","mi_vector"),
     file = "mis_objetos.RData")

load("mis_objetos.RData")

save.image(file="mis_otros_objetos.RData")

###########
########## Lectura de csv
###########

temperaturas <- read.csv("NYC temperature data.csv")

View(temperaturas)

setwd("../")

getwd()

temperaturas <- read.csv("C:\\Users\\hp master\\OneDrive\\Escritorio\\r_jr_2022\\NYC temperature data.csv")

getwd()

setwd("C:\\Users\\hp master\\OneDrive\\Escritorio\\r_jr_2022")

temperaturas <- read.csv("NYC temperature data.csv")  

View(temperaturas)
write.csv(temperaturas,"mis_temperaturas.csv",row.names=FALSE,col.names = TRUE)

mi_data  <- data.frame(colores = c("Azul","Rojo","Verde"),
                       cantidad = c(1,NA,2))

write.csv(mi_data,"mis_colores.csv",row.names = FALSE)


colnames(temperaturas)

class(temperaturas$date)
class(temperaturas$average_precipitation)

### Dentro de tidyverse se puede utilizar read_csv

install.packages("tidyverse")
library(tidyverse)

####################
#################### Lectura de Excel
####################

install.packages("readxl")
library(readxl)

mi_excel <- read_excel("mi_excel.xlsx",sheet = 2)

View(mi_excel)