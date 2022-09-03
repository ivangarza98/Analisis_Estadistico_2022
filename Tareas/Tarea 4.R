# Tarea 4
# 03/09/22
# Jorge Iván Garza Aldape

# Histogramas

# Problema 1

set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)

h.x2 <- hist(x2, las = 1)
h.x2

h.x2$breaks

h.x2 <- hist(x2, xaxt = "n", breaks = c(0, 2, 4, 6, 8, 10))
axis(1, h.x2$mids)

H.x2 <- hist(x2, xaxt = "n", breaks = c(0, 1, 2, 4, 7, 10))
axis(1, H.x2$mids)

# Problema 2

# A) A
# B) D
# C) C
# D) B
# E) A, B y D

# Problema 3

data("quakes")

mags <- hist(quakes$mag, xaxt = "n",
             col = "#e6ac00", xlab = "Magnitud de los terremostos",
             ylab = "Frecuencias", main = "", las = 1,
             ylim = c(0,260))
axis(1, mags$mids)

# A) Sesgada a la derecha
# B) 4.1 - 4.4
# C)
range(quakes)
max(quakes) - min(quakes)
# D)
library(dplyr)
magni1 <- quakes%>%
  filter(mag == "5.3")%>%
  select(mag, stations)

porcen5.3 <- (length(magni1$mag)/length(quakes$mag)) * 100
porcen5.3
# E)
magni2 <- quakes %>% 
  filter(mag >= "5") %>% 
  select(mag, stations)
magni2

porcent5 <- (length(magni2$mag)/length(quakes$mag)) * 100
porcent5
# F)
magni3 <- quakes %>% 
  filter(mag <= "4.6") %>% 
  select(mag, stations)
magni3

porcent4.6 <- (length(magni3$mag)/length(quakes$mag)) * 100
porcent4.6


# Boxplots

# Problema 4

# B: 50%

# Problema 5

# A) Especie F
# B) Especie C
# C) Especie F
# D) Especie C
# E) Especie H
# F) Especie F
# G) Especie C
# H) Especie F
# I) Ninguna especie
# J) Ninguna porque son figuras geométricas


# Problema 6

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
fires

min(fires)

max(fires)

range(fires)
max(fires) - min(fires)

quantile(fires, 0.25)
quantile(fires, 0.50)
quantile(fires, 0.75)

mean(fires)

var(fires)

sd(fires)

boxplot(fires, main = "Incendios Forestales",
        col = "blue")