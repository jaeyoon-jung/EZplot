ezplot_frequency <- function (data, x) {
  ggplot(data, mapping = aes(data[, x])) + geom_freqpoly(color = "blue", bins= 45) +
    xlab(as.character(x))
}
