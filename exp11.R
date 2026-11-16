library(ggplot2)
library(ggfortify)
library(dplyr)
base_data <- iris
mydata <- select(base_data, c(1, 2, 3, 4))
View(mydata)
set.seed(1234)
wss <- numeric(11)
for (i in 1:11) {
  wss[i] <- sum(kmeans(mydata, centers = i)$withinss)
}
plot(1:11, wss, type = "b",
     xlab = "No. of Clusters",
     ylab = "Within Groups Sum of Squares")
KM <- kmeans(mydata, centers = 2)
KM
KM$centers
KM$cluster
autoplot(KM, data = mydata)