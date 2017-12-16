#' example 11.1 SC.csv
#'
#' @export
f11.1 <- function()
{
}

#' example 11.3
#'
#' @export
#'
f11.3 <- function(){
  #w <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
  w <- d11.3
  a = glm(admit ~., w, family = binomial);
  print(summary(a))
  b = glm(admit~., w, family = binomial(probit))
  print(summary(b))
}

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