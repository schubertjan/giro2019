#' Same As Above
#'
#' Replaces empty rows by the value above
#' @param x a vector of length > 2
#' @keywords replace
#' @export
#' @examples
#' sameasabove(c(2,1,3,"","",4,NA))

sameasabove <- function(x) {
  for(i in 2:length(x)) {
    if(is.null(x[i]) | is.na(x[i]) | x[i] == "") x[i] <- x[i-1]
  }
  return(x)
}
