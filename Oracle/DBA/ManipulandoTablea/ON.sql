-- A cláusula ON
-- Esta pertmite tornar explicita todas as condições de relacionamento entre tabelas.
-- EX: 

SELECT e.employee_id, e.last_name, e.department_id, d.departmente_id, d.location_id 
FROM employees e JOIN departments d ON (e.department_id = d.department_id);

-- EX2:
SELECT e.first_name, e.email, e.department_id,
d.department_name, d.department_id FROM
employees e JOIN departments d ON (e.department_id = d.department_id);

--EX3
 SELECT e.first_name as Nome, e.email, d.department_name as Departamento FROM employees e JOIN depar
tments d ON (e.department_id = d.department_id);

-- EX4 Trabalahndo com mais de duas tabelas
SELECT employee_id, city, department_name FROM employees e JOIN departments
 d ON d.department_id = e.department_id JOIN locations l ON d.location_id = l.lo
cation_id;
-- EX5 Condção AND
SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
AND e.manager_id = 149;

EX5 Condção WHERE

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE e.manager_id = 149;
