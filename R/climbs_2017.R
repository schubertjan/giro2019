#' Categorized climbs from giro 2017
#'
#' A dataset containing categorized climbs from giro 2017.
#'
#' @format A data frame with 39 rows and 14 variables:
#' \describe{
#'   \item{stage}{stage, character}
#'   \item{start.finish}{start and finish town, character}
#'   \item{kom}{name of the climb, character}
#'   \item{alt.finish}{altitude at finish of the climb, number}
#'   \item{dist.finish}{distance from finish, number}
#'   \item{start}{start town of a climb, factor}
#'   \item{alt.start}{altitude at start of the climb, number}
#'   \item{dist.start}{distance from finish at start of the climb, number}
#'   \item{length.km}{length of a climb, number}
#'   \item{disl.m}{elevation difference, number}
#'   \item{p.media}{average gradient, number}
#'   \item{p.max}{max gradient, number}
#'   \item{cat}{category climb, factor}
#' }
#' @source \url{https://static2.giroditalia.it/wp-content/uploads/2017/04/Garibaldi_2017.pdf}
"climbs_2017"
