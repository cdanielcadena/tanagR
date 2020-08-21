# Instrucciones para Seleccionar Códigos de Colores para Crear Paletas de Color en tanagR

## Etapa 1: Selección de Herramienta para Extraer Códigos Hex de Fotos

Primero tenemos que escoger la mejor herramienta online para extraer los colores de fotos, de forma que las paletas se parezcan lo más posible a los colores de las aves. Para esto, la idea es que probemos varios sitios web con las mismas fotos y escojamos la que reproduzca los colores más fielmente. Cada uno por favor haga lo siguiente:

1. Buscar en internet una página web que permita extraer códigos Hex de archivos de imágenes. Por ejemplo, si uno busca "extract hex code from image" en Google, aparecen algunas como [esta](https://html-color-codes.info/colors-from-image/) o esta [otra](https://www.ginifab.com/feeds/pms/color_picker_from_image.php). Escoger alguna página que no sea ninguna de esas dos, pues ya las probamos.

2. Entrar la pestaña "test" en este documento en [Google Sheets](https://docs.google.com/spreadsheets/d/1tjD11_B6cfBj0_C34jOPYvn2qShAVe4wq3eqOVPoeZ0/edit?usp=sharing). Ahi encontrarán una lista de ocho especies que vamos a usar como prueba.

3. Insertar una fila debajo de la última entrada registrada para cada especie. En esa fila, copiar exactamente igual las primeras cuatro columnas.

4. En la quinta columna, agregar el URL de la página que va a usar para extraer los colores, asegurándose que otra persona no haya ya usado esa misma herramienta, y agregar sus iniciales en la sexta columna.

5. Para cada una de las ocho especies que están en la tabla, usar como base la foto correspondiente al "asset" de Macaulay Library indicado en cada caso como modelo. Por ejemplo, para *Stilpnia preciosa* el asset es 184010051. Para llegar a esta foto en la web, se usa la dirección https://macaulaylibrary.org/asset/184010051.

6. Seguir las instrucciones para extaer los colores de cada una de las fotos descritas en el punto 3 de la Etapa 2 del proceso descrita abajo y luego agregar los códigos de colores a la tabla.

7. Repetir desde el paso 3 para las ocho especies.

8. Esperar a que decidamos cuál será la herramienta escogida para tomar los datos de las fotos de todas especies.

## Etapa 2: Extracción de Códigos Hex de Fotos de todas las Tángaras

Una vez escogida la herramienta, estamos listos para extraer los colores de fotos de todas las especies de Thraupidae, que luego usaremos para generar paletas de color basadas en los colores de cada una para implementarlas en tanagR. Los pasos a seguir son:

1. Entrar a al acrchivo de [Google Sheets](https://docs.google.com/spreadsheets/d/1tjD11_B6cfBj0_C34jOPYvn2qShAVe4wq3eqOVPoeZ0/edit?usp=sharing) y pasar a la pestaña "tanagRcolors".

Las columnas corresponden a:

- nombres en inglés de las especies
- eBird code: identificador de las páginas del CLO para cada especie, e.g. https://ebird.org/species/absfin1, https://ebird.org/species/azrtan1, etc.
- Cornell Asset: código de una de las mejores fotos de cada especie en la Macaulay Library, e.g. https://macaulaylibrary.org/asset/204795741 
- nombres científicos de las especies
- observer: iniciales de la persona que hizo la selección de colores.
- example photo: el número de catálogo en ML de la foto usada para escoger los colores. puede ser o no el mismo numero del asset (ver punto 2 abajo).
- Color1 - Color6: códigos hex de los distintos parches de color de cada especie  (si hay especies con más de 6 colores se pueden agregar columnas).

2. Descargar una foto de buena calidad de la especie que van a agregar de la página de [Macaulay Library](https://www.macaulaylibrary.org/). 
Pueden usar los mejores assets que estan en la tabla como guía, pero no necesariamente. Escojan la foto que mejor les parezca. Por lo general los machos son mas coloridos que las hembras, así que para este propósito en general mejor usar machos en especies con dimorfismo. A veces el mejor asset corresponde a fotos de hembras en especies en que los machos son más coloridos, por lo que es bueno mirar varias opciones antes de escoger el modelo final. Los colores escogidos no tienen que ser solo de las plumas; en casos en que el pico, los ojos o las patas tienen colores distintos se deben incluir.
 
3. Cargar la foto "modelo" en esta página web (*acá habrá un enlace una vez tengamos la herramienta seleccionada*) y escoger los colores teniendo en cuenta lo siguiente:

- ampliar la ventana del navegador de forma que la foto se vea lo más grande posible
- ubicar el cursor sobre un parche de color dado y hacer click en distintos puntos hasta que el color que muestra la ventana corresponda lo más posible con el color del ave.
- copiar el código hex generado para el color escogido (incluyendo el #) y pegarlo en la tabla en google sheets
- repetir para todos los parches de color distintos que vean en cada ave

4. Agregar sus iniciales y el número de catálogo ML de la foto escogida como modelo a la tabla en google sheets y volver a 2.
