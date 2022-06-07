SELECT SUM(T1.salary) AS total_salary
FROM developer AS T1
JOIN developer_skill AS T2 ON T1.id=T2.developer_id
JOIN skill AS T3 ON T2.skill_id=T3.id
GROUP BY T3.department
HAVING T3.department='java';