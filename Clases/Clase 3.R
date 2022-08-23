# Clase 3
# Jorge Ivan Garza Aldape
# 23/08/22


# Importar datos CSV ------------------------------------------------------

est <- read.csv("clases/cumbres.csv", header = T)
head(est) #revisar los primeros seis datos
tail(est) #revisar los últimos seis datos


viv <- read.csv("clases/vivero.csv", header = T)

boxplot(viv$IE ~ viv$Tratamiento)

viv$Tratamiento <- as.factor(viv$Tratamiento)

boxplot(viv$IE ~ viv$Tratamiento)

summary(viv)