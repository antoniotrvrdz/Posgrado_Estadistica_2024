library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head (conjunto)


mean(conjunto$Altura)
mean(conjunto$Diametro)

#Altura
H.media <- subset(conjunto, conjunto$Altura <= mean(conjunto$Altura))
H.16 <- subset(conjunto, conjunto$Altura < 16.5)


#Vecinos
Vecinos3 <- subset(conjunto, conjunto$Vecinos <= 3)
Vecinos4 <- subset(conjunto, conjunto$Vecinos  > 4)


#Diámetro
DBH.media <- subset(conjunto, conjunto$Diametro < mean(conjunto$Diametro))
DBH.16 <- subset(conjunto, conjunto$Diametro > 16)


#Especies
Especie <- subset(conjunto, conjunto$Especie == "C")
Especie.2 <- subset(conjunto, conjunto$Especie != "C")


DBH.17 <- subset(conjunto, conjunto$Diametro <= 16.9)
H.19 <- subset(conjunto, conjunto$Altura > 18.5)



#Histogramas
hist(conjunto$Altura, xlab = "Altura", ylab = "Frecuencia",
     main = "Grupos de altura",
     ylim = c (0,15),
     xlim = c (8,22))
hist(H.media$Altura, xlab = "Altura media", ylab = "Frecuencia",
     main = "Árboles con altura menor a la media",
     xlim = c (8,14),
     ylim = c (0,8))
