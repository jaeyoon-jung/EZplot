install.packages("ggplot2")
library(ggplot2)

ezplot <- function(data, x = NA , y = NA, type = NA, outlier= TRUE) {
  if (is.na(x) & is.na(y) & is.na(type)) {
    pairs(data)

    x <- readline("Please set the independent variable. ")
    y <- readline("Please set the dependent variable. If inapplicable, type None. ")
    type <- readline("What type of graph do you want? Options: bar, line, smooth, histogram, boxplot, area, frequency, scattergram. ")

  }

  if (type == "bar" & y == "None") {
    ezplot_bar(data, x, outlier)
  }


if (type == "histogram") {
  ezplot_histogram(data, x, outlier)
  }


if (type == "line") {
  ezplot_line(data, x, y, outlier)
  }

if (type == "scattergram") {
  ezplot_scattergram(data, x, y, outlier)
  }
}

if (type == "smooth") {
  ezplot_smooth(data, x, y, outlier)
}

if (type == "boxplot") {
  ezplot_boxplot(data, x, y, outlier)
}

if (type == "area") {
  ezplot_area(data, x, y, outlier)
}

if (type == "frequency") {
  ezplot_frequency(data, x, outlier)
}

