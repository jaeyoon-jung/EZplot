ezplot_histogram <- function (data, x, outlier) {
  xcol <- match(x, colnames(data))
  ggplot(data, mapping = aes(data[xcol])) +
    geom_histogram(color = "white", fill = "blue", bins = 45)
}
