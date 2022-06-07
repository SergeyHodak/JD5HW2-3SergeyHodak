INSERT INTO company (name, description) VALUES
('Future Technology', 'Approaching humanity to the near future'),
('Agro firm', 'Intellectual provision of agricultural machinery'),
('Integrate and use', 'Moving your business to the digital world');

INSERT INTO customer (first_name, second_name, age) VALUES
('Aller', 'Han', 38),
('Kevin', 'Stoon', 34),
('Liz', 'Krabse', 40);

INSERT INTO project (name, company_id, customer_id) VALUES
('Artificial intelligence for milling machine', 1, 2),
('App for simple options', 3, 1),
('Finding profitable ways to exchange currencies', 1, 1);

INSERT INTO developer (first_name, second_name, age, gender) VALUES
('Did', 'Panas', 61, 'male'),
('Fedir', 'Tomson', 45, 'male'),
('Olga', 'Dzi', 50, 'female'),
('Oleg', 'Filli', 23, 'male'),
('Nina', 'Weendi', 24, 'female');

INSERT INTO project_developer (project_id, developer_id) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 4),
(2, 5),
(3, 1),
(3, 2);

INSERT INTO skill (department, skill_level) VALUES
('java',  'junior'),
('java',  'middle'),
('java',  'senior'),
('python',  'junior'),
('python',  'middle'),
('python',  'senior');

INSERT INTO developer_skill (developer_id, skill_id) VALUES
(1, 3),
(1, 6),
(2, 3),
(3, 2),
(4, 4),
(5, 4),
(5, 1);