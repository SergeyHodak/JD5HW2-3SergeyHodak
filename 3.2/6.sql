SELECT projects.COST/(
    SELECT count(developer_id)
    FROM projects_developers
    WHERE project_id=id
) AS average_salary
FROM projects
WHERE id IN (
SELECT id
    FROM projects
    WHERE cost IN (
        SELECT cost
        FROM projects
        ORDER BY cost
        LIMIT 1
    )
);