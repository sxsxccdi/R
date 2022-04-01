#1)
###Crear una funcion que al aplicarla sobre un dataframe te de de la columna 1 a 
#la columna x 

#Por ejemplo, esto deberia de dar de la columna 1 hasta la 5 de mtcars
#obtener_columnas(tabla = mtcars, hasta = 5) 
mi_vector_1 <- c(20, 39, 45, 65, 78, 46, 89)
mi_vector_2 <- c(factor("masculino"), factor("femenino"), factor("femenino"), factor("masculino"), factor("masculino"), factor("masculino"), factor("femenino"))
mi_vector_3 <- c(5789, 5679.45, 15732, 80764, 65347, 25763, 65342)
mi_vector_4 <- c("inconforme", "conforme", "conforme","conforme","conforme","conforme","conforme")
mi_tabla <- data.frame(mi_vector_1, mi_vector_2, mi_vector_3, mi_vector_4)
mi_tabla <- data.frame(Edad = mi_vector_1, Genero = mi_vector_2, Sueldo = mi_vector_3, Conformidad_del_Salario = mi_vector_4)


obtener_columnas <- function(tabla, hasta) {
  print(tabla[,1:hasta])
}
obtener_columnas(tabla = mi_tabla, hasta = 3) 

#2) 
#Crear una funcion que nos de el punto medio entre dos numeros que se pasen a
#los argumentos de la funcion y que la funcion imprima en pantalla: El punto medio de valor1 y 
#valor2 es z. 

#Por ejemplo, punto_medio(x = 6, y = 8) deberia de regresar como resultado:
# El punto medio entre 6 y 8 es 7.


punto_medio <- function(a,b,c) {
  c <- median(a:b)
  paste("El punto medio entre", a, "y", b, "es", c)
}
punto_medio(a = 2, b = 9)

#3)
#Crear una funcion nueva o utilizar una funcion existente que cuente del numero 
#1 al numero x. Por ejemplo, mi_suma(x = 1, y = 100) debe de regresar como resultado 5050


mi_suma <- function(f,g,h) {
  h <- sum(f:g)
  print(h)
}
mi_suma(f = 1, g = 10001)


#4)
#Utiliza apply para sumar los renglones de dataframe mtcars

apply(mtcars, MARGIN = 1, sum)


#5) 
#Utiliza tapply para contar los vehiculos agrupado por cilindros 
#(En el video de ese tema viene algo muy parecido)

tapply(mtcars$cyl, mtcars$cyl, sum)
