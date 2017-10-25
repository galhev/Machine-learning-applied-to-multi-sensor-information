select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%SVT & Hypotension 1%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%SVT & Hypotension 2%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Tachycardia' or Michael_Type like '%Tachycardia,%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Tachycardia Hypotension%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Bradycardia Hypotension%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Bradycardia 1%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Agitation 1%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Agitation 2%'
group by Alarm, Michael_Alarm;


select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Obstructive shock 1%'
group by Alarm, Michael_Alarm;



select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Obstructive shock 2%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%LV shock 1%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%LV shock 2%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Hypovolemia 1%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Hypovolemia 2%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Hypovolemia 3%'
group by Alarm, Michael_Alarm;

select Alarm as Monitor, Michael_Alarm as Michael_Alarm, count(*) as Amount
FROM [Ichilov].[dbo].[SouraskyDB] 
where Michael_Type like '%Hypovolemia 4%'
group by Alarm, Michael_Alarm;