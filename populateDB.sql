INSERT INTO companies (name, description) VALUES
('Future Technology', 'Approaching humanity to the near future'),
('Agro firm', 'Intellectual provision of agricultural machinery'),
('Integrate and use', 'Moving your business to the digital world');

INSERT INTO customers (name_surname, age) VALUES
('Aller Han', 38),
('Kevin Stoon', 34),
('Liz Krabse', 40);

INSERT INTO projects (name, company_id, customer_id) VALUES
('Artificial intelligence for milling machine',
  SELECT id
  FROM companies
  WHERE name='Future Technology',
  SELECT id
  FROM customers
  WHERE name_surname='Kevin Stoon'
),
('App for simple options',
  SELECT id
  FROM companies
  WHERE name='Integrate and use',
  SELECT id
  FROM customers
  WHERE name_surname='Aller Han'
),
('Finding profitable ways to exchange currencies', 1, 1);

INSERT INTO developers (name_surname, age, gender) VALUES
('Did Panas', 61, 'male'),
('Fedir Tomson', 45, 'male'),
('Olga Dzi', 50, 'female'),
('Oleg Filli', 23, 'male'),
('Nina Weendi', 24, 'female');

INSERT INTO projects_developers (project_id, developer_id) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 4),
(2, 5),
(3, 1),
(3, 2);

INSERT INTO skills (department, skill_level) VALUES
('java',  'junior'),
('java',  'middle'),
('java',  'senior'),
('python',  'junior'),
('python',  'middle'),
('python',  'senior');

INSERT INTO developers_skills (developer_id, skill_id) VALUES
(1, 3),
(1, 6),
(2, 3),
(
 SELECT id
 FROM developers
 WHERE name_surname='Olga Dzi',
 SELECT id
 FROM skills
 WHERE department='java' and skill_level='middle'
),
(4, 4),
(5, 4),
(5, 1);