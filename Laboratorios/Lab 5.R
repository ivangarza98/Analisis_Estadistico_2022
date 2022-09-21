# Laboratorio 5
# 21/09/22
# Jorge Iván Garza Aldape

# Ejercicio 1: El cuarteto de Anscombe

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)

# Coeficiente de correlación


# Conjunto 1

conjunto1 <- matrix(0,length(anscombe$x1),2)
colnames(conjunto1) <- (c("x","y"))
conjunto1[,1] <- anscombe$x1
conjunto1[,2] <- anscombe$y1
conjunto1

# Lineal Model (lm)
con1.lm <- lm(anscombe$y1~anscombe$x1)

plot(anscombe$x1, anscombe$y1, pch = 20)
abline(con1.lm, col="red")

# Examinar la relación que existe entre dos muestras mediante una correlación.
# R= Es una correlacion lineal simple.
# Explore los datos gráficamente y explique.
# R= Es una correlacion positiva.
# Establezca la Hipótesis nula y la Hipótesis alternativa.
# R= Hipótesis nula: No hay una correlacion significativa.
# R= Hipótesis alternativa: hay una correlacion significativa.
# Aplique las pruebas correspondientes.

# Prueba de zafiro
shapiro.test(anscombe$x1) #Los datos tienen una distribución normal.

# Coeficientes de correlación (r).
cor.1 <- cor.test(anscombe$x1, anscombe$y1)
cor.1

summary(con1.lm)

# Reporte los datos
# r= 0.8164205
# df= 9
# p-value= 0.00217.
# Hipotesis alternativa: La correlacion es significativa.


# Conjunto 2

conjunto2 <- matrix(0,length(anscombe$x2),2)
colnames(conjunto2) <- (c("x","y"))
conjunto2[,1] <- anscombe$x2
conjunto2[,2] <- anscombe$y2
conjunto2

# Lineal modem (lm)
con2.lm <- lm(anscombe$y2~anscombe$x2)

# Grafica de dispersion del conjunto del conjunto 1
plot(anscombe$x2, anscombe$y2, pch = 20)
abline(con2.lm,col="red")

# Examinar la relación que existe entre dos muestras mediante una correlación.
# R= Es una corelacion no lineal.

# Explore los datos gráficamente y explique.
# R= Es una corelacion no lineal.

# Establezca la Hipótesis nula y la Hipótesis alternativa,
# Hipótesis nula: No existe una correlacion significativa
# Hipótesis alternativa: Existe una corelacion significativa

# Aplique las pruebas correspondientes.

# Prueba de zafiro
shapiro.test(anscombe$x2) #Los datos son normales.

# Coeficientes de correlación (r).
cor.2 <- cor.test(anscombe$x2, anscombe$y2)
cor.2

summary(con2.lm)

# Reporte los datos
# r= 0.8162365
# df= 9
# p-value= 0.002179.
# Hipótesis alternativa: La correlacion es significativa.


# Conjunto 3

conjunto3 <- matrix(0,length(anscombe$x3),2)
colnames(conjunto3) <- (c("x","y"))
conjunto3[,1] <- anscombe$x3
conjunto3[,2] <- anscombe$y3
conjunto3

# Lineal model (lm)
con3.lm <- lm(anscombe$y3~anscombe$x3)

# Grafica de dispersion del conjunto 1
plot(anscombe$x3, anscombe$y3, pch = 20)
abline(con3.lm,col="red")

# Examinar la relación que existe entre dos muestras mediante una correlación.
# R= Es una correlacion lineal simple.

# Explore los datos gráficamente y explique.
# R= Es una correlacion positiva.

# Establezca la Hipótesis nula y la Hipótesis alternativa,
# Hipótesis nula: No existe una correlacion significativa.
# Hipótesis alternativa: Existe una correlacion significativa.

# Aplique las pruebas correspondientes.

# Prueba de zafiro
shapiro.test(anscombe$x3) #Los datos son normales.

# Coeficientes de correlación (r).
cor.3 <- cor.test(anscombe$x3, anscombe$y3)
cor.3

summary(con3.lm)

# Reporte los datos
# r= 0.8164205
# df= 9
# p-value= 0.00217
# Hipótesis alternativa: La correlacion es significativa.


# Conjunto 4

conjunto4 <- matrix(0,length(anscombe$x4),2)
colnames(conjunto4) <- (c("x","y"))
conjunto4[,1] <- anscombe$x4
conjunto4[,2] <- anscombe$y4
conjunto4

# Lineal modem (lm)
con4.lm <- lm(anscombe$y4~anscombe$x4)

# Gráfica de dispersion del conjunto 1
plot(anscombe$x4, anscombe$y4, pch = 20)
abline(con4.lm,col="red")

# Examinar la relación que existe entre dos muestras mediante una correlación.
# R= Es una correlacion no lineal.

# Explore los datos gráficamente y explique.
# R= Es una correlacion no lineal.
# Establezca la Hipótesis nula y la Hipótesis alternativa.
# Hipótesis nula: No existe una correlacion significativa.
# Hipótesis alternativa: Existe una correlacion significativa.

# Aplique las pruebas correspondientes.

# Prueba de zafiro
shapiro.test(anscombe$x4) #Los datos no son normales.

# Coeficientes de correlación (r).
cor.4 <- cor.test(anscombe$x4, anscombe$y4)
cor.4

summary(con4.lm)

# Reporte los datos 
# r = 0.8164205
# df= 9
# p-value= 0.00217
# Hipotesis alternativa: La correlacion es significativa.