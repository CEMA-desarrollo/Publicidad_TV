# Guía para Crear Perfiles de Especialistas (TV)

Esta guía documenta el proceso para crear nuevas láminas de presentación para los especialistas de CEMA, manteniendo exactamente el mismo diseño, animaciones y compatibilidad con TV (AbleSign) que el perfil del Dr. Jose Fariña.

## 1. Preparación de Archivos
Todos los archivos de trabajo están centralizados en la carpeta:
`d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\`

Para cada nuevo especialista, necesitas tener a mano:
1.  **Foto del Doctor:**
    *   Formato ideal: `.jpg`.
    *   Orientación: Vertical (Retrato).
    *   Nombre recomendado: `nombre_apellido.jpg` (ej: `maria_perez.jpg`).
2.  **Logo CEMA:**
    *   Ya está en la carpeta como `logo_cema.png`. No necesitas cambiarlo a menos que quieras uno distinto.

---

## 2. Paso a Paso para Crear un Nuevo Perfil

### Paso 1: Copiar la Foto
Copia la foto del nuevo doctor dentro de la carpeta `perfil`.

### Paso 2: Editar el Código HTML
El archivo base ("Plantilla") es `index.html`.
1.  Haz clic derecho en `index.html` y ábrelo con el **Bloc de Notas** o tu editor de código preferido.
2.  Busca y edita las siguientes secciones:

**Cambiar la Foto:**
Busca la línea que dice `<img src="dr_farina.jpg"...` y cambia el nombre del archivo por la foto del nuevo doctor.
```html
<!-- ANTES -->
<img src="dr_farina.jpg" alt="Dr. Jose Fariña">

<!-- AHORA (Ejemplo) -->
<img src="maria_perez.jpg" alt="Dra. Maria Perez">
```

**Cambiar Nombre y Cargo:**
```html
<h2>Especialista CEMA</h2>
<h1>Dra. Maria Perez</h1> <!-- Cambiar Nombre aquí -->
```

**Cambiar Descripción:**
```html
<div class="description">
    <p>Médico Internista especialista en <strong>Cardiología</strong>.</p>
    <p style="margin-top: 1rem;">Experta en <strong>Salud Cardiovascular</strong>...</p>
</div>
```
*(Nota: Si usas tildes o "ñ" y ves problemas, el código ya está preparado para aceptarlos, pero idealmente usa códigos como `&oacute;` para "ó" si quieres estar 100% seguro).*

**Cambiar Etiquetas (Especialidades):**
```html
<div class="specialties">
    <span class="tag">Cardiología</span>
    <span class="tag">Holter</span>
    <span class="tag">Ecocardiograma</span>
</div>
```

Guardas el archivo `index.html`.

---

### Paso 3: Generar el Archivo Portátil (Para AbleSign)
Como AbleSign requiere que las imágenes vayan "incrustadas", debemos ejecutar el "Script Generador".

1.  Abre el archivo `embed_images.ps1` (clic derecho -> Editar o Abrir con Bloc de Notas).
2.  Modifica las líneas superiores con los nombres de tus nuevos archivos:
    ```powershell
    $htmlPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\index.html"
    $photoPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\maria_perez.jpg"  <-- CAMBIA ESTO POR LA NUEVA FOTO
    
    # ... al final del archivo ...
    $newPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\perfil_maria_perez.html"  <-- CAMBIA EL NOMBRE DE SALIDA
    ```
3.  Guarda el script.
4.  Haz clic derecho en el archivo `embed_images.ps1` y selecciona **"Ejecutar con PowerShell"**.

¡Listo! Se creará un nuevo archivo HTML (ej: `perfil_maria_perez.html`) que contiene todo (foto, logo, diseño) en un solo archivo.

---

## 3. Especificaciones de Diseño (Referencia Técnica)

Si alguna vez necesitas recrear el estilo desde cero, estos son los parámetros exactos utilizados:

*   **Dimensiones:** Diseño responsivo basado en unidades `vmin` (se adapta al ancho/alto automáticamente).
*   **Zona Segura:** El contenido ocupa solo el **90% del ancho** y **~85% del alto** para evitar recortes en TVs (Overscan).
*   **Tipografía:** [Outfit](https://fonts.google.com/specimen/Outfit).
*   **Colores CEMA:**
    *   Turquesa (Principal): `#009CA6`
    *   Dorado (Acento): `#C5A065`
    *   Texto (Pizarra Oscuro): `#1E293B`

## Resumen Rápido
1.  Pon la **foto** en la carpeta.
2.  Edita `index.html` con los **datos** del doctor.
3.  Actualiza y corre el **script** para generar el archivo final `.html`.
4.  Sube ese archivo final a la TV.
