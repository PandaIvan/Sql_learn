CREATE TABLE staff (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    manager_id INT REFERENCES staff(employee_id)
);