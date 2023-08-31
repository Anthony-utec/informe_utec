
<!-- rnb-text-begin -->

---
title: "Estadisticas sobre los aeropuertos"
author: "Grupo 2, Sección 9"
date: "07 July, 2023"
editor: visual
format: html
output:
  html_notebook:
    toc: yes
    toc_float:
      collapsed: no
      smooth_scroll: yes
    number_sections: no
    toc_depth: 2

  html_document:
    toc: yes
    df_print: paged
---

# **Alumnos del grupo:**

| Alumno                            | **Código**    | **Correo**                     | **Porcentaje de Trabajo** |
|---------------------|----------------|-------------------|----------------|
|                                   |               |                                |                           |
| **Milton Esteban Robles Reyes**   | **202210416** | **milton.robles\@utec.edu.pe** |                           |
| **Camilo Ernesto Soto Cristóbal** | **202210484** | **camilo.soto\@utec.edu.pe**   |                           |
| **Karen**                         | **201610002** |                                |                           |
|                                   |               |                                |                           |

# **Introducción**

## Tema

Análisis mensual de la relación entre número de pasajeros e ingresos totales por aeropuerto del Perú (2020-2022).

## Relevancia

Nuestro proyecto analiza el impacto de la pandemia en el transporte aéreo y sus ingresos en diferentes aeropuertos. Buscamos información valiosa para la toma de decisiones en el sector turístico y la recuperación económica en el Perú.

# **Objetivo**

Evaluar los factores que influyen en los ingresos totales (US\$) por mes y año en cada aeropuerto en el Perú.

## Objetivo Secundarios

-   Comparar los ingresos totales con los rubros en los aeropuertos del Perú

-   Comparar los ingresos totales con el número de pasajeros en los aeropuertos del Perú evaluando su influencia

-   Determinar el aeropuerto con mayor afluencia de pasajeros y el de mayor ingresos del Perú

-   Comparar los ingresos totales (US\$) durante la pandemia y pos-pandemia en el Perú

## Tabla de variables

# Librerías


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


# Base de datos

Extraída del OSITRAN (ver referencias), la base de datos cuenta con el tráfico de pasajeros en aeropuertos del Perú divididos por mes y año y los ingresos totales de cada aeropuerto así como el rubro de donde se obtiene dicho importe.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->



<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


# **Datos**

## Tabla de variables

Año: Variable categórica que indica el año de la recolección de información.

Mes: Variable categórica que indica el mes de la recolección de información.

Aeropuerto: Variable cualitativa que indica el aeropuerto del cual se recolecta la información

Infraestructura: Variable cualitativa que indica a que entidad pertenece la infraestructura del aeropuerto del cual se recolecta la información.

IT: Variable cuantitativa que representa los ingresos totales en dolares que ha registrado el aeropuerto

TUUAN: Variable cuantitativa que representa el ingreso en dolares que ha generado la TARIFA UNIFICADA POR USO DE AEROPUERTO de tipo nacional.

TUUAN: Variable cuantitativa que representa el ingreso en dolares que ha generado la TARIFA UNIFICADA POR USO DE AEROPUERTO de tipo internacional.

NPI: Variable cuantitativa que representa el numero de pasajeros internacionales que ha registrado el aeropuerto

NPN: Variable cuantitativa que representa el numero de pasajeros nacionales que ha registrado el aeropuerto

IRAD_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por aterrizaje y despegue.

IRAD: Variable cuantitativa que representa el ingreso en dolares del aeropuerto por aterrizaje y despegue.

AADM_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por el alquiler de áreas de mantenimiento.

AADM: Variable cuantitativa que representa el ingreso en dolares por el alquiler de áreas de mantenimiento.

ADEP_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por el alquiler de espacios de publicidad.

ADEP: Variable cuantitativa que representa el ingreso en dolares por el alquiler de espacios de publicidad.

ALC_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por el alquiler de locales comerciales.

ALC: Variable cuantitativa que representa el ingreso en dolares por el alquiler de locales comerciales.

AOOA_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por el alquiler de oficinas de operaciones de aerolíneas.

AOOA: Variable cuantitativa que representa el ingreso en dolares por el alquiler de oficinas de operaciones de aerolíneas.

ADAH_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por el alquiler de almacenes/hangares.

ADAH: Variable cuantitativa que representa el ingreso en dolares por el alquiler de almacenes/hangares.

AEHE_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por la atención en horas extras.

AEHE: Variable cuantitativa que representa el ingreso en dolares por la atención en horas extras.

IREA_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por el estacionamiento de aeronaves.

IREA: Variable cuantitativa que representa el ingreso en dolares por el estacionamiento de aeronaves.

IRIF_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por reembolso en ingresos financieros.

IRIF: Variable cuantitativa que representa el ingreso en dolares por reembolso en ingresos financieros.

IRR_VER: Variable categórica que representa si el aeropuerto obtiene ingresos por reembolsos.

IRR: Variable cuantitativa que representa el ingreso en dolares por reembolsos.

NP: Variable cuantitativa que representa el numero de pasajeros totales que ha registrado el aeropuerto.

# Creación del Dataframe

Creando el DataFrame a partir de la variable Ingresos Totales (IT)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuSVRTIDwtIGZpbHRlcihJVFMsIEHDsW8gJWluJSBjKFwiMjAyMFwiLFwiMjAyMVwiLFwiMjAyMlwiKSlcbklUUyAlPiUgZ3JvdXBfYnkoQcOxbyxNZXMsQWVyb3B1ZXJ0byxJbmZyYWVzdHJ1Y3R1cmEpICU+JSBzdW1tYXJpc2UoSVQgPSBzdW0oYEltcG9ydGUgcG9yIFNlcnZpY2lvc2ApKSAtPiBERlxuYGBgIn0= -->

```r
ITS <- filter(ITS, Año %in% c("2020","2021","2022"))
ITS %>% group_by(Año,Mes,Aeropuerto,Infraestructura) %>% summarise(IT = sum(`Importe por Servicios`)) -> DF
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Numero de Pasajeros Internacionales (NPI)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuUEkgPC0gZmlsdGVyKFRQLCBgVGlwbyBkZSBQYXNhamVyb2AgPT0gXCJJTlRFUk5BQ0lPTkFMXCIpXG5QSSA8LSBmaWx0ZXIoUEksQcOxbyAlaW4lIGMoMjAyMCwyMDIxLDIwMjIpKVxuUEkgPC0gc2VsZWN0KFBJLCAtUGVyaW9kbylcblBJIDwtIHNlbGVjdChQSSwgLWBUaXBvIGRlIFBhc2FqZXJvYClcbmBgYCJ9 -->

```r
PI <- filter(TP, `Tipo de Pasajero` == "INTERNACIONAL")
PI <- filter(PI,Año %in% c(2020,2021,2022))
PI <- select(PI, -Periodo)
PI <- select(PI, -`Tipo de Pasajero`)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsUEksIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGwgPSBUUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIk5QSVwiID0gXCJOcm8gUGFzYWplcm9zXCIpXG5gYGAifQ== -->

```r
DF <- merge(DF,PI, by = c("Año","Mes","Aeropuerto","Infraestructura"), all = TRUE)
DF <- rename(DF, "NPI" = "Nro Pasajeros")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkTlBJW2lzLm5hKERGJE5QSSldIDwtIDBcblxuI1JlZW1wbGF6byBkZSBOL0EncyBwb3IgMFxuYGBgIn0= -->

```r
DF$NPI[is.na(DF$NPI)] <- 0

#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Numero de Pasajeros Nacionales (NPN)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuUE4gPC0gZmlsdGVyKFRQLCBgVGlwbyBkZSBQYXNhamVyb2AgPT0gXCJOQUNJT05BTFwiKVxuUE4gPC0gZmlsdGVyKFBOLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcblBOIDwtIHNlbGVjdChQTiwgLVBlcmlvZG8pXG5QTiA8LSBzZWxlY3QoUE4sIC1gVGlwbyBkZSBQYXNhamVyb2ApXG5gYGAifQ== -->

```r
PN <- filter(TP, `Tipo de Pasajero` == "NACIONAL")
PN <- filter(PN,Año %in% c(2020,2021,2022))
PN <- select(PN, -Periodo)
PN <- select(PN, -`Tipo de Pasajero`)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsUE4sIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJOUE5cIiA9IFwiTnJvIFBhc2FqZXJvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF,PN, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "NPN" = "Nro Pasajeros")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkTlBOW2lzLm5hKERGJE5QTildIDwtIDBcblxuI1JlZW1wbGF6byBkZSBOL0EncyBwb3IgMFxuYGBgIn0= -->

```r
DF$NPN[is.na(DF$NPN)] <- 0

#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro T U U A NACIONAL (TUUAN)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuVFVVQU4gPC0gZmlsdGVyKElUUywgYFJ1YnJvIEluZ3Jlc29gID09IFwiVCBVIFUgQSBOQUNJT05BTFwiKVxuVFVVQU4gPC0gZmlsdGVyKFRVVUFOLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcblRVVUFOIDwtIHNlbGVjdChUVVVBTiwgLSdUaXBvIEluZ3Jlc28nKVxuVFVVQU4gPC0gc2VsZWN0KFRVVUFOLCAtJ1J1YnJvIEluZ3Jlc28nKVxuVFVVQU4gPC0gc2VsZWN0KFRVVUFOLCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
TUUAN <- filter(ITS, `Rubro Ingreso` == "T U U A NACIONAL")
TUUAN <- filter(TUUAN,Año %in% c(2020,2021,2022))
TUUAN <- select(TUUAN, -'Tipo Ingreso')
TUUAN <- select(TUUAN, -'Rubro Ingreso')
TUUAN <- select(TUUAN, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzXG5ERiA8LSBtZXJnZShERiwgVFVVQU4sIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJUVVVBTl9WRVJcIiA9IFwiSW1wb3J0ZSBwb3IgU2VydmljaW9zXCIpXG5gYGAifQ== -->

```r
#Creación de variable de verificación para reemplazo de N/A's
DF <- merge(DF, TUUAN, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "TUUAN_VER" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIFRVVUFOLCBieSA9IGMoXCJBw7FvXCIsXCJNZXNcIixcIkFlcm9wdWVydG9cIixcIkluZnJhZXN0cnVjdHVyYVwiKSwgYWxsPVRSVUUpXG5ERiA8LSByZW5hbWUoREYsIFwiVFVVQU5cIiA9IFwiSW1wb3J0ZSBwb3IgU2VydmljaW9zXCIpXG5gYGAifQ== -->

```r
DF <- merge(DF, TUUAN, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "TUUAN" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkVFVVQU5fVkVSW2lzLm5hKERGJFRVVUFOX1ZFUildIDwtIDBcbkRGJFRVVUFOX1ZFUltERiRUVVVBTl9WRVIgIT0gMF0gPC0gXCJTaVwiXG5ERiRUVVVBTl9WRVJbREYkVFVVQU5fVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJFRVVUFOW2lzLm5hKERGJFRVVUFOKV0gPC0gMFxuI1JlZW1wbGF6byBkZSBOL0EncyBwb3IgMFxuYGBgIn0= -->

```r
DF$TUUAN_VER[is.na(DF$TUUAN_VER)] <- 0
DF$TUUAN_VER[DF$TUUAN_VER != 0] <- "Si"
DF$TUUAN_VER[DF$TUUAN_VER == "0"] <- "No"
DF$TUUAN[is.na(DF$TUUAN)] <- 0
#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro T U U A INTERNACIONAL (TUUAI)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuVFVVQUkgPC0gZmlsdGVyKElUUywgYFJ1YnJvIEluZ3Jlc29gID09IFwiVCBVIFUgQSBJTlRFUk5BQ0lPTkFMXCIpXG5UVVVBSSA8LSBmaWx0ZXIoVFVVQUksQcOxbyAlaW4lIGMoMjAyMCwyMDIxLDIwMjIpKVxuVFVVQUkgPC0gc2VsZWN0KFRVVUFJLCAtJ1RpcG8gSW5ncmVzbycpXG5UVVVBSSA8LSBzZWxlY3QoVFVVQUksIC0nUnVicm8gSW5ncmVzbycpXG5UVVVBSSA8LSBzZWxlY3QoVFVVQUksIC0nUGVyaW9kbycpXG5gYGAifQ== -->

```r
TUUAI <- filter(ITS, `Rubro Ingreso` == "T U U A INTERNACIONAL")
TUUAI <- filter(TUUAI,Año %in% c(2020,2021,2022))
TUUAI <- select(TUUAI, -'Tipo Ingreso')
TUUAI <- select(TUUAI, -'Rubro Ingreso')
TUUAI <- select(TUUAI, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIFRVVUFJLCBieSA9IGMoXCJBw7FvXCIsXCJNZXNcIixcIkFlcm9wdWVydG9cIixcIkluZnJhZXN0cnVjdHVyYVwiKSwgYWxsPVRSVUUpXG5ERiA8LSByZW5hbWUoREYsIFwiVFVVQUlfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKSNDcmVhY2nDs24gZGUgdmFyaWFibGUgZGUgdmVyaWZpY2FjacOzbiBwYXJhIHJlZW1wbGF6byBkZSBOL0Enc1xuYGBgIn0= -->

```r
DF <- merge(DF, TUUAI, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "TUUAI_VER" = "Importe por Servicios")#Creación de variable de verificación para reemplazo de N/A's
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIFRVVUFJLCBieSA9IGMoXCJBw7FvXCIsXCJNZXNcIixcIkFlcm9wdWVydG9cIixcIkluZnJhZXN0cnVjdHVyYVwiKSwgYWxsPVRSVUUpXG5ERiA8LSByZW5hbWUoREYsIFwiVFVVQUlcIiA9IFwiSW1wb3J0ZSBwb3IgU2VydmljaW9zXCIpXG5gYGAifQ== -->

```r
DF <- merge(DF, TUUAI, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "TUUAI" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiRUVVVBSV9WRVJbaXMubmEoREYkVFVVQUlfVkVSKV0gPC0gMFxuREYkVFVVQUlfVkVSW0RGJFRVVUFJX1ZFUiAhPSAwXSA8LSBcIlNpXCJcbkRGJFRVVUFJX1ZFUltERiRUVVVBSV9WRVIgPT0gXCIwXCJdIDwtIFwiTm9cIlxuREYkVFVVQUlbaXMubmEoREYkVFVVQUkpXSA8LSAwXG4jUmVlbXBsYXpvIGRlIE4vQSdzIHBvciAwXG5gYGAifQ== -->

```r

DF$TUUAI_VER[is.na(DF$TUUAI_VER)] <- 0
DF$TUUAI_VER[DF$TUUAI_VER != 0] <- "Si"
DF$TUUAI_VER[DF$TUUAI_VER == "0"] <- "No"
DF$TUUAI[is.na(DF$TUUAI)] <- 0
#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro ATERRIZAJE Y DESPEGUE (IRAD)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuSVJBRCA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJBVEVSUklaQUpFIFkgREVTUEVHVUVcIilcbklSQUQgPC0gZmlsdGVyKElSQUQsQcOxbyAlaW4lIGMoMjAyMCwyMDIxLDIwMjIpKVxuSVJBRCA8LSBzZWxlY3QoSVJBRCwgLSdUaXBvIEluZ3Jlc28nKVxuSVJBRCA8LSBzZWxlY3QoSVJBRCwgLSdSdWJybyBJbmdyZXNvJylcbklSQUQgPC0gc2VsZWN0KElSQUQsIC0nUGVyaW9kbycpXG5gYGAifQ== -->

```r
IRAD <- filter(ITS, `Rubro Ingreso` == "ATERRIZAJE Y DESPEGUE")
IRAD <- filter(IRAD,Año %in% c(2020,2021,2022))
IRAD <- select(IRAD, -'Tipo Ingreso')
IRAD <- select(IRAD, -'Rubro Ingreso')
IRAD <- select(IRAD, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgSVJBRCwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIklSQURfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzXG5gYGAifQ== -->

```r

DF <- merge(DF, IRAD, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IRAD_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIElSQUQsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJJUkFEXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, IRAD, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IRAD" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiRJUkFEX1ZFUltpcy5uYShERiRJUkFEX1ZFUildIDwtIDBcbkRGJElSQURfVkVSW0RGJElSQURfVkVSICE9IDBdIDwtIFwiU2lcIlxuREYkSVJBRF9WRVJbREYkSVJBRF9WRVIgPT0gXCIwXCJdIDwtIFwiTm9cIlxuREYkSVJBRFtpcy5uYShERiRJUkFEKV0gPC0gMFxuI1JlZW1wbGF6byBkZSBOL0EncyBwb3IgMFxuYGBgIn0= -->

```r

DF$IRAD_VER[is.na(DF$IRAD_VER)] <- 0
DF$IRAD_VER[DF$IRAD_VER != 0] <- "Si"
DF$IRAD_VER[DF$IRAD_VER == "0"] <- "No"
DF$IRAD[is.na(DF$IRAD)] <- 0
#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro ALQUILER AREAS DE MANTENIMIENTO (AADM)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuQUFETSA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJBTFFVSUxFUiBBUkVBUyBERSBNQU5URU5JTUlFTlRPXCIpXG5BQURNIDwtIGZpbHRlcihBQURNLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbkFBRE0gPC0gc2VsZWN0KEFBRE0sIC0nVGlwbyBJbmdyZXNvJylcbkFBRE0gPC0gc2VsZWN0KEFBRE0sIC0nUnVicm8gSW5ncmVzbycpXG5BQURNIDwtIHNlbGVjdChBQURNLCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
AADM <- filter(ITS, `Rubro Ingreso` == "ALQUILER AREAS DE MANTENIMIENTO")
AADM <- filter(AADM,Año %in% c(2020,2021,2022))
AADM <- select(AADM, -'Tipo Ingreso')
AADM <- select(AADM, -'Rubro Ingreso')
AADM <- select(AADM, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgQUFETSwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIkFBRE1fVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzXG5gYGAifQ== -->

```r

DF <- merge(DF, AADM, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "AADM_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIEFBRE0sIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJBQURNXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, AADM, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "AADM" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiRBQURNX1ZFUltpcy5uYShERiRBQURNX1ZFUildIDwtIDBcbkRGJEFBRE1fVkVSW0RGJEFBRE1fVkVSICE9IDBdIDwtIFwiU2lcIlxuREYkQUFETV9WRVJbREYkQUFETV9WRVIgPT0gXCIwXCJdIDwtIFwiTm9cIlxuREYkQUFETVtpcy5uYShERiRBQURNKV0gPC0gMFxuI1JlZW1wbGF6byBkZSBOL0EncyBwb3IgMFxuYGBgIn0= -->

```r

DF$AADM_VER[is.na(DF$AADM_VER)] <- 0
DF$AADM_VER[DF$AADM_VER != 0] <- "Si"
DF$AADM_VER[DF$AADM_VER == "0"] <- "No"
DF$AADM[is.na(DF$AADM)] <- 0
#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso ALQUILER DE ESPACIOS PUBLICITARIOS (ADEP)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuQURFUCA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJBTFFVSUxFUiBERSBFU1BBQ0lPUyBQVUJMSUNJVEFSSU9TXCIpXG5BREVQIDwtIGZpbHRlcihBREVQLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbkFERVAgPC0gc2VsZWN0KEFERVAsIC0nVGlwbyBJbmdyZXNvJylcbkFERVAgPC0gc2VsZWN0KEFERVAsIC0nUnVicm8gSW5ncmVzbycpXG5BREVQIDwtIHNlbGVjdChBREVQLCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
ADEP <- filter(ITS, `Rubro Ingreso` == "ALQUILER DE ESPACIOS PUBLICITARIOS")
ADEP <- filter(ADEP,Año %in% c(2020,2021,2022))
ADEP <- select(ADEP, -'Tipo Ingreso')
ADEP <- select(ADEP, -'Rubro Ingreso')
ADEP <- select(ADEP, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgQURFUCwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIkFERVBfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzXG5gYGAifQ== -->

```r

DF <- merge(DF, ADEP, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "ADEP_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIEFERVAsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJBREVQXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, ADEP, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "ADEP" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiRBREVQX1ZFUltpcy5uYShERiRBREVQX1ZFUildIDwtIDBcbkRGJEFERVBfVkVSW0RGJEFERVBfVkVSICE9IDBdIDwtIFwiU2lcIlxuREYkQURFUF9WRVJbREYkQURFUF9WRVIgPT0gXCIwXCJdIDwtIFwiTm9cIlxuREYkQURFUFtpcy5uYShERiRBREVQKV0gPC0gMFxuI1JlZW1wbGF6byBkZSBOL0EncyBwb3IgMFxuYGBgIn0= -->

```r

DF$ADEP_VER[is.na(DF$ADEP_VER)] <- 0
DF$ADEP_VER[DF$ADEP_VER != 0] <- "Si"
DF$ADEP_VER[DF$ADEP_VER == "0"] <- "No"
DF$ADEP[is.na(DF$ADEP)] <- 0
#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso ALQUILER LOCALES COMERCIALES (ALC)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuQUxDIDwtIGZpbHRlcihJVFMsIGBSdWJybyBJbmdyZXNvYCA9PSBcIkFMUVVJTEVSIExPQ0FMRVMgQ09NRVJDSUFMRVNcIilcbkFMQyA8LSBmaWx0ZXIoQUxDLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbkFMQyA8LSBzZWxlY3QoQUxDLCAtJ1RpcG8gSW5ncmVzbycpXG5BTEMgPC0gc2VsZWN0KEFMQywgLSdSdWJybyBJbmdyZXNvJylcbkFMQyA8LSBzZWxlY3QoQUxDLCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
ALC <- filter(ITS, `Rubro Ingreso` == "ALQUILER LOCALES COMERCIALES")
ALC <- filter(ALC,Año %in% c(2020,2021,2022))
ALC <- select(ALC, -'Tipo Ingreso')
ALC <- select(ALC, -'Rubro Ingreso')
ALC <- select(ALC, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgQUxDLCBieSA9IGMoXCJBw7FvXCIsXCJNZXNcIixcIkFlcm9wdWVydG9cIixcIkluZnJhZXN0cnVjdHVyYVwiKSwgYWxsPVRSVUUpXG5ERiA8LSByZW5hbWUoREYsIFwiQUxDX1ZFUlwiID0gXCJJbXBvcnRlIHBvciBTZXJ2aWNpb3NcIilcbiNDcmVhY2nDs24gZGUgdmFyaWFibGUgZGUgdmVyaWZpY2FjacOzbiBwYXJhIHJlZW1wbGF6byBkZSBOL0EncyBcbmBgYCJ9 -->

```r

DF <- merge(DF, ALC, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "ALC_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIEFMQywgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIkFMQ1wiID0gXCJJbXBvcnRlIHBvciBTZXJ2aWNpb3NcIilcbmBgYCJ9 -->

```r
DF <- merge(DF, ALC, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "ALC" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiRBTENfVkVSW2lzLm5hKERGJEFMQ19WRVIpXSA8LSAwXG5ERiRBTENfVkVSW0RGJEFMQ19WRVIgIT0gMF0gPC0gXCJTaVwiXG5ERiRBTENfVkVSW0RGJEFMQ19WRVIgPT0gXCIwXCJdIDwtIFwiTm9cIlxuREYkQUxDW2lzLm5hKERGJEFMQyldIDwtIDBcbiNSZWVtcGxhem8gZGUgTi9BJ3MgcG9yIDBcbmBgYCJ9 -->

```r

DF$ALC_VER[is.na(DF$ALC_VER)] <- 0
DF$ALC_VER[DF$ALC_VER != 0] <- "Si"
DF$ALC_VER[DF$ALC_VER == "0"] <- "No"
DF$ALC[is.na(DF$ALC)] <- 0
#Reemplazo de N/A's por 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro ALQUILER OFICINAS OPERACIONES AEROLÍNEAS (AOOA)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuQU9PQSA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJBTFFVSUxFUiBPRklDSU5BUyBPUEVSQUNJT05FUyBBRVJPTMONTkVBU1wiKVxuQU9PQSA8LSBmaWx0ZXIoQU9PQSxBw7FvICVpbiUgYygyMDIwLDIwMjEsMjAyMikpXG5BT09BIDwtIHNlbGVjdChBT09BLCAtJ1RpcG8gSW5ncmVzbycpXG5BT09BIDwtIHNlbGVjdChBT09BLCAtJ1J1YnJvIEluZ3Jlc28nKVxuQU9PQSA8LSBzZWxlY3QoQU9PQSwgLSdQZXJpb2RvJylcbmBgYCJ9 -->

```r
AOOA <- filter(ITS, `Rubro Ingreso` == "ALQUILER OFICINAS OPERACIONES AEROLÍNEAS")
AOOA <- filter(AOOA,Año %in% c(2020,2021,2022))
AOOA <- select(AOOA, -'Tipo Ingreso')
AOOA <- select(AOOA, -'Rubro Ingreso')
AOOA <- select(AOOA, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgQU9PQSwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIkFPT0FfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzIFxuYGBgIn0= -->

```r

DF <- merge(DF, AOOA, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "AOOA_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIEFPT0EsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJBT09BXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, AOOA, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "AOOA" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkQU9PQV9WRVJbaXMubmEoREYkQU9PQV9WRVIpXSA8LSAwXG5ERiRBT09BX1ZFUltERiRBT09BX1ZFUiAhPSAwXSA8LSBcIlNpXCJcbkRGJEFPT0FfVkVSW0RGJEFPT0FfVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJEFPT0FbaXMubmEoREYkQU9PQSldIDwtIDBcbmBgYCJ9 -->

```r
DF$AOOA_VER[is.na(DF$AOOA_VER)] <- 0
DF$AOOA_VER[DF$AOOA_VER != 0] <- "Si"
DF$AOOA_VER[DF$AOOA_VER == "0"] <- "No"
DF$AOOA[is.na(DF$AOOA)] <- 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro ALQUILERES DE ALMACEN/HANGAR (ADAH)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuQURBSCA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJBTFFVSUxFUkVTIERFIEFMTUFDRU4vSEFOR0FSXCIpXG5BREFIIDwtIGZpbHRlcihBREFILEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbkFEQUggPC0gc2VsZWN0KEFEQUgsIC0nVGlwbyBJbmdyZXNvJylcbkFEQUggPC0gc2VsZWN0KEFEQUgsIC0nUnVicm8gSW5ncmVzbycpXG5BREFIIDwtIHNlbGVjdChBREFILCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
ADAH <- filter(ITS, `Rubro Ingreso` == "ALQUILERES DE ALMACEN/HANGAR")
ADAH <- filter(ADAH,Año %in% c(2020,2021,2022))
ADAH <- select(ADAH, -'Tipo Ingreso')
ADAH <- select(ADAH, -'Rubro Ingreso')
ADAH <- select(ADAH, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgQURBSCwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIkFEQUhfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzIFxuYGBgIn0= -->

```r

DF <- merge(DF, ADAH, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "ADAH_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIEFEQUgsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJBREFIXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, ADAH, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "ADAH" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkQURBSF9WRVJbaXMubmEoREYkQURBSF9WRVIpXSA8LSAwXG5ERiRBREFIX1ZFUltERiRBREFIX1ZFUiAhPSAwXSA8LSBcIlNpXCJcbkRGJEFEQUhfVkVSW0RGJEFEQUhfVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJEFEQUhbaXMubmEoREYkQURBSCldIDwtIDBcbmBgYCJ9 -->

```r
DF$ADAH_VER[is.na(DF$ADAH_VER)] <- 0
DF$ADAH_VER[DF$ADAH_VER != 0] <- "Si"
DF$ADAH_VER[DF$ADAH_VER == "0"] <- "No"
DF$ADAH[is.na(DF$ADAH)] <- 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro ATENCIÓN EN HORAS EXTRAS (AEHE)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuQUVIRSA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJBVEVOQ0nDk04gRU4gSE9SQVMgRVhUUkFTXCIpXG5BRUhFIDwtIGZpbHRlcihBRUhFLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbkFFSEUgPC0gc2VsZWN0KEFFSEUsIC0nVGlwbyBJbmdyZXNvJylcbkFFSEUgPC0gc2VsZWN0KEFFSEUsIC0nUnVicm8gSW5ncmVzbycpXG5BRUhFIDwtIHNlbGVjdChBRUhFLCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
AEHE <- filter(ITS, `Rubro Ingreso` == "ATENCIÓN EN HORAS EXTRAS")
AEHE <- filter(AEHE,Año %in% c(2020,2021,2022))
AEHE <- select(AEHE, -'Tipo Ingreso')
AEHE <- select(AEHE, -'Rubro Ingreso')
AEHE <- select(AEHE, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgQUVIRSwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIkFFSEVfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzIFxuYGBgIn0= -->

```r

DF <- merge(DF, AEHE, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "AEHE_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIEFFSEUsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJBRUhFXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, AEHE, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "AEHE" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkQUVIRV9WRVJbaXMubmEoREYkQUVIRV9WRVIpXSA8LSAwXG5ERiRBRUhFX1ZFUltERiRBRUhFX1ZFUiAhPSAwXSA8LSBcIlNpXCJcbkRGJEFFSEVfVkVSW0RGJEFFSEVfVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJEFFSEVbaXMubmEoREYkQUVIRSldIDwtIDBcbmBgYCJ9 -->

```r
DF$AEHE_VER[is.na(DF$AEHE_VER)] <- 0
DF$AEHE_VER[DF$AEHE_VER != 0] <- "Si"
DF$AEHE_VER[DF$AEHE_VER == "0"] <- "No"
DF$AEHE[is.na(DF$AEHE)] <- 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro ESTACIONAMIENTO AERONAVES (IREA)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuSVJFQSA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJFU1RBQ0lPTkFNSUVOVE8gQUVST05BVkVTXCIpXG5JUkVBIDwtIGZpbHRlcihJUkVBLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbklSRUEgPC0gc2VsZWN0KElSRUEsIC0nVGlwbyBJbmdyZXNvJylcbklSRUEgPC0gc2VsZWN0KElSRUEsIC0nUnVicm8gSW5ncmVzbycpXG5JUkVBIDwtIHNlbGVjdChJUkVBLCAtJ1BlcmlvZG8nKVxuYGBgIn0= -->

```r
IREA <- filter(ITS, `Rubro Ingreso` == "ESTACIONAMIENTO AERONAVES")
IREA <- filter(IREA,Año %in% c(2020,2021,2022))
IREA <- select(IREA, -'Tipo Ingreso')
IREA <- select(IREA, -'Rubro Ingreso')
IREA <- select(IREA, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgSVJFQSwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIklSRUFfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzIFxuYGBgIn0= -->

```r

DF <- merge(DF, IREA, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IREA_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIElSRUEsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJJUkVBXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, IREA, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IREA" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkSVJFQV9WRVJbaXMubmEoREYkSVJFQV9WRVIpXSA8LSAwXG5ERiRJUkVBX1ZFUltERiRJUkVBX1ZFUiAhPSAwXSA8LSBcIlNpXCJcbkRGJElSRUFfVkVSW0RGJElSRUFfVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJElSRUFbaXMubmEoREYkSVJFQSldIDwtIDBcbmBgYCJ9 -->

```r
DF$IREA_VER[is.na(DF$IREA_VER)] <- 0
DF$IREA_VER[DF$IREA_VER != 0] <- "Si"
DF$IREA_VER[DF$IREA_VER == "0"] <- "No"
DF$IREA[is.na(DF$IREA)] <- 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro INGRESOS FINANCIEROS (IRIF)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuSVJJRiA8LSBmaWx0ZXIoSVRTLCBgUnVicm8gSW5ncmVzb2AgPT0gXCJJTkdSRVNPUyBGSU5BTkNJRVJPU1wiKVxuSVJJRiA8LSBmaWx0ZXIoSVJJRixBw7FvICVpbiUgYygyMDIwLDIwMjEsMjAyMikpXG5JUklGIDwtIHNlbGVjdChJUklGLCAtJ1RpcG8gSW5ncmVzbycpXG5JUklGIDwtIHNlbGVjdChJUklGLCAtJ1J1YnJvIEluZ3Jlc28nKVxuSVJJRiA8LSBzZWxlY3QoSVJJRiwgLSdQZXJpb2RvJylcbmBgYCJ9 -->

```r
IRIF <- filter(ITS, `Rubro Ingreso` == "INGRESOS FINANCIEROS")
IRIF <- filter(IRIF,Año %in% c(2020,2021,2022))
IRIF <- select(IRIF, -'Tipo Ingreso')
IRIF <- select(IRIF, -'Rubro Ingreso')
IRIF <- select(IRIF, -'Periodo')
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgSVJJRiwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIklSSUZfVkVSXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuI0NyZWFjacOzbiBkZSB2YXJpYWJsZSBkZSB2ZXJpZmljYWNpw7NuIHBhcmEgcmVlbXBsYXpvIGRlIE4vQSdzIFxuYGBgIn0= -->

```r

DF <- merge(DF, IRIF, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IRIF_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIElSSUYsIGJ5ID0gYyhcIkHDsW9cIixcIk1lc1wiLFwiQWVyb3B1ZXJ0b1wiLFwiSW5mcmFlc3RydWN0dXJhXCIpLCBhbGw9VFJVRSlcbkRGIDwtIHJlbmFtZShERiwgXCJJUklGXCIgPSBcIkltcG9ydGUgcG9yIFNlcnZpY2lvc1wiKVxuYGBgIn0= -->

```r
DF <- merge(DF, IRIF, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IRIF" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkSVJJRl9WRVJbaXMubmEoREYkSVJJRl9WRVIpXSA8LSAwXG5ERiRJUklGX1ZFUltERiRJUklGX1ZFUiAhPSAwXSA8LSBcIlNpXCJcbkRGJElSSUZfVkVSW0RGJElSSUZfVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJElSSUZbaXMubmEoREYkSVJJRildIDwtIDBcbmBgYCJ9 -->

```r
DF$IRIF_VER[is.na(DF$IRIF_VER)] <- 0
DF$IRIF_VER[DF$IRIF_VER != 0] <- "Si"
DF$IRIF_VER[DF$IRIF_VER == "0"] <- "No"
DF$IRIF[is.na(DF$IRIF)] <- 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Uniendo la variable Ingreso Rubro REEMBOLSOS (IRR)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuSVJSIDwtIGZpbHRlcihJVFMsIGBSdWJybyBJbmdyZXNvYCA9PSBcIlJFRU1CT0xTT1NcIilcbklSUiA8LSBmaWx0ZXIoSVJSLEHDsW8gJWluJSBjKDIwMjAsMjAyMSwyMDIyKSlcbklSUiA8LSBzZWxlY3QoSVJSLCAtJ1RpcG8gSW5ncmVzbycpXG5JUlIgPC0gc2VsZWN0KElSUiwgLSdSdWJybyBJbmdyZXNvJylcbklSUiA8LSBzZWxlY3QoSVJSLCAtJ1BlcmlvZG8nKVxuXG5JUlIgPC0gZmlsdGVyKElSUiwgYEltcG9ydGUgcG9yIFNlcnZpY2lvc2AgIT0gMClcbmBgYCJ9 -->

```r
IRR <- filter(ITS, `Rubro Ingreso` == "REEMBOLSOS")
IRR <- filter(IRR,Año %in% c(2020,2021,2022))
IRR <- select(IRR, -'Tipo Ingreso')
IRR <- select(IRR, -'Rubro Ingreso')
IRR <- select(IRR, -'Periodo')

IRR <- filter(IRR, `Importe por Servicios` != 0)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiA8LSBtZXJnZShERiwgSVJSLCBieSA9IGMoXCJBw7FvXCIsXCJNZXNcIixcIkFlcm9wdWVydG9cIixcIkluZnJhZXN0cnVjdHVyYVwiKSwgYWxsPVRSVUUpXG5ERiA8LSByZW5hbWUoREYsIFwiSVJSX1ZFUlwiID0gXCJJbXBvcnRlIHBvciBTZXJ2aWNpb3NcIilcbiNDcmVhY2nDs24gZGUgdmFyaWFibGUgZGUgdmVyaWZpY2FjacOzbiBwYXJhIHJlZW1wbGF6byBkZSBOL0EncyBcbmBgYCJ9 -->

```r

DF <- merge(DF, IRR, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IRR_VER" = "Importe por Servicios")
#Creación de variable de verificación para reemplazo de N/A's 
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gbWVyZ2UoREYsIElSUiwgYnkgPSBjKFwiQcOxb1wiLFwiTWVzXCIsXCJBZXJvcHVlcnRvXCIsXCJJbmZyYWVzdHJ1Y3R1cmFcIiksIGFsbD1UUlVFKVxuREYgPC0gcmVuYW1lKERGLCBcIklSUlwiID0gXCJJbXBvcnRlIHBvciBTZXJ2aWNpb3NcIilcbmBgYCJ9 -->

```r
DF <- merge(DF, IRR, by = c("Año","Mes","Aeropuerto","Infraestructura"), all=TRUE)
DF <- rename(DF, "IRR" = "Importe por Servicios")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkSVJSX1ZFUltpcy5uYShERiRJUlJfVkVSKV0gPC0gMFxuREYkSVJSX1ZFUltERiRJUlJfVkVSICE9IDBdIDwtIFwiU2lcIlxuREYkSVJSX1ZFUltERiRJUlJfVkVSID09IFwiMFwiXSA8LSBcIk5vXCJcbkRGJElSUltpcy5uYShERiRJUlIpXSA8LSAwXG5gYGAifQ== -->

```r
DF$IRR_VER[is.na(DF$IRR_VER)] <- 0
DF$IRR_VER[DF$IRR_VER != 0] <- "Si"
DF$IRR_VER[DF$IRR_VER == "0"] <- "No"
DF$IRR[is.na(DF$IRR)] <- 0
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Creando la variable Numero de Pasajeros totales (NP)


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgJT4lIG11dGF0ZShOUCA9IE5QTiArIE5QSSkgLT4gREZcbiNOdW1lcm8gZGUgcGFzYWplcm9zIHRvdGFsZXNcbmBgYCJ9 -->

```r
DF %>% mutate(NP = NPN + NPI) -> DF
#Numero de pasajeros totales
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Organizando el DF


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYkTWVzID0gZmFjdG9yKERGJE1lcywgbGV2ZWxzID1jKFwiRW5lcm9cIixcIkZlYnJlcm9cIixcIk1hcnpvXCIsXCJBYnJpbFwiLFwiTWF5b1wiLFwiSnVuaW9cIixcIkp1bGlvXCIsXCJBZ29zdG9cIixcIlNldGllbWJyZVwiLFwiT2N0dWJyZVwiLFwiTm92aWVtYnJlXCIsXCJEaWNpZW1icmVcIikpXG5ERiA8LSBhcnJhbmdlKERGLCBBw7FvLCBNZXMpXG5gYGAifQ== -->

```r
DF$Mes = factor(DF$Mes, levels =c("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Setiembre","Octubre","Noviembre","Diciembre"))
DF <- arrange(DF, Año, Mes)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Limpieza de datos

Si no se dispone del nombre del aeropuerto o de su infraestructura, la unidad muestral será excluida del análisis, ya que la información sobre los ingresos de un aeropuerto desconocido no es relevante y será eliminada.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiRBZXJvcHVlcnRvW0RGJEFlcm9wdWVydG8gPT0gJ05vIHByZWNpc2EnXSA8LSBOQVxuREYkQWVyb3B1ZXJ0b1tERiRBZXJvcHVlcnRvID09ICctJ10gPC0gTkFcbkRGJEluZnJhZXN0cnVjdHVyYVtERiRJbmZyYWVzdHJ1Y3R1cmEgPT0gJy0nXSA8LSBOQVxuXG5ERiA8LSBmaWx0ZXIoREYsIEluZnJhZXN0cnVjdHVyYSAhPSBpcy5uYShcIkluZnJhZXN0cnVjdHVyYVwiKSAmIEFlcm9wdWVydG8gIT0gaXMubmEoXCJBZXJvcHVlcnRvXCIpKVxuYGBgIn0= -->

```r

DF$Aeropuerto[DF$Aeropuerto == 'No precisa'] <- NA
DF$Aeropuerto[DF$Aeropuerto == '-'] <- NA
DF$Infraestructura[DF$Infraestructura == '-'] <- NA

DF <- filter(DF, Infraestructura != is.na("Infraestructura") & Aeropuerto != is.na("Aeropuerto"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Cambiamos los nombres de la variable Infraestructura:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ERiAlPiUgbXV0YXRlKFwiSW5mcmFlc3RydWN0dXJhXCIgPVxuICAgICAgICAgICAgICAgICAgaWZlbHNlKEluZnJhZXN0cnVjdHVyYT09XCJBRFBcIiwgXCJBZXJvcHVlcnRvcyBkZWwgUGVyw7ogUy5BLlwiLFxuICAgICAgICAgICAgICAgICAgaWZlbHNlKEluZnJhZXN0cnVjdHVyYT09XCJBQVBcIiwgXCJBZXJvcHVlcnRvcyBBbmRpbm9zIGRlbCBQZXLDuiBTLkEuXCIsXG4gICAgICAgICAgICAgICAgICBpZmVsc2UoSW5mcmFlc3RydWN0dXJhPT1cIkNPUlwiLCBcIkNPUlBBQyBTLkEuXCIsXG4gICAgICAgICAgICAgICAgICBpZmVsc2UoSW5mcmFlc3RydWN0dXJhPT1cIkxBUFwiLCBcIkxpbWEgQWlycG9ydCBQYXJ0bmVycyBTLlIuTC5cIixJbmZyYWVzdHJ1Y3R1cmEpKSkpKSAtPiBERlxuYGBgIn0= -->

```r

DF %>% mutate("Infraestructura" =
                  ifelse(Infraestructura=="ADP", "Aeropuertos del Perú S.A.",
                  ifelse(Infraestructura=="AAP", "Aeropuertos Andinos del Perú S.A.",
                  ifelse(Infraestructura=="COR", "CORPAC S.A.",
                  ifelse(Infraestructura=="LAP", "Lima Airport Partners S.R.L.",Infraestructura))))) -> DF
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Eliminamos las variables temporales:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucm0obGlzdCA9IGMoXCJBQURNXCIsXCJBREFIXCIsXCJBREVQXCIsXCJBRUhFXCIsXCJBTENcIixcIkFPT0FcIixcIklSQURcIixcIklSRUFcIixcIklSSUZcIixcIklUU1wiLFwiUElcIixcIlBOXCIsXCJUUFwiLFwiVFVVQUlcIixcIlRVVUFOXCIsXCJJUlJcIikpXG5gYGAifQ== -->

```r
rm(list = c("AADM","ADAH","ADEP","AEHE","ALC","AOOA","IRAD","IREA","IRIF","ITS","PI","PN","TP","TUUAI","TUUAN","IRR"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Para finalizar, Eliminaremos las observaciones con valores faltantes (NA's), lo que resultará en la exclusión de los aeropuertos de la infraestructura "CORPAC S.A." que no han reportado sus ingresos totales del análisis.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYgPC0gZHJvcF9uYShERilcbmBgYCJ9 -->

```r
DF <- drop_na(DF)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc3VtKGNvbXBsZXRlLmNhc2VzKERGKSlcbmBgYCJ9 -->

```r
sum(complete.cases(DF))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Exportando la base de datos


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxud3JpdGVfY3N2KERGLFwiQmFzZUxpbXBpYXYyLmNzdlwiKVxuXG5gYGAifQ== -->

```r
write_csv(DF,"BaseLimpiav2.csv")

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


# Importando la base datos limpia


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5ybShsaXN0ID0gbHMoKSlcbmxpYnJhcnkocmVhZHIpXG5saWJyYXJ5KHBseXIpXG5saWJyYXJ5KGRwbHlyKVxubGlicmFyeShwbG90bHkpXG5saWJyYXJ5KHRpZHlyKVxuXG5ERiA8LSByZWFkX2NzdihcIkJhc2VMaW1waWF2Mi5jc3ZcIilcbmBgYCJ9 -->

```r

rm(list = ls())
library(readr)
library(plyr)
library(dplyr)
library(plotly)
library(tidyr)

DF <- read_csv("BaseLimpiav2.csv")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


# Descriptores Numéricos y Gráficos

## Tabla de descriptores numéricos


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY3YgPC0gZnVuY3Rpb24oeCl7XG4gICAgcmV0dXJuKHNkKHgsIG5hLnJtPVQpL21lYW4oeCwgbmEucm09VCkqMTAwKVxufVxuYGBgIn0= -->

```r
cv <- function(x){
    return(sd(x, na.rm=T)/mean(x, na.rm=T)*100)
}
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxudGFibGEgPC0gZGF0YS5mcmFtZShWYXJpYWJsZXMgPSBjKCdJVCcsICdOUE4nLCAnTlBJJywgJ1RVVUFOJywnVFVVQUknKSxcbiAgICAgICAgICAgICAgICAgICAgTWVkaWEgPSBjKG1lYW4oREYkSVQsIG5hLnJtPVQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lYW4oREYkTlBOLCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lYW4oREYkTlBJLCBuYS5ybT0gVCksXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZWFuKERGJFRVVUFOLCBuYS5ybT0gVCksXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZWFuKERGJFRVVUFJLCBuYS5ybT0gVCkpLFxuICAgICAgICAgICAgICAgICAgICBcbiAgICAgICAgICAgICAgICAgICAgTWVkaWFuYSA9IGMobWVkaWFuKERGJElULCBuYS5ybT1UKSwgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lZGlhbihERiROUE4sIG5hLnJtID0gVCksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZWRpYW4oREYkTlBJLCBuYS5ybT0gVCksXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lZGlhbihERiRUVVVBTiwgbmEucm0gPSBUKSwgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lZGlhbihERiRUVVVBSSwgbmEucm09IFQpKSwgXG4gICAgICAgICAgICAgICAgICAgIFxuICAgICAgICAgICAgICAgICAgICBEZXN2aWFjaW9uID0gYyhzZChERiRJVCwgbmEucm09VCksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZChERiROUE4sIG5hLnJtID0gVCksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZChERiROUEksIG5hLnJtPSBUKSwgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNkKERGJFRVVUFOLCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2QoREYkVFVVQUksIG5hLnJtPSBUKSksIFxuICAgICAgICAgICAgICAgICAgICBcbiAgICAgICAgICAgICAgICAgICAgVmFyaWFuemEgPSBjKHZhcihERiRJVCwgbmEucm0gPSBUKSwgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YXIoREYkTlBOLCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhcihERiROUEksIG5hLnJtID0gVCksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFyKERGJFRVVUFOLCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhcihERiRUVVVBSSwgbmEucm0gPSBUKSksXG4gICAgICAgICAgICAgICAgICAgIFxuICAgICAgICAgICAgICAgICAgICBSYW5nb0ludGVyY3VhcnRpbCA9IGMoSVFSKERGJElULCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJUVIoREYkTlBOLCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJUVIoREYkTlBJLCBuYS5ybSA9IFQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJUVIoREYkVFVVQU4sIG5hLnJtID0gVCksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElRUihERiRUVVVBSSwgbmEucm0gPSBUKSksXG4gICAgICAgICAgICAgICAgICAgIFxuICAgICAgICAgICAgICAgICAgICBDb2VmaWNpZW50ZVZhcmlhY2lvbiA9IGMoY3YoREYkSVQpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGN2KERGJE5QTiksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3YoREYkTlBJKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGN2KERGJE5QTiksIFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3YoREYkTlBJKSkpXG50YWJsYVxuYGBgIn0= -->

```r
tabla <- data.frame(Variables = c('IT', 'NPN', 'NPI', 'TUUAN','TUUAI'),
                    Media = c(mean(DF$IT, na.rm=T), 
                              mean(DF$NPN, na.rm = T), 
                              mean(DF$NPI, na.rm= T),
                              mean(DF$TUUAN, na.rm= T),
                              mean(DF$TUUAI, na.rm= T)),
                    
                    Mediana = c(median(DF$IT, na.rm=T), 
                                median(DF$NPN, na.rm = T), 
                                median(DF$NPI, na.rm= T),
                                median(DF$TUUAN, na.rm = T), 
                                median(DF$TUUAI, na.rm= T)), 
                    
                    Desviacion = c(sd(DF$IT, na.rm=T), 
                                   sd(DF$NPN, na.rm = T), 
                                   sd(DF$NPI, na.rm= T), 
                                   sd(DF$TUUAN, na.rm = T), 
                                   sd(DF$TUUAI, na.rm= T)), 
                    
                    Varianza = c(var(DF$IT, na.rm = T), 
                                 var(DF$NPN, na.rm = T), 
                                 var(DF$NPI, na.rm = T), 
                                 var(DF$TUUAN, na.rm = T), 
                                 var(DF$TUUAI, na.rm = T)),
                    
                    RangoIntercuartil = c(IQR(DF$IT, na.rm = T), 
                                        IQR(DF$NPN, na.rm = T), 
                                        IQR(DF$NPI, na.rm = T), 
                                        IQR(DF$TUUAN, na.rm = T), 
                                        IQR(DF$TUUAI, na.rm = T)),
                    
                    CoeficienteVariacion = c(cv(DF$IT), 
                                 cv(DF$NPN), 
                                 cv(DF$NPI),
                                 cv(DF$NPN), 
                                 cv(DF$NPI)))
tabla
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


La tabla muestra que los datos de ingresos totales, número de pasajeros nacionales e internacionales tienen una alta dispersión y variación, con muchas variables mostrando una mediana y rango intercuartil de 0, lo que indica la ausencia de pasajeros internacionales en varios aeropuertos. Además, los coeficientes de variación son muy altos, especialmente en el caso del tráfico de usuarios de aerolíneas internacionales (TUUAI) que supera el 500%.

## Objetivo 1

Se realizará un coeficiente de correlación y un modelo lineal para cada variable en relación con los ingresos totales, lo que permitirá resumir la información de las 12 variables en un solo gráfico.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY29lZmNvciA8LSBjKDE6MTIpXG5cbiMgVFVVQU4gXG5jb2VmY29yWzFdIDwtY29yKERGJElULCBERiRUVVVBTiwgdXNlPVwiY29tcGxldGUub2JzXCIpXG5cbiMgVFVVQUlcbmNvZWZjb3JbMl0gPC1jb3IoREYkSVQsIERGJFRVVUFJLCB1c2U9XCJjb21wbGV0ZS5vYnNcIilcblxuIyBJUkFEXG5jb2VmY29yWzNdIDwtY29yKERGJElULCBERiRJUkFELCB1c2U9XCJjb21wbGV0ZS5vYnNcIilcblxuXG4jIEFBRE1cbmNvZWZjb3JbNF0gPC1jb3IoREYkSVQsIERGJEFBRE0sIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuXG4jIEFERVBcbmNvZWZjb3JbNV0gPC1jb3IoREYkSVQsIERGJEFERVAsIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuXG4jIEFMQ1xuY29lZmNvcls2XSA8LWNvcihERiRJVCwgREYkQUxDLCB1c2U9XCJjb21wbGV0ZS5vYnNcIilcblxuIyBBT09BXG5jb2VmY29yWzddIDwtY29yKERGJElULCBERiRBT09BLCB1c2U9XCJjb21wbGV0ZS5vYnNcIilcblxuXG4jIEFEQUhcbmNvZWZjb3JbOF0gPC1jb3IoREYkSVQsIERGJEFEQUgsIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuXG4jIEFFSEVcbmNvZWZjb3JbOV0gPC1jb3IoREYkSVQsIERGJEFFSEUsIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuXG5cbiMgSVJFQVxuY29lZmNvclsxMF0gPC1jb3IoREYkSVQsIERGJElSRUEsIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuXG4jIElSSUZcbmNvZWZjb3JbMTFdIDwtY29yKERGJElULCBERiRJUklGLCB1c2U9XCJjb21wbGV0ZS5vYnNcIilcblxuIyBJUlJcbmNvZWZjb3JbMTJdIDwtY29yKERGJElULCBERiRJUlIsIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuXG5gYGAifQ== -->

```r
coefcor <- c(1:12)

# TUUAN 
coefcor[1] <-cor(DF$IT, DF$TUUAN, use="complete.obs")

# TUUAI
coefcor[2] <-cor(DF$IT, DF$TUUAI, use="complete.obs")

# IRAD
coefcor[3] <-cor(DF$IT, DF$IRAD, use="complete.obs")


# AADM
coefcor[4] <-cor(DF$IT, DF$AADM, use="complete.obs")

# ADEP
coefcor[5] <-cor(DF$IT, DF$ADEP, use="complete.obs")

# ALC
coefcor[6] <-cor(DF$IT, DF$ALC, use="complete.obs")

# AOOA
coefcor[7] <-cor(DF$IT, DF$AOOA, use="complete.obs")


# ADAH
coefcor[8] <-cor(DF$IT, DF$ADAH, use="complete.obs")

# AEHE
coefcor[9] <-cor(DF$IT, DF$AEHE, use="complete.obs")


# IREA
coefcor[10] <-cor(DF$IT, DF$IREA, use="complete.obs")

# IRIF
coefcor[11] <-cor(DF$IT, DF$IRIF, use="complete.obs")

# IRR
coefcor[12] <-cor(DF$IT, DF$IRR, use="complete.obs")

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Ahora se procederá a la revisión de los coeficientes de correlación, si estos tienen un número mayor a 0.75 o menor a -0.75 se considerará que tienen un modelo lineal válido.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY29lZmNvclxuYGBgIn0= -->

```r
coefcor
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Se encontró que los coeficientes de correlación de las variables 4, 5, 6, 7, 8, 9, 11 y 12 no cumplen con el criterio requerido, lo que indica que no tienen una correlación lineal con los ingresos totales y sus datos están dispersos. Sin embargo, se procederá a realizar y graficar los modelos lineales de las variables que presentan una buena correlación positiva con los ingresos totales. Esto tiene sentido, ya que a mayor cantidad de dinero en esos rubros, mayor será el ingreso total.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5wZW5kaWVudGVzIDwtIGMoMTo0KVxuaW50ZXJjZXB0b3MgPC0gYygxOjQpXG5cbiMgVFVVQU4gXG5tb2RlbG8gPC0gbG0oREYkSVQgfiBERiRUVVVBTiwgZGF0YT1ERilcbnBlbmRpZW50ZXNbMV0gPC0gYXMubnVtZXJpYyhtb2RlbG8kY29lZmZpY2llbnRzWzJdKVxuaW50ZXJjZXB0b3NbMV0gPC0gYXMubnVtZXJpYyhtb2RlbG8kY29lZmZpY2llbnRzWzFdKVxuXG5cbiMgVFVVQUlcbm1vZGVsbyA8LSBsbShERiRJVCB+IERGJFRVVUFJLCBkYXRhPURGKVxucGVuZGllbnRlc1syXSA8LSBhcy5udW1lcmljKG1vZGVsbyRjb2VmZmljaWVudHNbMl0pXG5pbnRlcmNlcHRvc1syXSA8LSBhcy5udW1lcmljKG1vZGVsbyRjb2VmZmljaWVudHNbMV0pXG5cblxuIyBJUkFEXG5tb2RlbG8gPC0gbG0oREYkSVQgfiBERiRJUkFELCBkYXRhPURGKVxucGVuZGllbnRlc1szXSA8LSBhcy5udW1lcmljKG1vZGVsbyRjb2VmZmljaWVudHNbMl0pXG5pbnRlcmNlcHRvc1szXSA8LSBhcy5udW1lcmljKG1vZGVsbyRjb2VmZmljaWVudHNbMV0pXG5cbiMgSVJJRlxubW9kZWxvIDwtIGxtKERGJElUIH4gREYkSVJFQSwgZGF0YT1ERilcbnBlbmRpZW50ZXNbNF0gPC0gYXMubnVtZXJpYyhtb2RlbG8kY29lZmZpY2llbnRzWzJdKVxuaW50ZXJjZXB0b3NbNF0gPC0gYXMubnVtZXJpYyhtb2RlbG8kY29lZmZpY2llbnRzWzFdKVxuXG5gYGAifQ== -->

```r

pendientes <- c(1:4)
interceptos <- c(1:4)

# TUUAN 
modelo <- lm(DF$IT ~ DF$TUUAN, data=DF)
pendientes[1] <- as.numeric(modelo$coefficients[2])
interceptos[1] <- as.numeric(modelo$coefficients[1])


# TUUAI
modelo <- lm(DF$IT ~ DF$TUUAI, data=DF)
pendientes[2] <- as.numeric(modelo$coefficients[2])
interceptos[2] <- as.numeric(modelo$coefficients[1])


# IRAD
modelo <- lm(DF$IT ~ DF$IRAD, data=DF)
pendientes[3] <- as.numeric(modelo$coefficients[2])
interceptos[3] <- as.numeric(modelo$coefficients[1])

# IRIF
modelo <- lm(DF$IT ~ DF$IREA, data=DF)
pendientes[4] <- as.numeric(modelo$coefficients[2])
interceptos[4] <- as.numeric(modelo$coefficients[1])

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZmlnIDwtIHBsb3RfbHkoREYsIHggPSB+VFVVQU4sIHkgPSB+SVQsIFxuICAgICAgICAgICAgICAgdHlwZSA9IFwic2NhdHRlclwiLCBcbiAgICAgICAgICAgICAgIG1vZGUgPSBcIm1hcmtlcnNcIixcbiAgICAgICAgICAgICAgIG5hbWU9XCJUVVVBTlwiLFxuICAgICAgICAgICAgICAgbWFya2VyID0gbGlzdChjb2xvciA9ICcjZWY0NzZmJylcbiAgICAgICAgICAgICAgICkgJT4lXG4gICAgICAgIGFkZF90cmFjZSh4ID0gfmMoLWludGVyY2VwdG9zWzFdL3BlbmRpZW50ZXNbMV0sOTAwMDAwMCksIHkgPSBjKDAscGVuZGllbnRlc1sxXSo5MDAwMDAwK2ludGVyY2VwdG9zWzFdKSwgXG4gICAgICAgICAgICAgICB0eXBlID0gXCJzY2F0dGVyXCIsXG4gICAgICAgICAgICAgICBtb2RlID0gXCJsaW5lc1wiLFxuICAgICAgICAgICAgICAgbmFtZT1cIlRVVUFOLW1vZGVsXCIsXG4gICAgICAgICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yID0gJyNlZjQ3NmYnKVxuICAgICAgICAgICAgICAgKSAlPiVcbiAgICAgICAgYWRkX3RyYWNlKERGLCB4ID0gflRVVUFJLCB5ID0gfklULCBcbiAgICAgICAgICAgICAgICAgIHR5cGUgPSBcInNjYXR0ZXJcIiwgXG4gICAgICAgICAgICAgICAgICBtb2RlID0gXCJtYXJrZXJzXCIsXG4gICAgICAgICAgICAgICAgICBuYW1lPVwiVFVVQUlcIixcbiAgICAgICAgICAgICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnI2ZmZDE2NicpXG4gICAgICAgICAgICAgICAgICApICU+JVxuICAgICAgICBhZGRfdHJhY2UoeCA9IH5jKC1pbnRlcmNlcHRvc1syXS9wZW5kaWVudGVzWzJdLDkwMDAwMDApLCB5ID0gYygwLHBlbmRpZW50ZXNbMl0qOTAwMDAwMCtpbnRlcmNlcHRvc1syXSksIFxuICAgICAgICAgICAgICAgICAgdHlwZSA9IFwic2NhdHRlclwiLCBcbiAgICAgICAgICAgICAgICAgIG1vZGUgPSBcImxpbmVzXCIsXG4gICAgICAgICAgICAgICAgICBuYW1lPVwiVFVVQUktbW9kZWxcIixcbiAgICAgICAgICAgICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnI2ZmZDE2NicpXG4gICAgICAgICAgICAgICAgICApICU+JVxuICAgICAgICBhZGRfdHJhY2UoREYsIHggPSB+SVJBRCwgeSA9IH5JVCwgXG4gICAgICAgICAgICAgICAgICB0eXBlID0gXCJzY2F0dGVyXCIsIFxuICAgICAgICAgICAgICAgICAgbW9kZSA9IFwibWFya2Vyc1wiLFxuICAgICAgICAgICAgICAgICAgbmFtZT1cIklSQURcIixcbiAgICAgICAgICAgICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnIzA2ZDZhMCcpXG4gICAgICAgICAgICAgICAgICApICU+JVxuICAgICAgICBhZGRfdHJhY2UoeCA9IH5jKC1pbnRlcmNlcHRvc1szXS9wZW5kaWVudGVzWzNdLDkwMDAwMDApLCB5ID0gYygwLHBlbmRpZW50ZXNbM10qOTAwMDAwMCtpbnRlcmNlcHRvc1szXSksIFxuICAgICAgICAgICAgICAgICAgdHlwZSA9IFwic2NhdHRlclwiLCBcbiAgICAgICAgICAgICAgICAgIG1vZGUgPSBcImxpbmVzXCIsXG4gICAgICAgICAgICAgICAgICBuYW1lPVwiSVJBRC1tb2RlbFwiLFxuICAgICAgICAgICAgICAgICAgbWFya2VyID0gbGlzdChjb2xvciA9ICcjMDZkNmEwJylcbiAgICAgICAgICAgICAgICAgICkgJT4lXG4gICAgICAgIGFkZF90cmFjZShERiwgeD0gfklSRUEsIHkgPSB+SVQsIFxuICAgICAgICAgICAgICAgICAgdHlwZT1cInNjYXR0ZXJcIiwgXG4gICAgICAgICAgICAgICAgICBtb2RlPVwibWFya2Vyc1wiLFxuICAgICAgICAgICAgICAgICAgbmFtZT1cIklSRUFcIixcbiAgICAgICAgICAgICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnIzExOGFiMicpXG4gICAgICAgICAgICAgICAgICApICU+JVxuICAgICAgICBhZGRfdHJhY2UoeCA9IH5jKC1pbnRlcmNlcHRvc1s0XS9wZW5kaWVudGVzWzRdLDkwMDAwMDApLCB5ID0gYygwLHBlbmRpZW50ZXNbNF0qOTAwMDAwMCtpbnRlcmNlcHRvc1s0XSksIFxuICAgICAgICAgICAgICAgICAgdHlwZT1cInNjYXR0ZXJcIiwgXG4gICAgICAgICAgICAgICAgICBtb2RlPVwibGluZXNcIixcbiAgICAgICAgICAgICAgICAgIG5hbWU9XCJJUkVBLW1vZGVsXCIsXG4gICAgICAgICAgICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yID0gJyMxMThhYjInKVxuICAgICAgICAgICAgICAgICAgKSAlPiVcbiAgICAgICAgbGF5b3V0KHhheGlzID0gbGlzdCggdGl0bGUgPSBcIkluZ3Jlc29zIFVTJFwiKSxcbiAgICAgICAgeWF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiSW5ncmVzb3MgdG90YWxlcyBVUyRcIikpXG5cblxuZmlnXG4gICAgXG5gYGAifQ== -->

```r
fig <- plot_ly(DF, x = ~TUUAN, y = ~IT, 
               type = "scatter", 
               mode = "markers",
               name="TUUAN",
               marker = list(color = '#ef476f')
               ) %>%
        add_trace(x = ~c(-interceptos[1]/pendientes[1],9000000), y = c(0,pendientes[1]*9000000+interceptos[1]), 
               type = "scatter",
               mode = "lines",
               name="TUUAN-model",
               marker = list(color = '#ef476f')
               ) %>%
        add_trace(DF, x = ~TUUAI, y = ~IT, 
                  type = "scatter", 
                  mode = "markers",
                  name="TUUAI",
                  marker = list(color = '#ffd166')
                  ) %>%
        add_trace(x = ~c(-interceptos[2]/pendientes[2],9000000), y = c(0,pendientes[2]*9000000+interceptos[2]), 
                  type = "scatter", 
                  mode = "lines",
                  name="TUUAI-model",
                  marker = list(color = '#ffd166')
                  ) %>%
        add_trace(DF, x = ~IRAD, y = ~IT, 
                  type = "scatter", 
                  mode = "markers",
                  name="IRAD",
                  marker = list(color = '#06d6a0')
                  ) %>%
        add_trace(x = ~c(-interceptos[3]/pendientes[3],9000000), y = c(0,pendientes[3]*9000000+interceptos[3]), 
                  type = "scatter", 
                  mode = "lines",
                  name="IRAD-model",
                  marker = list(color = '#06d6a0')
                  ) %>%
        add_trace(DF, x= ~IREA, y = ~IT, 
                  type="scatter", 
                  mode="markers",
                  name="IREA",
                  marker = list(color = '#118ab2')
                  ) %>%
        add_trace(x = ~c(-interceptos[4]/pendientes[4],9000000), y = c(0,pendientes[4]*9000000+interceptos[4]), 
                  type="scatter", 
                  mode="lines",
                  name="IREA-model",
                  marker = list(color = '#118ab2')
                  ) %>%
        layout(xaxis = list( title = "Ingresos US$"),
        yaxis = list( title = "Ingresos totales US$"))


fig
    
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


El análisis de los gráficos interactivos revela que el modelo de regresión lineal para el rubro IREA no se ajusta correctamente a los datos, a pesar de tener un coeficiente de correlación superior a 0.75. Esto demuestra que el coeficiente de correlación lineal no es el único factor a considerar al construir un modelo de regresión lineal. Sin embargo, al dejar de lado a IREA, se observa que los modelos y los datos de TUUAN, TUUAI e IRAD se ajustan bastante bien, destacando IRAD como el rubro con la mayor pendiente. Por lo tanto, se concluye que la mayor parte de los ingresos totales dependen de los ingresos generados por los servicios de aterrizaje y despegue.

## Objetivo 2


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5wbG90KERGJElSRUEsIERGJElULCB4bGFiID0gXCJOdW1lcm8gZGUgcGFzYWplcm9zIChtaWxlcylcIiwgeWxhYiA9IFwiSW5ncmVzb3MgdG90YWxlcyAobWlsbG9uZXMgZGUgVVMkKVwiLCBjb2w9XCJkYXJrZ3JlZW5cIiwgcGNoPVwi4oCiXCIpXG5hYmxpbmUoYT1pbnRlcmNlcHRvc1s0XSwgYj0gcGVuZGllbnRlc1s0XSlcblxuXG5gYGAifQ== -->

```r

plot(DF$IREA, DF$IT, xlab = "Numero de pasajeros (miles)", ylab = "Ingresos totales (millones de US$)", col="darkgreen", pch="•")
abline(a=interceptos[4], b= pendientes[4])

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGlicmFyeShwbG90bHkpXG5cbmZpZyA8LSBwbG90X2x5KERGLCB5ID0gfklULCB4ID0gfklSRUEsIHR5cGUgPSBcInNjYXR0ZXJcIiwgbW9kZSA9IFwibWFya2Vyc1wiKSAlPiVcbiAgbGF5b3V0KHhheGlzID0gbGlzdCh0aXRsZSA9IFwiSVJFQVwiKSwgeWF4aXMgPSBsaXN0KHRpdGxlID0gXCJJbmdyZXNvcyB0b3RhbGVzIFVTJFwiKSlcblxuZmlnXG5cbiAgICBcbmBgYCJ9 -->

```r
library(plotly)

fig <- plot_ly(DF, y = ~IT, x = ~IREA, type = "scatter", mode = "markers") %>%
  layout(xaxis = list(title = "IREA"), yaxis = list(title = "Ingresos totales US$"))

fig

    
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Numero de Pasajeros vs Ingresos Totales


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdChERiROUC8xMDAwLCBERiRJVC8xMDAwMDAwLCB4bGFiID0gXCJOdW1lcm8gZGUgcGFzYWplcm9zIChtaWxlcylcIiwgeWxhYiA9IFwiSW5ncmVzb3MgdG90YWxlcyAobWlsbG9uZXMgZGUgVVMkKVwiLCBjb2w9XCJkYXJrZ3JlZW5cIiwgcGNoPVwi4oCiXCIsIHhsaW0gPSBjKDAsMjAwMCkpXG5cbmBgYCJ9 -->

```r
plot(DF$NP/1000, DF$IT/1000000, xlab = "Numero de pasajeros (miles)", ylab = "Ingresos totales (millones de US$)", col="darkgreen", pch="•", xlim = c(0,2000))

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Comenzamos comparando el numero de pasajeros en miles totales, suma de pasajeros internacionales y nacionales, con los ingresos totales de cada aeropuerto en determinado mes y año en millones de dolares. A simple vista se puede ver un cierto tipo de relación lineal, sin embargo tenemos que comprobarlo. Usaremos el coeficiente de correlación ya que este no toma en cuenta la escala de las unidades, perfecto para nuestro estudio.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY29yKERGJElULCBERiROUCwgdXNlPVwiY29tcGxldGUub2JzXCIpXG5gYGAifQ== -->

```r
cor(DF$IT, DF$NP, use="complete.obs")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Con la información suministrada del coeficiente de correlación se deduce que la relación lineal entre el numero de pasajeros y los ingresos totales es buena, casi perfecta y ascendente. Es decir los ingresos totales aumentaran en cuanto aumente el numero de pasajeros.

Ahora crearemos un modelo de regresión lineal.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5tb2RlbG8gPSBsbShERiRJVCB+IERGJE5QLCBkYXRhPURGKVxubW9kZWxvXG5cbmQgPC0gZGF0YS5mcmFtZShcIlhcIj1ERiROUC8xMDAwLCBcIllcIj1ERiRJVC8xMDAwMDAwKVxubW9kZWxvID0gbG0oZCRZIH4gZCRYLCBkYXRhPWQpXG5tb2RlbG9cbmBgYCJ9 -->

```r

modelo = lm(DF$IT ~ DF$NP, data=DF)
modelo

d <- data.frame("X"=DF$NP/1000, "Y"=DF$IT/1000000)
modelo = lm(d$Y ~ d$X, data=d)
modelo
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Creamos dos modelos que utilizan diferentes escalas (número de pasajeros e ingresos totales en dólares vs. número de pasajeros en miles e ingresos totales en millones de dólares) para aproximar y predecir los ingresos totales de un aeropuerto en función de la cantidad de pasajeros.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdChERiROUC8xMDAwLCBERiRJVC8xMDAwMDAwLCB4bGFiID0gXCJOdW1lcm8gZGUgcGFzYWplcm9zIChtaWxlcylcIiwgeWxhYiA9IFwiSW5ncmVzb3MgdG90YWxlcyAobWlsbG9uZXMgZGUgVVMkKVwiLCBjb2w9XCJkYXJrZ3JlZW5cIiwgcGNoPVwi4oCiXCIsIHhsaW0gPSBjKDAsMjAwMCkpXG5hYmxpbmUoYT0gLTAuMTQ4OTAsIGI9MC4wMTY0NiwgY29sPVwiZ3JlZW5cIilcbmBgYCJ9 -->

```r
plot(DF$NP/1000, DF$IT/1000000, xlab = "Numero de pasajeros (miles)", ylab = "Ingresos totales (millones de US$)", col="darkgreen", pch="•", xlim = c(0,2000))
abline(a= -0.14890, b=0.01646, col="green")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Numero de Pasajeros Nacionales e Internacionales vs Ingresos Totales


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGFyKG1mcm93PWMoMSwyKSlcblxucGxvdChERiROUE4vMTAwMCwgREYkSVQvMTAwMDAwMCwgeGxhYiA9IFwiTnVtZXJvIGRlIHBhc2FqZXJvcyBuYWNpb25hbGVzIChtaWxlcylcIiwgeWxhYiA9IFwiSW5ncmVzb3MgdG90YWxlcyAobWlsbG9uZXMgZGUgVVMkKVwiLCBjb2w9XCJyZWRcIiwgcGNoPVwi4oCiXCIpXG5cbnBsb3QoREYkTlBJLzEwMDAsIERGJElULzEwMDAwMDAsIHhsYWIgPSBcIk51bWVybyBkZSBwYXNhamVyb3MgaW50ZXJuYWNpb25hbGVzIChtaWxlcylcIiwgeWxhYiA9IFwiSW5ncmVzb3MgdG90YWxlcyAobWlsbG9uZXMgZGUgVVMkKVwiLCBjb2w9XCJibHVlXCIsIHBjaD1cIuKAolwiKVxuYGBgIn0= -->

```r
par(mfrow=c(1,2))

plot(DF$NPN/1000, DF$IT/1000000, xlab = "Numero de pasajeros nacionales (miles)", ylab = "Ingresos totales (millones de US$)", col="red", pch="•")

plot(DF$NPI/1000, DF$IT/1000000, xlab = "Numero de pasajeros internacionales (miles)", ylab = "Ingresos totales (millones de US$)", col="blue", pch="•")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Ahora vamos a analizar la relación de los tipos de pasajeros con los ingresos totales. De nuevo usaremos el coeficiente de correlación tanto para los pasajeros nacionales como internacionales.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY29yKERGJElULCBERiROUE4sIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuY29yKERGJElULCBERiROUEksIHVzZT1cImNvbXBsZXRlLm9ic1wiKVxuYGBgIn0= -->

```r
cor(DF$IT, DF$NPN, use="complete.obs")
cor(DF$IT, DF$NPI, use="complete.obs")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Los coeficientes de correlación revelan que tanto los pasajeros nacionales como los pasajeros internacionales tienen una relación lineal positiva ascendente con los ingresos totales. Sin embargo, ambos coeficientes son menores que el coeficiente de correlación de los pasajeros totales con los ingresos totales, lo que indica que utilizar solo los pasajeros nacionales o internacionales para estimar los ingresos totales resultaría en una menor precisión que si se utilizara la suma de ambos. Además, el coeficiente de correlación de los pasajeros internacionales es ligeramente superior al de los pasajeros nacionales, lo que sugiere una relación lineal más fuerte y más acorde con los ingresos totales.

Ahora construyamos los modelos de regresión lineal para cada uno.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5tb2RlbG8gPSBsbShERiRJVCB+IERGJE5QTiwgZGF0YT1ERilcbm1vZGVsb1xuXG5kIDwtIGRhdGEuZnJhbWUoXCJYXCI9REYkTlBOLzEwMDAsIFwiWVwiPURGJElULzEwMDAwMDApXG5tb2RlbG8gPSBsbShkJFkgfiBkJFgsIGRhdGE9ZClcbm1vZGVsb1xuXG5tb2RlbG8gPSBsbShERiRJVCB+IERGJE5QSSwgZGF0YT1ERilcbm1vZGVsb1xuXG5kIDwtIGRhdGEuZnJhbWUoXCJYXCI9REYkTlBJLzEwMDAsIFwiWVwiPURGJElULzEwMDAwMDApXG5tb2RlbG8gPSBsbShkJFkgfiBkJFgsIGRhdGE9ZClcbm1vZGVsb1xuXG5ybShkKVxuYGBgIn0= -->

```r

modelo = lm(DF$IT ~ DF$NPN, data=DF)
modelo

d <- data.frame("X"=DF$NPN/1000, "Y"=DF$IT/1000000)
modelo = lm(d$Y ~ d$X, data=d)
modelo

modelo = lm(DF$IT ~ DF$NPI, data=DF)
modelo

d <- data.frame("X"=DF$NPI/1000, "Y"=DF$IT/1000000)
modelo = lm(d$Y ~ d$X, data=d)
modelo

rm(d)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Vemos que los modelos difieren en una cantidad considerable en cuanto a su pendiente, sin embargo, su intercepto es bastante similar, vamos a graficar estos modelos.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGFyKG1mcm93PWMoMSwyKSlcblxucGxvdChERiROUE4vMTAwMCwgREYkSVQvMTAwMDAwMCwgeGxhYiA9IFwiTnVtZXJvIGRlIHBhc2FqZXJvcyBuYWNpb25hbGVzIChtaWxlcylcIiwgeWxhYiA9IFwiSW5ncmVzb3MgdG90YWxlcyAobWlsbG9uZXMgZGUgVVMkKVwiLCBjb2w9XCJyZWRcIiwgcGNoPVwi4oCiXCIpXG5hYmxpbmUoYT0gLTAuMzYwMzMsIGI9MC4wMjQ1MSwgY29sPVwiI2Y3MjU4NVwiKVxuXG5wbG90KERGJE5QSS8xMDAwLCBERiRJVC8xMDAwMDAwLCB4bGFiID0gXCJOdW1lcm8gZGUgcGFzYWplcm9zIGludGVybmFjaW9uYWxlcyAobWlsZXMpXCIsIHlsYWIgPSBcIkluZ3Jlc29zIHRvdGFsZXMgKG1pbGxvbmVzIGRlIFVTJClcIiwgY29sPVwiYmx1ZVwiLCBwY2g9XCLigKJcIilcbmFibGluZShhPSAwLjMxOTk2LCBiPTAuMDQ3NzIsIGNvbD1cIiMwMDc3YjZcIilcbmBgYCJ9 -->

```r
par(mfrow=c(1,2))

plot(DF$NPN/1000, DF$IT/1000000, xlab = "Numero de pasajeros nacionales (miles)", ylab = "Ingresos totales (millones de US$)", col="red", pch="•")
abline(a= -0.36033, b=0.02451, col="#f72585")

plot(DF$NPI/1000, DF$IT/1000000, xlab = "Numero de pasajeros internacionales (miles)", ylab = "Ingresos totales (millones de US$)", col="blue", pch="•")
abline(a= 0.31996, b=0.04772, col="#0077b6")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Objetivo 3

Para averiguar cual es el aeropuerto que mayor tráfico y el aeropuerto que mayores ingresos genera en el Perú en los años (2020, 2021 y 2022), analizaremos la distribución de Ingresos Totales planteando gráficos y relaciones.

### Analizando la distribución de Ingresos Totales


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seSh4ID0gfkRGJElULzEwMDAwMDAsXG4gICAgICAgIHR5cGU9XCJoaXN0b2dyYW1cIixcbiAgICAgICAgY29sb3IgPSB+REYkSW5mcmFlc3RydWN0dXJhLFxuICAgICAgICBuYmluc3ggPSA0MFxuICAgICAgICApJT4lXG5sYXlvdXQoeWF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiRnJlY3VlbmNpYVwiICksXG4gICAgeGF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiSW5ncmVzb3MgdG90YWxlcyAoTWlsbG9uZXMgZGUgVVMkKVwiLFxuICAgICAgICAgICAgICAgICAgbnRpY2tzID0gMjApKVxuYGBgIn0= -->

```r
plot_ly(x = ~DF$IT/1000000,
        type="histogram",
        color = ~DF$Infraestructura,
        nbinsx = 40
        )%>%
layout(yaxis = list( title = "Frecuencia" ),
    xaxis = list( title = "Ingresos totales (Millones de US$)",
                  nticks = 20))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Gracias al histograma se dice que los datos de los ingresos totales son totalmente asimétricos y se encuentran acumulados en un intervalo de 0 - 0.8 millones de dolares. Es decir la mayoría de aeropuertos determinados en cierto mes y cierto año posee unos ingresos totales de entre 0 y 0.8 millones de dolares. Esto puede ocurrir debido a datos atípicos, construyamos un Boxplot para que nos ayude.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seShERiwgeD1+REYkSVQvMTAwMDAwMCxcbiAgICAgICAgICAgIHR5cGUgPSBcImJveFwiKSU+JVxubGF5b3V0KFxuICAgIHhheGlzID0gbGlzdCggdGl0bGUgPSBcIkluZ3Jlc29zIHRvdGFsZXMgKE1pbGxvbmVzIGRlIFVTJClcIikpXG5gYGAifQ== -->

```r
plot_ly(DF, x=~DF$IT/1000000,
            type = "box")%>%
layout(
    xaxis = list( title = "Ingresos totales (Millones de US$)"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Usando un Boxplot simple se comprueba como los datos de los ingresos totales están demasiado dispersos gracias a cierta cantidad de datos atípicos. Ahora es necesario averiguar de donde provienen estos datos atípicos y que nos quieren decir. Para ello crearemos diferentes Boxplots basados en meses, infraestructuras y aeropuertos.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seShERiwgeCA9IH5JVC8xMDAwMDAwLCBcbiAgICAgICAgeSA9IH5NZXMsIFxuICAgICAgICBjb2xvcj0gfk1lcywgXG4gICAgICAgIHR5cGU9XCJib3hcIikgJT4lXG5sYXlvdXQoeWF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiTWVzXCIpLFxuICAgIHhheGlzID0gbGlzdCggdGl0bGUgPSBcIkluZ3Jlc29zIHRvdGFsZXMgKE1pbGxvbmVzIGRlIFVTJClcIikpXG5gYGAifQ== -->

```r
plot_ly(DF, x = ~IT/1000000, 
        y = ~Mes, 
        color= ~Mes, 
        type="box") %>%
layout(yaxis = list( title = "Mes"),
    xaxis = list( title = "Ingresos totales (Millones de US$)"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Con este gráfico podemos descartar que los datos atípicos provengan de un o varios meses en específico.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seShERiwgeCA9IH5JVC8xMDAwMDAwLCBcbiAgICAgICAgeSA9IH5JbmZyYWVzdHJ1Y3R1cmEsIFxuICAgICAgICBjb2xvcj0gfkluZnJhZXN0cnVjdHVyYSwgXG4gICAgICAgIHR5cGU9XCJib3hcIikgJT4lXG5sYXlvdXQoeWF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiSW5mcmFlc3RydWN0dXJhXCIpLFxuICAgIHhheGlzID0gbGlzdCggdGl0bGUgPSBcIkluZ3Jlc29zIHRvdGFsZXMgKE1pbGxvbmVzIGRlIFVTJClcIikpXG5gYGAifQ== -->

```r
plot_ly(DF, x = ~IT/1000000, 
        y = ~Infraestructura, 
        color= ~Infraestructura, 
        type="box") %>%
layout(yaxis = list( title = "Infraestructura"),
    xaxis = list( title = "Ingresos totales (Millones de US$)"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


En el gráfico, se destaca que Lima Airport Partners S.R.L tiene ingresos totales significativamente más altos que otras infraestructuras, lo que indica que la mayoría de los datos atípicos en términos de ingresos provienen de esa infraestructura. Además, se menciona que la infraestructura COR no aparece en el gráfico debido a que no ha declarado ingresos totales. Al analizar los boxplots de cada infraestructura, se observa que el de Lima Airport Partners S.R.L no tiene datos atípicos, mientras que Aeropuertos del Perú S.A tiene muchos datos atípicos por encima de la mediana y Aeropuertos Andinos del Perú S.A muestra datos inferiores similares en el 25% inferior y datos atípicos por encima de la mediana.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seShERiwgeCA9IH5JVC8xMDAwMDAwLCBcbiAgICAgICAgeSA9IH5BZXJvcHVlcnRvLCBcbiAgICAgICAgY29sb3I9IH5BZXJvcHVlcnRvLCBcbiAgICAgICAgdHlwZT1cImJveFwiXG4gICAgICAgICkgJT4lXG5sYXlvdXQoeWF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiQWVyb3B1ZXJ0b3NcIiksXG4gICAgeGF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiSW5ncmVzb3MgdG90YWxlcyAoTWlsbG9uZXMgZGUgVVMkKVwiKSlcbmBgYCJ9 -->

```r
plot_ly(DF, x = ~IT/1000000, 
        y = ~Aeropuerto, 
        color= ~Aeropuerto, 
        type="box"
        ) %>%
layout(yaxis = list( title = "Aeropuertos"),
    xaxis = list( title = "Ingresos totales (Millones de US$)"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


En resumen, los tres gráficos nos permiten concluir que el aeropuerto de Lima, administrado por Lima Airport Partners (LAP), es responsable de los datos atípicos y genera los ingresos totales más altos. Al aislar el boxplot de los ingresos totales de este aeropuerto, se observa la presencia de datos por debajo de la mediana, aunque su valor mínimo se acerca al cuartil inferior (25%). Es importante destacar que la infraestructura LAP se refiere al Aeropuerto Internacional Jorge Chávez, ubicado en Lima, Perú, lo que indica que este aeropuerto es el que genera mayores ingresos en el país.Numero de Pasajeros vs Aeropuertos


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seShERix5ID0gfk5QLzEwMDAsXG4gICAgICAgIHggPSB+YXMuZmFjdG9yKEFlcm9wdWVydG8pLCBcbiAgICAgICAgdHlwZT1cImJhclwiLFxuICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yPWMoXCJsaWdodGJsdWVcIikpXG4gICAgICAgICklPiVcbiAgICBsYXlvdXQoeGF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiQWVyb3B1ZXJ0b3NcIiksXG4gICAgeWF4aXMgPSBsaXN0KCB0aXRsZSA9IFwiTnVtZXJvIGRlIHBhc2FqZXJvcyAobWlsZXMpXCIpKVxuYGBgIn0= -->

```r
plot_ly(DF,y = ~NP/1000,
        x = ~as.factor(Aeropuerto), 
        type="bar",
        marker = list(color=c("lightblue"))
        )%>%
    layout(xaxis = list( title = "Aeropuertos"),
    yaxis = list( title = "Numero de pasajeros (miles)"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Con esta gráfico se corrobora que el Aeropuerto de Lima (Aeropuerto Internacional Jorge Chávez) genera la mayor cantidad de ingresos y además recibe a la mayor cantidad de pasajeros respecto al resto del Perú. Otros aeropuertos notables son Cusco, Arequipa e Iquitos donde Cusco es el que más pasajeros recibe fuera de Lima. Se procede a dibujar el numero de pasajeros, los ingresos totales y los aeropuertos.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seShERix4ID0gfk5QLzEwMDAsXG4gICAgICAgIHkgPSB+SVQvMTAwMDAwMCwgXG4gICAgICAgIHR5cGU9XCJzY2F0dGVyXCIsXG4gICAgICAgIGNvbG9yID0gfmFzLmZhY3RvcihBZXJvcHVlcnRvKVxuICAgICAgICApXG5gYGAifQ== -->

```r
plot_ly(DF,x = ~NP/1000,
        y = ~IT/1000000, 
        type="scatter",
        color = ~as.factor(Aeropuerto)
        )
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


El gráfico nos deja en claro la estrecha relación de la cantidad de pasajeros con la de ingresos que posee el aeropuerto de Lima y como este sobresale por mucho del resto de aeropuertos. Se concluye que los datos atípicos provenientes de ingresos totales eran y nos contaban sobre las peculiaridades del caso Lima.

### Ingresos T U U A Total vs Ingresos Totales

Se eligió la comparación de las T U U A, porque esta es la TARIFA UNIFICADA POR USO DE AEROPUERTO, es decir es una tarifa que como consumidores debemos de pagar. El objetivo aquí es analizar cuanto de los ingresos totales provienen directamente de los bolsillos de los pasajeros.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdCgoREYkVFVVQU4vMTAwMDAwMCArIERGJFRVVUFJLzEwMDAwMDApLCBERiRJVC8xMDAwMDAwLCB4bGFiID0gXCJJbmdyZXNvcyBUVVVBIChtaWxsb25lcyBkZSBVUyQpXCIsIHlsYWIgPSBcIkluZ3Jlc29zIHRvdGFsZXMgKG1pbGxvbmVzIGRlIFVTJClcIiwgY29sPVwiIzkyNmMxNVwiLCBwY2g9XCLigKJcIilcblxuYGBgIn0= -->

```r
plot((DF$TUUAN/1000000 + DF$TUUAI/1000000), DF$IT/1000000, xlab = "Ingresos TUUA (millones de US$)", ylab = "Ingresos totales (millones de US$)", col="#926c15", pch="•")

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Comenzamos comparando el numero de pasajeros en miles totales, suma de pasajeros internacionales y nacionales, con los ingresos totales de cada aeropuerto en determinado mes y año en millones de dolares. A simple vista se puede ver un cierto tipo de relación lineal, sin embargo tenemos que comprobarlo. Usaremos el coeficiente de correlación ya que este no toma en cuenta la escala de las unidades, perfecto para nuestro estudio.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY29yKERGJElULCBERiRUVVVBSSArIERGJFRVVUFOLCB1c2U9XCJjb21wbGV0ZS5vYnNcIilcbmBgYCJ9 -->

```r
cor(DF$IT, DF$TUUAI + DF$TUUAN, use="complete.obs")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Tenemos un coeficiente de correlación que esta muy próximo a 1, es decir esta relación es casi perfectamente lineal y con tendencia ascendente.

Ahora crearemos un modelo de regresión lineal.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuVFVVQSA8LSBERiRUVVVBSStERiRUVVVBTlxubW9kZWxvID0gbG0oREYkSVQgfiBUVVVBLCBkYXRhPURGKVxubW9kZWxvXG5cbmQgPC0gZGF0YS5mcmFtZShcIlhcIj0gKERGJFRVVUFJICsgREYkVFVVQU4pLzEwMDAwMCwgXCJZXCI9REYkSVQvMTAwMDAwMClcbm1vZGVsbyA9IGxtKGQkWSB+IGQkWCwgZGF0YT1kKVxubW9kZWxvXG5cbnJtKGQpXG5gYGAifQ== -->

```r
TUUA <- DF$TUUAI+DF$TUUAN
modelo = lm(DF$IT ~ TUUA, data=DF)
modelo

d <- data.frame("X"= (DF$TUUAI + DF$TUUAN)/100000, "Y"=DF$IT/1000000)
modelo = lm(d$Y ~ d$X, data=d)
modelo

rm(d)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Del modelo creado se obtiene el intercepto, es decir cuando la TUUA valdrá cero y la pendiente, en este caso es relativamente baja pero ascendente.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdCgoREYkVFVVQU4rREYkVFVVQUkpLzEwMDAwMCwgREYkSVQvMTAwMDAwMCwgeGxhYiA9IFwiSW5ncmVzb3MgVFVVQSB0b3RhbCAobWlsbG9uZXMgZGUgVVMkKVwiLCB5bGFiID0gXCJJbmdyZXNvcyB0b3RhbGVzIChtaWxsb25lcyBkZSBVUyQpXCIsIGNvbD1cIiM5MjZjMTVcIiwgcGNoPVwi4oCiXCIpXG5hYmxpbmUoYT0gMC4xNTU3LCBiPTAuMjE5MCwgY29sPVwiI2M5YTIyN1wiKVxuYGBgIn0= -->

```r
plot((DF$TUUAN+DF$TUUAI)/100000, DF$IT/1000000, xlab = "Ingresos TUUA total (millones de US$)", ylab = "Ingresos totales (millones de US$)", col="#926c15", pch="•")
abline(a= 0.1557, b=0.2190, col="#c9a227")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Detallamos entonces que los ingresos totales guardan una alta relación con los ingresos generados por las TUUA y dependen en gran medida de estas, ergo la cantidad de pasajeros.

## Objetivo 4

Ahora haremos un análisis de la pandemia y pos-pandemia de los ingresos totales en los aeropuertos del Perú en los años (2020,2021 y 2022)

### Pandemia vs Pos-pandemia


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuREYyMDIwIDwtIGZpbHRlcihERiwgREYkQcOxbz09XCIyMDIwXCIpXG5ERjIwMjEgPC0gZmlsdGVyKERGLCBERiRBw7FvPT1cIjIwMjFcIilcbkRGMjAyMiA8LSBmaWx0ZXIoREYsIERGJEHDsW89PVwiMjAyMlwiKVxuXG5ERjIwMjAgJT4lIGdyb3VwX2J5KE1lcyxBw7FvKSAlPiUgc3VtbWFyaXNlKElUID0gc3VtKElULCBuYS5ybT1UUlVFKSwgTlAgPSBzdW0oTlAsIG5hLnJtID0gVFJVRSkpIC0+IERGMjAyMFxuXG5ERjIwMjEgJT4lIGdyb3VwX2J5KE1lcyxBw7FvKSAlPiUgc3VtbWFyaXNlKElUID0gc3VtKElULCBuYS5ybT1UUlVFKSwgTlAgPSBzdW0oTlAsIG5hLnJtID0gVFJVRSkpIC0+IERGMjAyMVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFxuREYyMDIyICU+JSBncm91cF9ieShNZXMsQcOxbykgJT4lIHN1bW1hcmlzZShJVCA9IHN1bShJVCwgbmEucm09VFJVRSksIE5QID0gc3VtKE5QLCBuYS5ybSA9IFRSVUUpKSAtPiBERjIwMjJcblxuXG5gYGAifQ== -->

```r
DF2020 <- filter(DF, DF$Año=="2020")
DF2021 <- filter(DF, DF$Año=="2021")
DF2022 <- filter(DF, DF$Año=="2022")

DF2020 %>% group_by(Mes,Año) %>% summarise(IT = sum(IT, na.rm=TRUE), NP = sum(NP, na.rm = TRUE)) -> DF2020

DF2021 %>% group_by(Mes,Año) %>% summarise(IT = sum(IT, na.rm=TRUE), NP = sum(NP, na.rm = TRUE)) -> DF2021
                                           
DF2022 %>% group_by(Mes,Año) %>% summarise(IT = sum(IT, na.rm=TRUE), NP = sum(NP, na.rm = TRUE)) -> DF2022

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seSh5ID0gfkRGMjAyMCRJVC8xMDAwMDAwLFxuICAgICAgICB4ID0gfkRGMjAyMCRNZXMsIFxuICAgICAgICB0eXBlPVwiYmFyXCIsXG4gICAgICAgIG5hbWU9XCIyMDIwXCIsXG4gICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnIzU3Y2M5OScpXG4gICAgICAgICklPiUgXG5cbiAgICBcbiAgICBhZGRfdHJhY2UoeSA9IH5ERjIwMjEkSVQvMTAwMDAwMCxcbiAgICAgICAgeCA9IH5ERjIwMjEkTWVzLCBcbiAgICAgICAgdHlwZT1cImJhclwiLFxuICAgICAgICBuYW1lPVwiMjAyMVwiLFxuICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yID0gJyMzOGEzYTUnKVxuICAgICAgICApJT4lXG4gICAgXG4gICAgXG4gICAgYWRkX3RyYWNlKHkgPSB+REYyMDIyJElULzEwMDAwMDAsXG4gICAgICAgIHggPSB+REYyMDIyJE1lcywgXG4gICAgICAgIHR5cGU9XCJiYXJcIixcbiAgICAgICAgbmFtZT1cIjIwMjJcIixcbiAgICAgICAgbWFya2VyID0gbGlzdChjb2xvciA9ICcjMjI1NzdhJylcbiAgICAgICAgKSU+JVxuICAgIFxuICAgIFxuICAgIGxheW91dCh4YXhpcyA9IGxpc3QoIHRpdGxlID0gXCJNZXNlc1wiKSxcbiAgICB5YXhpcyA9IGxpc3QoIHRpdGxlID0gXCJJbmdyZXNvcyB0b3RhbGVzIChNaWxsb25lcyBkZSBVUyQpXCIsXG4gICAgbnRpY2tzID0gMTAsXG4gICAgcmFuZ2UgPSBsaXN0KDAsNDUpKSxcbiAgICBcbiAgICBiYXJtb2RlPVwiZ3JvdXBcIilcbmBgYCJ9 -->

```r
plot_ly(y = ~DF2020$IT/1000000,
        x = ~DF2020$Mes, 
        type="bar",
        name="2020",
        marker = list(color = '#57cc99')
        )%>% 

    
    add_trace(y = ~DF2021$IT/1000000,
        x = ~DF2021$Mes, 
        type="bar",
        name="2021",
        marker = list(color = '#38a3a5')
        )%>%
    
    
    add_trace(y = ~DF2022$IT/1000000,
        x = ~DF2022$Mes, 
        type="bar",
        name="2022",
        marker = list(color = '#22577a')
        )%>%
    
    
    layout(xaxis = list( title = "Meses"),
    yaxis = list( title = "Ingresos totales (Millones de US$)",
    nticks = 10,
    range = list(0,45)),
    
    barmode="group")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Del gráfico de barras podemos observar:

-   La distribución de los ingresos totales en base a los meses del año.

-   Existe una asimetria notable entre los datos en el año 2020. Esta asimetria se explica por el surgimiento del Covid-19. Los ingresos bajaron bastante en proporción a la media.

-   Un patrón de crecimiento sobre los ingresos totales dependiendo de los meses. En algunos meses los ingresos totales son esperado a ser mayores que en otros meses, uno de los factores que pueden influir en esto son las vacaciones pues están estrechamente relacionas con el número de pasajeros a abordar en un aeropuerto.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5wbG90X2x5KCkgJT4lXG4gICAgYWRkX3RyYWNlKHkgPSB+REYyMDIwJElULzEwMDAwMDAsXG4gICAgICAgIHggPSB+REYyMDIwJE1lcywgXG4gICAgICAgIHR5cGU9XCJzY2F0dGVyXCIsXG4gICAgICAgIG1vZGU9XCJsaW5lcyttYXJrZXJzXCIsXG4gICAgICAgIG5hbWU9XCIyMDIwXCIsXG4gICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnIzU3Y2M5OScpLFxuICAgICAgICBsaW5lID0gbGlzdChjb2xvciA9ICcjNTdjYzk5JyksXG4gICAgICAgIGZpbGwgPSBcInRvbmV4dHlcIixcbiAgICAgICAgZmlsbGNvbG9yID0gJ3JnYmEoMTk3LDIzNywyMTEsMC4zKSdcbiAgICAgICAgKSU+JVxuICAgIGFkZF90cmFjZShERjIwMjEsIHkgPSB+REYyMDIxJElULzEwMDAwMDAsXG4gICAgICAgIHggPSB+REYyMDIxJE1lcywgXG4gICAgICAgIHR5cGU9XCJzY2F0dGVyXCIsXG4gICAgICAgIG1vZGU9XCJsaW5lcyttYXJrZXJzXCIsXG4gICAgICAgIG5hbWU9XCIyMDIxXCIsXG4gICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnIzM4YTNhNScpLFxuICAgICAgICBsaW5lID0gbGlzdChjb2xvciA9ICcjMzhhM2E1JyksXG4gICAgICAgIGZpbGwgPSBcInRvbmV4dHlcIixcbiAgICAgICAgZmlsbGNvbG9yID0gJ3JnYmEoMTA2LDE2NiwxNjksMC4zKSdcbiAgICAgICAgKSU+JVxuICAgIGFkZF90cmFjZSh5ID0gfkRGMjAyMiRJVC8xMDAwMDAwLFxuICAgICAgICB4ID0gfkRGMjAyMiRNZXMsIFxuICAgICAgICB0eXBlPVwic2NhdHRlclwiLFxuICAgICAgICBtb2RlPVwibGluZXMrbWFya2Vyc1wiLFxuICAgICAgICBuYW1lPVwiMjAyMlwiLFxuICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yID0gJyMyMjU3N2EnKSxcbiAgICAgICAgbGluZSA9IGxpc3QoY29sb3IgPSAnIzIyNTc3YScpLFxuICAgICAgICBmaWxsID0gXCJ0b25leHR5XCIsXG4gICAgICAgIGZpbGxjb2xvciA9ICdyZ2JhKDY4LDEwMiwxMjIsMC4zKSdcbiAgICAgICAgKSU+JVxuICAgIFxuICAgIGxheW91dCh4YXhpcyA9IGxpc3QoIHRpdGxlID0gXCJNZXNlc1wiKSxcbiAgICAgICAgICAgdGl0bGUgPSBcIkV2b2x1dGl2byBJbmdyZXNvc1wiLFxuICAgIHlheGlzID0gbGlzdCggdGl0bGUgPSBcIkluZ3Jlc29zIHRvdGFsZXMgKE1pbGxvbmVzIGRlIFVTJClcIiwgXG4gICAgICAgICAgICAgICAgICByYW5nZSA9IGxpc3QoMCw0NSkpXG4gICAgKVxuXG5gYGAifQ== -->

```r

plot_ly() %>%
    add_trace(y = ~DF2020$IT/1000000,
        x = ~DF2020$Mes, 
        type="scatter",
        mode="lines+markers",
        name="2020",
        marker = list(color = '#57cc99'),
        line = list(color = '#57cc99'),
        fill = "tonexty",
        fillcolor = 'rgba(197,237,211,0.3)'
        )%>%
    add_trace(DF2021, y = ~DF2021$IT/1000000,
        x = ~DF2021$Mes, 
        type="scatter",
        mode="lines+markers",
        name="2021",
        marker = list(color = '#38a3a5'),
        line = list(color = '#38a3a5'),
        fill = "tonexty",
        fillcolor = 'rgba(106,166,169,0.3)'
        )%>%
    add_trace(y = ~DF2022$IT/1000000,
        x = ~DF2022$Mes, 
        type="scatter",
        mode="lines+markers",
        name="2022",
        marker = list(color = '#22577a'),
        line = list(color = '#22577a'),
        fill = "tonexty",
        fillcolor = 'rgba(68,102,122,0.3)'
        )%>%
    
    layout(xaxis = list( title = "Meses"),
           title = "Evolutivo Ingresos",
    yaxis = list( title = "Ingresos totales (Millones de US$)", 
                  range = list(0,45))
    )

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Del gráfico de barras, se observa lo siguiente: la distribución de los ingresos totales según los meses del año, una notoria asimetría en los datos durante el año 2020 debido al impacto del Covid-19 con una disminución significativa de los ingresos en comparación con la media, y un patrón de crecimiento en los ingresos totales que varía según los meses, posiblemente influenciado por factores como las vacaciones y la cantidad de pasajeros que utilizan el aeropuerto.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGxvdF9seSgpICU+JVxuICAgIGFkZF90cmFjZSh5ID0gfkRGMjAyMCROUC8xMDAwLFxuICAgICAgICB4ID0gfkRGMjAyMCRNZXMsIFxuICAgICAgICB0eXBlPVwic2NhdHRlclwiLFxuICAgICAgICBtb2RlPVwibGluZXMrbWFya2Vyc1wiLFxuICAgICAgICBuYW1lPVwiMjAyMFwiLFxuICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yID0gJyNFMDlGM0UnKSxcbiAgICAgICAgbGluZSA9IGxpc3QoY29sb3IgPSAnI0UwOUYzRScpLFxuICAgICAgICBmaWxsID0gXCJ0b25leHR5XCIsXG4gICAgICAgIGZpbGxjb2xvciA9ICdyZ2JhKDIyNSwxODMsMTIzLDAuMyknXG4gICAgICAgICklPiVcbiAgICBhZGRfdHJhY2UoREYyMDIxLCB5ID0gfkRGMjAyMSROUC8xMDAwLFxuICAgICAgICB4ID0gfkRGMjAyMSRNZXMsIFxuICAgICAgICB0eXBlPVwic2NhdHRlclwiLFxuICAgICAgICBtb2RlPVwibGluZXMrbWFya2Vyc1wiLFxuICAgICAgICBuYW1lPVwiMjAyMVwiLFxuICAgICAgICBtYXJrZXIgPSBsaXN0KGNvbG9yID0gJyM5RTJBMkInKSxcbiAgICAgICAgbGluZSA9IGxpc3QoY29sb3IgPSAnIzlFMkEyQicpLFxuICAgICAgICBmaWxsID0gXCJ0b25leHR5XCIsXG4gICAgICAgIGZpbGxjb2xvciA9ICdyZ2JhKDE1OCw3Miw3NCwwLjMpJ1xuICAgICAgICApJT4lXG4gICAgYWRkX3RyYWNlKHkgPSB+REYyMDIyJE5QLzEwMDAsXG4gICAgICAgIHggPSB+REYyMDIyJE1lcywgXG4gICAgICAgIHR5cGU9XCJzY2F0dGVyXCIsXG4gICAgICAgIG1vZGU9XCJsaW5lcyttYXJrZXJzXCIsXG4gICAgICAgIG5hbWU9XCIyMDIyXCIsXG4gICAgICAgIG1hcmtlciA9IGxpc3QoY29sb3IgPSAnIzU0MEIwRScpLFxuICAgICAgICBsaW5lID0gbGlzdChjb2xvciA9ICcjNTQwQjBFJyksXG4gICAgICAgIGZpbGwgPSBcInRvbmV4dHlcIixcbiAgICAgICAgZmlsbGNvbG9yID0gJ3JnYmEoODcsNDUsNDcsMC4zKSdcbiAgICAgICAgKSU+JVxuICAgIFxuICAgIGxheW91dCh4YXhpcyA9IGxpc3QoIHRpdGxlID0gXCJNZXNlc1wiKSxcbiAgICAgICAgICAgdGl0bGUgPSBcIkV2b2x1dGl2byBQYXNhamVyb3NcIixcbiAgICB5YXhpcyA9IGxpc3QoIHRpdGxlID0gXCJOdW1lcm8gZGUgUGFzYWplcm9zIChNaWxlcylcIikpXG5gYGAifQ== -->

```r
plot_ly() %>%
    add_trace(y = ~DF2020$NP/1000,
        x = ~DF2020$Mes, 
        type="scatter",
        mode="lines+markers",
        name="2020",
        marker = list(color = '#E09F3E'),
        line = list(color = '#E09F3E'),
        fill = "tonexty",
        fillcolor = 'rgba(225,183,123,0.3)'
        )%>%
    add_trace(DF2021, y = ~DF2021$NP/1000,
        x = ~DF2021$Mes, 
        type="scatter",
        mode="lines+markers",
        name="2021",
        marker = list(color = '#9E2A2B'),
        line = list(color = '#9E2A2B'),
        fill = "tonexty",
        fillcolor = 'rgba(158,72,74,0.3)'
        )%>%
    add_trace(y = ~DF2022$NP/1000,
        x = ~DF2022$Mes, 
        type="scatter",
        mode="lines+markers",
        name="2022",
        marker = list(color = '#540B0E'),
        line = list(color = '#540B0E'),
        fill = "tonexty",
        fillcolor = 'rgba(87,45,47,0.3)'
        )%>%
    
    layout(xaxis = list( title = "Meses"),
           title = "Evolutivo Pasajeros",
    yaxis = list( title = "Numero de Pasajeros (Miles)"))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


De los gráficos evolutivos podemos apreciar:

-   En los gráficos evolutivos, se observa que los ingresos totales experimentaron una caída drástica a partir de febrero de 2020, coincidiendo con la aparición del Covid-19 en Perú y la implementación de medidas de confinamiento. Esta reducción se refleja también en el número de pasajeros, que se acerca a cero durante ese periodo. La recuperación de los ingresos totales fue lenta, tomando 2 años y 5 meses para volver a niveles similares a los de febrero de 2020.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->

    ```r
    
    round(100 - ((filter(DF2020, Mes == "Abril")$IT/1000000 )/( filter(DF2020, Mes == "Febrero")$IT/1000000) * 100) ,2)
    
    round( - filter(DF2020, Mes == "Abril")$IT/1000000  + filter(DF2020,Mes == "Febrero")$IT/1000000, 2)
    ```

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


-   En abril de 2020, los ingresos totales tuvieron una pérdida del 86.68% en comparación con febrero de 2020, representando una diferencia de aproximadamente 31.76 millones de dólares. A partir de abril de 2020, los ingresos se estabilizaron a niveles bajos pero con una tendencia ascendente en los años 2021 y 2022, a medida que se levantaron las restricciones de confinamiento, se controló la pandemia y el número de pasajeros aumentó.

# Analisis Probablisticos

## Probabilidad Empirica

-   **Variable Ingresos Totales:**

    Partiendo de la variable de "ingresos totales" (TI) la cual es numérica y continua. 

    Se puede crear el siguiente experimento: De un estudio de análisis de los ingresos de los aeropuertos peruanos, determinar el nivel de ingreso para cada declaración mensual de ingreso total de los aeropuertos del Perú, del año 2020 al 2022.

    Debido a que en la base de datos no se tienen variables que sean ordinales, hemos creado intervalos de valores para agrupar el nivel de los ingresos.

    Los valores posibles en este experimento son: 0, 1, 2 y 3. 

    Donde:

    **0** representa un nivel de ingresos nulo, es decir, no tiene ingresos en esa declaración.

    **1** representa un nivel de ingresos bajo, el cuál está dado por el rango mayor a 0 y menor o igual a 11 000 000.

    **2** representa un nivel de ingresos medio, el cuál está dado por el rango mayor a 11 000 000 y menor o igual a 22 000 000.

    **3** representa un nivel de ingresos alto, el cuál está dado por el rango mayor a 22 000 000.

    Los rangos fueron obtenidos diviendo entre 3 la suma entre el mínimo y el máximo, para luego aproximarlo al número entero y múltiplo de 1000.

    Entonces, los eventos creados serán:

    **I0**, es el evento donde al seleccionar una declaración de ingresos mensuales, este debe tener un nivel de ingresos nulo, igual a 0.

    **I1**, es el evento donde al seleccionar una declaración de ingresos mensuales, este debe tener un nivel de ingresos bajo, dentro del rango de 0 a 11 000 000 dólares.

    **I2**, es el evento donde al seleccionar una declaración de ingresos mensuales, este debe tener un nivel de ingresos medio, dentro del rango de 11 000 000 a 22 000 000 dólares.

    **I3**, es el evento donde al seleccionar una declaración de ingresos mensuales, este debe tener un nivel de ingresos alto, dentro del rango donde los números son mayor a 22 000 000 dólares.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubl90b3RhbCA8LSBucm93KERGKVxuXG4jIEluZ3Jlc29zIG51bG9zXG5JMF9mcmVxIDwtIG5yb3coREZbREYkSVQgPT0gMCwgXSlcblxuIyBJbmdyZXNvcyBiYWpvc1xuSTFfZnJlcSA8LSBucm93KERGW0RGJElUID4gMCAmIERGJElUIDw9IDExMDAwMDAwLCBdKVxuXG4jIEluZ3Jlc29zIG1lZGlvc1xuSTJfZnJlcSA8LSBucm93KERGW0RGJElUID4gMTEwMDAwMDAgJiBERiRJVCA8PSAyMjAwMDAwMCwgXSlcblxuIyBJbmdyZXNvcyBhbHRvc1xuSTNfZnJlcSA8LSBucm93KERGW0RGJElUID4gMjIwMDAwMDAsIF0pXG5cbmBgYCJ9 -->

```r
n_total <- nrow(DF)

# Ingresos nulos
I0_freq <- nrow(DF[DF$IT == 0, ])

# Ingresos bajos
I1_freq <- nrow(DF[DF$IT > 0 & DF$IT <= 11000000, ])

# Ingresos medios
I2_freq <- nrow(DF[DF$IT > 11000000 & DF$IT <= 22000000, ])

# Ingresos altos
I3_freq <- nrow(DF[DF$IT > 22000000, ])

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Para esto hay que saber el total de la población, luego obtener la frecuencia y por último, obtener la probabilidad de éxito p. Como se ve a continuación:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG4jIFByb2JhYmlsaWRhZCBkZSBpbmdyZXNvcyBudWxvc1xucF9JMCA8LSBJMF9mcmVxIC8gbl90b3RhbFxucHJpbnQocGFzdGUoXCJMYSBwcm9iYWJpbGlkYWQgZGUgcXVlIHVuIGFlcm9wdWVydG8gdGVuZ2EgaW5ncmVzb3MgbnVsb3MgZXNcIiwgcF9JMCkpXG5cbiMgUHJvYmFiaWxpZGFkIGRlIGluZ3Jlc29zIGJham9zXG5wX0kxIDwtIEkxX2ZyZXEgLyBuX3RvdGFsXG5wcmludChwYXN0ZShcIkxhIHByb2JhYmlsaWRhZCBkZSBxdWUgdW4gYWVyb3B1ZXJ0byB0ZW5nYSBpbmdyZXNvcyBiYWpvcyAoMCAtIDExLDAwMCwwMDApIGVzXCIsIHBfSTEpKVxuXG4jIFByb2JhYmlsaWRhZCBkZSBpbmdyZXNvcyBtZWRpb3NcbnBfSTIgPC0gSTJfZnJlcSAvIG5fdG90YWxcbnByaW50KHBhc3RlKFwiTGEgcHJvYmFiaWxpZGFkIGRlIHF1ZSB1biBhZXJvcHVlcnRvIHRlbmdhIGluZ3Jlc29zIG1lZGlvcyAoMTEsMDAwLDAwMSAtIDIyLDAwMCwwMDApIGVzXCIsIHBfSTIpKVxuXG4jIFByb2JhYmlsaWRhZCBkZSBpbmdyZXNvcyBhbHRvc1xucF9JMyA8LSBJM19mcmVxIC8gbl90b3RhbFxucHJpbnQocGFzdGUoXCJMYSBwcm9iYWJpbGlkYWQgZGUgcXVlIHVuIGFlcm9wdWVydG8gdGVuZ2EgaW5ncmVzb3MgYWx0b3MgKD4yMiwwMDAsMDAwKSBlc1wiLCBwX0kzKSlcbmBgYCJ9 -->

```r

# Probabilidad de ingresos nulos
p_I0 <- I0_freq / n_total
print(paste("La probabilidad de que un aeropuerto tenga ingresos nulos es", p_I0))

# Probabilidad de ingresos bajos
p_I1 <- I1_freq / n_total
print(paste("La probabilidad de que un aeropuerto tenga ingresos bajos (0 - 11,000,000) es", p_I1))

# Probabilidad de ingresos medios
p_I2 <- I2_freq / n_total
print(paste("La probabilidad de que un aeropuerto tenga ingresos medios (11,000,001 - 22,000,000) es", p_I2))

# Probabilidad de ingresos altos
p_I3 <- I3_freq / n_total
print(paste("La probabilidad de que un aeropuerto tenga ingresos altos (>22,000,000) es", p_I3))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Con esto podemos concluir que, la mayor probabilidad al momento de elegir al azar un aeropuerto, se la lleva los aeropuertos con ingresos totales bajos, por otro lado, tambien los aeropuertos con ingresos totales nulos ocupan una gran probabilidad y frecuencia, esto se puede deber al fin de operación en los aeropuertos de la provincias.

-   **Variable Número Pasajeros Nacionales:**

    Continuando con la probabilidad empírica, otra variable relevante para nuestro proyecto es el flujo de pasajeros en los aeropuertos, debido a observaciones mas completas se hará uso del número de pasajeros nacionales. Entonces la variable, numérica y discreta, de número de pasajeros nacionales, nos puede ayudar a realizar el siguiente experimento:

    En el mismo estudio sobre los ingresos de los aeropuertos, ahora se desea saber la afluencia de pasajeros nacionales según cada declaración mensual de los aeropuertos del Perú entre los años 2020 y 2022. 

    De la misma manera que los ingresos al no tener variables ordinales, debemos crear intervalos que sean considerados como escalas, por ello los posibles resultados para el experimento son 0, 1, 2, 3. 

    Donde:

    **0** representa un nivel de afluencia nulo, es decir, no se tuvo pasajeros nacionales en ese mes.

    **1** representa un nivel de afluencia  bajo, el cuál está dado por el rango mayor a 0 y menor o igual a 390 000.

    **2** representa un nivel de afluencia  medio, el cuál está dado por el rango mayor a 390 000 y menor o igual a 780 000.

    **3** representa un nivel de afluencia  alto, el cuál está dado por el rango mayor a 780 000.

    Tal como en lo anterior, los rangos fueron obtenidos diviendo entre 3 la suma entre el mínimo y el máximo, para luego aproximarlo al número entero y múltiplo de 1000.

    Entonces, los eventos creados serán:

    **NP0**, es el evento donde al seleccionar una declaración mensual aleatoriamente, este debe tener un nivel de afluencia nulo, igual a 0.

    **NP1**, es el evento donde al seleccionar una declaración mensual aleatoriamente, este debe tener un nivel de afluencia bajo, dentro del rango de 0 a  390 000 pasajeros nacionales.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->

    ```r
    # Fluencia de pasajeros nula
    NP0_freq <- nrow(datos[datos$NPN == 0, ])
    
    # Fluencia de pasajeros baja
    NP1_freq <- nrow(datos[datos$NPN > 0 & datos$NPN <= 390000, ])
    
    # Fluencia de pasajeros media
    NP2_freq <- nrow(datos[datos$NPN > 390000 & datos$NPN <= 780000, ])
    
    # Fluencia de pasajeros alta
    NP3_freq <- nrow(datos[datos$NPN > 780000, ])
    ```

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


    Ahora para cada evento se determinará la probabilidad, de la misma manera que en la variable anterior, se muestra a continuación:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->

    ```r
    # Probabilidad de fluencia de pasajeros nula
    p_NP0 <- NP0_freq / n_total
    print(paste("La probabilidad de que un aeropuerto tenga fluencia de pasajeros nula es", p_NP0))
    
    # Probabilidad de fluencia de pasajeros baja
    p_NP1 <- NP1_freq / n_total
    print(paste("La probabilidad de que un aeropuerto tenga fluencia de pasajeros media (0 - 390,000) es", p_NP1))
    
    # Probabilidad de fluencia de pasajeros media
    p_NP2 <- NP2_freq / n_total
    print(paste("La probabilidad de que un aeropuerto tenga fluencia de pasajeros media (390,001 - 780,000) es", p_NP2))
    
    # Probabilidad de fluencia de pasajeros alta
    p_NP3 <- NP3_freq / n_total
    print(paste("La probabilidad de que un aeropuerto tenga fluencia de pasajeros alta (>780,000) es", p_NP3))
    ```

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


    Similar a lo sucedido con la variable de Ingresos Totales, esta variable tiene una gran probabilidad en la fluencia de pasajeros bajos, seguida de la afluencia de pasajeros nula. De igual manera, puede sustentarse por el cierre de los aeropuertos pequeños y mayor posicionamiento de las grandes aerolíneas en las provincias principales.

## Probabilidad Condicional


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuciA8LSBmdW5jdGlvbih4KXtcbiAgICAgcmV0dXJuKHJvdW5kKHgsZGlnaXRzPTIpKX1cbnIyIDwtIGZ1bmN0aW9uKHgpe1xuICAgICByZXR1cm4ocm91bmQoeCxkaWdpdHM9NSkpfVxuYGBgIn0= -->

```r
r <- function(x){
     return(round(x,digits=2))}
r2 <- function(x){
     return(round(x,digits=5))}
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


**1)**

A = Seleccionar un aeropuerto cuyos ingresos totales en un mes sean mayores a 100 000 dólares.

B = Seleccionar un aeropuerto que cuente con ingresos por el alquiler de locales comerciales.

Creamos una tabla:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuVDFUVCA8LSBhcy5udW1lcmljKGxlbmd0aCh3aGljaChERiRJVCA+IDEwMDAwMCAmIERGJEFMQ19WRVIgPT0gXCJTaVwiKSkpXG5UMVRGIDwtIGFzLm51bWVyaWMobGVuZ3RoKHdoaWNoKERGJElUID4gMTAwMDAwICYgREYkQUxDX1ZFUiA9PSBcIk5vXCIpKSlcblQxRlQgPC0gYXMubnVtZXJpYyhsZW5ndGgod2hpY2goREYkSVQgPD0gMTAwMDAwICYgREYkQUxDX1ZFUiA9PSBcIlNpXCIpKSlcblQxRkYgPC0gYXMubnVtZXJpYyhsZW5ndGgod2hpY2goREYkSVQgPD0gMTAwMDAwICYgREYkQUxDX1ZFUiA9PSBcIk5vXCIpKSlcblxudGFiMSA8LSBtYXRyaXgoYyhyMihUMVRUKSxyMihUMVRGKSxyMihUMVRUK1QxVEYpLHIyKFQxRlQpLHIyKFQxRkYpLHIyKFQxRlQrVDFGRikscjIoVDFUVCtUMUZUKSxyMihUMVRGK1QxRkYpLFQxVFQrVDFURitUMUZUK1QxRkYpLCBuY29sPTMsIGJ5cm93PVRSVUUpXG5jb2xuYW1lcyh0YWIxKSA8LSBjKCdBID4gMTAwaycsICcgQSA8PSAxMDBrICcsICcgICAgICcpXG5yb3duYW1lcyh0YWIxKSA8LSBjKCdCID09IFNpICcsICdCID09IE5vJywgJyAnKVxudGFiMSA8LSBhcy50YWJsZSh0YWIxKVxudGFiMVxuYGBgIn0= -->

```r
T1TT <- as.numeric(length(which(DF$IT > 100000 & DF$ALC_VER == "Si")))
T1TF <- as.numeric(length(which(DF$IT > 100000 & DF$ALC_VER == "No")))
T1FT <- as.numeric(length(which(DF$IT <= 100000 & DF$ALC_VER == "Si")))
T1FF <- as.numeric(length(which(DF$IT <= 100000 & DF$ALC_VER == "No")))

tab1 <- matrix(c(r2(T1TT),r2(T1TF),r2(T1TT+T1TF),r2(T1FT),r2(T1FF),r2(T1FT+T1FF),r2(T1TT+T1FT),r2(T1TF+T1FF),T1TT+T1TF+T1FT+T1FF), ncol=3, byrow=TRUE)
colnames(tab1) <- c('A > 100k', ' A <= 100k ', '     ')
rownames(tab1) <- c('B == Si ', 'B == No', ' ')
tab1 <- as.table(tab1)
tab1
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Validamos la independencia de las 2 variables:

$$P(A\cap B) = P(A)P(B)$$


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuMzQyLzc1M1xuKDUwOC83NTMpKig0MTYvNzUzKVxuYGBgIn0= -->

```r
342/753
(508/753)*(416/753)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


$$P(A\setminus B) = P(A)$$


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuMzQyLzQxNlxuNTA4Lzc1M1xuYGBgIn0= -->

```r
342/416
508/753
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Debido a que no se cumplen es una variable dependiente.

Aplicar diagrama de Bayes:

![](https://uploads.disquscdn.com/images/5ff8dc25f16c95a3d56bdc91bed9e1dd61e3ae17971a845bcee49d1f5c7242d1.png){fig-align="center"}

$$P(B\setminus A) = \frac{P(A\setminus B)P(B)}{P(A)}$$


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuKDM0Mi80MTYpKig0MTYvNzUzKS8oKDM0Mi80MTYpKig0MTYvNzUzKSsoMTY2LzQxNikqKDQxNi83NTMpKVxuYGBgIn0= -->

```r
(342/416)*(416/753)/((342/416)*(416/753)+(166/416)*(416/753))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


**2)**

A = Seleccionar un aeropuerto que obtenga ingresos por alquiler de áreas de mantenimiento.

B = Seleccionar un aeropuerto que cuente con ingresos por reembolsos.

Creamos una tabla:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuVDJUVCA8LSBhcy5udW1lcmljKGxlbmd0aCh3aGljaChERiRBQURNX1ZFUiA9PSBcIlNpXCIgJiBERiRJUlJfVkVSID09IFwiU2lcIikpKVxuVDJURiA8LSBhcy5udW1lcmljKGxlbmd0aCh3aGljaChERiRBQURNX1ZFUiA9PSBcIlNpXCIgJiBERiRJUlJfVkVSID09IFwiTm9cIikpKVxuVDJGVCA8LSBhcy5udW1lcmljKGxlbmd0aCh3aGljaChERiRBQURNX1ZFUiA9PSBcIk5vXCIgJiBERiRJUlJfVkVSID09IFwiU2lcIikpKVxuVDJGRiA8LSBhcy5udW1lcmljKGxlbmd0aCh3aGljaChERiRBQURNX1ZFUiA9PSBcIk5vXCIgJiBERiRJUlJfVkVSID09IFwiTm9cIikpKVxuXG50YWIyIDwtIG1hdHJpeChjKHIyKFQyVFQpLHIyKFQyVEYpLHIyKFQyVFQrVDJURikscjIoVDJGVCkscjIoVDJGRikscjIoVDJGVCtUMkZGKSxyMihUMlRUK1QyRlQpLHIyKFQyVEYrVDJGRiksVDJUVCtUMlRGK1QyRlQrVDJGRiksIG5jb2w9MywgYnlyb3c9VFJVRSlcbmNvbG5hbWVzKHRhYjIpIDwtIGMoJ0EgPT0gU2knLCAnIEEgPT0gTm8gJywgJyAgICAgJylcbnJvd25hbWVzKHRhYjIpIDwtIGMoJ0IgPT0gU2kgJywgJ0IgPT0gTm8nLCAnICcpXG50YWIyIDwtIGFzLnRhYmxlKHRhYjIpXG50YWIyXG5gYGAifQ== -->

```r
T2TT <- as.numeric(length(which(DF$AADM_VER == "Si" & DF$IRR_VER == "Si")))
T2TF <- as.numeric(length(which(DF$AADM_VER == "Si" & DF$IRR_VER == "No")))
T2FT <- as.numeric(length(which(DF$AADM_VER == "No" & DF$IRR_VER == "Si")))
T2FF <- as.numeric(length(which(DF$AADM_VER == "No" & DF$IRR_VER == "No")))

tab2 <- matrix(c(r2(T2TT),r2(T2TF),r2(T2TT+T2TF),r2(T2FT),r2(T2FF),r2(T2FT+T2FF),r2(T2TT+T2FT),r2(T2TF+T2FF),T2TT+T2TF+T2FT+T2FF), ncol=3, byrow=TRUE)
colnames(tab2) <- c('A == Si', ' A == No ', '     ')
rownames(tab2) <- c('B == Si ', 'B == No', ' ')
tab2 <- as.table(tab2)
tab2
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Validamos la independencia de las 2 variables:

$$
P(A\cap B) = P(A)P(B)
$$


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuNi83NTNcbig0MjgvNzUzKSooMjkvNzUzKVxuYGBgIn0= -->

```r
6/753
(428/753)*(29/753)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


$$P(A\setminus B) = P(A)$$


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuNi8yOVxuNDI4Lzc1M1xuYGBgIn0= -->

```r
6/29
428/753
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Debido a que no se cumplen, es una variable independiente.

Aplicar diagrama de Bayes:

![](https://uploads.disquscdn.com/images/beef81c2e5bcb0fee9cb6553e32ddaaa53f04bf7c0d450a009d4647173339c17.png){fig-align="center"}

$$P(B\setminus A) = \frac{P(A\setminus B)P(B)}{P(A)}$$


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuKDYvMjkpKigyOS83NTMpLygoNi8yOSkqKDI5Lzc1MykrKDQyMi8yOSkqKDI5Lzc1MykpXG5gYGAifQ== -->

```r
(6/29)*(29/753)/((6/29)*(29/753)+(422/29)*(29/753))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Modelos Probabilisticos Discretos

### Distribución Binomial


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBDcmVhbW9zIHVuYSBudWV2YSB2YXJpYWJsZSBxdWUgaW5kaWNhIHNpIHVuIGFlcm9wdWVydG8gdHV2byBpbmdyZXNvc1xuREYkdHV2b19pbmdyZXNvcyA8LSBpZmVsc2UoREYkSVQgPiAwLCAxLCAwKVxuXG4jIENhbGN1bGFtb3MgZWwgbsO6bWVybyB0b3RhbCBkZSBhZXJvcHVlcnRvc1xubnVtX3RvdGFsX2Flcm9wdWVydG9zIDwtIG5yb3coREYpXG5cbiMgQ2FsY3VsYW1vcyBlbCBuw7ptZXJvIGRlIGFlcm9wdWVydG9zIHF1ZSB0dXZpZXJvbiBpbmdyZXNvc1xubnVtX2Flcm9wdWVydG9zX2Nvbl9pbmdyZXNvcyA8LSBzdW0oREYkdHV2b19pbmdyZXNvcylcblxuIyBDYWxjdWxhbW9zIGxhIHByb2JhYmlsaWRhZCBkZSDDqXhpdG8gKHApXG5wIDwtIG51bV9hZXJvcHVlcnRvc19jb25faW5ncmVzb3MgLyBudW1fdG90YWxfYWVyb3B1ZXJ0b3NcblxuIyBDYWxjdWxhbW9zIGxhIHByb2JhYmlsaWRhZCBkZSBmcmFjYXNvIChxKVxucSA8LSAxIC0gcFxuXG5cbnByaW50KHBhc3RlKFwiTsO6bWVybyB0b3RhbCBkZSBhZXJvcHVlcnRvczpcIiwgbnVtX3RvdGFsX2Flcm9wdWVydG9zKSlcbnByaW50KHBhc3RlKFwiTsO6bWVybyBkZSBhZXJvcHVlcnRvcyBjb24gaW5ncmVzb3M6XCIsIG51bV9hZXJvcHVlcnRvc19jb25faW5ncmVzb3MpKVxucHJpbnQocGFzdGUoXCJQcm9iYWJpbGlkYWQgZGUgw6l4aXRvIChwKTpcIiwgcCkpXG5wcmludChwYXN0ZShcIlByb2JhYmlsaWRhZCBkZSBmcmFjYXNvIChxKTpcIiwgcSkpXG5gYGAifQ== -->

```r
# Creamos una nueva variable que indica si un aeropuerto tuvo ingresos
DF$tuvo_ingresos <- ifelse(DF$IT > 0, 1, 0)

# Calculamos el número total de aeropuertos
num_total_aeropuertos <- nrow(DF)

# Calculamos el número de aeropuertos que tuvieron ingresos
num_aeropuertos_con_ingresos <- sum(DF$tuvo_ingresos)

# Calculamos la probabilidad de éxito (p)
p <- num_aeropuertos_con_ingresos / num_total_aeropuertos

# Calculamos la probabilidad de fracaso (q)
q <- 1 - p


print(paste("Número total de aeropuertos:", num_total_aeropuertos))
print(paste("Número de aeropuertos con ingresos:", num_aeropuertos_con_ingresos))
print(paste("Probabilidad de éxito (p):", p))
print(paste("Probabilidad de fracaso (q):", q))
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Distribución Geométrica:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIyBMaXN0YXMgZGUgYWVyb3B1ZXJ0b3MgcG9yIHJlZ2nDs25cbmFlcm9wdWVydG9zX2Nvc3RhIDwtIGMoXCJMaW1hXCIsIFwiQ2hpY2xheW9cIiwgXCJQaXNjb1wiLCBcIlBpdXJhXCIsIFwiVGFjbmFcIiwgXCJUYWxhcmFcIiwgXCJUcnVqaWxsb1wiLCBcIlR1bWJlc1wiLCBcIkF5YWN1Y2hvXCIpXG5hZXJvcHVlcnRvc19zaWVycmEgPC0gYyhcIkFuZGFodWF5bGFzXCIsIFwiQXJlcXVpcGFcIiwgXCJDYWphbWFyY2FcIiwgXCJDaGFjaGFwb3lhc1wiLCBcIkh1YXJhei1BbnRhXCIsIFwiSnVsaWFjYVwiLCBcIkN1c2NvXCIpXG5hZXJvcHVlcnRvc19zZWx2YSA8LSBjKFwiSXF1aXRvc1wiLCBcIlB1Y2FsbHBhXCIsIFwiUHVlcnRvIE1hbGRvbmFkb1wiLCBcIlRhcmFwb3RvXCIpXG5cbiMgQXN1bWltb3MgcXVlIGVsIGRhdGFmcmFtZSBzZSBsbGFtYSAnZGF0b3MnLCBzaSB0aWVuZSB1biBub21icmUgZGlmZXJlbnRlLCBjYW1iaWEgJ2RhdG9zJyBwb3IgZWwgbm9tYnJlIGNvcnJlY3RvLlxuREYgPC0gREYgJT4lXG4gIG11dGF0ZShSZWdpb24gPSBjYXNlX3doZW4oXG4gICAgQWVyb3B1ZXJ0byAlaW4lIGFlcm9wdWVydG9zX2Nvc3RhIH4gXCJDb3N0YVwiLFxuICAgIEFlcm9wdWVydG8gJWluJSBhZXJvcHVlcnRvc19zaWVycmEgfiBcIlNpZXJyYVwiLFxuICAgIEFlcm9wdWVydG8gJWluJSBhZXJvcHVlcnRvc19zZWx2YSB+IFwiU2VsdmFcIixcbiAgICBUUlVFIH4gXCJPdHJvXCIgICMgUGFyYSBjdWFscXVpZXIgYWVyb3B1ZXJ0byBubyBlc3BlY2lmaWNhZG8gZW4gbGFzIGxpc3Rhc1xuICApKVxuXG4jIENhbGN1bGFyIGxhIHByb2JhYmlsaWRhZCBkZSDDqXhpdG9cbm5fdnVlbG9zIDwtIG5yb3coREYpXG5uX3Z1ZWxvc19jb3N0YSA8LSBucm93KERGW0RGJFJlZ2lvbiA9PSBcIkNvc3RhXCIsXSlcbnAgPC0gbl92dWVsb3NfY29zdGEgLyBuX3Z1ZWxvc1xucSA8LSAxIC0gcFxuXG4jIENhbGN1bGFyIGxhIHByb2JhYmlsaWRhZCBkZSBxdWUgZWwgcHJpbWVyIHZ1ZWxvIHF1ZSBwYXJ0ZSBkZSBsYSBjb3N0YSBzZWEgZWwgb2N0YXZvIGFlcm9wdWVydG9cbm4gPC0gOFxueSA8LSBuIC0gMVxucHJvYmFiaWxpZGFkIDwtIChxXnkpICogcFxuXG5wcmludChwYXN0ZShcIkxhIHByb2JhYmlsaWRhZCBkZSBxdWUgZWwgb2N0YXZvIHZ1ZWxvIHBhcnRhIGRlIHVuIGFlcm9wdWVydG8gZGUgbGEgY29zdGEgZXMgZGUgXCIsIHByb2JhYmlsaWRhZCkpXG5cbmBgYCJ9 -->

```r
# Listas de aeropuertos por región
aeropuertos_costa <- c("Lima", "Chiclayo", "Pisco", "Piura", "Tacna", "Talara", "Trujillo", "Tumbes", "Ayacucho")
aeropuertos_sierra <- c("Andahuaylas", "Arequipa", "Cajamarca", "Chachapoyas", "Huaraz-Anta", "Juliaca", "Cusco")
aeropuertos_selva <- c("Iquitos", "Pucallpa", "Puerto Maldonado", "Tarapoto")

# Asumimos que el dataframe se llama 'datos', si tiene un nombre diferente, cambia 'datos' por el nombre correcto.
DF <- DF %>%
  mutate(Region = case_when(
    Aeropuerto %in% aeropuertos_costa ~ "Costa",
    Aeropuerto %in% aeropuertos_sierra ~ "Sierra",
    Aeropuerto %in% aeropuertos_selva ~ "Selva",
    TRUE ~ "Otro"  # Para cualquier aeropuerto no especificado en las listas
  ))

# Calcular la probabilidad de éxito
n_vuelos <- nrow(DF)
n_vuelos_costa <- nrow(DF[DF$Region == "Costa",])
p <- n_vuelos_costa / n_vuelos
q <- 1 - p

# Calcular la probabilidad de que el primer vuelo que parte de la costa sea el octavo aeropuerto
n <- 8
y <- n - 1
probabilidad <- (q^y) * p

print(paste("La probabilidad de que el octavo vuelo parta de un aeropuerto de la costa es de ", probabilidad))

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Modelos Probabilisticos Continuos

Definir las funciones:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuciA8LSBmdW5jdGlvbih4KXtcbiAgICAgcmV0dXJuKHJvdW5kKHgsZGlnaXRzPTIpKX1cbnIyIDwtIGZ1bmN0aW9uKHgpe1xuICAgICByZXR1cm4ocm91bmQoeCxkaWdpdHM9NSkpfVxuYGBgIn0= -->

```r
r <- function(x){
     return(round(x,digits=2))}
r2 <- function(x){
     return(round(x,digits=5))}
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### **Distribución Exponencial**


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaGlzdChERiRBTEMsIGJyZWFrcyA9IDcwLCBwcm9iID0gVFJVRSwgbWFpbiA9IFwiSGlzdG9ncmFtYSBkZSBsb3MgSW5ncmVzb3MgUG9yIEFscXVpbGVyIGRlIE9maWNpbmFzXCIsIHlsYWIgPSBcIkRlbnNpZGFkXCIsIHlsaW0gPSBjKDAsIDAuMDAwMzUpLCB4bGFiID0gXCJJbmdyZXNvcyBwb3IgQWxxdWlsZXIgZGUgT2ZpY2luYXMgZGUgT3BlcmFjaW9uZXMgKGVuIGTDs2xhcmVzKVwiKVxuXG54IDwtIHNlcShtaW4oYXMubnVtZXJpYyhERiRBTEMpLCBuYS5ybT0gVFJVRSksIG1heChhcy5udW1lcmljKERGJEFMQyksIG5hLnJtID0gVFJVRSApLCBsZW5ndGggPSA0MClcblxuZiA8LSBkbm9ybSh4LCBtZWFuID0gbWVhbihhcy5udW1lcmljKERGJEFMQyksIG5hLnJtID0gVFJVRSksIHNkID0gc2QoYXMubnVtZXJpYyhERiRBTEMpLCBuYS5ybSA9IFRSVUUpKVxuXG5saW5lcyh4LCBmLCBjb2wgPSBcImJsdWVcIiwgbHdkID0gNClcbmBgYCJ9 -->

```r
hist(DF$ALC, breaks = 70, prob = TRUE, main = "Histograma de los Ingresos Por Alquiler de Oficinas", ylab = "Densidad", ylim = c(0, 0.00035), xlab = "Ingresos por Alquiler de Oficinas de Operaciones (en dólares)")

x <- seq(min(as.numeric(DF$ALC), na.rm= TRUE), max(as.numeric(DF$ALC), na.rm = TRUE ), length = 40)

f <- dnorm(x, mean = mean(as.numeric(DF$ALC), na.rm = TRUE), sd = sd(as.numeric(DF$ALC), na.rm = TRUE))

lines(x, f, col = "blue", lwd = 4)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Si nos fijamos en el intervalo \[-2000,20000\]:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaGlzdChERiRBTEMsIGJyZWFrcyA9IDcwLCBwcm9iID0gVFJVRSwgbWFpbiA9IFwiSGlzdG9ncmFtYSBkZSBsb3MgSW5ncmVzb3MgUG9yIEFscXVpbGVyIGRlIE9maWNpbmFzXCIsIHlsYWIgPSBcIkRlbnNpZGFkXCIsIHlsaW0gPSBjKDAsIDAuMDAwMzUpLCB4bGltID0gYygtMjAwMCwyMDAwMCksIHhsYWIgPSBcIkluZ3Jlc29zIHBvciBBbHF1aWxlciBkZSBPZmljaW5hcyBkZSBPcGVyYWNpb25lcyAoZW4gZMOzbGFyZXMpXCIpXG5cbnggPC0gc2VxKG1pbihhcy5udW1lcmljKERGJEFMQyksIG5hLnJtPSBUUlVFKSwgbWF4KGFzLm51bWVyaWMoREYkQUxDKSwgbmEucm0gPSBUUlVFICksIGxlbmd0aCA9IDQwKVxuXG5mIDwtIGRub3JtKHgsIG1lYW4gPSBtZWFuKGFzLm51bWVyaWMoREYkQUxDKSwgbmEucm0gPSBUUlVFKSwgc2QgPSBzZChhcy5udW1lcmljKERGJEFMQyksIG5hLnJtID0gVFJVRSkpXG5cbmxpbmVzKHgsIGYsIGNvbCA9IFwiYmx1ZVwiLCBsd2QgPSA0KVxuYGBgIn0= -->

```r
hist(DF$ALC, breaks = 70, prob = TRUE, main = "Histograma de los Ingresos Por Alquiler de Oficinas", ylab = "Densidad", ylim = c(0, 0.00035), xlim = c(-2000,20000), xlab = "Ingresos por Alquiler de Oficinas de Operaciones (en dólares)")

x <- seq(min(as.numeric(DF$ALC), na.rm= TRUE), max(as.numeric(DF$ALC), na.rm = TRUE ), length = 40)

f <- dnorm(x, mean = mean(as.numeric(DF$ALC), na.rm = TRUE), sd = sd(as.numeric(DF$ALC), na.rm = TRUE))

lines(x, f, col = "blue", lwd = 4)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Podríamos observar que se trata de una distribución exponencial, por lo tanto para poder obtener la esperanza de nuestra distribución, es requerido hallar el promedio.


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucHJvbSA8LSBtZWFuKGFzLm51bWVyaWMoREYkQUxDKSwgbmEucm0gPSBUUlVFKVxucihwcm9tKVxuYGBgIn0= -->

```r
prom <- mean(as.numeric(DF$ALC), na.rm = TRUE)
r(prom)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Ahora hemos hallado el promedio, por lo tanto si nuestro objetivo es calcular la probabilidad de que los ingresos por alquiler de oficinas de operaciones superen los 3000 dólares entonces debemos:


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucGV4cCgzMDAwLDEvcHJvbSlcbmBgYCJ9 -->

```r
pexp(3000,1/prom)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->

