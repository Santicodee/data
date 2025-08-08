



--final tweak remove duplicates and replace null with average duration within that date
select
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	Stage,
	Action,
	COALESCE (Duration, avgDuration) as Duration
from
	(
	select
		JourneyID,
		CustomerID,
		ProductID,
		VisitDate,
		upper(Stage) as Stage,
		Action,
		Duration,
		AVG(Duration) over(partition by VisitDate) as avgDuration,
		ROW_NUMBER() over( 
			partition by CustomerID, ProductID, VisitDate, UPPER(Stage), Action
			order by JourneyID
			) as row_num
	from
		customer_journey
	) as subquery
where row_num =1


		
	

