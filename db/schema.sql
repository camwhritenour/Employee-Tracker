DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department 
(
  id INT AUTO_INCREMENT,
  department_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO department (department_name)
VALUES ('Sales'), 
    ('Service'), 
    ('Managment'), 
    ('Engineering');

CREATE TABLE role (
  id INT AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE SET NULL,
  PRIMARY KEY (id)
);

INSERT INTO role (title, salary, department_id)
VALUES ('Head Sales', 100000, 1),
    ('Junior Sales', 80000, 1),
    ('Full Stack Developer', 100000, 4),
    ('Junior Developer', 60000, 4),
    ('Customer Representative', 80000, 2),
    ('Project Manager', 120000, 3),
    ('Sales Manager', 110000, 3);

CREATE TABLE employee (
  id INT AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL,
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Jack', 'Ripper', 6, NULL),
    ('John', 'Appleseed', 1, 7),
    ('Jane', 'Tomatoseed', 4, 6),
    ('Jim', 'Kramer', 5, NULL),
    ('Eugene', 'Krabs', 2, 7),
    ('Spongebob', 'Squarepants', 3, 6),
    ('Sandy', 'Cheeks', 7, NULL);