# Load libraries
library(dplyr)
library(stats)
# Load Iris dataset
base_data <- iris
# Select the first four numerical variables
mydata <- select(base_data, c(1, 2, 3, 4))
# Calculate correlation matrix
cor(mydata)
# Calculate mean of correlation matrix
mean(cor(mydata))
# Perform PCA
PCA <- princomp(mydata)
# Display PCA loadings
PCA$loadings
# Extract principal component scores
PC <- PCA$scores
# View principal component scores
View(PC)
# Calculate correlation between principal components
cor(PC)
