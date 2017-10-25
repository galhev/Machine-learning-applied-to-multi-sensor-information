/*Missing: HR*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)or(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))) 

/*Missing: ArtBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and(ArtBPS > 140))and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: ArtBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR > 120))or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or(ArtBPM < 50)or((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or(HR > 110)and((ArtBPS > 140))or((HR > 110)and((ArtBPS > 140))and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or(HR > 110)and((ArtBPS > 140))or((HR > 110)and((ArtBPS > 140))and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: NiBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where  ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((NiBPM < 50)and(CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where  ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)or(NiBPS > 140))or(HR > 110)and((ArtBPS > 140))and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or((HR > 110)and((ArtBPS > 140))and((RR_total > 25)))


/*Missing: RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and(ArtBPS > 140)))


/*Missing: HR + ArtBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((CVP < 5)and(CVP > -10))or((RR_total>RR_mandatory)or(RR_total > 25))


/*Missing: HR + ArtBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or((ArtBPS > 140))or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: HR + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where (ArtBPM < 50)or((ArtBPS < 78))or((ArtBPS < 78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or(ArtBPS > 140)or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: HR + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where  ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP < 16))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: HR + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)

/*Missing: HR + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(((ArtBPS > 140)))or((ArtBPS > 140)and(RR_total > 25))



/*Missing: ArtBPS + ArtBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((CVP < 5)and(CVP > -10))or((CVP > 16)and(CVP < 35))or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR > 120))or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110))and((RR_total>RR_mandatory)or(RR_total > 25))


/*Missing: ArtBPS + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where (ArtBPM < 50)or((PAPD > 16)and(PAPD < 60))or((HR < 45))or(HR > 120)or((HR > 110))or(((HR > 110))and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: ArtBPS + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16))or((CVP > 16)and(CVP < 35))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: ArtBPS + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or(HR > 110)

/*Missing: ArtBPS + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110)and(RR_total > 25))


/*Missing: ArtBPM + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((ArtBPS < 78)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and(ArtBPS > 140))or((HR > 110)and(ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: ArtBPM + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: ArtBPM + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140))))

/*Missing: ArtBPM + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total > 25)))

/*Missing: CVP + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where (ArtBPM < 50)or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: CVP + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where (ArtBPM < 50)or((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140))))

/*Missing: CVP + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where (ArtBPM < 50)or((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total > 25)))

/*Missing: PAPD + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140))))

/*Missing: PAPD + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total > 25)))

/*Missing: RR Total + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and(ArtBPS > 140))or((HR > 110)and((ArtBPS > 140)))


/*Missing: HR + ArtBPS + ArtBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
where ((CVP < 5)and(CVP > -10))or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((CVP < 5)and(CVP > -10))or((RR_total>RR_mandatory)or(RR_total > 25))


/*Missing: HR + ArtBPS + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((PAPD > 16)and(PAPD < 60))or((RR_total>RR_mandatory)or(RR_total > 25))


/*Missing: HR + ArtBPS + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35))or((CVP < 5)and(CVP > -10))or((RR_total>RR_mandatory)or(RR_total > 25))


/*Missing: HR + ArtBPS + NiBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 

/*Missing: HR + ArtBPS + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 

/*Missing: HR + ArtBPS + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((CVP < 5)and(CVP > -10))or(RR_total > 25)

/*Missing: HR + ArtBPS + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((CVP < 5)and(CVP > -10))



/*Missing: HR + ArtBPM + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPS < 78))or((ArtBPS < 78)and(PAPD > 16)and(PAPD < 60))or(ArtBPS < 78)or(ArtBPS > 140)or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: HR + ArtBPM + NiBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: HR + ArtBPM + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: HR + ArtBPM + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: HR + ArtBPM + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or((ArtBPS > 140))or((ArtBPS > 140)and(RR_total > 25))


/*Missing: HR + ArtBPM + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or((ArtBPS > 140))


/*Missing: HR + CVP + NiBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: HR + CVP + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: HR + CVP + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((ArtBPS < 78))or(ArtBPS > 140)or((ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: HR + CVP + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((ArtBPS < 78))or((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or(ArtBPS > 140)or((ArtBPS > 140)and(RR_total > 25))


/*Missing: HR + CVP + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((ArtBPS < 78))or((ArtBPS < 78)and(PAPD > 16)and(PAPD < 60))or(ArtBPS > 140)


/*Missing: HR + PAPD + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)


/*Missing: HR + PAPD + RR_Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)or((ArtBPS > 140)and(RR_total > 25))


/*Missing: HR + NiBPS + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: HR + NiBPS + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: HR + NiBPS + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 

/*Missing: HR + NiBPM + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: HR + NiBPM + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 

/*Missing: HR + RR_mandatory + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or((CVP < 5)and(CVP > -10))or(ArtBPS > 140)


/*Missing: ArtBPS + CVP + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50))or(HR < 45)or(HR > 120)or(HR > 110)or((HR > 110)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: ArtBPS + CVP + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or(((HR > 110)))


/*Missing: ArtBPS + CVP + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or(((HR > 110))and((RR_total > 25)))


/*Missing: ArtBPS + PAPD + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16))or((CVP > 16)and(CVP < 35))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))


/*Missing: ArtBPS + PAPD + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16))or((CVP > 16)and(CVP < 35))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110)and((RR_total > 25)))


/*Missing: ArtBPS + RR Total + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))


/*Missing: ArtBPM + ArtBPS + CVP*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or((HR > 110))or((HR > 110))and((RR_total>RR_mandatory)or(RR_total > 25))

/*Missing: ArtBPM + ArtBPS + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((CVP < 16))or((CVP > 16)and(CVP < 35))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110)and((RR_total>RR_mandatory)or(RR_total > 25)))


/*Missing: ArtBPM + ArtBPS + NiBPS*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: ArtBPM + ArtBPS + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: ArtBPM + ArtBPS + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))or((HR > 110)and(RR_total > 25))



/*Missing: ArtBPM + ArtBPS + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((CVP < 16)and(PAPD > 16)and(PAPD < 60))or((CVP > 16)and(CVP < 35))or((CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110))


/*Missing: ArtBPM + NiBPS + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: ArtBPM + NiBPS + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: ArtBPM + NiBPS + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: ArtBPM + NiBPM + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: ArtBPM + NiBPM + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 

/*Missing: ArtBPM + RR_mandatory + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 


/*Missing: ArtBPM + CVP + PAPD*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))or((HR > 110)and(ArtBPS > 140)and((RR_total>RR_mandatory)or(RR_total > 25)))

/*Missing: ArtBPM + CVP + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and(ArtBPS > 140))


/*Missing: ArtBPM + CVP + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPS <78)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and(ArtBPS > 140))and((RR_total > 25)))


/*Missing: ArtBPM + PAPD + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))


/*Missing: ArtBPM + PAPD + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total > 25)))

/*Missing: ArtBPM + RR Total + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((CVP < 5)and(CVP > -10))or((ArtBPS <78)and(CVP < 16)and(PAPD > 16)and(PAPD < 60))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))


/*Missing: CVP + PAPD + RR Total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))

/*Missing: CVP + PAPD + RR Mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((ArtBPS < 78))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))or(((HR > 110)and((ArtBPS > 140)))and((RR_total > 25)))


/*Missing: CVP + NiBPS + NiBPM*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: CVP + NiBPS + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: CVP + NiBPS + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: CVP + RR_mandatory + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where (ArtBPM < 50)or((ArtBPS < 78))or((ArtBPS < 78)and(PAPD > 16)and(PAPD < 60))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((HR > 110)and((ArtBPS > 140)))


/*Missing: PAPD + RR_mandatory + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where ((ArtBPM < 50)and(CVP < 5)and(CVP > -10))or(ArtBPM < 50)or((ArtBPS <78)and(CVP < 16))or((ArtBPS < 78)and(CVP > 16)and(CVP < 35))or(HR < 45)or((HR < 45)and(ArtBPS < 78))or((HR > 120)and(ArtBPS < 78))or(HR > 120)or((CVP < 5)and(CVP > -10))or((HR > 110)and((ArtBPS > 140)))


/****** LV shock 3 (1 minute window)  Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Michael_Partial]=1
where [Lactate]>2.5 


/****** LV shock 3 (1 minute window)  Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Michael_Partial]=1
where [Anion_Gap]>0.75  



/****** LV shock 3 (1 minute window)  Alarms ******/
UPDATE [Ichilov].[dbo].[SouraskyDB]
set [Michael_Partial]=1
where [Bicarbonate]>0.75 




/*Missing: NiBPS + NiBPM + RR_mandatory*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: NiBPS + NiBPM + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 
/*Missing: NiBPS + RR_mandatory + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 

/*Missing: NiBPM + RR_mandatory + RR_total*/
update [Ichilov].[dbo].[SouraskyDB]
set [Ichilov].[dbo].[SouraskyDB].[Michael_Partial] = 1 
Where 