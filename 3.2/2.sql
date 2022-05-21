SELECT *
FROM projects
WHERE id IN (
    SELECT project_id
    FROM projects_developers AS T1
    INNER JOIN developers AS T2 ON T1.developer_id=T2.id
    GROUP BY project_id
    HAVING sum(salary) IN (
        SELECT sum(salary) costs
        FROM projects_developers AS T1
        INNER JOIN developers AS T2 ON T1.developer_id=T2.id
        GROUP BY project_id
        ORDER BY costs DESC
        LIMIT 1
    )
);