# Dashboard de Monitoreo de Piscigranjas

[![Render status](https://github.com/USERNAME/REPO/actions/workflows/render.yml/badge.svg)](https://github.com/USERNAME/REPO/actions)

![Vista previa del dashboard](assets/preview.png)

Resumen

Proyecto reproducible en R que genera un dashboard interactivo para el monitoreo de piscigranjas. Incluye mapa geoespacial, indicadores resumidos, gráficos y una tabla detallada.

¿Por qué este proyecto es interesante?

- Fácil de desplegar (HTML estático generado desde `R Markdown`).
- Datos geoespaciales listos para análisis con `sf`.
- Orientado a la visualización y toma de decisiones para gestión ambiental.

Contenido

- `dashboard_piscigranjas.Rmd` — Fuente del dashboard.
- `dashboard_piscigranjas.html` — Dashboard pre-renderizado listo para visualizar.
- `capa/` — Capas geoespaciales usadas en el proyecto.
- `requirements.R` — Script para instalar dependencias R.
- `.github/workflows/render.yml` — Workflow para generar el HTML automáticamente.

Rápida reproducción

1. Clonar el repositorio:

```bash
git clone <URL_DEL_REPOSITORIO>
cd proyecto_estadistico
```

2. Instalar dependencias (desde R):

```r
source("requirements.R")
```

3. Renderizar el dashboard:

```r
rmarkdown::render("dashboard_piscigranjas.Rmd")
```

4. Abrir `dashboard_piscigranjas.html` en un navegador.

Badges recomendados

- Estado del build (GitHub Actions)
- Licencia (MIT)

Datos

Los datos geoespaciales se encuentran en `capa/`. Contienen dos conjuntos principales:

- `Construcciones_de_Piscigranjas.*`
- `Piscigranjas_Finales.*`

Notas técnicas

- Recomendado usar `renv` para capturar el entorno y asegurar reproducibilidad.
- Si trabajas con sistemas Windows, instala las bibliotecas del sistema necesarias para `sf` (GDAL, PROJ, GEOS).

Contribuciones

Lee `CONTRIBUTING.md` para instrucciones sobre cómo colaborar. Antes de enviar cambios importantes, abre un issue para discutir la propuesta.

Licencia

Este proyecto está bajo la licencia MIT. Ver `LICENSE`.

Contacto

Autor: (Tu nombre aquí) — (tu.email@ejemplo.com)
