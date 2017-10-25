select DATEPART(dw, Time), count (distinct (CASE WHEN DATEPART(hh, Time) = 7 THEN DATEADD(dd, 0, DATEDIFF(dd, 0, Time)) END)) as Morning,  count(distinct (CASE WHEN DATEPART(hh, Time) =15 THEN  DATEADD(dd, 0, DATEDIFF(dd, 0, Time)) END)) as Afternoon, count(distinct(CASE WHEN DATEPART(hh, Time) =23 THEN  DATEADD(dd, 0, DATEDIFF(dd, 0, Time)) END)) as Night 
FROM [Ichilov].[dbo].[SouraskyDB] 
group by DATEPART(dw, Time)
order by DATEPART(dw, Time)