ezplot_smooth <- function(data, x, y) {

  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_point(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y)) + geom_smooth()
}
