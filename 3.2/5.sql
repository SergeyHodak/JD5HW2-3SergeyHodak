SELECT *
FROM project
WHERE cost = (
    SELECT MIN(cost)
    FROM project
);