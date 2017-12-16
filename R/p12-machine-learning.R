#' Classsification
#'
#' @importFrom mlbench
f12.1 <- function()
{
  data("Glass", package = "mlbench")
  w = Glass
  w[, 10] = factor(w[, 10])
  Z = 5; T = 6 #5折, 6个水平
  (n=nrow(w))
  e = names(table(w$Type))
  d = 1:n; dd=list()
}