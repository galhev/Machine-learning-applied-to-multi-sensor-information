/*---HR---*/
select count(*) as HR_Monitor_Alarms
from dbo.SouraskyDB
where dbo.SouraskyDB.HR >120 or dbo.SouraskyDB.HR <60

/*---ArtBPS---*/
select count(*) as ArtBPS_Monitor_Alarms
from dbo.SouraskyDB
where dbo.SouraskyDB.ArtBPS >180 or dbo.SouraskyDB.ArtBPS <90


/*---NIBPS---*/
select count(*) as NIBPS_Monitor_Alarms
from dbo.SouraskyDB
where dbo.SouraskyDB.NiBPS >180 or dbo.SouraskyDB.NiBPS <90


/*---MAP---*/
select count(*) as ArtBPM_Monitor_Alarms
from dbo.SouraskyDB
where dbo.SouraskyDB.ArtBPM >125 or dbo.SouraskyDB.ArtBPM <65


/*---SAT---*/
select count(*) as Spo2_Monitor_Alarms
from dbo.SouraskyDB
where SpO2>100 or SpO2<90


/*---CVP---*/
select count(*) as CVP_Monitor_Alarms
from dbo.SouraskyDB
where dbo.SouraskyDB.CVP >15 or dbo.SouraskyDB.CVP <0
