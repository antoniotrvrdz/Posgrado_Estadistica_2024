prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1")
head(profepa)

mean(profepa$Inspección)
mean(profepa$Recorrido)
mean(profepa$Operativo)



#Datos de inspección
ins <- subset(profepa, profepa$Inspección >= mean(profepa$Inspección))
bajo <- subset(profepa, profepa$Inspección <= mean(profepa$Inspección))
cero <- subset(profepa, profepa$Inspección == 0)
todos <- subset (profepa, profepa$Inspección != 0)


#Datos de recorridos
rec <- subset(profepa, profepa$Recorrido >= mean(profepa$Recorrido))
recbajo <- subset(profepa, profepa$Recorrido <= mean(profepa$Recorrido))
reccero <- subset(profepa, profepa$Recorrido == 0)
rectodos <- subset(profepa, profepa$Recorrido != 16)
rectodos2 <- subset(profepa, profepa$Recorrido != 26)


#Datos de operativos
op <- subset(profepa, profepa$Operativo >= mean(profepa$Operativo))
opbajo <- subset(profepa, profepa$Operativo <= mean(profepa$Operativo))
opcero <- subset(profepa, profepa$Operativo == 0)
optodos <- subset(profepa, profepa$Operativo != 3)

#Prueba de Shapiro
shapiro.test(profepa$Recorrido)

#SÍ hay diferencias significativas en lo referente a los recorridos

shapiro.test(profepa$Inspección)
#SÍ hay diferencias significativas en lo referente a las inspecciones



