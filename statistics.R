x <- c(12, 25, 18, 30, 45, 22, 35, 50, 15, 28,
       40, 55, 32, 20, 60, 48, 38, 42, 65, 70)
mean(x)
exp(mean(log(x)))
(1/mean(1/x))
median(x)
names(which.max(table(x)))
quantile(x,probs = 0.25)
quantile(x,probs = 0.56)