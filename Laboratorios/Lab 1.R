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


# Parte 2 Variables

# Problema 1:

#Nombre del estudiante: Cualitativa
#Fecha de nacimiento: Cuantitativa
#Edad: Cuantitativa
#Dirección de casa: Cualitativa dependiendo de la variable que más se repita
#Número de teléfono: Cuantitativa
#Área principal de estudio: Cualitativa
#Grado de año de aniversario: Cuantitativa
#Puntaje en la prueba de mitad de periodo (basado en 100 puntos posibles): Cuantitativa
#Calificación general: Cualitativa
#Tiempo (en minutos) para completarla prueba final de MCF: Cuantitativa
#Número de hermanos: Cuantitativa


# Problema 2:

# Objeto elegido: Plantas

# Variables cuantitativas: 1.-Diametro de inflorescencia 2.-Longitud de las hojas 3.-Altura de planta 4.-Ancho de la hoja 5.-Diametro de tallo 6.-Peso de la semilla 7.-Longitud de tallo

# Variables categóricas: 1.-Color de tallo 2.-Forma de las hojas 3.-Color de las hojas 4.-Color de inflorescencia 5.-Forma de inflorescencia 6.-Densidad de inflorescencia 7.-Color de la semilla


# Problema 3:

# Formas electrónicas de expresar opiniones.¿Son una variable cuantitativa o cualitativa?

# Es una variable cuantitativa ya que entrega valores numéricos aunque las descripciones no sean números.


# Problema 4:

# 1.- ¿Cuál es la cantidad promedio de horas que los estudiantes de universidades públicas trabajan cada semana?
#Individuos de interés: Estudiantes de univerisdades públicas.
#Variables: Cantidad promedio de horas (Variable cuantitativa).
#
# 2.- ¿Qué proporción de todos los estudiantes universitarios de México están inscritos en una universidad pública?
#Individuos de interés: Estudiantes universitarios de México.
#Variables: Inscripciones en una universidad pública (Variable cualitativa).
#
# 3.- En las universidades públicas, ¿las estudiantes feminas tienen un promedio de CENEVAL más alto que los estudiantes varones?
#Individuos de interés: Estudiantes feminas.
#Variables: Promedio de CENEVAL (Variable cuantitativa).
#
# 4.- ¿Es más probable que los atletas universitarios reciban asesoramiento académico que los atletas no universitarios?
#Individuos de interés: Atletas universitarios.
#Variables: Asesoramiento académico (Variable cualitativa).
#
# 5.- Si reuniéramos datos para responder a las preguntas de la investigación anterior, ¿qué datos podrían analizarse mediante un histograma? ¿Cómo lo sabes?
#Los datos que podrían analizarse mediante un histograma son los datos de las variables cuantitativas dado que estas ofrecen resultados numéricos.
#
