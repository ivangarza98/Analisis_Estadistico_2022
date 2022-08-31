# Tarea 2
# 31/08/22
# Jorge Iván Garza Aldape

# Importar datos

conjunto <- read.csv("conjunto.csv")
conjunto
head(conjunto)

# Selección de datos

H.media <- subset(conjunto$Altura, conjunto$Altura <= mean(conjunto$Altura))
H.media

H.16 <- subset(conjunto$Altura, conjunto$Altura < 16.5)
H.16

Vecinos_3 <- subset(conjunto$Vecinos, conjunto$Vecinos <= 3)
Vecinos_3

vecinos_4 <- subset(conjunto$Vecinos, conjunto$Vecinos > 4)
vecinos_4

DBH_media <- subset(conjunto$Diametro, conjunto$Diametro < mean(conjunto$Diametro))
DBH_media

DBH_16 <- subset(conjunto$Diametro, conjunto$Diametro > 16)
DBH_16

especie_C <- subset(conjunto$Especie, conjunto$Especie == "C")
especie_C

especie_hf <- subset(conjunto$Especie, conjunto$Especie == conjunto$Especie [c(1, 4)])
especie_hf

DBH_16.9 <- subset(conjunto$Diametro, conjunto$Diametro <= 16.9)
DBH_16.9

H_18.5 <- subset(conjunto$Altura, conjunto$Altura > 18.5)
H_18.5


# Visualizacion de datos

hist(conjunto$Altura, main = "Altura", xlab = "Lecturas", ylab = "Frecuencia", las = 1)

hist(H.media, main = "Altura media", xlab = "Altura", ylab = "Frecuencia", las = 1)

hist(H.16, main = "Altura menor a 16.5", xlab = "Altura", ylab = "Frecuencia", las = 1)

hist(conjunto$Vecinos, main = "Vecinos", xlab = "Datos", ylab = "Frecuencia", las = 1)

hist(Vecinos_3, main = "Vecinos iguales o menores a 3", xlab = "Datos", ylab = "Frecuencia", las = 1)

hist(vecinos_4, main = "Vecinos menores 4", xlab = "Datos", ylab = "Frecuencia", las = 1)

hist(conjunto$Diametro, main = "Diametro", xlab = "Datos", ylab = "Frecuencia", las = 1)

hist(DBH_media, main = "Diametro menor a la media", xlab = "Datos", ylab = "Frecuencia", las = 1)

hist(DBH_16, main = "Diametro mayor a 16", xlab = "Datos", ylab = "Frecuencia", las = 1)


# Estadísticas basicas

mean(conjunto$Altura); mean(H.media); mean(H.16); mean(conjunto$Vecinos); mean(Vecinos_3); mean(vecinos_4); mean(conjunto$Diametro); mean(DBH_media); mean(DBH_16)

sd(conjunto$Altura); sd(H.media); sd(H.16); sd(conjunto$Vecinos); sd(Vecinos_3); sd(vecinos_4); sd(conjunto$Diametro); sd(DBH_media); sd(DBH_16)


# Líneas de comando en R

library(repmis)
conjunto2 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto2
head(conjunto2)





