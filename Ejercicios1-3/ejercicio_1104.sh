Escriba un script que, para un archivo CSV y un número de columna determinados, imprima:

el nombre de la columna correspondiente

Primero se necesita extraer el nombre de la columna, por ejemplo si se toma en cuenta la columna 7, se usa:

$ cut -d ',' -f 7 Buzzard2015_data.csv | head -n 1

cut se usa para seleccionar columnas y se agrega 7 para establecer que se tome en cuenta esa columna.

head -n 1 se usó para delimitar que se quiere visualizar solamente la primera fila.

Se obtiene:

biomass

el número de valores distintos en la columna

En segundo lugar, para obtener el número de valores distintos podemos ordenar los resultados (eliminando head) y usar uniq

cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l

sort se usa para ordenar los contenido de un archivo. uniq es para identificar elemento únicos. Y wc -l es para contar solamente líneas.

Se obtiene:

285

el valor mínimo

Para obtener el valor min se utilizó el siguiente código sort -n y head

cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1

sort -n es para ordenar números

Se obtiene:

1.048466198

el valor máximo

Para el valor máx se uso nuevamente el comando anterior solo que se le cambió head por tail

cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1

Se obtiene:

14897.29471
