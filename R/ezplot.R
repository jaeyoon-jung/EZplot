#' Interactive tool that creates well-formated charts and graphs with one simple function.
#'
#' @param data A table of data
#' @param x The column/row name of the data input that will be plotted on the x-axis
#' @param y The column/row name of the data input that will be plotted on the y-axis
#' @param type The type of graph/chart that the user wants returned
#' @return a graph of the data input in the specified type and appropriate summary statistics
#' @examples
#' ezplot(iris)
#' ezplot(iris, "Sepal.Length", "Sepal.Width", "scattergram")
#' ezplot(iris, "Sepal.Length", "Sepal.Width", "line")
#' ezplot(mpg, "hwy", "None", "bar")
#' ezplot(iris, "Sepal.Length", "Sepal.Width", "smooth")
#' ezplot(mpg, "class", "hwy", "boxplot")
#' ezplot(mpg, "hwy", "None", "frequency")
#' ezplot(mpg, "hwy", "None", "histogram")
#' ezplot(economics, "date", "unemploy", "area")
#' @export

ezplot <- function(data, x = NA , y = NA, type = NA) {
  library(ggplot2)
#When only dataset is specified, the function creates pair scattergrams for a quick overview of data
  if (is.na(x) & is.na(y) & is.na(type)) {
    pairs(data)

#Interactive tool that generates a graph/chart that the user wants
    #stores a string value that represents the independent variable
    x <- readline("Please set the independent variable. ")
    #stores a string value that represents the dependent varialbe
    y <- readline("Please set the dependent variable. If inapplicable, type None. ")
    #stores a string value that represents the graph/chart type
    type <- readline("What type of graph do you want? Options: bar, histogram, boxplot,
                     frequency, scattergram, line, smooth, area.     ")
  }

#bar graph
  if (type == "bar" & y == "None") {
    ezplot_bar(data, x) #calls ezplot_bar function
  }

#histogram
else if (type == "histogram") {
  ezplot_histogram(data, x) #calls ezplot_histogram function
  }

#boxplot chart
else if (type == "boxplot") {
  ezplot_boxplot(data, x, y)
  }

#frequency graph
else if (type == "frequency") {
  ezplot_frequency(data, x)
  }

#scattergram
else if (type == "scattergram") {
  ezplot_scattergram(data, x, y)
  }

#line graph with a linear regression line
else if (type == "line") {
  ezplot_line(data, x, y)
  }

#line graph with a smooth regression curve
else if (type == "smooth") {
  ezplot_smooth(data, x, y)
  }

#area graph
else if (type == "area") {
  ezplot_area(data, x, y)
  }
}
