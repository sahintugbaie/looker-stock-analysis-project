SELECT 
    reference_id,
    location,
    COUNT(*) AS movement_count,
    SUM(quantity) AS total_quantity
FROM sample_inventory_data
GROUP BY reference_id, location
ORDER BY total_quantity DESC;