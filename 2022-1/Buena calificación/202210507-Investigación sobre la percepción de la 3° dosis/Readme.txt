
// Para instalar paquetes para el proyecto

lista.paquetes <- c("readr", "dplyr","corrplot","PerformanceAnalytics")
nuevos.paquetes <- lista.paquetes[!(lista.paquetes %in% installed.packages()[,"Package"])] 
if(length(nuevos.paquetes)) install.packages(nuevos.paquetes)

install(fitdist)