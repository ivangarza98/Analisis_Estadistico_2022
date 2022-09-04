# Tarea 3
# 03/09/22
# Jorge Iván Garza Aldape

# Problemas

# Problema 1

matriz <- matrix(c(1, 6, 1, 2, 4, 3, 3, 1, 4, 4, 3, 2), 3, 4)
row.names(matriz) <- c("i", "Xi", "Yi")
matriz

i <- seq(1, 4, 1)
X <- c(6, 4, 1, 3)
Y <- c(1, 3, 4, 2)

Xi <- sum(X)
Xi

XiYi <- X * Y
XiYi <- sum(XiYi)
XiYi

ProdXi <- prod(X)
ProdXi
ProdXiYi <- prod(X) * prod(Y)
ProdXiYi
ProdXiYi2 <- (prod(X)^2) * (prod(Y)^0.5)
ProdXiYi2


# Problema 2

grupo_A <- c(80, 90, 90, 100)
grupo_A
grupo_B <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
grupo_B

# A) El grupo A tiene una altura media mayor.

mean(grupo_A)
mean(grupo_B)

# El grupo A tiene la media en altura mas grande. Coincide con mi primera impresión.


# Problema 3

calif <- c(87, 72, 85)
sum_calif <- sum(calif)
sum_calif
media_80 <- 4 * 80
media_80
calif_final <- media_80 - sum_calif
calif_final

# Calificación del 4o exámen para obtener media de 80: 76

media_exámenes <- c(87, 72, 85, 76)
mean(media_exámenes)

# Problema 4

# El enunciado correscto es B) "Hay un total de 110 niños en la ciudad".


# Problema 5

Germ <- c(5, 6, 7, 8, 9)
Cajas_P <- c(1, 3, 5, 3, 1)

barplot(Germ)
barplot(Cajas_P)

# Los datos se pueden visualizar usando el gráfico de tipo "barplot".

mean(Germ)
mean(Cajas_P)

median(Germ)
median(Cajas_P)


# Problema 6

set <- c(2, 2, 3, 6, 10)
set

# A) Calcule la Moda, la Mediana y la Media
# Moda
moda_1 <- unique(set)
moda_1
moda_1[which.max(tabulate(match(set, moda_1)))]

# Mediana
median(set)

# Media
mean(set)

# B) Suma 5 a cada uno de los valores y calcule Moda, Mediana y Media
set5 <- set + 5
set5

# Moda
moda_2 <- unique(set5)
moda_2[which.max(tabulate(match(set5, moda_2)))]

# Mediana
median(set5)

#Media
mean(set5)

# C) R= Cuando se adiciona una constante a todas las variables, los resultados de la moda, mediana y media
# se incrementan equivalentemente al valor de la constante en cuestión.

# D) Multiplique cada valor de los datos por 5 y calcule moda, mediana y media
setpor5 <- set * 5
setpor5

#Moda
moda_3 <- unique(setpor5)
moda_3[which.max(tabulate(match(setpor5, moda_3)))]

#Mediana
median(setpor5)

#Media
mean(setpor5)

# E) R= Incluso si los valores de la moda, mediana y media se multiplican por 5, los resultados siguen
# siendo equivalentemente iguales al número por el que se multiplicaron.


# Problema 7

Digitos <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
Digitos

# A) Dígitos con mediana y media de 7
digitos1 <- c(10, 3, 7, 8, 7)
median(digitos1)
mean(digitos1)

# Dígitos alternativos
digitos2 <- c(5, 8, 10, 5, 7)
median(digitos2)
mean(digitos2)

# B) Dígitos con mediana de 7 y media inferior a 7
digitos3 <- c(2, 1, 7, 7, 8)
median(digitos3)
mean(digitos3)

# Dígitos alternativos
digitos4 <- c(2, 7, 9, 3, 7)
median(digitos4)
mean(digitos4)