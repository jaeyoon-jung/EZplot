ezplot_frequency <- function (data, x, outlier) {
  ggplot(data, mapping = aes(data[, x])) + geom_freqpoly(color = "blue", bins= 45) + xlab(as.character(x))
}
