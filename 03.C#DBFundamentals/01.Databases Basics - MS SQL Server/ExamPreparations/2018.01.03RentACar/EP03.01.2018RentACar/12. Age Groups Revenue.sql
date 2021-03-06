SELECT
CASE 
	WHEN DATEPART(YEAR, BirthDate) BETWEEN 1970 AND 1979 THEN '70''s'
	WHEN DATEPART(YEAR, BirthDate) BETWEEN 1980 AND 1989 THEN '80''s'
	WHEN DATEPART(YEAR, BirthDate) BETWEEN 1990 AND 1999 THEN '90''s'
	ELSE 'Others'
END AS AgeGroup, SUM(Bill) AS Revenue, AVG(o.TotalMileage) AS AverageMilage
  FROM Clients AS c
  JOIN Orders AS o ON o.ClientId = c.Id
  GROUP BY 
CASE 
	WHEN DATEPART(YEAR, BirthDate) BETWEEN 1970 AND 1979 THEN '70''s'
	WHEN DATEPART(YEAR, BirthDate) BETWEEN 1980 AND 1989 THEN '80''s'
	WHEN DATEPART(YEAR, BirthDate) BETWEEN 1990 AND 1999 THEN '90''s'
	ELSE 'Others'
END
ORDER BY AgeGroup