# structure
str(women)  # dataset


# Your plot
plot(money, prosocial, xlab = "Money", ylab = "Prosocial Behavior")
# Store your regression coefficients in a variable called "line"
line <- lm(prosocial ~ money)  # y ~ x
# Use "line" to tell abline() to make a line on your graph
abline(line)
# Add a line that shows the mean of the dependent variable
abline(mean(prosocial), 0)
# Calculate the R squared of prosocial and money
cor(prosocial, money) ^ 2
