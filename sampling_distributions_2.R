# Calculating areas with subjects  (z=2.02)
# calculate the area under the curve left of the observation
pnorm(2.02, lower.tail = TRUE)
# calculate the area under the curve right of the observation
pnorm(2.02, lower.tail = FALSE)


# Calculating areas with sample means
# calculate the population mean
population_mean <- mean(scandinavia_data)
# calculate the population standard deviation
population_sd <- sd(scandinavia_data)
# calculate the standard deviation of the sampling distribution and put it in a variable sampling_sd
sampling_sd = population_sd / sqrt(50)
# calculate the Z score and put in a variable called z_score
z_score <- (26 - population_mean) / sampling_sd
# cumulative probability calculation. Don't forget to set lower.tail to FALSE
pnorm(z_score, lower.tail=FALSE)


# sample proportion
proportion_hipsters <- 0.10
# standard deviation of the sampling distribution
sample_sd <- sqrt(proportion_hipsters*(1-proportion_hipsters)/200)
# calculate the probability
pnorm(0.13, mean=0.1, sd=sample_sd, lower.tail = FALSE)
