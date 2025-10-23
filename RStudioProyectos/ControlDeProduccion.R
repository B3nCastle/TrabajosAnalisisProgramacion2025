# The easiest way to get dplyr is to install the whole tidyverse:
install.packages("tidyverse")

# Alternatively, install just dplyr:
install.packages("dplyr")

library(dplyr)

datos_mineria <- data.frame(
  
  id_lote = c("L101", "L102", "L103", "L104", "L105", "L106", "L107", "L108", "L109", "L110"),
  
  fase = c("Fase 1", "Fase 2", "Fase 3", "Fase 2", "Fase 1", "Fase 3", "Fase 1", "Fase 2", "Fase 3", "Fase 1"),
  
  tipo_material = c("Oxido", "Sulfuro", "Oxido", "Sulfuro", "Oxido", "Sulfuro", "Oxido", "Sulfuro", "Oxido", "Sulfuro"),
  
  ley_au = c(1.2, 1.8, 3.5, 0.9, 2.1, 4.0, 1.5, 2.5, 0.8, 3.1),
  
  coordenada_x = c(500, 502, 505, 507, 510, 512, 515, 517, 520, 522),
  
  profundidad_plan = c(10.0, 10.0, 12.0, 12.0, 15.0, 15.0, 8.0, 8.0, 9.0, 9.0),
  
  profundidad_real = c(10.3, 9.8, 12.1, 12.5, 14.9, 15.5, 7.5, 8.2, 9.5, 9.1)
  
)

# Variable auxiliar para mutate

precio_actual <- 50

registros_bomba <- data.frame(
  
  id_bomba = c("B-01", "B-02", "B-03", "B-04", "B-05", "B-06", "B-07", "B-08"),
  
  tiempo_uso_hrs = c(150, 210, 85, 305, 120, 190, 250, 95),
  
  temperatura_max_c = c(78, 92, 70, 95, 80, 88, 102, 75),
  
  ubicacion = c("Norte", "Sur", "Norte", "Oeste", "Sur", "Oeste", "Norte", "Sur")
  
)

# Definir la temperatura crítica máxima

TEMP_CRITICA <- 90

margenes_bombas <- registros_bomba %>%
  mutate(margen_temp = temperatura_max_c - TEMP_CRITICA) %>%
  filter(temperatura_max_c > 90, tiempo_uso_hrs > 200) %>%
  select(id_bomba, margen_temp, tiempo_uso_hrs) %>%
  arrange(desc(margen_temp))

print(margenes_bombas)
