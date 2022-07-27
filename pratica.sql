

## Questão 1

SELECT 
  users.id, 
  users.name, 
  cities.name as "city" 
FROM 
  users 
  JOIN cities ON users."cityId" = cities.id 
WHERE 
  cities.name = 'Rio de Janeiro';
--------------------------------------------------------------------------

## Questão 2

SELECT 
  test.id, 
  u1.name AS writer, 
  u2.name AS recipient, 
  test.message 
FROM 
  testimonials test 
  JOIN users u1 ON u1.id = test."writerId" 
  JOIN users u2 ON u2.id = test."recipientId";
--------------------------------------------------------------------------

## Questão 3

SELECT 
  ed."userId" AS "id", 
  users.name AS "name", 
  courses.name AS course, 
  schools.name AS school, 
  ed."endDate" AS "endDate" 
FROM 
  educations ed 
  JOIN users ON users.id = ed."userId" 
  JOIN courses ON courses.id = ed."courseId" 
  JOIN schools ON schools.id = ed."schoolId" 
WHERE 
  ed."userId" = 30 
  AND ed.status = 'finished';
  --------------------------------------------------------------------------
  
  ## Questão 4
  
  SELECT 
  exp."userId" AS "id", 
  users.name AS "name", 
  roles.name AS "role", 
  companies.name AS "company", 
  exp."startDate" 
FROM 
  experiences exp 
  JOIN users ON users.id = exp."userId" 
  JOIN roles ON roles.id = exp."roleId" 
  JOIN companies ON companies.id = exp."companyId" 
WHERE 
  exp."endDate" IS NULL;
