
# Create rainfall data
rainfall <- c(10, 10, 10, 10, 560, 640, 520, 320, 90, 20, 10)

# Calculate arithmetic mean
arithmetic_mean <- mean(rainfall)

# Calculate geometric mean
geometric_mean <- exp(mean(log(rainfall)))

# Calculate harmonic mean
harmonic_mean <- length(rainfall) / sum(1 / rainfall)

# Calculate median
median_value <- median(rainfall)

# Calculate mode
mode_value <- names(sort(table(rainfall), decreasing = TRUE))[1]

# Calculate first quartile
first_quantile <- quantile(rainfall, probs = 0.25)

# Calculate percentile
percentile <- quantile(rainfall, probs = 0.56)

# Display results
print(paste("Arithmetic Mean:", arithmetic_mean))
print(paste("Geometric Mean:", geometric_mean))
print(paste("Harmonic Mean:", harmonic_mean))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))
print(paste("First Quantile:", first_quantile))
print(paste("Percentile:", percentile))
