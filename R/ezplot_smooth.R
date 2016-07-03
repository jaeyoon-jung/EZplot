ezplot_smooth <- function(data, x, y, outlier = TRUE) {
  #xcol <- match(x, colnames(data))
  #ycol <- match(y, colnames(data))
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_point(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y)) + geom_smooth()
}