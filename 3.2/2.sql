SELECT T1.name, SUM(T3.salary) AS costs
FROM project AS T1
JOIN project_developer AS T2 ON T1.id=T2.project_id
JOIN developer AS T3 ON T2.developer_id=T3.id
GROUP BY T1.name
ORDER BY costs DESC
LIMIT 1;