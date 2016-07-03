ezplot_histogram <- function (data, x, outlier) {
  #xcol <- match(x, colnames(data))
  ggplot(data, mapping = aes(data[, x])) +
    geom_histogram(color = "white", fill = "blue", bins = 45) +
    xlab(as.character(x))
}
