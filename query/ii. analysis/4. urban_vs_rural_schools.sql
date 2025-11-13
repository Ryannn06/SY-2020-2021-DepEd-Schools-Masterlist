SELECT 
    urban_rural,
    COUNT(*) AS total_count,
    ROUND(COUNT(*)::numeric/ (SELECT COUNT(*) FROM masterlist) * 100, 2) AS percentage
FROM masterlist
GROUP BY urban_rural
ORDER BY total_count DESC;