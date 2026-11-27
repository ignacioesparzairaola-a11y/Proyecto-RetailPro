--Pre-entrega: Consultas SQL de negocio.
--Título: Extrayendo métricas clave con SQL. 
-- Basada en la base de datos creada para el módulo 3.
--Consulta 1:-- Resumen ejecutivo mensual Total facturado, cantidad de pedidos y ticket promedio, agrupados por mes.
SELECT
	EXTRACT(MONTH FROM fecha_venta) 			AS mes,
	SUM (cantidad*precio_unitario) 			AS total_facturado,
	COUNT	(id_venta) 							AS cantidad_de_pedidos,
	ROUND (AVG (cantidad*precio_unitario),2) 	AS ticket_promedio
FROM ventas
GROUP BY EXTRACT(MONTH FROM fecha_venta)
ORDER BY mes ASC;
-- 



-- Bloque de comentarios: 3 HALLAZGOS...
