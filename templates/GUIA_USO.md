# Guía para Crear Nuevas Páginas de Servicio (Estilo TV)

Este documento explica cómo utilizar la plantilla `servicio_base.html` para crear nuevas páginas de servicios que mantengan la estética premium y la legibilidad para pantallas de TV (1920x1080).

## 1. Preparación de Archivos

1.  **Copiar la Plantilla:**
    Copia el archivo `templates/servicio_base.html` a la carpeta del nuevo servicio (ej: `d:\Code\Publicidad_TV\nuevo_servicio\index.html`).

2.  **Imágenes (Assets):**
    Asegúrate de tener las siguientes imágenes en la carpeta `../assets/` (o ajusta la ruta si es necesario):
    *   **Hero Fondo (Back Card):** Imagen general del equipo o consultorio. (Recomendado: Vertical 3:4 o Cuadrada).
    *   **Hero Detalle (Front Card):** Primer plano de la pieza de mano, el cabezal o el detalle tecnológico. (Recomendado: Fondo transparente o blanco).
    *   **Galería (4 Imágenes):** Fotos de la terapia en acción o resultados visuales. Nómbralas lógicamente (ej: `laser1.jpg`, `laser2.jpg`...).

## 2. Edición del HTML (Los Placeholders)

Busca en el código HTML las variables entre llaves `{{...}}` y reemplázalas:

### Sección Visual (Izquierda)
*   `{{IMAGEN_EQUIPO_GENERAL}}`: Nombre del archivo de la imagen de fondo (ej: `equipo_laser.jpg`).
*   `{{IMAGEN_DETALLE}}`: Nombre del archivo de la imagen de detalle (ej: `punta_laser.png`).
*   `{{GALERIA_1}}` a `{{GALERIA_4}}`: Imágenes para la cuadrícula inferior.

### Sección de Información (Derecha)
*   `{{CATEGORIA_SERVICIO}}`: Subtítulo dorado pequeño (ej: "Dermatología", "Fisioterapia", "Tecnología").
*   `{{NOMBRE_SERVICIO}}`: Título principal grande (ej: "Láser CO2 Fraccionado").
*   `{{DESCRIPCION_CORTA_CON_NEGRITAS}}`: Párrafo introductorio. Usa `<strong>` para resaltar palabras clave.
    *   *Ejemplo:* "El tratamiento estándar de oro para el <strong>rejuvenecimiento facial</strong> sin cirugía."

### Beneficios (Argumentos de Venta)
*   `{{TITULO_BENEFICIO_X}}`: La ventaja principal en negrita (ej: "Resultados Inmediatos").
*   `{{DESCRIPCION_BENEFICIO_X}}`: Breve explicación (ej: "Nota la diferencia desde la primera sesión").

### Etiquetas (Tags)
*   `{{TAG_X}}`: Usos comunes o patologías (ej: "Acné", "Cicatrices", "Arrugas"). Puedes agregar o quitar líneas `<span>` según necesites.

## 3. Reglas de Estilo (IMPORTANTE)

Para mantener la coherencia con el perfil de "Betania" y "Ondas de Choque":

*   **NO toques el CSS del `<head>`:** Los tamaños de fuente (`vmin`), colores y animaciones están calibrados para TV.
*   **Colores:**
    *   Títulos Principales: Slate Oscuro (`var(--secondary-slate)`).
    *   Subtítulos: Dorado (`var(--accent-gold)`).
    *   Detalles/Iconos: Verde Corporativo (`var(--primary-teal)`).
*   **Limpieza:** Mantén el texto de los beneficios corto (1-2 líneas). Recuerda que en TV la gente lee menos.

## 4. Verificación

Abre el archivo HTML en tu navegador (Chrome).
1.  Verifica que las animaciones de entrada funcionen fluidamente.
2.  Asegúrate de que la cuadrícula de imágenes (2x2) esté alineada y no haya espacios blancos extraños.
3.  Confirma que las etiquetas (Tags) al final tengan el fondo verde agua claro.
