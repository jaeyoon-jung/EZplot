ezplot_bar <- function(data, x, outlier = TRUE) {
  xcol <- match(x, colnames(data))
  ggplot(data, mapping = aes(data[xcol])) + geom_bar(color = "white", fill = "blue")
}
