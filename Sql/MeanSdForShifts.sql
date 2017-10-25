Select DATEADD(dd, 0, DATEDIFF(dd, 0, Time)) as dateOnly, DATEPART(dw, Time) as dayInWeek, DATEPART(hh, Time) as Hour_in_Day, count(Monitor_Alarm) as Amount_of_Alarms
From [Ichilov].[dbo].[SouraskyDB] 
WHERE  Monitor_Alarm=1 
Group by DATEADD(dd, 0, DATEDIFF(dd, 0, Time)), DATEPART(dw, Time), DATEPART(hh, Time)
Order by DATEPART(dw, Time), DATEPART(hh, Time)