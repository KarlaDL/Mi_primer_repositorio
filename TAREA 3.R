#TAREA 3
#Karla Letelier

rm(list=ls())

#EJEMPLO 1
#ANIMALES QUE SE ATIENDEN EL DIA DE HOY EN UNA VETERINARIA

Animales_vet <- c("Perro", "Gato", "Conejo", "Huron")

for (i in 1:length(Animales_vet)) {
  print(paste("Hoy atendi un:", Animales_vet[i]))
}


# EJEMPLO 2
# De un total de 10 movimientos a traves de cara y sello con una moneda se traza
# ra el mapa de un camino

Movimientos <- numeric(10)

for (i in 1:10) {
  Moneda <- sample(c(-1, 1), 1)
  Movimientos[i + 1] <- Movimientos[i] + Moneda
}

print(Movimientos)
plot(Movimientos, type="o", xlab="Moneda", ylab="Movimientos")

#EJEMPLO 3
#Para este ejemplo utilizaremos la norma de ascensor en Chile, solo los edificios
# que tengan mas de 5 pisos pueden tener ascensor “Todo edificio de 6 ó más pisos
#deberá contar con ascensores para dar acceso a todos los pisos.”

Ascensor <- numeric(15)

for (i in 1:15) {
  if (i > 5) {
    texto <- paste(i, 'Debe tener ascensor')
    print(texto)
    Ascensor[i] <- 'Debe tener ascensor' # *1
  } else
    texto <- paste(i, 'No debe tener ascensor')
  print(texto)
  Ascensor[i] <- 'No debe tener ascensor' # *2
}


