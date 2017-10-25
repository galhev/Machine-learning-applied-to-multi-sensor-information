select DATEPART(dw, Time) as Weekday, count(CASE WHEN Monitor_Alarm=1 and DATEPART(hh, Time) in (7,8,9,10,11,12,13,14) THEN 1 ELSE NULL END) as Morning,  count(CASE WHEN Monitor_Alarm=1 and DATEPART(hh, Time) in (15,16,17,18,19,20,21,22) THEN 1 ELSE NULL END) as Afternoon, count(CASE WHEN Monitor_Alarm=1 and DATEPART(hh, Time) in (23,0,1,2,3,4,5,6) THEN 1 ELSE NULL END) as Night
FROM [Ichilov].[dbo].[SouraskyDB] 
group by DATEPART(dw, Time)
order by DATEPART(dw, Time)