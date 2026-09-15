-- Tabla 1: Indice de Costo de la Construccion (ICC)
CREATE TABLE datos.icc_costo_de_construccion (
    mes VARCHAR(20),
    nivel_general NUMERIC(10,2),
    materiales NUMERIC(10,2),
    mano_de_obra NUMERIC(10,2),
    gastos_generales NUMERIC(10,2),
    anio INTEGER
);

-- Tabla 2: Indice de Precios al Consumidor de CABA (IPCBA)
CREATE TABLE datos.ipcba (
    fecha DATE,
    nivel_general NUMERIC(10,2)
);

-- Tabla 3: Permisos de obra
CREATE TABLE datos.permisos_obras_2021_2025 (
    destino_de_la_obra VARCHAR(50),
    permisos_otorgados INTEGER,
    superficie_registrada_m2 NUMERIC(12,2),
    tipo_de_obra VARCHAR(20),
    anio INTEGER
);

-- Tabla 4: Precio de publicacion en USD por m2
CREATE TABLE datos.precio_usd_m2 (
    comuna VARCHAR(15),
    anio INTEGER,
    trimestre SMALLINT,
    precio_usd_m2 NUMERIC(10,2),
    estado VARCHAR(15),
    ambientes SMALLINT
);

-- Control de la importacion de datos
SELECT COUNT(*) FROM datos.icc_costo_de_construccion;
SELECT COUNT(*) FROM datos.ipcba;
SELECT COUNT(*) FROM datos.permisos_obras_2021_2025;
SELECT COUNT(*) FROM datos.precio_usd_m2;
