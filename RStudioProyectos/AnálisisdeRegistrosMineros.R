install.packages("tidyverse")
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

precio_actual <- 50 # Precio de referencia por gramo de Au (USD/g)
material_alta_ley <- "Oxido"
print(datos_mineria);

# 1: generar datos para modificar desde el data frame
reporte <- datos_mineria  %>%
#filtrar 
filter(tipo_material == "Oxido", ley_au > 1.5) %>% 
#añadir columnas
mutate(desviacion_profundidad = profundidad_real - profundidad_plan) %>%
mutate(valor_potencial_g = ley_au * precio_actual) %>%
#seleccionar columnas a mostrar
select(id_lote, fase, ley_au, tipo_material, desviacion_profundidad, valor_potencial_g) %>% 
#ordenarlas de mayor a menor por ley_au
arrange(desc(ley_au))


print(reporte);

