# Consider the dataset “Cust_Segmentation.csv”. 
# (a) Pre-process the dataset. 
# (b) Do an exploratory analysis on the variables, visualize relationships and 
# provide some of the insights that you infer from your results. 
# (c) Apply customer segmentation on the customer dataset. Justify your clusters. 
# (d) Create a profile for the customer segments.

library(dplyr)
library(ggfortify)
bas<-read.csv("C:/Users/devik/OneDrive/Documents/r work/Cust_Segmentation.csv")
my<-select(bas,c(2,3,4,5,6,7,8,10))
colSums(is.na(my))
my$Defaulted[is.na(my$Defaulted)]<-median(my$Defaulted,na.rm = TRUE)
str(my)
my<-scale(my)
View(my)
summary(my)
pairs(my)
set.seed(1234)
wss<-numeric(11)
for(i in 1:11){
  wss[i]<-sum(kmeans(my,centers = i)$withinss)
}
plot(1:11,wss,main="wss",type="b",xlab = "xaxis",ylab = "yax")
km<-kmeans(my,centers = 6)
km
km$cluster
km$centers
autoplot(km,data=my)
#creatong profile
Profile<-select(bas,c(2,3,4,5,6,7,8,10))
Profile$Cluster<-km$cluster
aggregate(.~Cluster,data=Profile,FUN=mean)
