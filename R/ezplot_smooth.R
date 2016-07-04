ezplot_smooth <- function(data, x, y) {
  #plots a smooth regression curve on a scattergram. data[, x/y] detects a column whose column title
  #matches the string value stored in x/y.
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_point(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y)) + geom_smooth()
}

