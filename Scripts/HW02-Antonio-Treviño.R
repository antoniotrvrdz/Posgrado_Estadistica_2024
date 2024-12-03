datos <- read.csv("cuadro1.csv", header = T)
H.media <- subset(datos, datos$Altura <= mean(datos$Altura))
#Hay 24 individuos cuya altura promedio es igual o menor a la media-----

H.16 <- subset(datos, datos$Altura < mean(datos$Altura))
mean(datos$Altura)


Vecinos.3 <- subset(datos, datos$Vecinos <= 3)
# 26 individuos tienen 3 o menos vecinos alrededor----------------------



Vecinos.4 <- subset(datos, datos$Vecinos > 4)
# 11 individuos tienen más de 4 vecinos alrededor-----------------------



DBH.media <- subset(datos, datos$Diametro < mean(datos$Diametro))
mean(datos$Diametro)
# 25 individuos tienen un diámetro menor a la media---------------------



DBH.16 <- subset(datos, datos$Diametro > 16)
# Hay 24 individuos que tienen diámetro mayor a 16 cm-------------------





Especie <- subset(datos, datos$Especie == "C")
# 22 individuos son cedro rojo------------------------------------------



Arboles <- subset(datos, datos$Especie != "C")
# 28 individuos no son cedro rojo---------------------------------------



Talla.16.9 <- subset(datos, datos$Diametro <= 16.9)
# 31 individuos tienen un diámetro menor o igual a 16.9-----------------



Talla.18.5 <- subset(datos, datos$Diametro > 18.5)
# 8 individuos tienen un diámetro mayor a 18.5--------------------------








#Histogramas------------------------------------------------------------


#Altura-----------------------------------------------------------------
hist(datos$Altura, xlab = "Altura", ylab = "Frecuencia", 
     main = "Categorías de altura", col = "red", xlim = c (4,25),
     ylim = c(0,15) )
hist(H.media$Altura, xlab = "Altura", ylab = "Frecuencia",
     main = "Individuos con altura menor a la media", col = "orange", xlim= c (7,15),
     ylim = c(0,10))
hist(H.16$Altura, xlab = "Altura", ylab = "Frecuencia", 
     main = "Individuos con altura menor a 16.5", col = "yellow", xlim = c (7,15),
     ylim = c (0,8))     


#Vecinos----------------------------------------------------------------
hist(datos$Vecinos, xlab = "Vecinos", ylab = "Frecuencia",
     main = "Número de vecinos", col = "green", xlim = c (0,6),
     ylim = c (0,25))
hist(Vecinos.3$Vecinos, xlab = "Vecinos", ylab = "Frecuencia",
     main = "Árboles con 3 o menos vecinos", col = "skyblue", xlim = c (0,4),
     ylim = c (0,15))
hist(Vecinos.4$Vecinos, xlab = "Vecinos", ylab = "Frecuencia",
     main = "Árboles con 4 o más vecinos", col = "blue", xlim = c (5,6),
     ylim = c (0,7))


#Diámetro----------------------------------------------------------------


hist(datos$Diametro, xlab = "Diámetro", ylab = "Frecuencia",
     main = "Diámetro de árboles", col = "violet", xlim = c (5,25),
     ylim = c (0,15))
hist(DBH.media$Diametro, xlab = "Diámetro", ylab = "Frecuencia",
     main = "Árboles con diámetro mayor a 16", col = "purple", xlim = c (7,16),
     ylim = c (0,10))



#Estadísticas básicas----------------------------------------------------


#Altura
mean(datos$Altura)
sd (datos$Altura)

#Altura media
mean(H.media$Altura)
sd(H.media$Altura)

#Altura menor a 16.5
mean(H.16$Altura)
sd(H.16$Altura)


#Vecinos
mean(datos$Vecinos)
sd(datos$Vecinos)

#Árboles con 3 o menos vecinos
mean(Vecinos.3$Vecinos)
sd(Vecinos.3$Vecinos)

#Árboles con más de 4 vecinos
mean(Vecinos.4$Vecinos)
sd(Vecinos.4$Vecinos)

#Diámetro
mean(datos$Diametro)
sd(datos$Altura)

#Diámetro menor a la media
mean(DBH.media$Diametro)
sd(DBH.media$Diametro)

#Diámetro mayor a 16
mean(DBH.16$Diametro)
sd(DBH.16$Diametro)

