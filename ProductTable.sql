

select 
ProductID,
ProductName,
Category,

case
	when Price < 50 then 'Low'
	when Price between 50 and 200 then 'Medium'
	else 'High'
end as PriceCategory


from
products