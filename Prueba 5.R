head(vivero)
t.test(vivero$IE)
boxplot(vivero$IE ~ vivero$Tratamiento)

# Histograma
hist(vivero$IE)

# Prueba de normalidad
shapiro.test(vivero$IE)

# Sí hay normalidad en el estudio, pues dio 0.1777

# Prueba de homogeneidad

bartlett.test(vivero$IE ~ vivero$Tratamiento)

# Sí hay homogeneidad

# Correlación
cor.test(vivero$IE, vivero$planta)

# Sí hay correlación

vm.lm <- lm(vivero$IE ~ vivero$Tratamiento)
vm.lm
summary(vm.lm)

# Sacar plot
plot(vivero$IE, vivero$planta)
abline()