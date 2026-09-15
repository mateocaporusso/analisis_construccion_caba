# Análisis del sector inmobiliario y de la construcción en CABA (2021–2025)

**Autor:** Mateo Caporusso

## Proyecto

Proyecto de análisis de datos orientado a estudiar cómo evolucionaron la construcción y el mercado inmobiliario en la Ciudad Autónoma de Buenos Aires entre 2021 y 2025.
El proyecto reúne datos de inflación, costos de construcción, permisos de obra y precios de propiedades para entender qué pasó con el sector durante estos años y cómo fueron cambiando sus principales indicadores.

## Objetivo

Analizar la evolución del mercado inmobiliario y de la construcción en CABA entre 2021 y 2025, poniendo el foco en los costos de construcción, la actividad constructiva y los precios de las propiedades.
La idea es mirar estos indicadores en conjunto para entender mejor qué pasó durante el período, en lugar de analizar cada uno por separado.

## Preguntas de análisis

1. ¿Cómo evolucionaron la construcción y el mercado inmobiliario en CABA entre 2021 y 2025?
2. ¿Construir se encareció? ¿Qué componente tuvo mayor peso?
3. ¿La actividad de construcción se frenó o se recuperó? ¿En qué tipo de obras?
4. ¿Qué pasó con el precio de las propiedades y qué zonas tuvieron los valores más altos?

## Fuente de datos

1. IPCBA — serie empalmada
   Link: https://www.estadisticaciudad.gob.ar/eyc/banco-datos/ipcba-base-2021-100-nivel-general-indice-mensual-empalmado-con-la-serie-anterior-base-julio-2011-junio-2012-100-ciudad-de-buenos-aires-julio-de-2012-agosto-de-2025/
2. ICC — Costo de la Construcción
   Link: https://www.estadisticaciudad.gob.ar/eyc/banco-datos/indice-del-costo-de-la-construccion-y-variacion-porcentual-respecto-del-mes-anterior-nivel-general-y-capitulos-ciudad-de-buenos-aires-enero-de-2015-julio-de-2025/
3. Permisos de obra
   Link: https: https://www.estadisticaciudad.gob.ar/eyc/categoria-banco-datos/permisos-otorgados
   Link: https://www.estadisticaciudad.gob.ar/eyc/banco-datos/permisos-otorgados-y-superficie-registrada-por-tipo-y-destino-de-la-obra-ciudad-de-buenos-aires-ano-2025/
4. Precio inmobiliario USD/m²
   Link: https://data.buenosaires.gob.ar/he/dataset/mercado-inmobiliario/resource/c6d2a64a-f60b-4b6e-9829-919139a0c1d1

## Hallazgos principales

Entre 2021 y 2025, la construcción y el mercado inmobiliario de CABA tuvieron comportamientos bastante diferentes. Los costos de construir aumentaron menos que la inflación, mientras que los precios de las propiedades se mantuvieron prácticamente estables. La actividad de construcción, por su parte, cayó durante varios años y tuvo una fuerte recuperación en 2025.

### Los costos de construcción bajaron en relación con la inflación

En 2025, el costo de construir se ubicó un 24,7% por debajo del nivel de 2021 cuando se lo compara con la evolución general de los precios.
En otras palabras, construir terminó siendo relativamente más barato que al comienzo del período.

### Los materiales ganaron cada vez más peso

Los materiales fueron cambiando su importancia dentro de los costos de construcción. En 2021 eran el componente más chico, pero para 2025 pasaron a superar a la mano de obra y a los gastos generales.
Esto muestra que los materiales tuvieron un aumento especialmente importante durante estos años.

### La construcción cayó y después se recuperó

La actividad de construcción fue bajando desde 2021 hasta 2024. Pero en 2025 la situación cambió y hubo una fuerte recuperación.
Ese año se registraron 4,23 millones de m², un 21,6% más que en 2024. La recuperación estuvo principalmente impulsada por la construcción de viviendas de varios departamentos.

### Los precios de las propiedades casi no cambiaron

A pesar de todos los cambios ocurridos durante estos años, el precio promedio de publicación de las propiedades terminó 2025 prácticamente en el mismo nivel que en 2021.
El promedio fue de USD 2.589 por m², apenas un 0,7% más que en 2021.
Pero esto no fue igual en toda la ciudad. La Comuna 14 fue la más cara, con un promedio de USD 3.466 por m², mientras que la Comuna 8 se ubicó bastante por debajo del resto.

### La diferencia entre costos y precios aumentó

Uno de los resultados más interesantes aparece al comparar los costos de construcción con los precios de las propiedades.
En 2025, el índice de costo quedó en 75,3, mientras que el índice de precios llegó a 100,7. Esto genera una diferencia de 25,4 puntos.
La mayor diferencia se registró en 2024, cuando el costo estaba en 82,5 y el precio en 94,9.
Esto significa que, comparando ambas series, los costos de construcción perdieron más valor que los precios de las propiedades durante el período. Es una relación que muestran los datos, pero no significa que una variable haya causado el comportamiento de la otra ni permite afirmar directamente que la rentabilidad de construir haya aumentado.

## Estructura del repositorio

├── data/
│   ├── raw/
│   └── clean/
│
├── sql/
│   ├── tablas_base.sql
│   ├── resumen_costos_anual.sql
│   ├── resumen_componentes_icc.sql
│   ├── resumen_permisos_superficie.sql
│   ├── resumen_precio_anual.sql
│   ├── resumen_precio_comuna.sql
│   └── resumen_costo_real_vs_precio.sql
│
└── powerbi/
└── proyecto_inmobiliario_caba.pbix

## Stack

PostgreSQL · SQL · Power BI Desktop · pgAdmin 4 · Excel
