
# Función para verificar elegibilidad al descuento de viaje
  # Solicitar datos del cliente
  edad <- as.numeric(readline(prompt = "Ingrese su edad: "))
  vuelosUltimoAnio <- as.numeric(readline(prompt = "¿Cuántos vuelos ha tomado en el último año?: "))
  tarjetaCredito <- readline(prompt = "¿Tiene tarjeta de crédito de la aerolínea? (si/no): ")
  miembroClub <- readline(prompt = "¿Es miembro del club de viajeros frecuentes? (si/no): ")
  destino <- readline(prompt = "Ingrese el destino (nacional/playa/otro): ")
  miembroPlatino <- readline(prompt = "¿Es miembro Platino del club de viajeros frecuentes? (si/no): ")
  fidelidad <- as.numeric(readline(prompt = "Ingrese su puntaje de fidelidad: "))
  claseVuelo <- readline(prompt = "Clase de vuelo (economica/primera): ")
  mesCumple <- as.numeric(readline(prompt = "Ingrese su mes de cumpleaños (1-12): "))
  mesActual <- as.numeric(readline(prompt = "Ingrese el mes actual (1-12): "))
  temporada <- readline(prompt = "¿La fecha del vuelo es en temporada baja? (si/no): ")
  
  # Variables para guardar si se cumple cada regla
  cumpleRegla1 <- FALSE
  cumpleRegla2 <- FALSE
  cumpleRegla3 <- FALSE
  cumpleRegla4 <- FALSE
  cumpleRegla5 <- FALSE
  
  # Regla 1: Edad > 60 Y vuelos >=5 Y tiene tarjeta
  if (edad > 60 & vuelosUltimoAnio >= 5 & tarjetaCredito == "si") {
    cumpleRegla1 <- TRUE
  }
  
  # Regla 2: Edad < 25 Y es miembro Y destino nacional
  if (edad < 25 & miembroClub == "si" & destino == "nacional") {
    cumpleRegla2 <- TRUE
  }
  
  # Regla 3: 10-20 vuelos O miembro platino
  if ((vuelosUltimoAnio >= 10 & vuelosUltimoAnio <= 20) | miembroPlatino == "si") {
    cumpleRegla3 <- TRUE
  }
  
  # Regla 4: fidelidad > 900 O clase primera
  if (fidelidad > 900 | claseVuelo == "primera") {
    cumpleRegla4 <- TRUE
  }
  
  # Regla 5: (cumpleaños == mes actual Y 1 vuelo) O (destino playa Y temporada baja)
  if ((mesCumple == mesActual & vuelosUltimoAnio == 1) | (destino == "playa" & temporada == "si")) {
    cumpleRegla5 <- TRUE
  }
  
  # Evaluar si cumple alguna regla
  if (cumpleRegla1 | cumpleRegla2 | cumpleRegla3 | cumpleRegla4 | cumpleRegla5) {
    print("El cliente ES ELEGIBLE para el descuento.")
  } else {
    print("El cliente NO es elegible para el descuento.")
  }

