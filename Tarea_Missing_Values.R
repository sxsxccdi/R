#1) Importa los datos del archivo HousingData.csv
library(readr)
file.choose()
Housing_Data <- read_csv("C:\\Users\\Susana\\Documents\\CURSO_DE _R\\HousingData.csv")

#2) Cuenta el numero de NAs por columna

apply(Housing_Data, MARGIN = 2, function(x) sum(is.na(x)))

#3) Sustituye los NAs de la columna AGE por la media de la columna

Housing_Data[is.na(Housing_Data$AGE), "AGE"] <- mean(Housing_Data$AGE, na.rm = TRUE)
apply(Housing_Data, MARGIN = 2, function(x) sum(is.na(x))) #Corroboramos que funcionó lo anterior
