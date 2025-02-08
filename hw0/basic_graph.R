# library(ggplot2)

# barplot***************
# vector of bar heights
height <- table(mtcars$am)
# Make a vector of the names of the bars called "barnames"
barnames <- c('automatic','manual')
# Label the y axis "number of cars" and label the bars using barnames
barplot(height, names.arg=barnames, ylab='number of cars')


# histogram********************
hist(mtcars$carb, main = "Carburetors", xlab = 'Number of Carburetors', ylim=c(0,20), col = 'red')


# Produce a sorted frequency table of `carb` from `mtcars`
sort(table(mtcars$carb), decreasing = TRUE)

# boxplot ****************************
# Minimum value
x <- min(mtcars$mpg)
# Maximum value
y <- max(mtcars$mpg)
# Calculate the range of mpg using x and y
y - x
# Make a boxplot of qsec
boxplot(mtcars$qsec)
# Calculate the interquartile range of qsec
IQR(mtcars$qsec)
