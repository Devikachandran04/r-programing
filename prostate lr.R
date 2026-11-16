#install.packages("genridge")
library(genridge)
library(stats)
library(dplyr)
library(MLmetrics)
library(caret)
bas<-prostate
View(bas)
my<-select(bas,c(1:9))
View(my)
summary(my)
cm<-cor(my)
hist(my$lpsa,main="LPSA")
plot(my$lcavol, my$lpsa,
     main="LCAVOL vs LPSA",
     xlab="LCAVOL", ylab="LPSA",
     col="blue")
index<-sample(2,nrow(my),replace=TRUE,prob=c(0.7,0.3))
index
Training<-my[index==1,]
Testing<-my[index==2,]
RM<-lm(lpsa~lcavol+lweight+age+lbph+ svi +      lcp+ gleason+ pgg45,data=Training)
lpsa_pred<-predict(RM,Testing)
Testing$lpsa_pred<-lpsa_pred
View(Testing)
err<-MAPE(Testing$lpsa_pred,Testing$lpsa)
er1<-RMSE(Testing$lpsa_pred,Testing$lpsa)
er2<-MAE(Testing$lpsa_pred,Testing$lpsa)
summary(RM)
summary(my)
newm<-data.frame(lcavol=1.33,lweight=3.2,age=48 ,     lbph=1.3, svi=0,       lcp=1.33, gleason=7, pgg45=10)
predict(RM,newdata = newm)