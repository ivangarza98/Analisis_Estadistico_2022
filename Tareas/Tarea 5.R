# Tarea 5
# 21/09/22
# Jorge Iván Garza Aldape

# Ejercicio 1

efimeras <- read.csv("tareas/efimeras.csv")
efimeras

plot(efimeras$Speed, efimeras$Abundance,
     pch = 19, col = "red",
     xlab = "Velocidad (Ind.)",
     ylab = "Abundancia (Dep.)")

# ¿Es estadísticamente significativa la correlación?
# R= Sí

cor.efi <- cor.test(efimeras$Speed, efimeras$Abundance)
cor.efi

# Explique los datos de los gráficos:
# La abundancia de moscas es mayor conforme aumenta la velocidad del arroyo.

# Establezca una hipótesis nula y una hipótesis alternativa:
# H0: No existe una correlación entre la velocidad del arroyo y la abundancia de efímeras.
# H1: Existe una correlación positiva entre la velocidad del arroyo y la abundancia de efímeras.

# Reporte de datos:
# Valor de r: 0.8441408
# Grados de libertad: 6
# Significancia de la correlación: Es una correlación positiva, significativa.
# Valor de p: 0.008393

# Ejercicio 2

suelo <- read.csv("tareas/suelo.csv")
suelo

cor.test(suelo$pH, suelo$N)
cor.test(suelo$pH, suelo$Dens)
cor.test(suelo$pH, suelo$P)
cor.test(suelo$pH, suelo$Ca)
cor.test(suelo$pH, suelo$Mg)
cor.test(suelo$pH, suelo$K)
cor.test(suelo$pH, suelo$Na)
cor.test(suelo$pH, suelo$Conduc)

DatosSuelo <- matrix(0,7,3)
colnames(DatosSuelo) <- (c("Conjunto","r","valor de p"))
rownames(DatosSuelo)<- (c("1","2","3","4","5","6","7"))

conjunto <- c("pH - N", "pH - Dens", "pH - P", "pH - Ca", "pH - Mg", "pH - K", "pH - Na")
DatosSuelo [, 1] <- conjunto

r <- c("0.636654", "-0.5890264", "0.5910303", "0.8086293", "-0.3957821", "0.5795727", "-0.693264")
DatosSuelo [, 2] <- r

valordep <- c("0.00000149", "0.00001062", "0.00000974", "0.000000000003614", "0.005361", "0.00001585", "0.00000004724")
DatosSuelo [, 3] <- valordep

plot(suelo$pH, suelo$N)
plot(suelo$pH, suelo$Dens)
plot(suelo$pH, suelo$P)
plot(suelo$pH, suelo$Ca)
plot(suelo$pH, suelo$Mg)
plot(suelo$pH, suelo$K)
plot(suelo$pH, suelo$Na)
plot(suelo$pH, suelo$Conduc)

# Hipótesis nula:
# No existe correlación entre el suelo y las variables de medición.

# Hipótesis alternativa:
# Existen correlaciones positivas y negativas entre el suelo y las variables de medicion.
