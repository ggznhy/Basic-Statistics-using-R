# -------- Significance testing: one-sided versus two-sided --------
# 1
# calculate the value of cut_off
cut_off <- qnorm(0.95, 25, 0.55)
# print the value of cut_off to the console
print(cut_off)
# 2
# calculate the value of the variable lower_cut_off
lower_cut_off <- qnorm(0.025, 25, 0.55)
# calculate the value of the variable upper_cut_off
upper_cut_off <- qnorm(0.975, 25, 0.55)
# print lower_cut_off to the console
print(lower_cut_off)
# print upper_cut_off to the console
print(upper_cut_off)
# 3
# calculate the z score and assign it to a variable called z_value
z_value <- (25.95 - 25) / (3.5 / sqrt(40))
# calculate the corresponding p value and store it in the variable called p_value
p_value <- round(pnorm(z_value, lower.tail = FALSE), 2)
# print p_value to the console
print(p_value)
# 4
# calculate the z score and assign it to a variable called z_value
z_value <- (25.95 - 25) / (3.5 / sqrt(40))
# calculate the corresponding p value and store it in the variable called p_value
p_value <- round(pnorm(z_value, lower.tail = FALSE), 2) * 2
# print p_value to the console
print(p_value)


# ------- Hypothesis testing and the binomial distribution -------
# 1
# 2
#' calculate the probability of answering 12 ore more questions correctly given
#' that the student is merely guessing and store this in the variable p_value
p_value <- round(pbinom(12, size = 25, prob = 0.2, lower.tail  =FALSE), 2)
# print the probability calculated above to the console
print(p_value)
# assign either accepted or rejected to the variable conclusion
conclusion <- 'rejected'
# 3
# calculate the mean (expected probability) and assign it to a variable called average
average <- 0.2
# calculate the standard error and assign it to a variable called se
se <- sqrt(0.2 * 0.8 / 25)
# calculate the z value and assign it to a variable z_value
z_value <- round((12 / 25 - average) / se, 2)
# calculate the p value and store it in a variable p_value
p_value <- round(pnorm(z_value, lower.tail = FALSE), 2)
# print p_value to the console
print(p_value)


# ------- The t distribution -------
# calculate the standard error and store it in the variable se
se <- round(5/sqrt(50), 2)
# calculate the t value and store it in a variable called t_value
t_value <- round((186.5-185) / se, 2)
# calculate the p value and store it in a variable called p_value
p_value <- pt(t_value, 49, lower.tail=FALSE)
# print p_value to the console
print(p_value)



# ------- Confidence interval and significance testing -------
# calculate the t value and store it in the variable t_value
t_value <- qt(0.975, 49)
#' calculate a 95% confidence interval as a vector with two values and store it in a
#' a variable called conf_interval
conf_interval <-  round(186.5 + c(-1, 1) * t_value * 0.71, 2)
# print conf_interval to the console
print(conf_interval)

