setwd("C:\\Users\\hp master\\OneDrive\\Escritorio\\r_jr_2022\\envipe")
dir()

tmod_vic <- read.csv("TMod_Vic.csv")
descriptor_ent <- read.csv("descriptor_entidad.csv")
descriptor_mes <- read.csv("descriptor_meses.csv")
descriptor_del <- read.csv("descriptor_delitos.csv")


tmod_vic <- merge(tmod_vic,descriptor_ent,
                  by.x="BP1_2C", by.y="codigo_entidad",
                  all.x = TRUE)

###############################

tmod_vic <- merge(tmod_vic,descriptor_del,
                  by.x="BPCOD", by.y="codigo_del",
                  all.x = TRUE)

###############################

extraer <- function(x){
  return(tmod_vic[tmod_vic$BP1_2C == x,])
}

tabla_entidad <- lapply(c(1:32,99),extraer)

armado <- function(mi_data,entidad){
  previo <- as.data.frame(tapply(
    mi_data$FAC_DEL,
    mi_data$descripcion_del,
    sum))
  previo$delitos <- row.names(previo)
  colnames(previo) <- c("Absolutos","Tipo")
  previo <- previo[,c(2,1)]
  totales <- data.frame(Tipo="Total",
                        Absolutos = sum(previo$Absolutos))
  previo <- previo[order(previo$Absolutos,decreasing = TRUE),][1:5,]
  totales_cinco <- data.frame(Tipo="Total",
                        Absolutos = sum(previo$Absolutos))
  previo <- rbind(NA,previo,totales_cinco,NA)
  previo <- data.frame(NA,NA,NA,NA,
                       Tipo = previo$Tipo,
                       NA,
                       Absolutos = previo$Absolutos)
  previo[1,3] <- totales$Absolutos
  previo$Relativos <- previo$Absolutos*100/totales$Absolutos
  previo[1,1] <- entidad
  return(previo)
}

View(armado(tabla_entidad[[1]],"SciData"))

entidades_ordenadas <- mapply(armado,
                              tabla_entidad,
                              descriptor_ent$descripcion_entidad,
                              SIMPLIFY = FALSE)

resultado <- do.call(rbind,entidades_ordenadas)

write.csv(resultado,"mis_resutados.csv",na="")




FAC_EXP = 1/Probabilidad(ser elegido)


Suma(FAC_EXP)=población total de estudio
