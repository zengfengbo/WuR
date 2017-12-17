#' multiple-regression
#'
#' @name p11-multiple-regression
#' @examples
#' # 11.1 模型和拟合
#' # 例 11.1
#' w = read.csv("SC.csv") # 没找到数据
#' a = lm(营业利润~., w)
#' summary(a); shapiro.test(a$res)
#'
#' # 11.2 变换及逐步回归
#' a1 = lm(营业利润^0.75 ~., w)
#' b = step(a1)
#' summary(b); shapiro.test(b$res)
#'
#' # 11.3 自变量包含分类变量的回归
#'
#' # 例 11.2
#' # w = read.csv("greenhouse2.csv")
#' data(greenhouse, package="agricolae")
#' w = greenhouse$greenhouse2
#' a = lm(weight~. , w[, -3])
#' summary(a) #method3个水平, variety4个水平, 默认第一个水平为0, 其他水平相对于第一个水平格式多少
#' anova(a) #方差分析, F分布检测
#'
#' # 11.5 logistic回归和probit回归
#' # 依然是线性回归, 但是左边的值取值为概率, 在[0, 1]范围内, 需要先映射到整个实数区间.
#' # ln(p/(1-p)), 正态分布累积函数的逆.
#'
#' w <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
#' #w <- d11.3
#' a = glm(admit ~., w, family = binomial);
#' print(summary(a))
#' b = glm(admit~., w, family = binomial(probit))
#' print(summary(b))
NULL

#' binary
#'
#' \itemize{
#'  \item admit. 0 or 1.
#'  \item gre. gre score
#'  \item gpa. gpa score
#'  \item rank. 1,2,3,4, 1 is the highest, 4 is the lowest
#' }
#' @source \url{https://stats.idre.ucla.edu/stat/data/binary.csv}
#' @format A data frame with 400 rows and 4 variables
"d11.3"
