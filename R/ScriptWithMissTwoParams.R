# Clear workspace
rm(list=ls(all=TRUE)) 

################################################################################
# Load the data
################################################################################


data <- as.data.frame(read.csv("C:/Users/user/Desktop/ThesisCode/Data/Data.csv"))

flag=FALSE

repeat{
  patients<-(sample(unique(data[,"PatientID"])))
  patients<-na.omit(patients)
  pNum<-round(length(patients)/3)
  L1=patients[1:pNum]
  L2=patients[(pNum+1):(pNum+pNum+1)]
  L3=patients[(pNum+pNum+1):(length(patients))]
  part1<-(data[data$PatientID %in% L1,])
  part2<-(data[data$PatientID %in% L2,])
  part3<-(data[data$PatientID %in% L3,])
  
  #randomize rows
  part1 <- part1[sample(nrow(part1)),]
  part2 <- part2[sample(nrow(part2)),]
  part3 <- part3[sample(nrow(part3)),]

  
  if((sum(as.integer(part1$Michael_Alarm==1))<(sum(as.integer(data$Michael_Alarm==1))/2))&(sum(as.integer(part1$Michael_Alarm==1))>(sum(as.integer(data$Michael_Alarm==1))/4)))
  {
    if((sum(as.integer(part2$Michael_Alarm==1))<(sum(as.integer(data$Michael_Alarm==1))/2))&(sum(as.integer(part2$Michael_Alarm==1))>(sum(as.integer(data$Michael_Alarm==1))/4)))
    {
      flag=TRUE
    }
  } 
  
  if(flag){
    if((nrow(part1)<nrow(data)/2)&(nrow(data)/3<nrow(part1)))
    {
      if((((nrow(part1)/2)-100)<sum(as.integer(part1$Michael_Alarm)==1))&((sum(as.integer(part1$Michael_Alarm)==1))<((nrow(part1)/2)+100)))
      {
        if((nrow(part2)<nrow(data)/2)&(nrow(data)/3<nrow(part2)))
        {
          if((((nrow(part2)/2)-100)<sum(as.integer(part2$Michael_Alarm)==1))&((sum(as.integer(part2$Michael_Alarm)==1))<((nrow(part2)/2)+100)))
          {
            if((nrow(part3)<nrow(data)/2)&(nrow(data)/3<nrow(part3)))
            {
              if((((nrow(part3)/2)-100)<sum(as.integer(part3$Michael_Alarm)==1))&((sum(as.integer(part3$Michael_Alarm)==1))<((nrow(part3)/2)+100)))
              {
                train=part1
                test=part2
                validation=part3
                break
              }
            }
          }
        }
      }
    }  
  }
}

testResultsMichaelMean<-list()
testResultsMichael<-as.data.frame(matrix(list(),3,21))
testResultsRFMean<-list()
testResultsRF<-as.data.frame(matrix(list(),3,21))
testResultsRFConf<-as.data.frame(matrix(list(),3,21))
varImp<-as.data.frame(matrix(list(),3,21))
tuningModelsTrees<-as.data.frame(matrix(0,3,21))
tuningModelsVars<-as.data.frame(matrix(0,3,21))


for(run in 1:3)
{
  if((run==2)|(run==3)){
    temp=train
    train=test
    test=validation
    validation=temp
  }
  
  levels(test$Michael_Alarm) # Make sure the Tags are 1 and 0 and not 1 and NULL.
  levels(test$Michael_Alarm) <- c("1", "0") # If they are 1 and NULL, run this line.
  levels(test$Michael_Alarm) # Make sure it updated well.
  
  levels(train$Michael_Alarm) # Make sure the Tags are 1 and 0 and not 1 and NULL.
  levels(train$Michael_Alarm) <- c("1", "0") # If they are 1 and NULL, run this line.
  levels(train$Michael_Alarm) # Make sure it updated well.
  
  levels(validation$Michael_Alarm) # Make sure the Tags are 1 and 0 and not 1 and NULL.
  levels(validation$Michael_Alarm) <- c("1", "0") # If they are 1 and NULL, run this line.
  levels(validation$Michael_Alarm) # Make sure it updated well.
  
  ### ---------------------------- Split to feature and tags ----------
  drops <- c("Time","PatientID", "Michael_Alarm", "Monitor_Alarm", "Hypovolemia.1", "Hypovolemia.2", "Hypovolemia.3", "Hypovolemia.4", "LV.shock.1", "LV.shock.2", "LV.shock.3", "Obstructive.shock.1", "Obstructive.shock.2", "Agitation.1", "Agitation.2", "Bradycardia", "Bradycardia.Hypotension", "Tachycardia.Hypotension", "Tachycardia")
  df.train<-as.data.frame(train[ , !(names(train) %in% drops)]) # all features (meaning - without ID and time, tag, alarm etc.)
  df.validation <- as.data.frame(validation[ , !(names(validation) %in% drops)])
  df.test <- as.data.frame(test[ , !(names(test) %in% drops)])
  
  df.train.tags <- train$Michael_Alarm
  df.validation.tags <- validation$Michael_Alarm
  df.test.tags <- test$Michael_Alarm
  df.test.type <- test$Michael_Type
  
  

  ################################################################################
  # Data Analysis
  ################################################################################
  
  ################## --------------------$$$ RF $$$-----------------------------------------------------------------------------
  
  # ---------------------------- RF Tune parameters - num of trees, num of vars ----------
  
  parameters<-ncol(df.train)
  j=1
  for(param1 in 1:7){
    if((param1+1)<=7){
      for(param2 in (param1+1):7){
        print (paste0("param1: ",colnames(df.train[param1]), " ,param2: ", colnames(df.train[param2])))
        names(tuningModelsTrees)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        names(tuningModelsVars)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        
        trainWithMissTrain<-df.train[,c(-param1, -param2)]
        trainWithMissValidation<-df.validation[,c(-param1, -param2)]
        
        numtreesSeq <- seq(40,200,20) 
        numvarsSeq <- 1:ncol(trainWithMissTrain)
        rf.measure  <- matrix(0,length(numtreesSeq),length(numvarsSeq))
        varsToTest <- numvarsSeq
        
        for (numVars in varsToTest)
        {
          i    <- 1 
          for(numtrees in numtreesSeq)
          {
            measureRes <- createForest_CV_byMeasure(trainWithMissTrain, df.train.tags, trainWithMissValidation, df.validation.tags, "Youden", 0, numtrees, numVars, 2)
            rf.measure[i,numVars] <- measureRes
            i              <- i + 1
          }
        }
        maxValues<-which(rf.measure == max(rf.measure), arr.ind = TRUE)[1:1,1:2]
        tuningModelsTrees[run,j]<-numtreesSeq[maxValues[1]]#Number of trees per iteration
        tuningModelsVars[run,j]<-maxValues[2]#Best number of parameters per iteration
        names(tuningModelsTrees)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        names(tuningModelsVars)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        
        j=j+1
      }
    }
  }
  
  colnames(tuningModelsTrees)[1:21]<-names(tuningModelsTrees)[1:21]
  colnames(tuningModelsVars)[1:21]<-names(tuningModelsVars)[1:21]
  
  # ---------------------------- RF Run Train ----------------------------------
  
  models<-list()
  j=1
  for(param1 in 1:7){
    if((param1+1)<=7){
      for(param2 in (param1+1):7){
        trainWithMiss<-df.train[,c(-param1, -param2)]
        RF <- createRF(trainWithMiss, df.train.tags, tuningModelsTrees[run,j], tuningModelsVars[run,j], 0)
        models[[j]]<-RF
        names(models)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        j=j+1
      }
    }
  }
  
  # ---------------------------- RF Run Test ----------------------------------
  
  j=1
  for(param1 in 1:7){
    if((param1+1)<=7){
      for(param2 in (param1+1):7){
        testWithMiss<-df.test[,c(-param1, -param2)]
        RF<-models[[j]]
        res<-Model_Test_Measure_With_Miss(RF, "randomForest", testWithMiss, df.test.tags, TRUE, 1)
        testResultsRF[[j]][[run]]<-res[[1]]
        testResultsRFConf[[j]][[run]]<-res[[2]]
        # Variable Importance Plot
        varImp[[j]][[run]]<-varImpPlot(RF, sort = T,main="Variable Importance", n.var=12)
        names(testResultsRF)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        j=j+1
      }
    }
  }
  
  
  # ---------------------------- Michael with misses - Run Test --------------- 
  
  j=1
  for(param1 in 1:7){
    if((param1+1)<=7){
      for(param2 in (param1+1):7){
        testWithMiss<-df.test[,c(-param1,-param2)]
        michael.pred<-Michael_Algo(testWithMiss, colnames(df.train[param1]),colnames(df.train[param2]), 0)
        testResultsMichael[[run,j]]<-Model_Test_Measure_With_Miss(michael.pred, "michael", testWithMiss, df.test.tags, TRUE, 1)
        names(testResultsMichael)[j]<-(paste0(colnames(df.train[param1]), " ", colnames(df.train[param2])))
        j=j+1
      }
    }
  }
  
}#Finish 3 runs

######################################################################
#Final Results      
######################################################################

for(x in 1:21){
  testResultsMichaelMean[[x]]<-(testResultsMichael[[1,x]][[1]]+testResultsMichael[[2,x]][[1]]+testResultsMichael[[3,x]][[1]])/3
  names(testResultsMichaelMean)[x]<-(paste0(colnames(testResultsRF[x])))
  testResultsRFMean[[x]]<-(testResultsRF[[1,x]]+testResultsRF[[2,x]]+testResultsRF[[3,x]])/3
  names(testResultsRFMean)[x]<-(paste0(colnames(testResultsRF[x])))
}

results  <- as.data.frame(matrix(0,0,11))
names(results)<-c("Algorithm Type","Accuracy","Sensitivity","Specificity", "Precision","Youden","AUC", "F1_score", "Fb_score","Weighted_Accuracy", "Weighted_Measure")

for (i in 1:length(testResultsMichaelMean)){
  michaelAlg<-as.data.frame(c("Michael Algo",testResultsMichaelMean[[i]]))
  rownames(michaelAlg)<-names(testResultsMichaelMean)[i]
  rfAlg<-as.data.frame(c("RF",testResultsRFMean[[i]]))
  rownames(rfAlg)<-names(testResultsRFMean)[i]
  names(michaelAlg)<-names(results)
  names(rfAlg)<-names(results)
  results <- rbind(results,michaelAlg, rfAlg)
}

write.csv(tuningModelsTrees,"C:/Users/user/Desktop/ThesisCode/TwoMiss/TuningModels/tuningModelsTrees.csv")
write.csv(tuningModelsVars,"C:/Users/user/Desktop/ThesisCode/TwoMiss/TuningModels/tuningModelsVars.csv")
write.csv(results,"C:/Users/user/Desktop/ThesisCode/TwoMiss/results.csv")


