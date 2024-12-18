# Código preguntas 15 y 16
set.seed(42)
plantas
n <- 30
altura <- rnorm(n, mean = 170, sd =10)
peso <- 0.5*altura + rnorm(n, mean = 0, sd = 5)
summary(altura)
summary(n)
summary(peso)
shapiro.test(altura)
shapiro.test(peso)
shapiro.test(n)
shapiro.test(PlantGrowth$altura)
# No existen diferencias significativas

# Código preguntas 17 y 18
set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd = 10)
peso <- 0.5*altura + rnorm(n, mean = 0, sd = 5)
cor.test(altura, peso)
# La correlación es muy alta

plant
# Código preguntas 19 y 20
set.seed(25)
n <- 40
diam_arboles <- rnorm(n, mean = 20, sd = 5)
altura_arboles <- 1.5*diam_arboles + rnorm(n, mean = 0, sd = 3)

summary(PlantGrowth)

# Creación de data frame
datos <- data.frame(diam_arboles, altura_arboles)
cor.test(datos$diam_arboles, datos$altura_arboles)
dt.lm <- lm(datos$diam_arboles ~ datos$altura_arboles)
dt.lm

p
