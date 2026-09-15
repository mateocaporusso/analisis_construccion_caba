-- Tabla 1: resumen_costos_anual
CREATE TABLE datos.resumen_costos_anual AS
SELECT i.anio, i.nivel_general AS icc, p.nivel_general AS ipcba
FROM datos.icc_costo_de_construccion i
JOIN datos.ipcba p
    ON i.anio = EXTRACT(YEAR FROM p.fecha)
WHERE i.mes = 'diciembre'
    AND EXTRACT(MONTH FROM p.fecha) = 12
ORDER BY i.anio;

-- Tabla 2: resumen_componentes_icc
CREATE TABLE datos.resumen_componentes_icc AS
SELECT anio,
    AVG(materiales) AS materiales,
    AVG(mano_de_obra) AS mano_de_obra,
    AVG(gastos_generales) AS gastos_generales
FROM datos.icc_costo_de_construccion
GROUP BY anio
ORDER BY anio;

-- Tabla 3: resumen_permisos_superficie
CREATE TABLE datos.resumen_permisos_superficie AS
SELECT
    anio,
    tipo_de_obra,
    destino_de_la_obra,
    SUM(permisos_otorgados) AS permisos_totales,
    SUM(superficie_registrada_m2) AS superficie_total_m2
FROM datos.permisos_obras_2021_2025
GROUP BY anio, tipo_de_obra, destino_de_la_obra
ORDER BY anio;

-- Tabla 4: resumen_precio_anual
CREATE TABLE datos.resumen_precio_anual AS
SELECT
    anio,
    estado,
    ambientes,
    AVG(precio_usd_m2) AS precio_promedio_usd_m2
FROM datos.precio_usd_m2
WHERE precio_usd_m2 > 0
GROUP BY anio, estado, ambientes
ORDER BY anio, estado, ambientes;

-- Tabla 5: resumen_precio_comuna
CREATE TABLE datos.resumen_precio_comuna AS
SELECT
    comuna,
    anio,
    AVG(precio_usd_m2) AS precio_promedio_usd_m2
FROM datos.precio_usd_m2
WHERE precio_usd_m2 > 0
GROUP BY comuna, anio
ORDER BY comuna, anio;

-- Tabla 6: resumen_costo_real_vs_precio
CREATE TABLE datos.resumen_costo_real_vs_precio AS
SELECT
    i.anio,
    ROUND(i.nivel_general / p.nivel_general, 2) AS costo_real_relativo,
    ROUND(AVG(pr.precio_usd_m2), 0) AS precio_promedio_usd_m2
FROM datos.icc_costo_de_construccion i
JOIN datos.ipcba p
    ON i.anio = EXTRACT(YEAR FROM p.fecha)
    AND i.mes = 'diciembre'
    AND EXTRACT(MONTH FROM p.fecha) = 12
JOIN datos.precio_usd_m2 pr
    ON pr.anio = i.anio
    AND pr.precio_usd_m2 > 0
GROUP BY i.anio, i.nivel_general, p.nivel_general
ORDER BY i.anio;
