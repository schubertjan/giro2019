#' Create Hill Data
#'
#' Creates data for hill chart
#' @param x a numerical vector of length 1
#' @param y a numerical vector of length 1
#' @param cat a character/factor vector of length 1
#' @keywords plot hill data
#' @export
#' @return a list of length 3 with x,y and colour data
#' @examples
#' createhilldata(2,400, "1")

createhilldata <- function(x, y, cat){
  x_pol <- seq(0,x,length.out = 10000)
  y_pol <- seq(0,y, length.out = 10000)

  col_h <- "black"
  if(cat == "2") {col_h <- "red"} else
    if(cat == "3") {col_h <- "orange"} else
      if(cat == "4") {col_h <- "green"}

  return(list(x = x_pol,
              y = y_pol,
              plot_col = col_h))
}
