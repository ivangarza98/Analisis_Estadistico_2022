# Tarea 1
# 30/08/22
# Jorge Iván Garza Aldape

# Parte 2: Problemas
# Problema 1

Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juniperos <- 720

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperos)

barplot(superficie)

sort(superficie)

barplot(superficie[order(superficie, decreasing = T)])
barplot(superficie[order(superficie, decreasing = T)], names.arg = c("Pinus", "Mezquite", "Teka", "Juniperos", "Encinos"))

mean(superficie)


# Problema 2

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2)

mean(germinacion)

sd(germinacion)


# Problema 3

altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12, 20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)

mean(altura)

sd(altura)