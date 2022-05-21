SELECT SUM(salary)
FROM developers
WHERE id in (
    SELECT DEVELOPER_ID
    FROM developers_skills AS T1
    INNER JOIN skills AS T2 ON T1.skill_id=T2.id
    WHERE DEPARTMENT='java'
);