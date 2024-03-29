INSERT INTO Departments (department_name)
VALUES ('Sales'), 
    ('Service'), 
    ('Managment'), 
    ('Engineering');

INSERT INTO Roles (title, salary, department_id)
VALUES ('Head Sales', 100000, 1),
    ('Junior Sales', 80000, 1),
    ('Full Stack Developer', 100000, 4),
    ('Junior Developer', 60000, 4),
    ('Customer Representative', 80000, 2),
    ('Project Manager', 120000, 3),
    ('Sales Manager', 110000, 3);

INSERT INTO Employees (first_name, last_name, role_id, manager_id)
VALUES ('Jack', 'Ripper', 6, NULL),
    ('John', 'Appleseed', 1, 7),
    ('Jane', 'Tomatoseed', 4, 6),
    ('Jim', 'Kramer', 5, NULL),
    ('Eugene', 'Krabs', 2, 7),
    ('Spongebob', 'Squarepants', 3, 6),
    ('Sandy', 'Cheeks', 7, NULL);
