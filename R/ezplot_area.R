ezplot_area <- function (data, x, y, outlier = TRUE) {
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_area(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}
