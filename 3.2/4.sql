ALTER TABLE projects
ADD cost number;

UPDATE projects AS T1
SET T1.cost = (
    SELECT SUM(salary)
    FROM developers AS T2
    WHERE T2.id IN (
        SELECT T3.developer_id
        FROM projects_developers AS T3
        WHERE T3.project_id=T1.id
    )
);