SELECT * FROM relatives WHERE age > 30;

SELECT name FROM relatives WHERE age > 30;

SELECT relatives.name , hobbies.name AS hobby  FROM relatives_hobbies 
JOIN relatives ON relatives_hobbies.relative_id = relatives.id
JOIN hobbies ON relatives_hobbies.hobby_id = hobbies.id;


SELECT hobbies.name AS hobby  FROM relatives_hobbies 
JOIN relatives ON relatives_hobbies.relative_id = relatives.id
JOIN hobbies ON relatives_hobbies.hobby_id = hobbies.id
WHERE relatives.name = 'Ira';

