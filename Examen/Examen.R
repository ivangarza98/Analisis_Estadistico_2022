# Examen
# 04/10/22
# Jorge Iván Garza Aldape

tcp <- read.csv("obs.csv")
tcp$zone <- as.factor(tcp$zone)
tcp$wrb1 <- as.factor(tcp$wrb1)

# Actividad 1

summary(tcp$Clay1)
summary(tcp$Clay2)
summary(tcp$Clay5)
# P1: El contenido de arcilla tiende a incrementar conforme aumenta la profundidad.


# Actividad 2

stem(tcp$Clay1)
hist(tcp$Clay1)
# P2: Tiene un sesgo positivo a la derecha.


# Actividad 3

boxplot(tcp$Clay1)

# P3: Sí existe evidencia de outliers.
outliers <- subset(tcp$Clay1, tcp$Clay1 > 64, "Clay1")
outliers
# P4: Las observaciones identificadas para los outliers son 67, 71, 72.


# Actividad 4

mean(tcp$Clay1)

# P5: El contenido de arcilla es significativamente diferente respecto a las zonas del TCP.


# Actividad 5

cor.tcp <- cor.test(tcp$Clay1, tcp$Clay5)
cor.tcp
# P6: Existe una relación positiva entre Clay1 y Clay5, mientras más profundidad mayor contenido de arcilla.
# P7: La correlación sí es estadísticamente significativa.


# Actividad 6

# P8: Sí es posible determinar una ecuación significativa para predecir el contenido de arcilla de Clay5.
# P9: y = α + β (x), es decir, y = 18.75856 + 0.82891 (x)
clay5.lm <- lm(tcp$Clay5 ~ tcp$Clay1)
clay5.lm
summary(clay5.lm)
# P10: Ambos parámetros son altamente significativos (***).
sum(clay5.lm$residuals**2)/145
# P11: 32.3413%


# Actividad 7

# P12: Sí existe una forma de identificar la variación entre las 4 zonas del estudio.
plot(tcp$Clay5 ~ tcp$zone)
# P13: Sí, las zonas 1 y 2 son relativamente parecidas en cuanto a sus medias, pero las zonas 3 y 4 son significativamente distintas.
# P14: El contenido de arcilla disminuye conforme se incrementa el número de zonas.
by(tcp$Clay5, tcp$zone, summary)


# Actividad 8

tcp.aov <- aov(tcp$Clay5 ~ tcp$zone)
tcp.aov
summary(tcp.aov)
# P15: Sí existen diferencias entre el contenido de arcilla de Clay5 y las zonas de estudio, según ANOVA.
# P16: No existen diferencias estadísticas entre las zonas 1 y 2, pero entre todas las demás si, según Tukey.
TukeyHSD(tcp.aov, conf.level = 0.95)
plot(TukeyHSD(tcp.aov))