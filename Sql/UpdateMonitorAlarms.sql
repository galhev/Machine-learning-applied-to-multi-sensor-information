/*---HR---*/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [MonitorAlarm_HR]=1
where HR >120 or HR <60


/*---ArtBPS---*/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [MonitorAlarm_ArtBPS]=1
where ArtBPS >180 or ArtBPS <90


/*---NIBPS---*/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [MonitorAlarm_NiBPS]=1
where NiBPS >180 or NiBPS <90


/*---MAP---*/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [MonitorAlarm_MAP]=1
where ArtBPM >125 or ArtBPM <65


/*---SAT---*/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [MonitorAlarm_SAT]=1
where SpO2>100 or SpO2<90


/*---CVP---*/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [MonitorAlarm_CVP]=1
where CVP >15 or CVP <0
