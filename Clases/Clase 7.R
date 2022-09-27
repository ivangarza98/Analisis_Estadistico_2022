# Clase 7
# 27/09/22
# Jorge Iván Garza Aldape

# Análisis de varianza (ANOVA)


# Datos -------------------------------------------------------------------

# H0: No existe diferencia significativa entre los tratamientos de 3 tipos de suelo para cultivos de avena.
# H1: Existe diferencia en al menos 1 tratamiento para cultivos de avena en los 3 tipos suelos.

arena <- c(6, 10, 8, 6, 14, 17, 9, 11, 7, 11)
arcilla <- c(17, 15, 3, 11, 14, 12, 12, 8, 10, 13)
limo <- c(13, 16, 9, 12, 15, 16, 17, 13, 18, 14)

productividad <- c(arena, arcilla, limo)

suelo <- gl(3, 10, 30, labels = c("arena", "arcilla", "limo"))

avena <- data.frame(suelo, productividad)


# Función tapply ----------------------------------------------------------

tapply(avena$productividad, avena$suelo, length)
tapply(avena$productividad, avena$suelo, mean)
tapply(avena$productividad, avena$suelo, sd)
tapply(avena$productividad, avena$suelo, var)


# Homogeneidad de varianzas -----------------------------------------------

bartlett.test(avena$productividad, avena$suelo)

fligner.test(avena$productividad, avena$suelo)


# Datos gráficos ----------------------------------------------------------

boxplot(avena$productividad ~ avena$suelo)


# Suma de cuadrados total -------------------------------------------------------

SST <- sum((avena$productividad - mean(avena$productividad))**2)


# Suma de cuadrados del error ---------------------------------------------

arena - mean(arena)
arcilla - mean(arcilla)
limo - mean(limo)

arena.sum <- sum((arena - mean(arena))**2)
arcilla.sum <- sum((arcilla - mean(arcilla))**2)
limo.sum <- sum((limo - mean(limo))**2)

SSe <- arena.sum + arcilla.sum + limo.sum

SStr <- SST - SSe


# Cuadrado medio ----------------------------------------------------------

CMe <- mean(tapply(avena$productividad, avena$suelo, var))
CMtr <- SStr / 2
Fcal <- Cmtr / CMe

Ftab <- qf(0.95, 2, 27)
Ftab

probF <- 1 - pf(4.24, 2, 27)
probF



# ANOVA simplificado ------------------------------------------------------

avena.aov <- aov(avena$productividad ~ avena$suelo)
summary(avena.aov)

par(mfrow = c(2, 2))
plot(aov(avena$productividad ~ avena$suelo))
par(mfrow = c(1, 1))

TukeyHSD(avena.aov, conf.level = 0.95)

plot(TukeyHSD(avena.aov))
