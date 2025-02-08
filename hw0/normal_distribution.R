# probability of a woman having a hair length of less than 20 centimeters
round((pnorm(20, mean=25, sd = 5)), 2)

# 85th percentile of female hair length
qnorm(0.85, mean = 25, sd = 5)
