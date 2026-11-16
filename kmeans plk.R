
library(dplyr)
library(ggfortify)
bas<-read.csv("C:/Users/devik/OneDrive/Documents/r work/mall_customers.csv")
colSums(is.na(bas))
bas$Age[is.na(bas$Age)]<-median(bas$Age,na.rm = TRUE)

mydata<-select(bas,c(3,4,5))
mydata<-scale(mydata)
View(mydata)
set.seed(1234)
wss<-numeric(11)
for(i in 1:11){
  wss[i]=sum(kmeans(mydata,centers = i)$withinss)
}
plot(1:11,wss,type="b",main = "kmeans")
km<-kmeans(mydata,centers = 2)
km
autoplot(km,data=mydata)