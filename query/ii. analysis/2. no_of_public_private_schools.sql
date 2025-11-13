-- Active: 1761546932084@@localhost@5432@deped_masterlist
SELECT 
    sector,
    COUNT(*) AS total_count,
    ROUND(COUNT(*)::numeric/ (SELECT COUNT(*) FROM masterlist) * 100, 2) AS percentage
FROM masterlist
GROUP BY sector
ORDER BY total_count DESC;
