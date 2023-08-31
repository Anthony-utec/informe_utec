## -----------------------------------------------------------------------------
library(readr)
library(tidyr)
library(dplyr)
library(ggplot2)


## -----------------------------------------------------------------------------
r <- function(x){
  return(round(x, digits = 2))
}


## -----------------------------------------------------------------------------
DF <- read_csv("DatosPG1.csv")


## -----------------------------------------------------------------------------
DF <- select(DF, -`Marca temporal`)


## -----------------------------------------------------------------------------
summary(DF)
names(DF)


## -----------------------------------------------------------------------------
DF %>% rename(Ciclo = `Ciclo académico`, Actividad = `¿Qué actividad o deporte realizas?`, Dia = `¿Cuántos días de la semana entrena?`, Horas = `¿Cuántas horas a la semana entrenas? (Fuera de clases)`, Motivo = `Motivo por el que realizas actividad física`, `Horas de estudio` = `¿Cuántas horas a la semana estudias? (Fuera de clases)`, `Dias de estudio` = `¿Cuántos días de la semana estudias?(Clases virtuales o presenciales de la universidad)`, Entrena = `Días en los que generalmente entrena`, `Dias de entrenamiento` = `¿Entrenas los mismos días que tienes clases?`, `Entrenas clases` = `¿Entrenas antes o después de clases?`, Cansancio = `¿Te sientes cansado después de entrenar y haber tenido clases el mismo día?`, Satisfecho = `¿Te sientes satisfecho con tus resultados físicos y académicos?`, `Nota Alta SI` = `¿Cuál es la nota más alta de todos los cursos?(Nota global del curso)`, `Mas Baja SI` = `¿Cuál es la nota más baja de todos los cursos? (Nota global del curso)...17`, `Hacer deporte` = `¿Te gustaría realizar algún tipo de actividad física?`, `Mas Baja NO` = `¿Cuál es la nota más baja de todos los cursos? (Nota global del curso)...21`, `Sexo - Deporte` = `Indícanos tu sexo y si haces algún deporte u actividad física`, Promedio = `¿Cuál es tu promedio ponderado del ciclo anterior?`, Por = `¿Por qué?`) -> DF


## -----------------------------------------------------------------------------
DF <- slice(DF, -2)


## -----------------------------------------------------------------------------
DF <- arrange(DF, Ciclo)


## -----------------------------------------------------------------------------
DF %>% mutate(`Sexo - Deporte` = 
              ifelse(`Sexo - Deporte` == "Masculino", "M",
              ifelse(`Sexo - Deporte` == "Femenino", "F", 
              ifelse(`Sexo - Deporte` == "Femenino - No hago", "F - No",
              ifelse(`Sexo - Deporte` == "Femenino  - Sí hago", "F - Si",
              ifelse(`Sexo - Deporte` == "Masculino - No hago", "M - No",
              ifelse(`Sexo - Deporte` == "Masculino - Sí hago", "M - Si",`Sexo - Deporte`))))))) -> DF
DF %>% mutate(`Sexo - Deporte` = 
              ifelse(`Sexo - Deporte` == "Masculino", "M",
              ifelse(`Sexo - Deporte` == "Femenino", "F", 
              ifelse(`Sexo - Deporte` == "Femenino - No hago", "F - No",
              ifelse(`Sexo - Deporte` == "Femenino  - Sí hago", "F - Si",
              ifelse(`Sexo - Deporte` == "Masculino - No hago", "M - No",
              ifelse(`Sexo - Deporte` == "Masculino - Sí hago", "M - Si",`Sexo - Deporte`))))))) -> DFN1
DF %>% mutate(`Sexo - Deporte` = 
              ifelse(`Sexo - Deporte` == "Masculino", "M",
              ifelse(`Sexo - Deporte` == "Femenino", "F", 
              ifelse(`Sexo - Deporte` == "Femenino - No hago", "F - No",
              ifelse(`Sexo - Deporte` == "Femenino  - Sí hago", "F - Si",
              ifelse(`Sexo - Deporte` == "Masculino - No hago", "M - No",
              ifelse(`Sexo - Deporte` == "Masculino - Sí hago", "M - Si",`Sexo - Deporte`))))))) -> DFN2


## -----------------------------------------------------------------------------
DFN1 %>% mutate(`Sexo - Deporte` = 
              ifelse(`Sexo - Deporte` %in% c("M - No", "M - Si"), "M",
              ifelse(`Sexo - Deporte` %in% c("F - No", "F - Si"), "F", `Sexo - Deporte`))) -> DFN1


## -----------------------------------------------------------------------------
DFN2 %>% mutate(`Sexo - Deporte` = 
              ifelse(`Sexo - Deporte` %in% c("M - No", "F - No"), "No",
              ifelse(`Sexo - Deporte` %in% c("M - Si", "F - Si"), "Si", `Sexo - Deporte`))) -> DFN2


## -----------------------------------------------------------------------------
DFN2$`Sexo - Deporte` <- replace(DFN2$`Sexo - Deporte`, 33, "No")
DFN2$`Sexo - Deporte` <- replace(DFN2$`Sexo - Deporte`, 34, "Si")
DFN2$`Sexo - Deporte` <- replace(DFN2$`Sexo - Deporte`, 35, "Si")
DFN2$`Sexo - Deporte` <- replace(DFN2$`Sexo - Deporte`, 36, "Si")
DFN2$`Sexo - Deporte` <- replace(DFN2$`Sexo - Deporte`, 37, "Si")


## -----------------------------------------------------------------------------
DF <- select(DF, - `Sexo - Deporte`)
x2 <- 1:155
x1 <- 1:155
DF <- data.frame(DF,x1, x2)
DF$x1 <- DFN1$`Sexo - Deporte`
DF$x2 <- DFN2$`Sexo - Deporte`


## -----------------------------------------------------------------------------
DF <- DF %>% select(x2, everything())
DF <- DF %>% select(x1, everything())
DF <- DF %>% select(Carrera, everything())
DF <- DF %>% select(Ciclo, everything())
DF %>% rename(Sexo = x1, Deporte = x2) -> DF


## -----------------------------------------------------------------------------
DF %>% mutate(Horas.de.estudio = 
              ifelse(Horas.de.estudio == "De 1 a 3", seq(1, 3),
              ifelse(Horas.de.estudio == "De 4 a 6", seq(4, 6),
              ifelse(Horas.de.estudio == "De 7 a 9", seq(7, 9),
              ifelse(Horas.de.estudio == "De 10 a más", seq(10, 15),
              ifelse(Horas.de.estudio== "15 horas", 15, Horas.de.estudio)))))) -> DF

h <- na.omit(DF$Horas.de.estudio)

z <- as.numeric(h)


## -----------------------------------------------------------------------------
DF %>% mutate(Actividad = 
              ifelse(Actividad %in% c("Fútbol","Futbol","Volley", "Voley", "Basquet"), "Pelota",
              ifelse(Actividad == "Deporte de contacto(Ej: Judo, Karate, Taekwondo, etc)", "Contacto",
              ifelse(Actividad == "Baile", "Danza",
              ifelse(Actividad %in% c("Natación y marinera", "Surf y skate", "Ejercicios en casa y salir a correr."), "Dos deportes",
              ifelse(Actividad %in% c("Gimnasio", "Calistenia","Atletismo","Ciclismo","Crossfit", "Natación"), "Variado",
              ifelse(Actividad == "Ejercicios en casa sin equipo", "Casa",
              ifelse(Actividad %in% c("Skate", "Correr","Yoga"), "No deporte", Actividad)))))))) -> DF

DF %>% mutate(Motivo =
                ifelse(Motivo== "Beneficio físico y mental", "Beneficio",
                       ifelse(Motivo == "Recomendación de la psicóloga", "Recomendacion",
                              ifelse(Motivo == "Meta personal de estar físicamente saludable", "Meta", 
                                     ifelse(Motivo == "Para quitarme el estrés", "Estres", Motivo))))) -> DF


## -----------------------------------------------------------------------------
DF %>% mutate(`Mas.Baja.SI` = 
              ifelse(`Mas.Baja.SI` == 12.5, round(12.5, 0),
              ifelse(`Mas.Baja.SI` == 9.6, round(9.6, 0), `Mas.Baja.SI`))) -> DF

DF %>% mutate(Horas =
                ifelse(Horas == "1:30", 2,
                ifelse(Horas == "4:30", 5, Horas))) -> DF

a <- na.omit(DF$Horas)

l <- as.numeric(a)


## -----------------------------------------------------------------------------
DF %>% summarise(media = r(mean(z)),
            mediana = median(z),
            desviacion = r(sd(z)))


## -----------------------------------------------------------------------------
df <- data.frame(z)

ggplot(df, aes(x = z)) + 
  geom_histogram(binwidth = 1, fill="black", color="white") +
  geom_vline(aes(xintercept = mean(z), color = "Media"), linetype = "dashed") +
  geom_vline(aes(xintercept = median(z), color = "Mediana"), linetype = "dashed") +
  labs(title = "Distribución de la media y mediana", x = "Datos", y = "Frecuencia", color = "Leyenda")


## -----------------------------------------------------------------------------
datos <- data.frame(v = rnorm(155, mean = 6.25, sd = 3.84))

ggplot(datos, aes(x = v)) +
  geom_histogram(binwidth = 1, color = "white", fill = "black") +
  labs(title = "Disperión de datos de desviación estándar y media",
       x = "Valor", y = "Frecuencia")


## -----------------------------------------------------------------------------
r(prop.table(table(DF$Deporte)) * 100)


## -----------------------------------------------------------------------------
mosaicplot(DF$Sexo ~ DF$Deporte, main = "Sexo vs Deporte", xlab = "Sexo", ylab = "Deporte")


## -----------------------------------------------------------------------------
DF %>% summarise(media = r(mean(l)),
            mediana = median(l))

## -----------------------------------------------------------------------------
df1 <- data.frame(l)

ggplot(df1, aes(x = l)) + 
  geom_histogram(binwidth = 1, fill="black", color="white") +
  geom_vline(aes(xintercept = mean(l), color = "Media"), linetype = "dashed") +
  geom_vline(aes(xintercept = median(l), color = "Mediana"), linetype = "dashed") +
  labs(title = "Distribución de la media y mediana", x = "Datos", y = "Frecuencia", color = "Leyenda")


## -----------------------------------------------------------------------------
ggplot(DF, aes(x = Dia, fill = Actividad)) + geom_bar(position="dodge") + labs(title = "Dias vs Deporte")


## -----------------------------------------------------------------------------
# Convertir la columna al tipo numérico
DF$Promedio <- as.numeric(DF$Promedio)

# Filtrar el tercio superior de la variable "Promedio"
tercio_superior <- quantile(DF$Promedio, probs = 2/3, na.rm = T)

# Filtrar la "Actividad" más frecuente que no sea NA
actividad_frecuente <- names(sort(table(DF$Actividad, useNA = "no"), decreasing = T))[1]

# Crear un nuevo dataframe con las observaciones del tercio superior y la actividad frecuente
nuevo_df <- DF[DF$Promedio >= tercio_superior,]

# Filtrar las observaciones con actividad no NA en nuevo_df
actividades <- na.omit(nuevo_df$Actividad)

# Obtener las tres actividades más frecuentes
actividades_frecuentes <- names(sort(table(actividades), decreasing = TRUE))[1:3]

# Filtrar nuevo_df solo para las tres actividades más frecuentes
nuevo_df_frecuentes <- nuevo_df[nuevo_df$Actividad %in% actividades_frecuentes, ]

# Calcular la frecuencia de las tres actividades más frecuentes
frecuencia_actividades <- table(nuevo_df_frecuentes$Actividad)

# Crear la gráfica de barras
barplot(frecuencia_actividades, main = "Frecuencia de las 3 actividades más frecuentes",
        xlab = "Actividad", ylab = "Frecuencia")



## -----------------------------------------------------------------------------
# Filtrar los valores NA en la variable "Horas" del dataframe DF_clean
DF_clean_horas <- DF[complete.cases(DF$Horas), ]

# Gráfico de barras: Sexo vs. Horas (sin valores NA en Horas)
ggplot(DF_clean_horas, aes(x = Horas, fill = Sexo)) +
  geom_bar(position = "dodge") +
  labs(title = "Sexo vs. Horas")

# Filtrar los valores NA en la variable "Motivo" del dataframe DF_clean
DF_clean_motivo <- DF[complete.cases(DF$Motivo), ]

# Gráfico de barras: Sexo vs. Motivo (sin valores NA en Motivo)
ggplot(DF_clean_motivo, aes(x = Motivo, fill = Sexo)) +
  geom_bar(position = "dodge") +
  labs(title = "Sexo vs. Motivo")

