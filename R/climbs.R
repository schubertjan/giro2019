#' Categorized climbs from giro 2019
#'
#' A dataset containing categorized climbs from giro 2019.
#'
#' @format A data frame with 39 rows and 14 variables:
#' \describe{
#'   \item{tappa}{stage, number}
#'   \item{partenza}{start town, factor}
#'   \item{arrivo}{arrival town, factor}
#'   \item{gpm}{name of the climb, factor}
#'   \item{cat}{category climb, factor}
#'   \item{quota(m)}{altitude at the top of a climb, number}
#'   \item{distgpm}{distance from finish at the top of a climb, number}
#'   \item{iniziosalita}{start town of a climb, factor}
#'   \item{quota(m)}{altitude start of a climb, number}
#'   \item{dist.(km)}{start climb distance from finish, number}
#'   \item{lungh.(km)}{length of a climb, number}
#'   \item{disl.(m)}{elevation difference, number}
#'   \item{p.med}{average gradient, number}
#'   \item{p.max}{max gradient, number}
#' }
#' @source \url{http://www.giroditalia.it/wp-content/uploads/2019/04/Garibaldi_Giro_italia_2019_low_res.pdf}
"climbs"
