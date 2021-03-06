/****** Script for SelectTopNRows command from SSMS  ******/
select DATEPART(hh, Time) as Hour, Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
group by DATEPART(hh, Time), Alarm , Michael_Alarm
order by DATEPART(hh, Time), Alarm, Michael_Alarm

select DATEPART(dw, Time) as Weekday, Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
group by DATEPART(dw, Time), Alarm , Michael_Alarm
order by DATEPART(dw, Time), Alarm, Michael_Alarm

/****** Script for SelectTopNRows command from SSMS  ******/
select DATEPART(hh, Time) as Hour, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB]
group by DATEPART(hh, Time)
order by DATEPART(hh, Time), Alarm, Michael_Alarm

select DATEPART(dw, Time) as Weekday, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
group by DATEPART(dw, Time)
order by DATEPART(hh, Time), Alarm, Michael_Alarm