# Clase 5
# 06/09/22
# Jorge Iván Garza Aldape

viv <- read.csv("clases/vivero.csv", header = T)
summary(viv)

boxplot(viv$IE)

hist(viv$IE, xlab = "Índice de esveltez")


# Normalidad de datos -----------------------------------------------------

shapiro.test(viv$IE)

ks.test(viv$IE, "pnorm", mean = mean(viv$IE), sd = sd(viv$IE))

t.test(viv$IE, mu = 0.77)


# Ejemplo Chickwts --------------------------------------------------------

data("chickwts")
head(chickwts)
summary(chickwts)
length(chickwts$weight)

hist(chickwts$weight)

shapiro.test(chickwts$weight)

t.test(chickwts$weight, mu = 250)


# Dos muestras independientes -----------------------------------------------

View(viv)

boxplot(viv$IE ~ viv$Tratamiento)

shapiro.test(viv$IE)

var.test(viv$IE ~ viv$Tratamiento)

t.test(viv$IE ~ viv$Tratamiento)


# Ejemplo Inventario ------------------------------------------------------

invent <- read.csv("Clases/inventario.csv", header = T)
invent
View(invent)

invent$Tratamiento <- as.factor(invent$Tratamiento)
invent$Fecha <- as.factor(invent$Fecha)

boxplot(invent$Diametro ~ invent$Tratamiento)

shapiro.test(invent$Diametro)
var.test(invent$Diametro ~ invent$Tratamiento)

t.test(invent$Diametro ~ invent$Tratamiento, var.equal = T)

# Diametro de copa

shapiro.test(invent$Dcopa)

var.test(invent$Dcopa ~ invent$Tratamiento)

t.test(invent$Diametro ~ invent$Tratamiento, var.equal = T)

# Muestras dependientes ---------------------------------------------------

boxplot(invent$Kilogramo ~ invent$Fecha)

shapiro.test(invent$Kilogramo)
var.test(invent$Kilogramo ~ invent$Fecha)

t.test(invent$Kilogramo ~ invent$Fecha, paired = T)