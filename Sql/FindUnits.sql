/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ParameterID]
      ,[CategoryID]
      ,[ParameterName]
      ,[Abbreviation]
      ,[TASMC_ICU_Intensix].[dbo].[Parameters].[UnitID]
	  ,[UnitName]
      ,[Multiplier]
      ,[LowNormalValue]
      ,[HighNormalValue]
      ,[ParameterType]
 FROM [TASMC_ICU_Intensix].[dbo].[Parameters] join [TASMC_ICU_Intensix].[dbo].[Units] on [TASMC_ICU_Intensix].[dbo].[Parameters].[UnitID]=[TASMC_ICU_Intensix].[dbo].[Units].[UnitID]
 where ParameterID='4722'