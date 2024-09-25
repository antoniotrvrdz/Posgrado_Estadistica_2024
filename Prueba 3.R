head(inventario)
summary(inventario)

# Obtención de medias
mean(inventario$Diametro)
mean(inventario$Altura)
mean(inventario$Vecinos)

# Uso de tapply (medias)
tapply(inventario$Diametro, inventario$Especie, mean)
tapply(inventario$Altura, inventario$Especie, mean)
tapply(inventario$Diametro, inventario$Clase, mean)
tapply(inventario$Altura, inventario$Clase, mean)

# Uso de tapply (varianza)
tapply(inventario$Diametro, inventario$Especie, var)
tapply(inventario$Altura, inventario$Especie, var)
tapply(inventario$Diametro, inventario$Clase, var)
tapply(inventario$Altura, inventario$Clase, var)

# Uso de restricciones
dmtro <- subset(inventario, inventario$Diametro <= mean(inventario$Diametro))
dmtro.2 <- subset(inventario, inventario$Diametro >= mean(inventario$Diametro))
dmtro.3 <- subset(inventario, inventario$Diametro != 18.5)
dmtro.4 <- subset(inventario, inventario$Diametro > 20.4)
alt <- subset(inventario, inventario$Altura < mean(inventario$Altura))
alt.2 <- subset(inventario, inventario$Altura == 13.20)
alt.3 <- subset(inventario, inventario$Altura != 13.2)
