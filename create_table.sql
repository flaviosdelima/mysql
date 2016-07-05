CREATE TABLE Employee(
       id            int,
       first_name    VARCHAR(15),
       last_name     VARCHAR(15),
       start_date    DATE,
       end_date      DATE,
       salary        FLOAT(8,2),
       city          VARCHAR(10),
       description   VARCHAR(15)
     );
     
     
insert into Employee(id,first_name, last_name, start_date, end_Date,   salary,  City,       Description)
      values(7,'David',    'Larry',    '19901231', '19980212', 7897.78,'New York',  'Manager');
