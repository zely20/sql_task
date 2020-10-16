SELECT p.name FROM person AS p
WHERE p.company_id != 4;

SELECT p.name, c.name FROM person AS p, company AS c
WHERE c.id = p.company_id;

SELECT c.name, COUNT(p.company_id) AS schet  FROM company AS c,
person AS p;

SELECT c.name, COUNT(p.company_id) AS schet FROM
person AS p, company AS c
WHERE c.id = p.company_id
GROUP BY c.name;

SELECT t1.* FROM
(select c.name, COUNT(p.company_id) AS expr1 FROM
person AS p, company AS c
WHERE c.id = p.company_id
GROUP BY c.name
ORDER BY expr1 desc ) as t1
limit 1;
