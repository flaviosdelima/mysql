delimiter $$
CREATE PROCEDURE sp_add_location
  (in_location     VARCHAR(30),
        in_first_name   VARCHAR(30),
          in_last_name    VARCHAR(30),
         description     VARCHAR(10))
   MODIFIES SQL DATA
BEGIN
   INSERT INTO employee
           (city,first_name,last_name,description)
         VALUES
          (in_location,in_first_name,in_last_name,description);
END$$

insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description)
     values(7,'David',    'Larry',    '19901231', '19980212', 7897.78,'New York',  'Manager');
