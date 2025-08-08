
select
	c.CustomerID,
	c.CustomerName,
	c.Age,
	c.Email,
	g.Country,
	g.City
from
	customers c 
left join 
	geography g 
on 
	c.GeographyID = g.GeographyID