CREATE TABLE ventas_vendedores (
  fecha DATE,
  vendedor VARCHAR(50),
  monto NUMERIC(8, 2)
);

INSERT INTO ventas_vendedores (fecha, vendedor, monto) VALUES
('2026-01-01', 'Juan', 100.00),
('2026-01-01', 'Ana', 150.00),
('2026-01-02', 'Carlos', 210.50),
('2026-01-02', 'Maria', 180.00),
('2026-01-03', 'Pedro', 95.20),
('2026-01-03', 'Sofia', 320.00),
('2026-01-04', 'Juan', 140.00),
('2026-01-05', 'Ana', 275.50),
('2026-01-05', 'Luisa', 85.00),
('2026-01-06', 'Carlos', 190.00),
('2026-01-07', 'Maria', 410.00),
('2026-01-08', 'Pedro', 115.30),
('2026-01-09', 'Sofia', 230.00),
('2026-01-10', 'Juan', 310.00),
('2026-01-11', 'Ana', 90.00),
('2026-01-12', 'Luisa', 165.00),
('2026-01-13', 'Carlos', 280.00),
('2026-01-14', 'Maria', 135.50),
('2026-01-15', 'Pedro', 200.00),
('2026-01-16', 'Sofia', 450.00),
('2026-01-18', 'Juan', 175.00),
('2026-01-20', 'Ana', 220.00),
('2026-01-22', 'Luisa', 300.00),
('2026-01-25', 'Carlos', 125.00),
('2026-01-28', 'Maria', 390.00),
('2026-02-01', 'Pedro', 105.00),
('2026-02-01', 'Sofia', 260.00),
('2026-02-02', 'Juan', 195.00),
('2026-02-03', 'Ana', 310.50),
('2026-02-04', 'Luisa', 140.00),
('2026-02-05', 'Carlos', 230.00),
('2026-02-06', 'Maria', 180.00),
('2026-02-07', 'Pedro', 85.50),
('2026-02-08', 'Sofia', 500.00),
('2026-02-10', 'Juan', 215.00),
('2026-02-11', 'Ana', 160.00),
('2026-02-12', 'Luisa', 290.00),
('2026-02-14', 'Carlos', 110.00),
('2026-02-15', 'Maria', 420.00),
('2026-02-16', 'Pedro', 175.00),
('2026-02-18', 'Sofia', 330.00),
('2026-02-19', 'Juan', 250.00),
('2026-02-20', 'Ana', 130.00),
('2026-02-21', 'Luisa', 205.00),
('2026-02-22', 'Carlos', 370.00),
('2026-02-24', 'Maria', 155.00),
('2026-02-25', 'Pedro', 280.00),
('2026-02-26', 'Sofia', 190.00),
('2026-02-27', 'Juan', 400.00),
('2026-02-28', 'Ana', 225.00);

# Funciones de ventana
## Ranking de mayores ventas:
-- Obtener el listado de todas las ventas ordenadas por monto de mayor a menor, 
-- asignando un número de posición (ranking) general a cada venta (ROW_NUMBER()).
SELECT fecha, vendedor, monto,
  ROW_NUMBER() OVER (ORDER BY monto DESC) AS posicion_ranking
FROM ventas_vendedores
ORDER BY posicion_ranking;

## Porcentaje sobre el total del mes:
-- Calcular qué porcentaje representa cada venta individual respecto al 
-- total general de ventas registradas en todo el mes correspondiente (SUM() OVER()).
SELECT fecha, vendedor, monto,
  EXTRACT(YEAR FROM fecha)::VARCHAR AS anio,
  EXTRACT(MONTH FROM fecha)::VARCHAR AS mes,
  SUM(monto) OVER (
    PARTITION BY 
      EXTRACT(YEAR FROM fecha), 
      EXTRACT(MONTH FROM fecha)
  ) AS total_mes,
  ROUND(
    (monto / SUM(monto) OVER (
    PARTITION BY 
        EXTRACT(YEAR FROM fecha), 
        EXTRACT(MONTH FROM fecha)
    )) * 100, 
    2
  ) AS porcentaje_del_mes
FROM ventas_vendedores
ORDER BY anio, mes, vendedor;

# CTE
-- Obtener un reporte con el total acumulado de ventas y el promedio por 
-- transacción de cada vendedor durante todo el período registrado.
-- A través de una CTE, calcular estas métricas y luego filtrar en la consulta principal 
-- únicamente a los vendedores cuya venta promedio por transacción sea superior a $200.00, 
-- ordenando los resultados de mayor a menor según el monto total vendido.

WITH resumen_vendedores AS (
  SELECT vendedor,
    COUNT(*) AS total_transacciones,
    SUM(monto) AS total_vendido,
    AVG(monto) AS promedio_por_transaccion
  FROM ventas_vendedores
  GROUP BY vendedor
)
SELECT vendedor, total_transacciones, total_vendido,
  ROUND(promedio_por_transaccion, 2) AS promedio_redondeado
FROM resumen_vendedores
WHERE promedio_por_transaccion > 200
ORDER BY total_vendido DESC;
