# A. Consider the dataset “Customer_Churn.csv”.
# (a) Pre-process the dataset and perform an Exploratory Data Analysis (EDA).
# • Fill missing values with mode, encode categorical variables, Visualize the relationships among key variables and Provide insights you infer.
# (b) Apply a Decision classification model to predict customer churn.
# • Split the data into training and testing sets, Find the appropriate numbers of clusters using Elbow method, Train the classifier , Evaluate model performance using accuracy and confusion matrix also visualize the tree.



library(ggfortify)
library(dplyr)
library(MLmetrics)
library(rpart)
library(readr)
library(rpart.plot)
base_data<-read.csv("C:/Users/devik/OneDrive/Documents/r work/Telco-Customer-Churn.csv")
summary(base_data)
colSums(is.na(base_data))
mod<-names(which.max(table(base_data$TotalCharges)))
base_data$TotalCharges[is.na(base_data$TotalCharges)]<-mod
base_data$gender <- as.factor(base_data$gender)
base_data$Partner <- as.factor(base_data$Partner)
base_data$Dependents <- as.factor(base_data$Dependents)
base_data$PhoneService <- as.factor(base_data$PhoneService)
base_data$MultipleLines <- as.factor(base_data$MultipleLines)
base_data$InternetService <- as.factor(base_data$InternetService)
base_data$OnlineSecurity <- as.factor(base_data$OnlineSecurity)
base_data$OnlineBackup <- as.factor(base_data$OnlineBackup)
base_data$DeviceProtection <- as.factor(base_data$DeviceProtection)
base_data$TechSupport <- as.factor(base_data$TechSupport)
base_data$StreamingTV <- as.factor(base_data$StreamingTV)
base_data$StreamingMovies <- as.factor(base_data$StreamingMovies)
base_data$Contract <- as.factor(base_data$Contract)
base_data$PaperlessBilling <- as.factor(base_data$PaperlessBilling)
base_data$PaymentMethod <- as.factor(base_data$PaymentMethod)
base_data$Churn <- as.factor(base_data$Churn)
base_data$TotalCharges<-as.factor(base_data$TotalCharges)
my<-select(base_data,where(is.numeric))

d<-subset(base_data,select=-customerID)

set.seed(1234)
wss<-numeric(11)
for(i in 1:11){
  wss[i]<-sum(kmeans(my,centers = i)$withinss)
}
plot(1:11,wss,type="b",main="kmeans")
km<-kmeans(my,centers = 3)
autoplot(km,data=my)

index<-sample(2,nrow(d),replace=TRUE,prob =c(0.7,0.3))
Training<-d[index ==1,]
test<-d[index==2,]
model<-rpart(Churn ~ gender	+SeniorCitizen+	Partner+	Dependents+	tenure+	PhoneService+	MultipleLines+	InternetService+	OnlineSecurity+	OnlineBackup+	DeviceProtection+	TechSupport+	StreamingTV+	StreamingMovies+	Contract+	PaperlessBilling+	PaymentMethod+	MonthlyCharges+	TotalCharges,data=Training,method="class")
pred<-predict(model,test,type = "class")
print(prediction)
rpart.plot(model)
table(test$Churn,pred)
Accuracy(test$Churn,pred)
