# Sampling from the population
set.seed(11225)
first_sample <- sample(scandinavia_data, size = 100)
mean(first_sample)


# Using a for loop
# initialize an empty vector
new_number <- NULL
# run an operation 10 times.
# The ith position of new number will be set to i
# at the end of the loop, the vector new_number is printed
for (i in 1:10){
  new_number[i] <- i
}
print(new_number)


# Mean of the sampling distribution
# set the seed such that you will get the same sample as in the solution code
set.seed(11225)
# empty vector sample means
sample_means <- NULL
# take 200 samples from scandinavia_data
for (i in 1:500){
  samp <- sample(scandinavia_data, 200)
  sample_means[i] <- mean(samp)
}
# calculate the population mean, that is, the mean of scandinavia_data and print it
mean(scandinavia_data)
# calculate the mean of the sample means, that is, sample_means
mean(sample_means)


# Standard deviation of the sampling distribution
# standard deviation of the population
population_sd <- sd(scandinavia_data)
print(population_sd)
# standard deviation of the sampling distribution
sampling_sd <- population_sd / sqrt(200)
print(sampling_sd)


# The central limit theorem
# empty vector sample means
sample_means <- NULL
# take 200 samples from scandinavia_data
for (i in 1:1000){
  samp <- sample(household_income, 200)
  sample_means[i] <- mean(samp)
}
# make a histogram of household_income
hist(household_income)
# make a histogram of sample_means
hist(sample_means)


# Zscores
z_score <- (32 - 25) / 3.47


# 
