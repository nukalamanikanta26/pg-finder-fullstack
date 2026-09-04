USE PGfinderdb;

-- Q1: CREATE A TABLE rooms

CREATE TABLE rooms (
  id INT PRIMARY KEY,
  location VARCHAR(50),
  price INT,
  sharing_type VARCHAR(20)
);

-- Q2 : INSERT DATA INTO TABLE 

INSERT INTO rooms VALUES 
(1, 'Ameerpet', 6000, '2-sharing'),
(2, 'SR Nagar', 5500, '3-sharing'),
(3, 'Ameerpet', 7000, '1-sharing'),
(4, 'KPHB', 5000, '2-sharing'),
(5, 'Ameerpet', 6500, '3-sharing');


-- Q3 : TASK 3 Answer - WHERE + AND " rooms below 6500 price at Ameerpet "

SELECT * 
FROM rooms
 WHERE location = 'Ameerpet' AND price < 6500;
 
 -- Q4 : TASK 4 Answer - IN: " Rooms available in SR Nagar and KPBHB"
 
 SELECT * 
 FROM rooms
 WHERE location IN ('SR Nagar', 'KPHB');
 
 -- Q5 : TASK 5 Answer - BETWEEN: " Rooms between 5500 and 6500 "
 
 select *  
 from rooms
 where price between 5500 and 6500;