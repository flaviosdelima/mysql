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
 
delimiter ;
