# Análisis de varianza

library(repmis)
localidades <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")

head(localidades)
mean(localidades$EDAD)
mean(localidades$DAP)

dmo <- subset(localidades, localidades$DAP <= mean(localidades$DAP))
dmo.2 <- subset(localidades, localidades$DAP >= mean(localidades$DAP))
dmo.3 <- subset(localidades, localidades$DAP > mean(localidades$DAP))
dmo.4 <- subset(localidades, localidades$DAP < mean(localidades$DAP))
dmo.5 <- subset(localidades, localidades$DAP != 10.1)


tapply(localidades$DAP, localidades$Paraje, mean)
tapply(localidades$DAP, localidades$Paraje, var)
tapply(localidades$EDAD, localidades$Paraje, mean)
tapply(localidades$EDAD, localidades$Paraje, var)

#Prueba de Shapiro
shapiro.test(localidades$DAP)
shapiro.test(localidades$EDAD)

#Pruebas de varianza

#Bartlett
bartlett.test(localidades$DAP ~ localidades$Paraje)
bartlett.test(localidades$EDAD ~ localidades$Paraje)
#ANOVA
aov(localidades$DAP ~ localidades$Paraje)
dap_t = aov(localidades$DAP ~ localidades$Paraje)
summary(dap_t)


#Gráfica de caja (boxplot)
boxplot(localidades$DAP ~ localidades$Paraje)
boxplot(localidades$EDAD ~ localidades$Paraje)

g
summary(localidades)
