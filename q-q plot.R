# Q-Q plot

# Ctrl+L 清屏

# https://mp.weixin.qq.com/s?__biz=Mzg5ODc0MDQzOA==&mid=2247490035&idx=1&sn=16b7861f03451783405b502079fb79fa&chksm=c05ca04af72b295c720eb9e4a1c0b995c41ff6f2e43ecb966094211c9337ac516fa6c8ffd749&scene=27

library(ggplot2)
set.seed(183)
df <- data.frame(x=rnorm(250, mean=10, sd=1))

ggplot(df, aes(sample=x)) + geom_qq() + geom_qq_line(linewidth=0.5)
