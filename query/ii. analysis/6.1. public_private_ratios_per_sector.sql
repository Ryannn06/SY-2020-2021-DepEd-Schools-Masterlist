SELECT
    urban_rural,
    SUM(CASE WHEN sector IN ('Public', 'SUCs/LUCs') THEN 1 ELSE 0 END) AS public_count,
    SUM(CASE WHEN sector = 'Private' THEN 1 ELSE 0 END) AS private_count,
    CONCAT(ROUND(
            SUM(CASE WHEN sector IN ('Public', 'SUCs/LUCs') THEN 1 ELSE 0 END)::numeric/
            SUM(CASE WHEN sector = 'Private' THEN 1 ELSE 0 END), 2
        ), ' : 1') AS public_private_ratio
FROM masterlist
GROUP BY urban_rural;