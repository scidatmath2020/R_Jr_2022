data(mtcars)


names(mtcars)

# Agregramos la columna brand a mtcars
mtcars$brand  <- c("Mazda","Mazda","Datsun","Hornet","Hornet","Valiant","Duster","Merc",
                   "Merc","Merc","Merc","Merc","Merc","Merc","Cadillac","Lincoln",
                   "Chrysler","Fiat","Honda","Toyota","Toyota","Dodge","AMC","Camaro",
                   "Pontiac","Fiat","Porsche","Lotus","Ford","Ferrari","Maserati","Volvo")


dim(mtcars)

mtcars$model  <- row.names(mtcars)

# creamos el dataframe de marcas
brands_origin <- data.frame(
  car_brand = c("Mazda","Toyota","Fiat","Volvo","Skoda"),
  country = c("Japan","Japan","Italy","Sweden","Checa"),
  type = c("A","B","C","D","E")
)

brands_origin

#######################

#### join interno (inner join)

interno <- merge(x = mtcars, y = brands_origin,   
      by.x="brand",by.y="car_brand")

View(interno)
View(mtcars)

brands_origin

#### join izquierdo (left join)

izquierda <- merge(mtcars,brands_origin,
      by.x = "brand", by.y = "car_brand",
      all.x = TRUE)

View(izquierda)

#### join derecho (right join)

derecho <- merge(mtcars,brands_origin,
                   by.x = "brand", by.y = "car_brand",
                   all.y = TRUE)

View(derecho)

#### join total (full join)

total <- merge(mtcars,brands_origin,
                 by.x = "brand", by.y = "car_brand",
                 all = TRUE)


############### tidyverse
###### left_join, inner_join, right_join, full_join

############### usesql