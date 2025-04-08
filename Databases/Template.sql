/* -----------------------------------------------------------------------------------------------------------------------------------------
                                                        Template File for SQL
  ---------------------------------------------------------------------------------------------------------------------------------------- */
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    user_type ENUM('employee', 'member', 'supervisor') NOT NULL
);

CREATE TABLE Employee (
employee_ssn INT PRIMARY KEY,
user_id INT NOT NULL,
position VARCHAR(50),
salary DECIMAL(10,2),
address VARCHAR(100),

FOREIGN KEY (user_id) REFERENCES Users(user_id)


);