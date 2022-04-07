#1) if {} else {}
### Crear un if else que evalue si un numero es mayor a 100, si es asi, entonces
### que imprima en consola "Numero muy grande, el numero es: (Aqui poner el numero)"
### y si el numero es menor o igual a 100, entonces que imprima "Numero adecuado"

x <- 786
if(x <= 100) {
  print("Numero adecuado")
} else {
  paste("Numero muy grande, el numero es", x)
}

#2) ifelse()
### Hacer lo mismo que en el punto anterior, pero ahora con la funcion ifelse()

y <- 56
ifelse(y <= 100, "Numero adecuado", paste("Numero muy grande, el numero es", y))

#3) Switch
### Hacer una funcion a la que le pases como argumento el nombre de una operacion (inventada)
### y que realice el proceso. Ejemplo mis_operaciones(operacion = "gallina", x = 6, y = 4) 
### y de como resultado: (6*4) - 6 = 18 (Es solo un ejemplo)
### Hint. Revisar el video de Switch

Operacion_Matematica <- function(Operacion,a=4, b=6, c=6){
  switch (Operacion,
    "Pata" = (a + c ) / b ,
    "Pollo" = b * a,
    "Tripa" = (b * c) / (a - c),
    "Motomami" = c - a,
    "No está definida"
  )
}

Operacion_Matematica("Pata")

#4) for loop
### Crear un for loop que sume del numero 500 al 1000
 z <- 0
for(i in 500:1000){
  z <- z + i
  print(z)
}

#5) While
### Crear un while que se ejecute mientras x > 200, tomando como valor inicial x <- 1000
### y que disminuya en una unidad en cada iteracion hasta que llegue al 200 y se rompa
### el while
 
 s <- 1000
 while (s > 200) {
   print(s)
    if(s == 200)
     break
   s <- s - 1
 }
 
 