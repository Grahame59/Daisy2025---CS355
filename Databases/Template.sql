/* -----------------------------------------------------------------------------------------------------------------------------------------
                                                        Template File for SQL
  ---------------------------------------------------------------------------------------------------------------------------------------- */
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    user_type ENUM('employee', 'member') NOT NULL
);

CREATE TABLE Employee  