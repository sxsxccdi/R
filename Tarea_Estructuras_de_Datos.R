#1) Declara un vector que contenga 6 valores con tipo de dato logical
mi_vector_1 <- c(T,F,F,T,T,F)

#2) Declara un vector que sea una secuencia que inicie en 100 y termine en 130
# que vaya incrementando de 0.1 en 0.1.
mi_vector_2 <- seq(100,130, by=0.1)

#3) Declara un dataframe que contenga las columnas "Edad" (tipo de dato numerico)
# Genero (Tipo de dato factor) y correo electronico (tipo de dato character) y asignale 
# 3 rengolnes con valores
mi_vector_3 <- c(20,18,19)
mi_vector_4 <- c(factor("maculino"), factor("femenino"), factor("femenino"))
mi_vector_5 <- c("Onepiece28@gmail.com", "SaraGarcia45@gmail.com", "AnamOren034@Outlook.com")
data.frame(mi_vector_3, mi_vector_4, mi_vector_5)
data.frame(Edad=mi_vector_3, Genero=mi_vector_4, correo_electronico=mi_vector_5)

#4) filtra los rengoles del dataframe mtcars que cumplan la condicion que en la columna
# wt sea mayor a 2 y ademas que cyl sea igual a 8
mtcars[mtcars$cyl == 8,][mtcars$wt>2,]

#5) Crea una lista vacia de longitud (lenght) 6. 
#Hint. En el video de listas viene como hacerlo
lista_vacia <- vector(mode = "list", length = 6)

#6) Declara dos matrices con valores numericos y realiza multiplicacion matricial
#entre ellas.
A <- matrix(c(2,1,0,5,9,6,2,8,1), nrow = 3, byrow = TRUE)
B <- matrix(c(0,3,4,8,9,5,3,3,7), nrow = 3, byrow = FALSE)
A%*%B
