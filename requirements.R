# requirements.R
# ==============================================================================
# Script de Instalación de Dependencias
# Proyecto: Dashboard de Monitoreo de Piscigranjas
# ==============================================================================

# Lista maestra de dependencias requeridas
dependencias <- c(
  "rmarkdown",      # Motor de renderizado
  "flexdashboard",  # Framework del dashboard
  "leaflet",        # Mapas interactivos
  "leaflet.providers", # Proveedores de mapas base
  "sf",             # Manejo de datos geoespaciales (Simple Features)
  "dplyr",          # Manipulación de datos
  "tidyr",          # Limpieza de datos
  "ggplot2",        # Gráficos estáticos (base)
  "plotly",         # Gráficos interactivos
  "DT",             # Tablas interactivas
  "htmltools",      # Herramientas HTML
  "viridis"         # Paletas de colores accesibles
)

# Función de instalación segura
instalar_paquetes <- function(paquetes) {
  message("--- Iniciando verificación de dependencias ---")
  
  instalados <- rownames(installed.packages())
  faltantes <- paquetes[!(paquetes %in% instalados)]
  
  if (length(faltantes) > 0) {
    message(sprintf("Instalando %d paquetes faltantes: %s", length(faltantes), paste(faltantes, collapse = ", ")))
    install.packages(faltantes, dependencies = TRUE)
    message("--- Instalación completada ---")
  } else {
    message("--- Todas las dependencias ya están instaladas. ¡Listo! ---")
  }
}

# Ejecutar instalación
instalar_paquetes(dependencias)

# Verificación post-instalación
message("\n[INFO] Verificando carga de librerías críticas...")
if(require("sf", quietly = TRUE)) {
  message("✅ Librería 'sf' cargada correctamente. GDAL/PROJ/GEOS están operativos.")
} else {
  warning("⚠️ Error cargando 'sf'. Por favor instala RTools (Windows) o libgdal-dev (Linux).")
}

message("\n[PROCESO] Configuración finalizada. Ahora puedes ejecutar: rmarkdown::render('dashboard_piscigranjas.Rmd')")
