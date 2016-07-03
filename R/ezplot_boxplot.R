ezplot_boxplot <- function (data, x, y, outlier) {
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_boxplot(color = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}