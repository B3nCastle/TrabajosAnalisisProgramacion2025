puntajeExamen <- as.numeric(readline("Ingresa tu calificación en el examen | Ej. 92 | "))
promedioAcademico <- as.numeric(readline("Ingresa tu promedio academico | Ej. 6.5 | "))
tiempoExperiencia <- as.numeric(readline("Ingresa tus años de experiencia | Ej. 2 | "))

calificado <- FALSE

if(puntajeExamen >= 85 && promedioAcademico >= 4.5){
  calificado = TRUE
}
if(puntajeExamen >= 90 && tiempoExperiencia >= 2){
  calificado = TRUE
}
if(calificado == TRUE){
  print("Felicidades! Eres elegible para la beca")
}else{
  print("Lo sentimos, no cumples con los requisitos para la beca")
}