/****** 7,267 ******/
/****** Hypovolemia 1 (1 minute windows) 86947 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Hypovolemia 1]=1
where [ArtBPM]<50 and [CVP]<5 and [CVP]>-10

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Hypovolemia 1, ') where [ArtBPM]<50 and [CVP]<5 and [CVP]>-10 ;

/****** Hypovolemia 2 (1 minute windows) 0 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Michael_Alarm]=1
where [ArtBPM]<50 and [CVP]<5 and [CVP]>-10
/*and ([PPV]>15 or [SPV]>15 or [SVV]>15)*/



/****** Hypovolemia 3 (1 minute windows) 1133325 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Hypovolemia 3]=1
where [ArtBPM]<50 
/*and ([PPV]>15 or [SPV]>15 or [SVV]>15)*/

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Hypovolemia 3, ') where [ArtBPM]<50 ;


/****** Hypovolemia 4 (1 minute windows) 733 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Hypovolemia 4]=1
where [NIBPM]<50 and [CVP]<5 and [CVP]>-10

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Hypovolemia 4, ') where [NIBPM]<50 and [CVP]<5 and [CVP]>-10 ;


/****** LV shock 1 (1 minute window) 19130 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [LV shock 1]=1
where [ArtBPS]<78 and [CVP]<16 and PAPD<60 and PAPD> 16

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'LV shock 1, ')where [ArtBPS]<78 and [CVP]<16 and PAPD<60 and PAPD> 16 ;


/****** LV shock 2 (1 minute window) 29838 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [LV shock 2]=1
where [ArtBPS]<78 and [CVP]<35 and [CVP]>16 
/*and ([PPV]<12 or [SPV]<12 or [SVV]<12)*/
  
update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'LV shock 2, ')where [ArtBPS]<78 and [CVP]<35 and [CVP]>16  ;



/****** LV shock 3 (1 minute window)  Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [LV shock 3]=1
where [Lactate]>2.5 and [Anion_Gap]>0.75 or [Bicarbonate]>0.75 

  


/****** Obstructive shock 1 (1 minute window) 4701 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Obstructive shock 1]=1
where [ArtBPS]<78 and [CVP]<35 and [CVP]>16 and PAPD<60 and PAPD> 16

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Obstructive shock 1, ')where [ArtBPS]<78 and [CVP]<35 and [CVP]>16 and PAPD<60 and PAPD> 16 ;

/****** Obstructive shock 2 (1 minute window) 29838 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Obstructive shock 2]=1
where [ArtBPS]<78 and [CVP]<35 and [CVP]>16 
/*and ([PPV]>17 or [SPV]>17 or [SVV]>17)*/

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Obstructive shock 2, ') where [ArtBPS]<78 and [CVP]<35 and [CVP]>16  ;


/****** Agitation 1 ( 1 minute window) 1085890 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Agitation 1]=1
where 
/*[BIS]>80 and*/
 [HR]>110 
/*and [PULSE_Rate]>110 */
and ([ArtBPS]>140 or [NIBPS]>140)
  
update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Agitation 1, ') where [HR]>110 and ([ArtBPS]>140 or [NIBPS]>140);


/****** Agitation 2 ( 1 minute window) 350612 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Agitation 2]=1
where 
/*[BIS]>80 and */
[HR]>110 
/*or [PULSE_Rate]>110*/
 and ([ArtBPS]>140 or [NIBPS]>140) and (RR_Total > RR_Mandatory or RR_Total>25)
 
 update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Agitation 2, ') where [HR]>110 and ([ArtBPS]>140 or [NIBPS]>140) and (RR_Total > RR_Mandatory or RR_Total>25);

/****** Bradycardia 1 (1 minute window) 173212 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Bradycardia]=1
where [HR]<45 
/*and [PULSE_Rate]<45*/
 
 update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Bradycardia 1, ') where [HR]<45 ;
  

/****** Bradycardia Hypotension (1 minute window) 0 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Bradycardia Hypotension]=1
where [HR]<45 
/*and [PULSE_Rate]<45*/
 and [ArtBPS]<78
   
update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Bradycardia Hypotension, ') where [HR]<45  and [ArtBPS]<78;
  

/****** Tachycardia Hypotension (1 minute window) 27479 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Tachycardia Hypotension]=1
where [HR]>120 and 
/*[PULSE_Rate]>120 and*/
 [ArtBPS]<78

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Tachycardia Hypotension, ') where [HR]>120 and [ArtBPS]<78;
 
/****** Tachycardia ( 1 minute window) 2858827 Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Tachycardia]=1
where [HR]>120 
/*and [PULSE_Rate]>120*/

update [Ichilov].[dbo].[SouraskyDB] set [Michael_Type] = concat([Michael_Type],'Tachycardia') where [HR]>120;
 
