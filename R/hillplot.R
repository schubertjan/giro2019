#' Create Hill Plot
#'
#' Creates hill chart
#' @param x a numerical vector used to plot x axis
#' @param y a numerical vector used to plot y axis
#' @param col_plot a character/factor vector to colour plot
#' @param x_lim max value for x lim
#' @param y_lim max value for y lim
#' @param stage stage number
#' @param climb_name climb name
#' @param avg_p average gradient
#' @param max_p max gradient
#' @param showaxis show x and y values
#' @importFrom graphics plot
#' @keywords plot hill
#' @export
#' @return plot hill
#' @examples
#' d <- createhilldata(2,400, "1")
#' hillplot(x = d$x,
#' y = d$y,
#' col_plot = d$plot_col,
#' x_lim = 10,
#' y_lim = 500,
#' stage = 1,
#' climb_name = "IPSUM",
#' avg_p = 5,
#' max_p = 14)

hillplot <- function(x,
                     y,
                     col_plot,
                     x_lim,
                     y_lim,
                     stage,
                     climb_name,
                     avg_p = NULL,
                     max_p = NULL,
                     showaxis = TRUE){
  #creata title
  plot_main <- paste0("Stage ",
                      stage)

  plot_sub <- paste0(climb_name,
                      " - avg ",
                      avg_p,
                      "%, max ",
                      max_p,"%")
  if(is.null(avg_p)) plot_sub <- paste0(climb_name,
                                        " - max ",
                                        max_p,"%")
  if(is.null(max_p)) plot_sub <- paste0(climb_name,
                                        " - avg ",
                                        avg_p,"%")
  if(is.null(max_p) & is.null(avg_p)) plot_sub <- paste0(climb_name)
  plot_main <- paste0(plot_main, "\n", plot_sub)

  #plot
  if(showaxis){
    plot(x,y,
         type = "h",
         col = col_plot,
         xlab = "Distance (km)",
         ylab = "Elevantion Diff.(m)",
         xlim = c(0,x_lim),
         ylim = c(0,y_lim),
         main = plot_main,
         cex.main = .85,
         cex.axis = .8)
  } else {
    plot(x,y,
         type = "h",
         col = col_plot,
         xlab = "Distance (km)",
         ylab = "Elevantion Diff.(m)",
         xlim = c(0,x_lim),
         ylim = c(0,y_lim),
         main = plot_main,
         cex.main = .85,
         cex.axis = .8,
         axes = FALSE)
  }
}
