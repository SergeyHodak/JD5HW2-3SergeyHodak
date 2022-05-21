SELECT *
FROM projects
WHERE cost IN (
    SELECT cost
    FROM projects
    ORDER BY cost
    LIMIT 1
);