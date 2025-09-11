# Definimos el arreglo
leyes_lotes <- c(0.8, 1.2, 0.5, 1.5, 0.9, 0.6, 2.1, 1.0)
umbral <- 1.0
# Defino ley_lote, refiriendose a su posición en el arreglo.
for (ley_lote in seq_along(leyes_lotes)){
  #Con estos corchetes VVV Nos referimos al valor de la posición
  if(leyes_lotes[ley_lote] < umbral){
    # Imrpimimos primero su valor dentro de los corchetes y luego el indice
    print(paste("Alerta! El elemento: ", leyes_lotes[ley_lote], "[ Indice", ley_lote, "] es menor al umbral de 1.0"))
  }
}

