CREATE TABLE inventario (
  id SERIAL PRIMARY KEY,
  producto VARCHAR(150),
  cantidad INT,
  precio NUMERIC(6, 2)
);

INSERT INTO inventario (producto, cantidad, precio) VALUES
('Teclado Mecánico RGB', 45, 59.99),
('Mouse Inalámbrico Ergonómico', 120, 24.50),
('Monitor 24" Full HD', 30, 149.99),
('Monitor 27" 4K UHD', 15, 329.00),
('Laptop Core i7 16GB RAM', 8, 899.99),
('Laptop Ryzen 5 8GB RAM', 12, 649.50),
('Disco Duro Externo 1TB', 60, 54.00),
('SSD NVMe 500GB', 85, 42.99),
('SSD SATA 1TB', 40, 68.50),
('Memoria RAM 16GB DDR4', 110, 39.99),
('Tarjeta de Video RTX 3060', 6, 289.00),
('Procesador Ryzen 7 5700X', 14, 195.50),
('Fuente de Poder 650W 80 Plus', 25, 62.00),
('Gabinete ATX Cristal Templado', 18, 75.00),
('Silla Gamer Reclinable', 10, 185.00),
('Auriculares Bluetooth con Cancelación de Ruido', 50, 79.99),
('Micrófono Condensador USB', 22, 45.00),
('Cámara Web 1080p', 35, 34.90),
('Hub USB-C 7 en 1', 75, 29.99),
('Cable HDMI 2.1 2 metros', 200, 12.50),
('Teclado Membrana Español', 90, 15.00),
('Mousepad XXL Control', 130, 18.00),
('Soporte para Laptop Ajustable', 40, 22.50),
('Base Enfriadora para Laptop', 28, 27.00),
('Cargador Universal USB-C 65W', 55, 31.99),
('Impresora Multifuncional Tinta Continua', 9, 210.00),
('Router Wi-Fi 6 Dual Band', 32, 84.50),
('Switch Gigabit 8 Puertos', 19, 23.00),
('Pendrive 64GB USB 3.0', 150, 8.99),
('Adaptador Bluetooth 5.0 USB', 80, 7.50);

Review:
-- Crear una vista llamada vw_ventas_destacadas que contenga únicamente los registros de 
-- ventas cuyo monto sea igual o superior a $300.00, incluyendo la fecha, el vendedor y 
-- el monto.

DROP VIEW IF EXISTS vw_ventas_destacadas;
CREATE VIEW vw_ventas_destacadas AS
SELECT fecha, vendedor, monto
FROM ventas_vendedores
WHERE monto >= 300
ORDER BY monto DESC;

SELECT * FROM vw_ventas_destacadas;

-- Crear una vista llamada vw_resumen_vendedores que muestre el nombre de cada vendedor, 
-- el número total de transacciones realizadas y el precio promedio de sus ventas 
--redondeado a dos decimales.
DROP VIEW IF EXISTS vw_resumen_vendedores;
CREATE VIEW vw_resumen_vendedores AS
SELECT vendedor,
  COUNT(*) AS total_transacciones,
  ROUND(AVG(monto), 2) AS promedio_ventas
FROM ventas_vendedores
GROUP BY vendedor
ORDER BY vendedor;

SELECT * FROM vw_resumen_vendedores;


-- Crear un procedimiento llamado sp_ajustar_precios_bajo_stock que aplique un incremento 
-- porcentual al precio de todos los productos cuyo stock sea menor a cierto límite 
-- recibido por parámetro (por ejemplo, aumentar un 10% el precio a productos con menos 
-- de 15 unidades en existencia).

DROP PROCEDURE IF EXISTS sp_ajustar_precios_bajo_stock(INT, NUMERIC);
CREATE PROCEDURE sp_ajustar_precios_bajo_stock(
  p_limite_stock INT,
  p_porcentaje_incremento NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE inventario
  SET precio = precio * (1 + p_porcentaje_incremento / 100)
  WHERE cantidad < p_limite_stock;
  
  RAISE NOTICE 'Precios ajustados para productos con stock menor a %', p_limite_stock;
END;
$$;

CALL sp_ajustar_precios_bajo_stock(15, 10);


-- Crear una función llamada fn_aplicar_descuento_producto que reciba el id del 
-- producto y un porcentaje de descuento (por ejemplo, 15.00 para 15%). 
-- La función debe calcular el precio final restando el descuento al precio original.


DROP FUNCTION IF EXISTS fn_aplicar_descuento_producto(INT, NUMERIC);
CREATE FUNCTION fn_aplicar_descuento_producto(
  p_id_producto INT,
  p_porcentaje_descuento NUMERIC
)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
  v_precio_original NUMERIC;
  v_precio_final NUMERIC;
BEGIN
  SELECT precio INTO v_precio_original
  FROM inventario
  WHERE id = p_id_producto;

  v_precio_final := v_precio_original - (v_precio_original * p_porcentaje_descuento / 100);
  RETURN v_precio_final;
END;
$$;

SELECT fn_aplicar_descuento_producto(1, 15);