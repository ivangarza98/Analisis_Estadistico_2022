# Laboratorio 6
# 21/09/22
# Jorge Iván Garza Aldape

# Variables y Datos en R

# Bases de los Vectores
wins = c(52, 51, 47, 47, 42)
losses = c(20, 21, 25, 25, 30)

# Porcentaje de victorias y derrotas
win_loss_perc = wins/(wins + losses)
win_loss_perc

teams = c("UtJ", "PhS", "DnN", "LAC", "DIM")

# Manipulación de Vectores: Subconjuntos

# Primer elemento de "wins"
wins [1]

# Tercer elemento de "losses"
losses[3]

# Último nombre en "teams"
teams [5]

# Número de valores
length(teams)
teams[length(teams)]

# Ordena los valores de forma creciente o decreciente
sort(wins, decreasing = TRUE)

# Invierte los valores
rev(wins)

# Subconjuntos con Índices Lógicos

# Victorias de Utah Jazz
wins[teams == "UtJ"]

# Equipos con victorias > 40
teams [wins > 40]

# Nombre de los equipos con derrotas entre 10 y 29
teams[losses >= 10 & losses <= 29]

# Factores y Variables Cualitativas
  
# Vector numérico
vector <- c(1, 2, 3, 1, 2, 3, 2)

# Crear un factor a partir de num_vector
first_factor <- factor(vector)
first_factor

# Puede tomar el vector teams y convertirlo como factor
teams = factor(teams)
teams

# Secuencias

# Operador de dos puntos
1:5
1:10
-3:7
10:1

# Función secuencia
seq(from = 1, to = 10)
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 2)
seq(from = -5, to = 5, by = 1)

# Vectores Repetidos

# Repetir 1 cinco veces
rep(1, times = 5)

# Repetir 1 y 2 tres veces
rep(c(1,2), times = 3)
rep(c(1,2), each = 2)
rep(c(1,2), length.out = 5)
rep(c(3,2,1), times = 3, each = 2)

# De Vectores a Estructura Tabular (Data Frame)

dat = data.frame(
  Teams = teams,
  Wins = wins,
  Losses = losses,
  WLperc = win_loss_perc
)
dat

# Extraer valores de la columna Teams
dat$Teams
dat$Wins[1]
dat$Wins[5]

# Subconjuntos Lógicos: Victorias del equipo Utah
dat$Wins[dat$Teams == "UtJ"]

# Equipos con victorias > 40
dat$Teams[dat$Wins > 40]

# Nombre de los equipos con derrotas entre 10 y 29
dat$Teams[dat$Losses >= 10 & dat$Losses <= 29]

# Mi Turno

equipos2 = c("UJ", "PS", "DN", "LAC", "DM", "PTB", "LAL", "MG", "GSW", "SAS", "NOP", "SK", "MT", "OCT", "HR")

ganadas2 = c(52, 51, 47, 47, 42, 42, 42, 38, 39, 33, 31, 31, 23, 22, 17)

perdidas2 = c(20, 21, 25, 25, 30, 30, 30, 34, 33, 39, 41, 41, 49, 50, 55)

gan_perd_porc2 = c(.722, .708, .653, .653, .583, .583, .583, .528, .542, .458, .431, .431, .319, .306, .236)

juegos_atras = c(1.0, 5.0, 5.0, 10.0, 10.0, 10.0, 14.0, 13.0, 19.0, 21.0, 21.0, 29.0, 30.0, 35.0)

puntos_anotados = c(116.4, 115.3, 115.1, 114.0, 112.4, 116.1, 109.5, 113.3, 113.7, 111.1, 114.6, 113.7, 112.1, 105.0, 108.8)

puntos_contra = c(107.2, 109.5, 110.1, 107.8, 110.2, 114.3, 106.8, 112.3, 112.7, 112.8, 114.9, 117.4, 117.7, 115.6, 116.7)

rango = c(8.97, 5.67, 4.82, 6.02, 2.26, 1.81, 2.77, 1.07, 1.10, -1.58, -0.20, -3.45, -5.25, -10.13, -7.50)

juegos_atras2 = ganadas2[1]-ganadas2

dat2 = data.frame(
  TeamsWC = equipos2,
  W = ganadas2,
  L = perdidas2,
  W_L = gan_perd_porc2,
  GB = juegos_atras2,
  PS_G = puntos_anotados,
  PA_G = puntos_contra,
  SRS = rango 
)

sort(puntos_anotados, decreasing = TRUE)
sort(puntos_anotados, decreasing = FALSE)
