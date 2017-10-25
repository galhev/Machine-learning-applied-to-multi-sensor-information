SELECT [PatientID],[Time]
    ,MAX( CASE WHEN [ParameterID] in ('4704', 
                                       '6636',
                                       '6637',
                                       '7719',
                                       '8417',
                                       '8719',
                                       '8720',
                                       '9630',
                                       '10997') THEN [Value] ELSE NULL END) HR /*bpm - No change*/
    ,MAX( CASE WHEN [ParameterID] in ('4727', 
                                      '6627', 
                                      '6628', 
                                      '9231', 
                                      '9434', 
                                      '9474') THEN [Value]/133.3224  ELSE NULL END) ArtBPS /*#mmHg - devide 133.3224*/
    ,MAX( CASE WHEN [ParameterID] in ('5433', 
                                      '9472',                                                                                              
                                      '10999',
                                      '11084') THEN [Value]/133.3224 ELSE NULL END) ArtBPM /*mmHg - devide 133.3224*/
    ,MAX( CASE WHEN [ParameterID] in ('4721') THEN [Value]/133.3224  ELSE NULL END) CVP /*mmHg - devide 133.3224*/
    ,MAX( CASE WHEN [ParameterID] in ('4717','9649') THEN [Value]/133.3224 ELSE NULL END) PAPD /*#mmHg - devide 133.3224*/
    ,MAX( CASE WHEN [ParameterID] in ('4612','11017') THEN [Value]  ELSE NULL END ) RR_total /*#1 insp/min*/
    ,MAX( CASE WHEN [ParameterID] in ('7295','11016') THEN [Value]  ELSE NULL END ) RR_mandatory /*#1 insp/min*/
    ,MAX( CASE WHEN [ParameterID] in ('4631') THEN [Value]  ELSE NULL END ) Spo2 
    ,MAX( CASE WHEN [ParameterID] in ('4960') THEN [Value]  ELSE NULL END ) ST1 /*#0.1 mm*/
    ,MAX( CASE WHEN [ParameterID] in ('4961') THEN [Value]  ELSE NULL END ) ST2 /*#0.1 mm*/
    ,MAX( CASE WHEN [ParameterID] in ('4962') THEN [Value]  ELSE NULL END ) ST3 /*#0.1 mm*/
    ,MAX( CASE WHEN [ParameterID] in ('4611') THEN [Value]  ELSE NULL END ) Fio2 /*# %*/
    ,MAX( CASE WHEN [ParameterID] in ('6173') THEN [Value]/133.3224  ELSE NULL END ) NiBPM /*# mmHg - devide 133.3224*/
    ,MAX( CASE WHEN [ParameterID] in ('6934') THEN [Value]  ELSE NULL END ) BIS /*# 0.001 - mg*/
    ,MAX( CASE WHEN [ParameterID] in ('4726') THEN [Value]/133.3224  ELSE NULL END ) NiBPS /*#mmHg - devide 133.3224*/
    
    ,MAX( CASE WHEN [ParameterID] in ('6687', '6688','6695','6696','7165','7172','7826', '11069', '11070', '11078','11086') THEN [Value]  ELSE NULL END ) Pulse_Rate /*# bpm*/
    
    ,MAX( CASE WHEN [ParameterID] in ('11079') THEN [Value]  ELSE NULL END ) PPV /*# %*/
    ,MAX( CASE WHEN [ParameterID] in ('9014') THEN [Value]  ELSE NULL END ) SPV
    ,MAX( CASE WHEN [ParameterID] in ('7170') THEN [Value]  ELSE NULL END ) SVV /*# %*/

    
    ,MAX( CASE WHEN [ParameterID] in ('6468', '6834') THEN [Value]  ELSE NULL END ) Lactate  /*#No change - mg%*/
    ,MAX( CASE WHEN [ParameterID] in ('8728') THEN [Value]  ELSE NULL END ) Anion_Gap /*# devide at 0.001 - mmol/L*/
    ,MAX( CASE WHEN [ParameterID] in ('4729', '5998','6670','6832', '10137', '10138') THEN [Value]  ELSE NULL END ) Bicarbonate 
    ,MAX( CASE WHEN [ParameterID] in ('7727') THEN [Value]  ELSE NULL END ) Cerebral_Perfusion_Pressure 
	
	
	,MAX( CASE WHEN [ParameterID] in ('6893') THEN [Value]  ELSE NULL END ) SaO2 
	,MAX( CASE WHEN Alarm =1 THEN 1  ELSE 0 END ) Alarm
 	,MAX( CASE WHEN Michael_Alarm =1 THEN 1  ELSE 0 END ) Michael_Alarm
   
    FROM  [TASMC_ICU_Intensix].[dbo].[Signals] 
    WHERE year([TASMC_ICU_Intensix].[dbo].[Signals].[Time]) in ('2008','2009', '2010', '2011', '2012','2013', '2014') and PatientID = 20069 
    GROUP BY [PatientID], [Time];