# Confidence Interval With Known SD
# Assign the sample mean to object "m"
m <- mean(samp)
# Assign the standard deviation to object "s"
s <- 8 / sqrt(300)
# Calculate the upper confidence interval
m + 1.96 * s
# Calculate the lower confidence interval
m - 1.96 * s


# Calculating a Confidence Interval Without The Population Standard Deviation
# Assign the sample mean to object "m"
m <- mean(rrage)
# Assign the sample standard error to object "s"
s <- sd(rrage) / sqrt(200)
# Calculate the upper 95% confidence interval
m + 1.9720 * s
# Calculate the lower 95% confidence interval
m - 1.9720 * s


# Calculating A Confidence Interval for a Proportion
# Make p the proportion of the sample with road rage 
p <- length(x) / length(roadrage)
# Find the standard error of p
se <- sqrt(p * (1-p) / length(roadrage))
# Calculate the upper level of the confidence interval
p + 1.96 * se
# Calculate the lower level of the confidence interval
p - 1.96 * se
# Report the range of the 95% confidence interval
2 * 1.96 * se
# Report the range of the 99% confidence interval
2 * 2.58 * se
# Which has the widest range?
99



# Assign the sample mean to object "m"
m <- mean(rrage)
# Assign the sample standard error to object "s"
s <- sd(rrage) / sqrt(200)
# Calculate the upper level of the 95% confidence interval
m + ( 1.9720 * s )
# Calculate the lower level of the 95% confidence interval
m - ( 1.9720 * s)
# Calculate the range of the 95% confidence interval
1.9720 * s * 2
# Calculate the range of the 90% confidence interval
1.6525 * s * 2
# Which has the widest range?
95


# Assign the standard deviation squared to new object "ss"
ss <- 1.25 ^ 2
# Assign the value of the Z-score squared to new object "zs"
zs <- 1.96 ^ 2
# Assign the value of the margin of error squared to the new object "ms"
ms <- 0.2 ^ 2
# Calculate the neccessary sample size
ss * zs / ms



# Assign the value of p(1-p) to object "p"
p <- 0.25
# Assign the value of the Z-score to new object "z"
z <- 1.96
# Assign the value of the margin of error squared to the new object "ms"
ms <- 0.05 ^ 2
# Calculate the neccessary sample size
p * (1.96 ^ 2) / ms