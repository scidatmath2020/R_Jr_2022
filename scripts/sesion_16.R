library(ggplot2)

getwd()
setwd("./r_jr_2022")

vinos <- read.csv("vinos.csv")
View(head(vinos))

mex <- vinos[vinos$country == "Mexico",]
por <- vinos[vinos$country == "Portugal",]

##################

ggplot() +
  geom_density(data=por,aes(x=as.numeric(points))) +
  geom_histogram(data=por,aes(x=as.numeric(points),y=stat(density)),
                 fill = "yellow",alpha=0.5,binwidth = 1)

nrow(por[as.numeric(por$points)<88.5,])
nrow(por[as.numeric(por$points)>=88.5,])


median(as.numeric(por$points))

table(por[as.numeric(por$points)<88,]$points)
table(por[as.numeric(por$points)>=88,]$points)

###################

mean(as.numeric(mex$points))

ggplot() +
  geom_density(data=mex,aes(x=as.numeric(points))) +
  geom_histogram(data=mex,aes(x=as.numeric(points),y=stat(density)),
                 fill = "yellow",alpha=0.5,binwidth = 1)

nrow(mex[as.numeric(mex$points)<84,])
nrow(mex[as.numeric(mex$points)>=84,])

table(mex[as.numeric(mex$points)<84,"points"])
table(mex[as.numeric(mex$points)>=84,"points"])

####################

por1 <- data.frame(points = as.numeric(por$points),country = "Portugal")
mex1 <- data.frame(points = as.numeric(mex$points),country = "Mexico")

por_mex <- rbind(por1,mex1)

ggplot(data = por_mex) +
  geom_density(aes(x=points,color = country,fill=country),alpha=0.5)

#####################

medias_medianas <- data.frame(medias = tapply(as.numeric(vinos$points),
                                              vinos$country,
                                              mean),
                              medianas = tapply(as.numeric(vinos$points),
                                                vinos$country,
                                                median)
)

medias_medianas

medias_medianas$simetria <- ifelse(abs(medias_medianas$medias-medias_medianas$medianas)<0.5
                                   ,"Si","No")

medias_medianas

chile <- vinos[vinos$country=="Chile",]

ggplot() +
  geom_density(data=chile,aes(x=as.numeric(points))) +
  geom_histogram(data=chile,aes(x=as.numeric(points),y=stat(density)),
                 fill = "yellow",alpha=0.5,binwidth = 1)


###############################

moda <- function(vector){
  tabla <- as.data.frame(table(vector))
  tabla <- tabla[tabla$Freq == max(tabla$Freq),]
  names(tabla) <- c("Moda","Frecuencia")
  return(tabla)    
}

moda(c(1,1,1,2,3,1,2,6,2,2,5,5,5,5))

moda(mex$province)

########################

# Tabla de los tres países
mis_paises <- vinos[vinos$country %in% c("Mexico","Portugal","Chile"),]

# Valor promedio de la calidad en cada país
medias = data.frame(puntaje_medio = tapply(mis_paises$points,
                                           mis_paises$country,
                                           function(x){mean(x,na.rm=TRUE)}))


medias$country <- row.names(medias)

ggplot() +
  geom_density(data = mis_paises,
               aes(x=points,fill=country),
               alpha = 0.5, 
               position = "identity") +
  geom_vline(data = medias,
             aes(xintercept = puntaje_medio,color=country)) +
  xlim(75,100)


tapply(mis_paises$points,
       mis_paises$country,
       function(x){sd(x,na.rm=TRUE)})

####################


sd(vinos[vinos$country=="Japan",]$points)

####################

vinos$FAC <- 1

productos_paises <- data.frame(total = tapply(vinos$FAC,vinos$country,sum))
productos_paises$country <- row.names(productos_paises)

mayores <- productos_paises[productos_paises$total>50,]$country
mas_productores <- vinos[vinos$country %in% mayores,]

table(mas_productores$country)


#######################

calidad_estable <- data.frame(medias = tapply(mas_productores$points,
                                              mas_productores$country, function(x){mean(x,na.rm = TRUE)}),
                              desviaciones = tapply(mas_productores$points,
                                                    mas_productores$country, function(x){sd(x,na.rm = TRUE)})
)


calidad_estable$country  <- row.names(calidad_estable)
calidad_estable <- calidad_estable[order(calidad_estable$desviacion,
                                         calidad_estable$media,
                                         decreasing = c(FALSE,TRUE)),]
row.names(calidad_estable) <- 1:nrow(calidad_estable)

View(calidad_estable)


#########################

# Tabla de los tres países
mis_paises <- vinos[vinos$country %in% c("Mexico","Portugal","Chile",
                                         "Turkey"),]

# Valor promedio de la calidad en cada país
medias = data.frame(puntaje_medio = tapply(mis_paises$points,
                                           mis_paises$country,
                                           function(x){mean(x,na.rm=TRUE)}))


medias$country <- row.names(medias)

ggplot() +
  geom_density(data = mis_paises,
               aes(x=points,fill=country),
               alpha = 0.5, 
               position = "identity") +
  geom_vline(data = medias,
             aes(xintercept = puntaje_medio,color=country)) +
  xlim(75,100)
