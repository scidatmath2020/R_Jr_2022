data(mtcars)

### 1
View(mtcars)

### 2

?mtcars

### 3

dim(mtcars)
ncol(mtcars)
nrow(mtcars)

### 4

head(mtcars,10)
tail(mtcars,3)

### 5 

str(mtcars)

### 6

row.names(mtcars)
rownames(mtcars)

colnames(mtcars)
names(mtcars)

### 7

summary(mtcars)

summary(factor(mtcars$gear))

### 8

### Muestra la tabla formada por los elementos con 4 cilindros.

mtcars_filtrado <- mtcars[mtcars$cyl == 4,  ]

### 9
### Muestra la tabla formada por los elementos con 4 o 6 cilindros.

mtcars[(mtcars$cyl == 4) | (mtcars$cyl == 6), c(1,4)]

### 10
### Muestra la tabla formada por los elementos con 4 cilindros
### o con tres engranes (los engranes es la columna gear).

mtcars[mtcars$cyl == 4 | mtcars$gear == 3,]

### 11
### Muestra la tabla formada por los elementos con 4 cilindros
### y con tres engranes (los engranes es la columna gear). 
### ¿Cuántos registros cumplen esta condición?

mtcars[(mtcars$cyl == 4) & (mtcars$gear == 3),]
nrow(mtcars[(mtcars$cyl == 4) & (mtcars$gear == 3),])

### 12
### Muestra la tabla formada por los elementos que 
### no tienen 4 cilindros.

mtcars_sin4 <- mtcars[mtcars$cyl != 4,]

mtcars[-(mtcars$cyl == 4),]

nrow(mtcars_sin4)
  
###  13
### Uso de %in%
###
### Muestra nuevamente la tabla formada por 
### 4 o 6 cilindros utilizando %in%.

mtcars[mtcars$cyl %in% c(1:10),]

########

data1 <- data.frame(pais = c("Mex","Bra","Qa"), grupo = c(1,2,3))
data2 <- data.frame(pais = c("Arg","Ita","Chi"), numero = c(1,2,3), 
                    grupo = c("a","b","c") )

names(data1)
names(data2)

names(data2) %in% names(data1)


### 14
### Muestra los registros de los elementos que tienen 
### mas de 100 caballos de fuerza y a lo más 105.

mtcars[mtcars$hp > 100 & mtcars$hp <= 105,]

### 15
### Añade una columna donde esté el cociente 
### de los cilindros con el peso.

mtcars$colum_extra <- mtcars$cyl / mtcars$wt 

View(mtcars)

### 16
### Ordenar mtcars respeceto al número de cilindros de 
### forma creciente y luego decreciente.

mtcars[order(mtcars$cyl),]
View(mtcars[order(mtcars$cyl),])

mtcars[order(mtcars$cyl, decreasing = TRUE),]

order(mtcars$cyl, decreasing = TRUE)

mi_vector <- c(1,3,3,2,6)

sort(mi_vector)
order(mi_vector)


# sort
### 17
### Ordener mtcars respecto al número de cilindros y, 
### en caso de empate, respecto de la cilindrada. 
### Ambos en forma creciente (la cilindrada es Displacement).

mtcars[order(mtcars$cyl,mtcars$disp),]

### 18
### Ordener mtcars respecto al número de cilindros y, 
### en caso de empate, respecto de la cilindrada. 
### El número de cilindros en forma decreciente
### y la cilindrada de forma creciente.

mtcars[order(mtcars$cyl,mtcars$disp, decreasing = c(TRUE,FALSE)),]
