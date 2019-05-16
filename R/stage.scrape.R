#' Create Stages Data
#'
#' Scrapes stage data from Wikipedia
#' @param years.range a numerical vector of length 2 with range of years
#' @keywords scrape wiki stages
#' @export
#' @return a list of length seq from year range 1 to year range 2
#' @examples
#' stage.scrape(years.range = c(2019, 2019))

stage.scrape <- function(years.range = c(1946, 2019)){
  if(length(years.range) != 2) stop("Length of years.range must be 2")

  year <- seq(from = years.range[1], to = years.range[2])
  if(any(year < 1946) & any(year > 2019)) stop("Year must be between 1946 and 2019")

  stages <- lapply(year, function(i) {
    urlPage <- paste0("https://en.wikipedia.org/wiki/",i,"_Giro_d%27Italia")
    p <- xml2::read_html(urlPage)
    n <- rvest::html_node(p, ".wikitable")
    t <- rvest::html_table(n, fill = TRUE)
    t[, 4] <- gsub("[[:space:]].*","",t[, 4])
    t[, 4] <- gsub(",","",t[, 4])
    t[, 4] <- as.numeric(t[, 4])
    return(t)
  })
  names(stages) <- as.character(year)
  return(stages)
}
