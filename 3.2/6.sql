SELECT project.COST/(
    SELECT count(developer_id)
    FROM project_developer
    WHERE project_id=id
) AS average_salary
FROM project
WHERE id IN (
SELECT id
    FROM project
    WHERE cost IN (
        SELECT cost
        FROM project
        ORDER BY cost
        LIMIT 1
    )
);