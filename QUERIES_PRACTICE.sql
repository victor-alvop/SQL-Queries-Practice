-- EXERCISE THE FIRST ROW FROM STUDENTS TABLE

SELECT * FROM students AS the_first
LIMIT 1;

SELECT * FROM students AS the_first
WHERE id = 1;

SELECT * FROM students AS the_first
FETCH FIRST 1 ROWS ONLY;

SELECT * FROM (
	SELECT ROW_NUMBER () OVER() AS row_id, * 
	FROM students	
) AS students_row_num
WHERE row_id = 2;


-- EXERCISE THE SECOND HIGHEST TUITION PAYMENT
SELECT ('id', tuition) FROM STUDENTS
GROUP BY tuition
ORDER BY tuition desc
LIMIT 2;

SELECT ('id', tuition) FROM STUDENTS
GROUP BY tuition
ORDER BY tuition desc
FETCH FIRST 2 ROWS ONLY;

-- SECOND HALF OF ALL THE TABLE STUDENTS
SELECT ROW_NUMBER () OVER () AS row_id, *
FROM students
OFFSET (
	SELECT COUNT(*)/2
	FROM students
);

SELECT * 
FROM STUDENTS
WHERE id > (
	SELECT (COUNT(*)/2) FROM STUDENTS
);

-- SELECT SPECIFIC ROWS IN AN ARRAY
SELECT * 
FROM (
	SELECT ROW_NUMBER () OVER () AS row_id, *
	FROM students) AS students_num_id
WHERE row_id IN (1, 5, 6, 63, 664, 42, 321);


-- SELECT THE STUDENTS WITH THE TOP TWO TUITION AMOUNT
SELECT *
FROM students
WHERE tuition IN (
		SELECT tuition 
		FROM students 
		GROUP BY(tuition) 
		ORDER BY (tuition) DESC 
		LIMIT 2);









