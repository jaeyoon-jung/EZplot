ezplot_scattergram <- function(data, x, y){

  (summary(data[, x]))

  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_point(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))

}
