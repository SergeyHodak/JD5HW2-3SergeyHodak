ALTER TABLE developer ADD salary number;

UPDATE developer SET salary=500 WHERE first_name='Nina' AND second_name='Weendi';
UPDATE developer SET salary=200 WHERE first_name='Oleg' AND second_name='Filli';
UPDATE developer SET salary=1000 WHERE first_name='Olga' AND second_name='Dzi';
UPDATE developer SET salary=4000 WHERE first_name='Fedir' AND second_name='Tomson';
UPDATE developer SET salary=7000 WHERE first_name='Did' AND second_name='Panas';