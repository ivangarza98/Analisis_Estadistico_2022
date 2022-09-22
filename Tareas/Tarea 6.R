# Tarea 6
# 21/09/22
# Jorge Iván Garza Aldape

eruptions <- read.csv("erupciones.csv", header = T) 
eruptions

plot(eruptions$eruptions, eruptions$waiting,
     pch=19, col="red",
     xlab= "Erupciones",
     ylab= "Tiempo de espera")

head(eruptions)

# Actividades a realizar:

# Correlación

# Media
mean(eruptions$eruptions)
mean(eruptions$waiting)

# Desviación estándar
sd(eruptions$eruptions)
sd(eruptions$waiting)

# Varianza
var(eruptions$eruptions)
var(eruptions$waiting)

# Coeficiente de correlación (r)
cor.erup <- cor.test(eruptions$eruptions, eruptions$waiting)
cor.erup

# Coeficiente de correlación (r) = 0.9008112
# Existe una correlacion significativa entre ambas variables.

# Regresión lineal

# Hipótesis nula: No existe una correlación significativa entre la duración de las erupciones  y el tiempo de espera.
# Hipótesis alternativa: Existe una correlación significativa entre la duración de las erupciones y el tiempo de espera.

erupt.lm <- lm(eruptions$eruptions  ~  eruptions$waiting)

erupt.lm

# ¿Cuál es el valor del intercepto (α)? α = -1.87402 
# ¿Cuál es el valor de la pendiente (β) β = 0.07563

# Análisis de regresión

summary(erupt.lm)

# ¿Valor de p? p = < 0.00000000000000022. Es significativo

# ¿Son significativas las regresoras α y β?
# R= Son altamente significativas (***).

# ¿Es significativa la regresión? 
# R= Es significativa dadas las regresoras.

# ¿Cuál será la duración en minutos de la próxima erupción, si los tiempos de espera son los dados en el siguiente cuadro?

-1.874016 + (0.075628*80) 
# 4.176224 minutos
-1.874016 + (0.075628*40) 
# 1.151104 minutos
-1.874016 + (0.075628*45) 
# 1.529244 minutos
-1.874016 + (0.075628*53) 
# 2.134268 minutos
-1.874016 + (0.075628*61) 
# 2.739292 minutos