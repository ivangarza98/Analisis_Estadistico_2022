# Laboratorio 1
# 29/08/22
# Jorge Ivan Garza Aldape

# Parte 1 R y RStudio

# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular
transporte <- 240
transporte
comestibles <- 1527
comestibles
gimnasio <- 400
gimnasio
alquiler <- 1500
alquiler
otros <- 1833
otros

# Sumatoria y objeto total

gast.total <- sum(celular, transporte, comestibles, gimnasio, alquiler, otros)

gast.total

# Gastos a 5 meses

gast.cinco <- gast.total * 5
gast.cinco

# Gastos a 10 meses

gast.diez <- gast.total * 10
gast.diez

# Autoevaluación

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
gastos

barplot(gastos)

sort(gastos, decreasing = T)

barplot(gastos[order(gastos, decreasing = T)])

barplot(gastos[order(gastos, decreasing = T)], names.arg = c("otros", "comestibles", "alquiler", "gimnasio", "celular", "transporte"))



