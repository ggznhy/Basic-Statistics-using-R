# 1 vector 向量
Mn <- c(1, 2, 3)
x1 <- 0:10
x2 <- pi^2 * x1
y <- cos(x2)

name <- c("Ryan", "xiaowen", "Wen Zhongguan")
print(name)

print(paste("A", "B", "C"))  # paste自变量连成字符串


# 2 function 函数
fadd <- function(x, y) x + y
print(fadd(1, 2))  # sum is 3

# 3 matrix and array( %*% )
m <- matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)  # matrix 
m

c = 1:150
a <- array(c, dim = c(3,5,10))  # 3x5x10的数组 row, column, page

# 4 factor 因子
rank <- c(1,7,5,5,3)
frank <- factor(rank, leves = seq(1, 7, 2))  # factor
levels(frank) <- c("bad", "mid", "good", "excel")
as.numeric(frank)  # 1 4 3 3 2  
levels(frank)
table(frank)  # 计数


# 5 list 列表: 把不同的对象组合成一个更大的对象，用[[下标]]引用
sam <- list(date = 12.17, condition = "Fog", air = c(38.2, 10.3))
sam[[1]]  # 12.17 下标从1开始
sam[[3]][1]  # 38.2


# 6 数据框data.frame
air <- data.frame(date = c(1.13, 1.16, 1.18, 1.19),
                  condation = c("Fog", "Clear", "Cloud", "Fog"),
                  Thion = c(38.2, 28.6, 63.2, 47.1),
                  Oxon = c(10.3, NA, 36.4, 13.6))  # as.data.frame()列表强转数据框


# 7 input and output
i = 1
cat("i=", i, "\n")  # scan()  # read.table()
