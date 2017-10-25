#1 minute windows 
Michael_Algo<-function(test, paramMiss1, paramMiss2, paramMiss3){
  
  #tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$NiBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)|(test$NiBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140))|(test$NiBPS > 140))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  
  if((paramMiss1 == 'HR')&(paramMiss2=='HR')&(paramMiss3=='HR')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='ArtBPM')&(paramMiss3=='ArtBPM')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&(test$ArtBPS > 140))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='ArtBPS')&(paramMiss3=='ArtBPS')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR > 120))|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='CVP')&(paramMiss3=='CVP')){
    tags<-(test$ArtBPM < 50)|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|(test$HR > 110)&((test$ArtBPS > 140))|((test$HR > 110)&((test$ArtBPS > 140))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'PAPD')&(paramMiss2=='PAPD')&(paramMiss3=='PAPD')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|(test$HR > 110)&((test$ArtBPS > 140))|((test$HR > 110)&((test$ArtBPS > 140))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'NiBPS')&(paramMiss2=='NiBPS')&(paramMiss3=='NiBPS')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$NiBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'NiBPM')&(paramMiss2=='NiBPM')&(paramMiss3=='NiBPM')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)|(test$NiBPS > 140))|(test$HR > 110)&((test$ArtBPS > 140))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'RR_mandatory')&(paramMiss2=='RR_mandatory')&(paramMiss3=='RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|((test$HR > 110)&((test$ArtBPS > 140))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'RR_total')&(paramMiss2=='RR_total')&(paramMiss3=='RR_total')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&(test$ArtBPS > 140)))
  }
  
  #*********************************************
  else if((paramMiss1 == 'HR')&(paramMiss2 =='ArtBPS')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP < 5)&(test$CVP > -10))|((test$RR_total>test$RR_mandatory)|(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='ArtBPM')&(paramMiss3==0)){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS > 140))|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='CVP')&(paramMiss3==0)){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|((test$ArtBPS < 78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='PAPD')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP < 16))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='RR_total')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='RR_mandatory')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(((test$ArtBPS > 140)))|((test$ArtBPS > 140)&(test$RR_total > 25))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='ArtBPM')&(paramMiss3==0)){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR > 120))|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='CVP')&(paramMiss3==0)){
    tags<-(test$ArtBPM < 50)|((test$PAPD > 16)&(test$PAPD < 60))|((test$HR < 45))|(test$HR > 120)|((test$HR > 110))|(((test$HR > 110))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='PAPD')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16))|((test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='RR_total')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='RR_mandatory')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110)&(test$RR_total > 25))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='CVP')&(paramMiss3==0)){
    tags<-((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$ArtBPS < 78)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&(test$ArtBPS > 140))|((test$HR > 110)&(test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='PAPD')&(paramMiss3==0)){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='RR_total')&(paramMiss3==0)){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140))))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='RR_mandatory')&(paramMiss3==0)){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='PAPD')&(paramMiss3==0)){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='RR_total')&(paramMiss3==0)){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140))))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='RR_mandatory')&(paramMiss3==0)){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'PAPD')&(paramMiss2=='RR_total')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140))))
  }
  else if((paramMiss1 == 'PAPD')&(paramMiss2=='RR_mandatory')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'RR_total')&(paramMiss2=='RR_mandatory')&(paramMiss3==0)){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&(test$ArtBPS > 140)))
  }
  #*********************************************
  else if((paramMiss1 == 'HR')&(paramMiss2 =='ArtBPS')&(paramMiss3=='ArtBPM')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP < 5)&(test$CVP > -10))|((test$RR_total>test$RR_mandatory)|(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2 =='ArtBPS')&(paramMiss3=='CVP')){
    tags<-(test$ArtBPM < 50)|((test$PAPD > 16)&(test$PAPD < 60))|((test$RR_total>test$RR_mandatory)|(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2 =='ArtBPS')&(paramMiss3=='PAPD')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP < 5)&(test$CVP > -10))|((test$RR_total>test$RR_mandatory)|(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2 =='ArtBPS')&(paramMiss3=='RR_total')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP < 5)&(test$CVP > -10))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2 =='ArtBPS')&(paramMiss3=='RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP < 5)&(test$CVP > -10))|(test$RR_total > 25)
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='ArtBPM')&(paramMiss3=='CVP')){
    tags<-((test$ArtBPS < 78))|((test$ArtBPS < 78)&(test$PAPD > 16)&(test$PAPD < 60))|(test$ArtBPS < 78)|(test$ArtBPS > 140)|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='ArtBPM')&(paramMiss3=='PAPD')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='ArtBPM')&(paramMiss3=='RR_total')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS > 140))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='ArtBPM')&(paramMiss3=='RR_mandatory')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS > 140))|((test$ArtBPS > 140)&(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='CVP')&(paramMiss3=='PAPD')){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='CVP')&(paramMiss3=='RR_total')){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|((test$ArtBPS < 78)&(test$PAPD > 16)&(test$PAPD < 60))|(test$ArtBPS > 140)
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='CVP')&(paramMiss3=='RR_mandatory')){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='PAPD')&(paramMiss3=='RR_total')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='PAPD')&(paramMiss3=='RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)|((test$ArtBPS > 140)&(test$RR_total > 25))
  }
  else if((paramMiss1 == 'HR')&(paramMiss2=='RR_total')&(paramMiss3=='RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|((test$CVP < 5)&(test$CVP > -10))|(test$ArtBPS > 140)
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='ArtBPM')&(paramMiss3 == 'CVP')){
    tags<-((test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|((test$HR > 110))|((test$HR > 110))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='ArtBPM')&(paramMiss3 == 'PAPD')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$CVP < 16))|((test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='ArtBPM')&(paramMiss3 == 'RR_total')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='ArtBPM')&(paramMiss3 == 'RR_mandatory')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110)&(test$RR_total > 25))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='CVP')&(paramMiss3=='PAPD')){
    tags<-((test$ArtBPM < 50))|(test$HR < 45)|(test$HR > 120)|(test$HR > 110)|((test$HR > 110)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='CVP')&(paramMiss3=='RR_total')){
    tags<-(test$ArtBPM < 50)|((test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|(((test$HR > 110)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='CVP')&(paramMiss3=='RR_mandatory')){
    tags<-(test$ArtBPM < 50)|((test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|(((test$HR > 110))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='PAPD')&(paramMiss3=='RR_total')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16))|((test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='PAPD')&(paramMiss3=='RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16))|((test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))|((test$HR > 110)&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPS')&(paramMiss2=='RR_total')&(paramMiss3=='RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$CVP > 16)&(test$CVP < 35))|((test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='CVP')&(paramMiss3 == 'PAPD')){
    tags<-((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))|((test$HR > 110)&(test$ArtBPS > 140)&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='CVP')&(paramMiss3 == 'RR_total')){
    tags<-((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&(test$ArtBPS > 140))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='CVP')&(paramMiss3 == 'RR_mandatory')){
    tags<-((test$ArtBPS <78)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&(test$ArtBPS > 140))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='PAPD')&(paramMiss3=='RR_total')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='PAPD')&(paramMiss3=='RR_mandatory')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'ArtBPM')&(paramMiss2=='RR_total')&(paramMiss3=='RR_mandatory')){
    tags<-((test$CVP < 5)&(test$CVP > -10))|((test$ArtBPS <78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='PAPD')&(paramMiss3 == 'RR_total')){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='PAPD')&(paramMiss3 == 'RR_mandatory')){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))|(((test$HR > 110)&((test$ArtBPS > 140)))&((test$RR_total > 25)))
  }
  else if((paramMiss1 == 'CVP')&(paramMiss2=='RR_total')&(paramMiss3 == 'RR_mandatory')){
    tags<-(test$ArtBPM < 50)|((test$ArtBPS < 78))|((test$ArtBPS < 78)&(test$PAPD > 16)&(test$PAPD < 60))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$HR > 110)&((test$ArtBPS > 140)))
  }
  else if((paramMiss1 == 'PAPD')&(paramMiss2=='RR_total')&(paramMiss3 == 'RR_mandatory')){
    tags<-((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|(test$ArtBPM < 50)|((test$ArtBPS <78)&(test$CVP < 16))|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))|(test$HR < 45)|((test$HR < 45)&(test$ArtBPS < 78))|((test$HR > 120)&(test$ArtBPS < 78))|(test$HR > 120)|((test$CVP < 5)&(test$CVP > -10))|((test$HR > 110)&((test$ArtBPS > 140)))
  }
  #((test$ArtBPM < 50)&(test$CVP < 5)&(test$CVP > -10))#Hypolovemia 1      
  #|(test$ArtBPM < 50)|#Hypolovemia 3
  #((test$ArtBPS < 78)&(test$CVP < 16)&(test$PAPD > 16)&(test$PAPD < 60))| #LV shock 1
  #|((test$ArtBPS < 78)&(test$CVP > 16)&(test$CVP < 35))| #Obstructive shock 2
  #((test$ArtBPS <78)&(test$CVP > 16)&(test$CVP < 35)&(test$PAPD > 16)&(test$PAPD < 60))#Obstructive shock 1
  #(test$HR < 45)#bradycardia
  #|((test$HR < 45)&(test$ArtBPS < 78))| #Bradycardia Hypotension
  #((test$HR > 120)&(test$ArtBPS < 78))|#Tachycardia Hypotension
  #(test$HR > 120)|#Tachycardia
  #((test$NiBPM < 50)&(test$CVP < 5)&(test$CVP > -10))|#Hypovolemia 4
  #((test$HR > 110)&((test$ArtBPS > 140)|(test$NiBPS > 140))) #Agitation 1
  #|((test$HR > 110)&((test$ArtBPS > 140)|(test$NiBPS > 140))&((test$RR_total>test$RR_mandatory)|(test$RR_total > 25)))#Agitation 2
  
  tags[tags==FALSE]<-0
  tags[tags==TRUE]<-1
  return (tags)
}

