#' 练习: 熟练使用R软件
#'
#' @export
#' @examples
#' # 实践1 (最初几步)
#' x = 1:100 # 把1,2,...100这个整数向量赋值到x
#' (x=1:100) # 同上, 不显示
#' sample(x, 20) # 从1-100中随机抽取20个值
#' set.seed(0); sample(1:10, 3) # 先设置随机种子再抽样
#' #从1,2,...,200000中随机不放回地抽取10000个值作为样本;
#' z = sample(1:200000, 10000)
#' z[1:10] #方括号中的数字为向量z的下标
#' y = c(1,3,5,7,3,4,2)
#' z[y] # 以y下标, 获得z中元素的值
#' (z=sample(x, 100, rep=T)) #从x放回地随机抽取100个值作为样本
#' (z1=unique(z))
#' length(z1) #z中不同元素的个数
#' xz = setdiff(x, z) #x和z之间的不同元素--集合差
#' sort(union(xz,z)) #xz,z的并, 从小到大排序
#' setequal(union(xz,z), x) #比较xz及z的并与x是否相等
#' intersect(1:10, 7:50) # 两个数据的交
#' sample(1:100, 20, prob=1:100) # 从1:100中不等概率随机抽样
#'
#' # 实践2(一些简单运算):
#' pi*10^2 # 能用?"*"来看基本算术运算方法, pi是圆周率
#' "*"(pi, "^"(10, 2)) #同上
#' pi*(1:10)^-2.3 # 可以对向量求指数幂
#' x = pi * 10^2; x;print(x)
#' (x=pi*10^2) #赋值并打印
#' pi^(1:5) # 指数也可以是向量
#' print(x, digits=12) #输出x的12位数字
#'
#' # 实践3(关于R对象的类型等)
#' x = pi*10^2
#' class(x) #x的class
#' typeof(x) #x的type
#' class(cars) #cars是R中自带的数据
#' typeof(cars) #cars的type
#' names(cars) #cars数据的变量名称
#' summary(cars) #cars的汇总
#' head(cars) # cars的头几行数据, 和cars[1:6, ]相同
#' tail(cars) #cars的最后几行数据
#' str(cars) #也是汇总
#' row.names(cars) #行名称
#' attributes(cars) #cars的一些信息
#' class(dist~speed) #公式形式, "~"左边为因变量, 右边为自变量
#' plot(dist~speed, cars) #两个变量的散点图
#' plot(cars$speed, cars$dist) #同上
#'
#' # 实践4(包括简单自变量为定量变量及定性变量的回归)
#' ncol(cars); nrow(cars) # cars行列数
#' dim(cars) # cars的维数
#' lm(dist~speed, data=cars) #以dist为因变量, speed为自变量做OLS
#' cars$qspeed = cut(cars$speed, breaks=quantile(cars$speed),
#'     include.lowest=TRUE) #增加定性变量qspeed, 以四分位为分割点.
#' names(cars) #数据cars多了一个变量
#' cars[3] #第三个变量的值, 和cars[,3]类似
#' table(cars[3]) #列表
#' is.factor(cars$qspeed)
#' plot(dist~qspeed, data=cars) #点出盒形图
#' (a=lm(dist~qspeed, data=cars)) #拟合线性模型(简单最小二乘回归)
#' summary(a) #回归结果(包含一些检测)
#'
#' # 实践5 (简单样本描述统计量)
#' x <- round(runif(20, 0, 20), digits=2)
#' summary(x)
#' min(x); max(x) # 极值, 与range(x)类似
#' median(x) # 中位数(median)
#' mean(x) # 平均值(mean)
#' var(x) #方差(variance)
#' sd(x) #标准差(standard deviation), 为方差的平方根
#' sqrt(var(x)) # 平方根
#' rank(x) # 秩
#' order(x) # 升幂排列的x的下标
#' order(x, decreasing = T) #降幂排列的x的下标
#' x[order(x)] #和sort(x)相同
#' sort(x) #同上: 升幂排列的x
#' sort(x, decreasing = T) # 降幂排列
#' sum(x);length(x)
#' round(x) # 四舍五入, 等于round(x,0), round(x, 5)保留小数点后面5位.
#' fivenum(x)
#' quantile(x)
#' quantile(x, c(0, 0.33, 0.66, 1))
#' mad(x)
#' cummax(x)
#' cummin(x)
#' cumprod(x)
#' cor(x, sin(x/20))
#' 
#' # 实践6 (简单图形)
#' x=rnorm(200)
#' hist(x, col= "light blue")
#' rug(x)
#' stem(x)
#' x = rnorm(500)
#' y = x + rnorm(500)
#' plot(y~x)
#' a = lm(y~x)
#' abline(a, col="red")
#' print("hello R")
#' paste("x的最小值是: ", min(x)) # 打印
#' demo(graphics)
#' 
#' 实践7 (复数运算和求函数极值)
#' (2+4i)^-3.5 + (2i+4.5)*(-1.7-2.3i)/((2.6 - 7i)* (-4+5.1i))
#' (z = complex(real = rnorm(10), imaginary = rnorm(10)))
#' complex(re=rnorm(3), im=rnorm(3))
#' Re(z)
#' Im(x)
#' Mod(z)
#' Arg(z)
#' choose(3, 2) #组合
#' factorial(6) #排列6!
#' f=function(x) x^3 - 2*x -1
#' uniroot(f, c(0,2)) #迭代求根
#' f = function(x) x^2 + 2*2 +1
#' optimize(f, c(-2, 2)) #求极值点
#'
#' 实践8(字符型向量)
#' a = factor(letters[1:10]) #letters #因子类型
#' a[3] = "w" #警告
#' a=as.character(a) #
#' a[3] = "w"
#' a;factor(a)


#' @name appendix
NULL



