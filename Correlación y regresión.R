# Correlación de datos

summary
url <- "https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1"


edad <- read.csv(url, head = T)
View(edad)


plot(edad$DAP, edad$EDAD, pch = 7, col = "red",
     xlab = "Diámetro (cm)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))

plot(edad$EDAD, edad$DAP, pch = 7, col = "red"

cor.test(edad$DAP, edad$EDAD)

# Sí existe correlación


ed.lm <- lm(edad$EDAD ~ edad$DAP)
# Sólo obtener el intercepto (alfa) y beta

ed.lm
# Para obtener la significancia aplico summary
summary(ed.lm)


abline(ed.lm)
text(20, 120, "y = -8.4 * 2.43(x)")


ed.lm$coefficients
ed.lm$residuals
edad$res <- ed.lm$residuals
edad$edprim <- ed.lm$fitted.values
edad$com.res <- edad$EDAD - edad$edprim


# Suma de residuales
sum(edad$res)
sum(edad$res^2)/58

# Estimar la edad primapara los valores de DAP:15, 30, 45, 47
valores <- c(15, 30, 45, 47)
prima <- -8.4 + 2.4*(valores)
prima
