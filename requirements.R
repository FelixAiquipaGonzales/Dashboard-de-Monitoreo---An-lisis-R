# requirements.R
# Script para instalar dependencias necesarias para renderizar el dashboard

pkgs <- c(
  "rmarkdown",
  "leaflet",
  "sf",
  "dplyr",
  "tidyr",
  "ggplot2",
  "DT",
  "htmltools",
  "jsonlite"
)

install_if_missing <- function(pkgs) {
  to_install <- pkgs[!pkgs %in% installed.packages()[,"Package"]]
  if (length(to_install)) install.packages(to_install, dependencies = TRUE)
}

install_if_missing(pkgs)

cat("Instalación completada. Para reproducibilidad recomendamos usar `renv::init()` y luego `renv::snapshot()`.")
