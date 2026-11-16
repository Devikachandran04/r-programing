#install.packages("readr")
#install.packages("rpart.plot")

# Decision Tree
library("readr")
library(rpart)
library(rpart.plot)

data <- data.frame(
  outlook = rep(c("sunny", "overcast", "rainy"), each = 10),
  Temp = rep(c("high", "mild", "COOL"), each = 10),
  Humidity = rep(c("HIGH", "NORMAL"), each = 15),
  Wind = rep(c("Weak", "Strong"), each = 15)
)
data$playGolf <- sample(c("Yes", "No"), 30, replace = TRUE)
write.csv(data, "golf_dataset.csv")
data <- read.csv("golf_dataset.csv")
model <- rpart(
  playGolf ~ outlook + Temp + Humidity + Wind,
  data = data,
  method = "class"
)
rpart.plot(model)

test_data <- data.frame(
  outlook = "sunny",
  Temp = "COOL",
  Humidity = "NORMAL",
  Wind = "Weak"
)
prediction <- predict(model, test_data, type = "class")
print(prediction)

