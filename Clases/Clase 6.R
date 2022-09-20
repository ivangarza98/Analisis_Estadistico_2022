# Clase 7
# 20/09/22
# Jorge Iván Garza Aldape


# Importar datos ----------------------------------------------------------


ebano <- read.csv("clases/ebanos.csv")
ebano

plot(ebano$diametro, ebano$altura,
     pch = 19, col = "red",
     xlab = "Diametro (cm)",
     ylab = "Altura (cm)")


# Correlación de Pearson (r) ----------------------------------------------

cor.eb <- cor.test(ebano$diametro, ebano$altura)
cor.eb


# Canopy ------------------------------------------------------------------
cnpy <- read.csv("clases/canopy.csv", header = T)
cnpy

View(cnpy)

plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura del dosel (%)",
     ylab = "IAF",
     pch = 19, col = "blue")
cor.test(cnpy$Cnpy, cnpy$LAI4)


cor.test(cnpy$Cnpy, cnpy$GLI)
plot(cnpy$Cnpy, cnpy$GLI,
     xlab = "Apertura del dosel (%)",
     ylab = "GLI", pch = 19, col = "red")

cor.test(cnpy$LAI4, cnpy$GLI, method = "kendall")
plot(cnpy$LAI4, cnpy$GLI,
     xlab = "Índice de área folial",
     ylab = "GLI", pch = 19, col = "green")


shapiro.test(cnpy$Cnpy)
shapiro.test(cnpy$LAI4)
shapiro.test(cnpy$GLI)


# Regresión ---------------------------------------------------------------

# Regresión entre cnpy vs LAI4

# Función lm (lineal model)

cp.lm <- lm(cnpy$LAI4 ~ cnpy$Cnpy)
cp.lm

plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura del dosel (%)",
     ylab = "IAF",
     pch = 19, col = "blue")
abline(cp.lm, col = "red")

text(35, 1.5, "Y=2.67-0.04*x")

summary(cp.lm)


# Sumatoria de los Residuales

sum(cp.lm$residuals)

cp.lm$coefficients

cp.lm$fitted.values

cnpy$Yprima <- cp.lm$fitted.values
cnpy$diff <- cnpy$LAI4 - cnpy$Yprima
cnpy$Residual <- cp.lm$residuals

sum(cp.lm$residuals**2)
sum(cp.lm$residuals**2)/38 #38 son los grados de libertad

summary(cp.lm)

plot(cnpy$Cnpy, cnpy$LAI4,
     xlab = "Apertura del dosel (%)",
     ylab = "IAF",
     pch = 19, col = "blue")
abline(cp.lm, col = "red")
text(35, 1.5, "Y=2.67-0.04*x")