# Ejercicio datos de madera MET


# Importar datos

url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)
# Establecer la hipótesis de partida
# H0: No existen diferencias en la media del peso entre ambas especies
# Barreta y gavia
# H1: Sí existen diferencias en la media del peso entre ambas especies
# Barreta y gavia

# Representación gráfica de la variable y sus niveles de factor
boxplot(madera$Peso_g ~ madera$Especie, 
        xlab = "Niveles de factor", 
        ylab = "Peso (gr)",
        col = "green")


# Estadísticas descriptivas de la variable en común (peso_g)
tapply(madera$Peso_g, madera$Peso_g, mean)
tapply(madera$Peso_g, madera$Peso_g, var)
tapply(madera$Peso_g, madera$Especie, mean)
tapply(madera$Peso_g, madera$Especie, var)



# La varianza del peso de la especie Gavia es 7 veces mayor que
# La varianza del peso observado en la barreta



#¿Cuántos niveles de factor existen?
# Existen  dos niveles de factor "Especies: Barreta y Gavia"


#Aplicar la prueba de t, así como revisar si los supuestos 
shapiro.test(madera$Peso_g)
bartlett.test(madera$Peso_g ~ madera$Especie)
madera$peso_t <- log10(madera$Peso_g + 1)
tapply(madera$peso_t, madera$Especie, var)
boxplot(madera$peso_t ~ madera$Especie)
t.test(madera$Peso_g ~ madera$Especie, var.equal = F)


#Aceptar H0 o H1
# Se acepta la H1: las diferencias en el peso son significativas entre las especies




