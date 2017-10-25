################################################################################
# Load libraries
################################################################################
library(utils)
library(plyr)
library(corrplot);
library(randomForest);
library(nnet);
library(caret)
library(ggplot2); 
library(plotly);
library(reshape)
library(e1071)
library(clusterGeneration)
library(devtools)
library(RCurl)
library(DiscriMiner)
library(gridExtra)
library(pROC)

if(!require(utils)) {
  install.packages('utils'); require(utils)}

if(!require(plyr)) {
  install.packages('plyr'); require(plyr)}

if(!require(corrplot)) {
  install.packages('corrplot'); require(corrplot)}

if(!require(randomForest)) {
  install.packages('randomForest'); require(randomForest)}

if(!require(nnet)) {
  source('http://bioconductor.org/biocLite.R'); biocLite('nnet'); require (nnet)}

if(!require(caret)) {
  install.packages('caret'); require(caret)}

if(!require(ggplot2)) {
  install.packages('ggplot2'); require(ggplot2)}

if(!require(plotly)) {
  install.packages('plotly'); require(plotly)}

if(!require(reshape)) {
  install.packages('reshape'); require(reshape)}

if(!require(e1071)) {
  install.packages('e1071'); require(e1071)}

if(!require(clusterGeneration)) {
  install.packages('clusterGeneration'); require(clusterGeneration)}

if(!require(devtools)) {
  install.packages('devtools'); require(devtools)}

if(!require(RCurl)) {
  install.packages('RCurl'); require(RCurl)}

if(!require(gridExtra)) {
  install.packages('gridExtra'); require(gridExtra)}

if(!require(DiscriMiner)) {
  install.packages('DiscriMiner'); require(DiscriMiner)}

if(!require(pROC)) {
  install.packages('pROC'); require(pROC)}


################## @@@@@@------------------------ Functions - run all! -------------------------------

############# -----@ CreateRF ------------------- Random Forest Function - only model-------------------------------

createRF <- function(train.data, train.data.tags, numtrees, numvars, weights)
{
  if (weights == 0)
  {
    rf <- randomForest(as.factor(train.data.tags)~. ,data=train.data , ntree=numtrees, mtry=numvars)
  }
  else
  {
    rf <- randomForest(as.factor(train.data.tags)~. ,data=train.data , ntree=numtrees, mtry=numvars, classwt=weights)
  }
  return (rf)
}

############# -----@ createForest_CV_byMeasure -- Random Forest + CV by chosen measure ----------------------------------------------
createForest_CV_byMeasure <- function(train.data, train.data.tags, validation.data, validation.data.tags, measure, weights, ntreeVal, mtryVal, cv_size)
{
  measure.folds   <- matrix(0, cv_size, 1)
  folds      <- sample(cv_size, nrow(train.data), replace=T)
  folds2      <- sample(cv_size, nrow(validation.data), replace=T)
  
  folds.prob <- as.numeric(table(folds)/length(folds))
  
  for(fold in 1:cv_size)
  {
    # Train forest
    rf <- createRF(train.data[folds!=fold,], train.data.tags[folds!=fold], ntreeVal, mtryVal, weights)
    measures <- Model_Test_Measure_With_Miss(rf, "randomForest", validation.data[folds2==fold,], validation.data.tags[folds2==fold], FALSE, 1)
    measureNum <- grep(measure, colnames(measures[[1]]))
    measure.folds[fold,] <- measures[[1]][,measureNum]
  }
  
  # Calc average accuracy
  averageMeasure <- apply(apply(measure.folds, 2, function(x){x*folds.prob}),2,sum)
  print(paste0("Random Forest with ",ntreeVal," trees & ",mtryVal," vars-per-tree"," CV-",cv_size," average ", measure, ": ", averageMeasure))
  
    # Train forest
    #set 1
    #rf1 <- createRF(train.data, train.data.tags, ntreeVal, mtryVal, weights)
    #measures1 <- Model_Test_Measure_With_Miss(rf1, "randomForest", validation.data, validation.data.tags, FALSE, 1)
    #measureNum1 <- grep(measure, colnames(measures1[[1]]))
    #measure1 <- measures1[[1]][,measureNum1]
    
    #set 2
    #rf2 <- createRF(validation.data, validation.data.tags, ntreeVal, mtryVal, weights)
    #measures2 <- Model_Test_Measure_With_Miss(rf2, "randomForest", train.data, train.data.tags, FALSE, 1)
    #measureNum2 <- grep(measure, colnames(measures2[[1]]))
    #measure2 <- measures2[[1]][,measureNum2]
  
  # Calc average measure
  #averageMeasure <- (measure1+measure2)/2
  #print(paste0("Random Forest with ",ntreeVal," trees & ",mtryVal," vars-per-tree"," CV-",cv_size," average ", measure, ": ", averageMeasure))
  
  return(averageMeasure)
}

############# -----@ Model_Test_Measure --------- Test and measure a given model---------------------------------------------
Model_Test_Measure <- function(model, modelType, test.data, test.data.tags, doPrint, w1) #w1 is alpha error weight
{
  set.seed(3588)
  #w1  #Sensitivity weight
  w2  <- 1   #Specificity weight - beta error weight
  
  c <- w2 / (w2+w1) # Specificity weight, Sensitivity weight is (1-c)
  b <- w1 #Sensitivity times weight vs. Precision
  
  if (modelType == "nnet")
  {
    preds   <- factor(predict(model, newdata=test.data, type='class'))
  } else if (modelType == "randomForest") 
  {
    preds <- predict(model, newdata=test.data, type='response')
  } else if (modelType == "michael") 
  {
    preds <- model
  } else
  {
    print("Error, unrecognized model type!")
  }
  
  conf <- confusionMatrix(data=preds, test.data.tags, positive="1")
  
  confMatrix <- conf$table
  
  resultsTable<-(as.data.frame(matrix(ncol=8,nrow=1)))
  #colnames(resultsTable)<-c("Accuracy","Sensitivity","Specificity", "Precision", "F1_score", "Fb_score","weightedAccuracy", "ParmetMeasure", "ParmetMeasureWeighted")
  colnames(resultsTable)<-c("Accuracy","Sensitivity","Specificity", "Precision", "F1_score", "Fb_score","Weighted_Accuracy", "Weighted_Measure")
  
  resultsTable$Accuracy <- round(unname(conf$overall["Accuracy"]), digits = 6)  
  resultsTable$Sensitivity <- round(unname(conf$byClass["Sensitivity"]), digits = 6)  # Also called Recall
  resultsTable$Specificity <- round(unname(conf$byClass["Specificity"]), digits = 6)
  resultsTable$Precision <- round(unname(conf$byClass["Precision"]), digits = 6)
  resultsTable$F1_score <- round(unname(conf$byClass["F1"]), digits = 6)
  resultsTable$Fb_score <- round(unname(( (1+(b^2)) * resultsTable$Precision * resultsTable$Sensitivity ) / ( (b^2) * resultsTable$Precision + resultsTable$Sensitivity )), digits = 6)
  resultsTable$Weighted_Accuracy <- round(unname((c*resultsTable$Specificity + (1-c)*resultsTable$Sensitivity)), digits = 6)
  #resultsTable$ParmetMeasure <- round(unname(sqrt(resultsTable$Sensitivity * resultsTable$Specificity)), digits = 6)
  #resultsTable$ParmetMeasureWeighted <- round(unname(  ((resultsTable$Sensitivity^w1) * (resultsTable$Specificity^w2))^(1/(w1+w2))  ), digits = 6)
  resultsTable$Weighted_Measure <- round(unname(  ((resultsTable$Sensitivity^w1) * (resultsTable$Specificity^w2))^(1/(w1+w2))  ), digits = 6)
  
  if(doPrint == TRUE)
  {
    #Print results:
    print("confusion Matrix:")
    print(confMatrix)
    print(resultsTable)
    
    frame()
    grid.table(resultsTable)
  }
  
  return(resultsTable)
}


  ############# -----@ Model_Test_Measure with Missing Parameters --------- Test and measure a given model---------------------------------------------
  Model_Test_Measure_With_Miss <- function(model, modelType, test.data, test.data.tags, doPrint, w1) #w1 is alpha error weight
  {
    set.seed(3588)
    #w1  #Sensitivity weight
    w2  <- 1   #Specificity weight - beta error weight
    
    c <- w2 / (w2+w1) # Specificity weight, Sensitivity weight is (1-c)
    b <- w1 #Sensitivity times weight vs. Precision
    
    if (modelType == "nnet")
    {
      preds   <- factor(predict(model, newdata=test.data, type='class'))
    } else if (modelType == "randomForest") 
    {
      preds <- predict(model, newdata=test.data, type='prob')
      preds2 <- predict(model, newdata=test.data, type='response')
      #library(ROCR)
      #predictions=as.vector(preds)
      #pred=prediction(as.numeric(preds),as.numeric(test.data.tags))
      #perf_AUC=performance(pred,"auc") #Calculate the AUC value
      #AUC=perf_AUC@y.values[[1]]
      
      #result.roc <- roc(test.data.tags,as.numeric(preds[[1]][1:(length(preds[[1]])/2)])) # Draw ROC curve.
      #str(result.roc)
      #plot(result.roc, print.thres="best", print.thres.best.method="closest.topleft")
      #auc_obj=auc(test.data.tags,as.numeric(preds[[1]][1:(length(preds[[1]])/2)]))
      
      result.roc <- roc(test.data.tags,as.numeric(preds[,"1"])) # Draw ROC curve.
      auc_obj=auc(test.data.tags,as.numeric(preds[,"1"]))
      
      youdenInd = max(result.roc$sensitivities+result.roc$specificities-1)
      
      u = union(preds2, test.data.tags)
      t = table(factor(preds2, u), factor(test.data.tags, u))
      conf <- confusionMatrix(t)
      
    } else if (modelType == "michael") 
    {
      preds2 <- model
      result.roc <- roc(test.data.tags,as.numeric(preds2)) # Draw ROC curve.
      auc_obj=auc(test.data.tags,as.numeric(preds2))
      youdenInd = max(result.roc$sensitivities+result.roc$specificities-1)
      
      u = union(preds2, test.data.tags)
      t = table(factor(preds2, u), factor(test.data.tags, u))
      conf <- confusionMatrix(t)
      
    } else
    {
      print("Error, unrecognized model type!")
    }
    
  
    
    confMatrix <- conf$table
    
    resultsTable<-(as.data.frame(matrix(ncol=10,nrow=1)))
    colnames(resultsTable)<-c("Accuracy","Sensitivity","Specificity", "Precision","Youden","AUC", "F1_score", "Fb_score","Weighted_Accuracy", "Weighted_Measure")
    
    resultsTable$Accuracy <- round(unname(conf$overall["Accuracy"]), digits = 6)  
    resultsTable$Sensitivity <- round(unname(conf$byClass["Sensitivity"]), digits = 6)  # Also called Recall
    resultsTable$Specificity <- round(unname(conf$byClass["Specificity"]), digits = 6)
    resultsTable$Precision <- round(unname(conf$byClass["Precision"]), digits = 6)
    resultsTable$Youden <- round(youdenInd, digits = 6)
    resultsTable$AUC <- round(auc_obj, digits = 6)
    resultsTable$F1_score <- round(unname(conf$byClass["F1"]), digits = 6)
    resultsTable$Fb_score <- round(unname(( (1+(b^2)) * resultsTable$Precision * resultsTable$Sensitivity ) / ( (b^2) * resultsTable$Precision + resultsTable$Sensitivity )), digits = 6)
    resultsTable$Weighted_Accuracy <- round(unname((c*resultsTable$Specificity + (1-c)*resultsTable$Sensitivity)), digits = 6)
    #resultsTable$ParmetMeasure <- round(unname(sqrt(resultsTable$Sensitivity * resultsTable$Specificity)), digits = 6)
    #resultsTable$ParmetMeasureWeighted <- round(unname(  ((resultsTable$Sensitivity^w1) * (resultsTable$Specificity^w2))^(1/(w1+w2))  ), digits = 6)
    resultsTable$Weighted_Measure <- round(unname(  ((resultsTable$Sensitivity^w1) * (resultsTable$Specificity^w2))^(1/(w1+w2))  ), digits = 6)
    
    if(doPrint == TRUE)
    {
      #Print results:
      print("confusion Matrix:")
      print(confMatrix)
      print(resultsTable)
      
      frame()
      grid.table(resultsTable)
    }
    
    resultList<-list(resultsTable, confMatrix)
    return(resultList)
  }

############# -----@ createNN ------------------- Neuron Network Function - accuracy + model ----------------------------------

createNN <- function(train.data, train.data.tags, neurons)
{
  nn <- nnet(x=train.data, y=class.ind(train.data.tags), size=neurons, linout=FALSE, softmax=T)
  return (nn)
}

############# -----@ createNN_CV_byMeasure ------ Neural Network + CV by chosen measure ----------------------------------------------

createNN_CV_byMeasure <- function(train.data, train.data.tags, measure, neurons, cv_size)
{
  measure.folds   <- matrix(0, cv_size, 1)
  folds      <- sample(cv_size, nrow(train.data), replace=T)
  folds.prob <- as.numeric(table(folds)/length(folds))
  for(fold in 1:cv_size)
  {
    # Train NN
    nn <- createNN(train.data[folds!=fold,], train.data.tags[folds!=fold], neurons)
    measures <- Model_Test_Measure(nn, "nnet", train.data[folds==fold,], train.data.tags[folds==fold], FALSE, 1)
    measureNum <- grep(measure, colnames(measures))
    measure.folds[fold,] <- measures[,measureNum]
  }
  
  # Calc average accuracy
  averageMeasure <- apply(apply(measure.folds, 2, function(x){x*folds.prob}),2,sum)
  print(paste0("Neural Network with ",neurons," neurons, CV-",cv_size," average ", measure, ": ", averageMeasure))
  
  return(list(measure.folds, averageMeasure))
}

############# -----@ Test_Measure_byThreshold ----------------------------------------------------

Test_Measure_byThreshold <- function(modelRawPreds, test.data.tags, probThreshold, doPrint, w1)
{  
  set.seed(3588)
  #w1        #Sensitivity weight
  w2  <- 1   #Specificity weight - beta error weight
  
  c <- w2 / (w2+w1) # Specificity weight, Sensitivity weight is (1-c)
  b <- w1 #Sensitivity times weight vs. Precision
  
  preds <- matrix(0,length(modelRawPreds[,1]),1)
  preds[modelRawPreds[,2] > probThreshold] <- 1
  factor(preds)
  
  conf <- confusionMatrix(data=preds, test.data.tags, positive="1")
  
  confMatrix <- conf$table
  
  resultsTable<-(as.data.frame(matrix(ncol=8,nrow=1)))
  #colnames(resultsTable)<-c("Accuracy","Sensitivity","Specificity", "Precision", "F1_score", "Fb_score","weightedAccuracy", "ParmetMeasure", "Weighted_Measure")
  colnames(resultsTable)<-c("Accuracy","Sensitivity","Specificity", "Precision", "F1_score", "Fb_score","Weighted_Accuracy", "Weighted_Measure")
  
  resultsTable$Accuracy <- round(unname(conf$overall["Accuracy"]), digits = 6)  
  resultsTable$Sensitivity <- round(unname(conf$byClass["Sensitivity"]), digits = 6)  # Also called Recall
  resultsTable$Specificity <- round(unname(conf$byClass["Specificity"]), digits = 6)
  resultsTable$Precision <- round(unname(conf$byClass["Precision"]), digits = 6)
  resultsTable$F1_score <- round(unname(conf$byClass["F1"]), digits = 6)
  resultsTable$Fb_score <- round(unname(( (1+(b^2)) * resultsTable$Precision * resultsTable$Sensitivity ) / ( (b^2) * resultsTable$Precision + resultsTable$Sensitivity )), digits = 6)
  resultsTable$Weighted_Accuracy <- round(unname((c*resultsTable$Specificity + (1-c)*resultsTable$Sensitivity)), digits = 6)
  #resultsTable$ParmetMeasure <- round(unname(sqrt(resultsTable$Sensitivity * resultsTable$Specificity)), digits = 6)
  #resultsTable$ParmetMeasureWeighted <- round(unname(  ((resultsTable$Sensitivity^w1) * (resultsTable$Specificity^w2))^(1/(w1+w2))  ), digits = 6)
  resultsTable$Weighted_Measure <- round(unname(  ((resultsTable$Sensitivity^w1) * (resultsTable$Specificity^w2))^(1/(w1+w2))  ), digits = 6)
  
  if(doPrint == TRUE)
  {
    #Print results:
    print("confusion Matrix:")
    print(confMatrix)
    print(resultsTable)
    
    frame()
    grid.table(resultsTable)
  }
  
  return(resultsTable)
}

############# -----@ createNN_CV_byMeasure & Threshold------ Neural Network + CV by chosen measure ----------------------------------------------

createNN_CV_byMeasure_threshold <- function(train.data, train.data.tags, measure, neurons, cv_size, thresholds)
{
  measure.folds   <- matrix(0, cv_size, length(thresholds))
  colnames(measure.folds) <- thresholds
  folds      <- sample(cv_size, nrow(train.data), replace=T)
  folds.prob <- as.numeric(table(folds)/length(folds))
  
  for(fold in 1:cv_size)
  {
    # Train NN
    nn <- createNN(train.data[folds!=fold,], train.data.tags[folds!=fold], neurons)
    rawPredsNN   <- predict(nn, newdata=train.data[folds==fold,], type='raw')
    
    for (tNum in 1:length(thresholds))
    {
      t <- thresholds[tNum]
      measures <- Test_Measure_byThreshold(rawPredsNN, train.data.tags[folds==fold], t, FALSE, 1)
      measureNum <- grep(measure, colnames(measures))
      measure.folds[fold,tNum] <- measures[,measureNum]
    }
  }
  
  # Calc average accuracy
  averageMeasure <- matrix(0, 1, length(thresholds))
  colnames(averageMeasure) <- thresholds
  
  print(measure.folds)
  
  for (tNum in 1:length(thresholds))
  {
    t <- thresholds[tNum]
    print(cat("calc x*prob: t ",t, " tnum ",tNum,". now measure.folds[,tNum]: \n"))
    tNum
    measure.folds[,tNum]
    print(cat("end measure.folds[,tNum] \n"))
    
    measureT   <- matrix(0, cv_size, 1)
    
    
    measureT[,1] <- measure.folds[,tNum]
    averageMeasure[,tNum] <- apply(apply(measureT, 2, function(x){x*folds.prob}),2,sum)
  }
  
  print(paste0("Neural Network with ",neurons," neurons, CV-",cv_size," average ", measure, ": ", averageMeasure))
  
  return(list(measure.folds, averageMeasure))
}

############# -----@ axis_func------------------- Axis names Function --------------------------------------------------------

axis_func<-function(p1,p2,xlog)
{
  f <- list(
    family = "Courier New, monospace",
    size = 18,
    color = "#7f7f7f"
  )
  x <- list(
    title = p1,
    titlefont = f, 
    type="linear"
  )
  y <- list(
    title = p2,
    titlefont = f
  )
  
  if (xlog == TRUE)
  {
    x <- list(
      title = p1,
      titlefont = f,
      type = "log"
    )
  }
  
  ans_list<-list(x,y)
  return(ans_list)
}
