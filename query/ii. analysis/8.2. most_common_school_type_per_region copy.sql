WITH rank_type AS (
    SELECT
        region,
        school_subclassification,
        COUNT(*) as total_count,
        RANK() OVER(PARTITION BY region ORDER BY COUNT(*) DESC)
    FROM masterlist
    GROUP BY region, school_subclassification
    ORDER BY region ASC, total_count DESC
)
SELECT 
    region,
    school_subclassification,
    total_count
FROM rank_type
WHERE rank = 1
ORDER BY region ASC;
