# Tarea 7
# 13/09/2022
# Jorge Iván Garza Aldape

# Procedimiento general para las pruebas de T

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,81.94, 80.41, 77.7)
costal

# Número de observaciones

n <- length(costal)
n

# Media

costal.media <- mean(costal)
costal.media

# Desviación estándar

costal.sd <- sd(costal)
costal.sd

# Error estándar de la media (se)

costal.se <- costal.sd / sqrt(n)
costal.se

# Valor de T

costal.T <- (costal.media - 80) / costal.se
costal.T

# Valor de P

pt(costal.T, df = n - 1)


# Ejercicio 1

t.test(costal, mu = 80)

# 1.- ¿Cuál es el valor de P? 0.02264
# 2.- ¿Cuántos grados de libertad tiene el experimento? df = 43
# 3.- ¿Cuál es la hipótesis aceptada? Hipótesis alternativa (H1)
# 4.- ¿Existe evidencia de que el valor promedio de los costales observados
# es menor a los que anuncia el producto? Sí, la evidencia no es significativa, 1.08932 kg


# Ejercicio 2

azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9,24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)
azufre

n1 <- length(azufre)
n1

azufre.media <- mean(azufre)
azufre.media

azufre.sd <- sd(azufre)
azufre.sd

azufre.se <- azufre.sd / sqrt(n)
azufre.se

azufre.T <- (azufre.media - 17.5) / azufre.se
azufre.T

pt(azufre.T, df = n1 - 1 )

t.test(azufre, mu = 17.5)

# 1.- ¿Cuál es el valor de P? 0.1893
# 2.- ¿Cuáles son los intérvalos de confianza al 95%? 16.87912 - 20.53588
# 3.- ¿Cuántos grados de libertad tiene el experimento? df = 39
# 4.- ¿Cuál es la hipótesis aceptada? Hipótesis alternativa (H1)
# 5.- ¿Existe evidencia de que el valor medio promedio de las emisiones observadas es mayor
# a la declarada en los procedimientos de seguridad de la empresa? Sí, es un aumento mayor no significativo de 1.2075 ton/ha.


# Ejercicio 3

temperaturas <- paste0 ("https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv")
temp <- read.csv(temperaturas)
temp

n2 <- length(temp$temp_media)
n2

temp.media <- mean(temp$temp_media)
temp.media

temp.sd <- sd(temp$temp_media)
temp.sd

temp.se <- temp.sd / sqrt(n2)
temp.se

temp.T <- (temp.media - 24) / temp.se
temp.T

pt(temp.T, df = n2 - 1)

t.test(temp$temp_media, mu = 24)

# 1.- ¿Cuál es el valor de P? 0.03615
# 2.- ¿Cuáles son los intervalos de confianza al 95%? 23.28216 - 23.97599
# 3.- ¿Cuántos grados de libertad tiene el experimento? df = 845
# 4.- ¿Cuál es la hipótesis aceptada? Hipótesis alternativa (H1)
# 5.- ¿Existe evidencia de que el valor medio promedio de las emisiones observadas es
# mayor a la declarada en los procedimientos de seguridad de la empresa? Existe una diferencia menor no significativa de 0.37092 grados de temperatura.