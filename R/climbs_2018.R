#' Categorized climbs from giro 2018
#'
#' A dataset containing categorized climbs from giro 2018.
#'
#' @format A data frame with 39 rows and 13 variables:
#' \describe{
#'   \item{stage}{stage, character}
#'   \item{start.finish}{start and finish town, character}
#'   \item{kom}{name of the climb, character}
#'   \item{cat}{category climb, factor}
#'   \item{alt.finish}{altitude at finish of the climb, number}
#'   \item{dist.finish}{distance from finish, number}
#'   \item{start}{start town of a climb, factor}
#'   \item{alt.start}{altitude at start of the climb, number}
#'   \item{dist.start}{distance from finish at start of the climb, number}
#'   \item{length.km}{length of a climb, number}
#'   \item{disl.m}{elevation difference, number}
#'   \item{p.media}{average gradient, number}
#'   \item{p.max}{max gradient, number}
#' }
#' @source \url{hhttps://legaciclismo.files.wordpress.com/2018/05/garibaldi-2018.pdf}
"climbs_2018"
