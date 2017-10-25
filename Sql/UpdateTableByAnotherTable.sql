UPDATE [Ichilov].[dbo].[SouraskyDB]
SET [Ichilov].[dbo].[SouraskyDB].[BIS] = [TASMC_ICU_Intensix].[dbo].[Signals].[Value],
FROM [Ichilov].[dbo].[SouraskyDB] JOIN [TASMC_ICU_Intensix].[dbo].[Signals] 
   ON [Ichilov].[dbo].[SouraskyDB].[PatientID] = [TASMC_ICU_Intensix].[dbo].[Signals].[PatientID] and
   [Ichilov].[dbo].[SouraskyDB].[Time] = [TASMC_ICU_Intensix].[dbo].[Signals].[Time]
   where [TASMC_ICU_Intensix].[dbo].[Signals].ParameterID in ('8364 ','8365' ,'8605', '8606','8607')