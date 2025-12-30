<div align="center">
  <img src="analisis.png" alt="Dashboard Preview" width="100%" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
  <br><br>
  
  # 🐟 Dashboard de Monitoreo de Piscigranjas
  
  **Sistema de Información Geográfica para la Gestión Acuícola**
  
  [![R](https://img.shields.io/badge/Made%20with-R-4.0%2B-blue?style=for-the-badge&logo=R)](https://www.r-project.org/)
  [![Flexdashboard](https://img.shields.io/badge/Frontend-Flexdashboard-green?style=for-the-badge&logo=cplusplus)](https://rmarkdown.rstudio.com/flexdashboard/)
  [![Leaflet](https://img.shields.io/badge/Maps-Leaflet-orange?style=for-the-badge&logo=leaflet)](https://leafletjs.com/)
  [![Status](https://img.shields.io/badge/Status-Stable-success?style=for-the-badge)]()
</div>

---

## 📋 Tabla de Contenidos

1. [Introducción y Objetivos](#-introducción-y-objetivos)
2. [Arquitectura del Sistema](#-arquitectura-del-sistema)
3. [Guía de Instalación](#-guía-de-instalación)
4. [Manual de Usuario](#-manual-de-usuario)
5. [Estructura del Proyecto](#-estructura-del-proyecto)
6. [Solución de Problemas](#-solución-de-problemas)
7. [Créditos y Contacto](#-créditos-y-contacto)

---

## 📖 Introducción y Objetivos

El **Dashboard de Monitoreo de Piscigranjas** es una solución tecnológica de alto nivel diseñada para centralizar, visualizar y analizar la información geoespacial relacionada con la infraestructura acuícola. Este proyecto nace de la necesidad de contar con herramientas ágiles para la fiscalización ambiental y la toma de decisiones basada en datos.

### 🎯 Objetivos del Proyecto
*   **Centralización**: Unificar el inventario de piscigranjas en una sola plataforma accesible.
*   **Monitoreo**: Proveer alertas visuales sobre el estado de conservación de las infraestructuras.
*   **Análisis**: Facilitar la interpretación de datos complejos mediante gráficos y tablas dinámicas.

---

## 🏗️ Arquitectura del Sistema

El sistema utiliza un enfoque de **"Código como Infraestructura"**, donde todo el dashboard se genera dinámicamente a partir de scripts reproducibles.

*   **Motor de Procesamiento**: `R` (Lenguaje estadístico).
*   **Manejo Geoespacial**: Librería `sf` (Simple Features) para operaciones geométricas precisas y reproyecciones (UTM -> WGS84).
*   **Interfaz de Usuario**: `Flexdashboard` para un diseño responsive basado en rejillas (grids).
*   **Visualización**:
    *   `Leaflet`: Para el componente de mapa interactivo.
    *   `Plotly`: Para gráficos estadísticos interactivos.
    *   `DT / Kable`: Para la visualización tabular de datos.

---

## ⚙️ Guía de Instalación

Este manual asume que usted está desplegando el proyecto en un entorno local (Windows/Linux/Mac).

### Prerrequisitos
*   **R** (v4.2.0 o superior).
*   **RStudio IDE** (Altamente recomendado).
*   **Git** (Para clonar el repositorio).

### Paso 1: Clonar el Repositorio
Abra su terminal o Git Bash y ejecute:

```bash
git clone <URL_DEL_REPOSITORIO>
cd proyecto_estadistico
```

### Paso 2: Instalación de Dependencias
El proyecto cuenta con un script automatizado `requirements.R` que instalará todas las librerías necesarias (dplyr, sf, leaflet, flexdashboard, etc.).

Abra R o RStudio y ejecute:

```r
source("requirements.R")
```

> ⚠️ **Nota para usuarios Windows**: Si encuentra errores instalando `sf`, asegúrese de tener instalado RTools compatible con su versión de R.

### Paso 3: Compilación del Dashboard
Para generar el archivo HTML final, ejecute el siguiente comando en la consola de R:

```r
rmarkdown::render("dashboard_piscigranjas.Rmd")
```

Al finalizar, encontrará un nuevo archivo `dashboard_piscigranjas.html` en la carpeta raíz.

---

## 🖥️ Manual de Usuario

Una vez abierto el archivo `dashboard_piscigranjas.html` en su navegador web (Chrome, Firefox, Edge), encontrará la siguiente interfaz:

### 1. Panel de Indicadores (KPIs)
Ubicado en la parte superior, muestra el **Resumen Operativo**:
*   🟦 **Total**: Cantidad total de piscigranjas registradas.
*   🟩 **Bueno**: Cantidad de infraestructuras en buen estado.
*   🟨 **Regular**: Infraestructuras que requieren supervisión.
*   🟥 **Malo**: Infraestructuras en estado crítico.

### 2. Visor Geográfico (Mapa Central)
Este es el corazón del dashboard.
*   **Zoom y Pan**: Navegue como en Google Maps.
*   **Popups**: Haga clic en un punto para ver el **Código**, **Estado** y **Valor P**.
*   **Capas**: Use el ícono de capas (esquina superior derecha) para cambiar entre **Mapa Oscuro**, **Satélite** o **Mapa Claro**.

### 3. Estadísticas y Datos
*   **Gráfico de Barras**: Muestra la distribución porcentual o absoluta de los estados. Es interactivo (hover para detalles).
*   **Tabla de Datos**: Ubicada al final, permite **buscar** por código específico o filtrar resultados para exportación manual.

---

## 📂 Estructura del Proyecto

Organización lógica de los archivos fuente:

```bash
proyecto_estadistico/
├── 📄 dashboard_piscigranjas.Rmd    # CÓDIGO FUENTE PRINCIPAL
├── 📄 dashboard_piscigranjas.html   # Artefacto generado (Dashboard)
├── 📄 requirements.R                # Script de dependencias
├── 📄 analisis.png                  # Imagen de portada del README
├── 📄 README.md                     # Este archivo
└── 📁 capa/                         # CARPETA DE DATOS GIS
    ├── Piscigranjas_Finales.geojson # Datos vectoriales
    └── ...
```

---

## 🔧 Solución de Problemas

| Problema | Causa Probable | Solución |
| :--- | :--- | :--- |
| **Error: "Package 'sf' not found"** | Librería no instalada | Ejecute `install.packages("sf")` o corra `source("requirements.R")` nuevamente. |
| **El mapa sale en blanco** | Error de Proyección | El script intenta reproyectar automáticamente. Verifique que sus datos de entrada tengan un CRS válido. |
| **Caracteres extraños (Ã±)** | Error de Encoding | Asegúrese de guardar sus archivos CSV/GeoJSON en codificación **UTF-8**. |

---

## 🤝 Créditos y Contacto

**Desarrollado por:**
### Felix Aldimar Aiquipa Gonzales
*Ingeniero Geomático & Especialista GIS*

Este proyecto demuestra la capacidad de integrar análisis estadístico riguroso con interfaces web modernas y funcionales.

📧 **Email**: [Inserte su correo aquí]
🔗 **LinkedIn**: [Inserte su perfil aquí]

---
<div align="center">
  <sub>Copyright © 2025. Todos los derechos reservados.</sub>
</div>

