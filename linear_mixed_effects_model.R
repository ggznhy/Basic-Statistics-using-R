# Reference: https://zhuanlan.zhihu.com/p/483173133

# Library
library(nlme)  # Fit Gaussian linear and nonlinear mixed-effects models
library(lme4)  # Fit linear and generalized linear mixed-effects models
library(epiR)  # Analysis of epidemiological data
library(epicalc)  # Functions for epidemiological calculation
library(lattice)  # Data visualization system
library(epiDisplay)

# input
dropout.data <- read.table('./data_dropout.csv', sep = ',', na.string = ' ', header = TRUE, dec = '.')

# Linear Mixed Model
cat('LINEAR MIXED MODEL WITH SYMMETRIC COVARIANCE MATRIX\n')
fit.m3 <- lme(GFR ~ time + age + gender + micro + macro + micro:time + macro:time,
              random = list(patient = pdSymm( ~ 1 + time)), method = "ML",
              data = dropout.dat, control = lmeControl(opt = "optim"))   # random argument: is identical to random = ~ 1 + time|patient
summary(fit.m3)

cat("95% CI\n")
coef.fit.m3 <- summary(fit.m3)$tTable
ci(coef.fit.m3[,1], coef.fit.m3[,2], coef.fit.m3[,4])

cat("VARIANCE-COVARIANCE MATRIX\n")
VarCorr(fit.m3)

