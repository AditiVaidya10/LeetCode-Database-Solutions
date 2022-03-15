CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select if (N > count(s), NULL, min(s)) from (
          select distinct(salary) as s from Employee
          order by salary desc
          limit N
          ) as t
  );
END
