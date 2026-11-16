# Load libraries
#install.packages("caret")
#install.packages("dplyr")
#install.packages("MLmetrics")
#remove.packages("caret")
#emove.packages("dplyr")
#remove.packages("MLmetrics")
library(caret)
library(dplyr)
library(MLmetrics)
library(stats)

# Load Iris dataset
base_data <- iris

# View the data
View(iris)

# Select first 4 columns
mydata <- select(base_data, c(1,2,3,4))

# View selected data
View(mydata)

# Summary statistics
summary(mydata)

# Correlation matrix
CM <- cor(mydata)

# Create random train-test index
index <- sample(2, nrow(mydata), replace = TRUE, prob = c(0.7, 0.3))

# Display index
index

# Create training and testing data
Training <- mydata[index == 1, ]
Testing <- mydata[index == 2, ]

# Build Multiple Linear Regression model
RM <- lm(Petal.Length ~ Sepal.Length + Sepal.Width + Petal.Width,
         data = Training)

# Predict Petal.Length for testing data
Petal.Length_Predict <- predict(RM, Testing)

# Add predictions to testing dataset
Testing$Petal.Length_Predict <- Petal.Length_Predict

# View testing data
View(Testing)

# Calculate Mean Absolute Percentage Error
error <- MAPE(Testing$Petal.Length_Predict,
              Testing$Petal.Length)

# Display model summary
summary(RM)

# Display data summary
summary(mydata)