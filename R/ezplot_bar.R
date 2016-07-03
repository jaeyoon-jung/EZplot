ezplot_bar <- function(data, x, outlier = TRUE) {
  ggplot(data, mapping = aes(data[, x])) + geom_bar(color = "white", fill = "blue") +
    xlab(as.character(x))
}
