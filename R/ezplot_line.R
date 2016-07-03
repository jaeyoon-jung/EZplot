ezplot_line <- function(data, x, y) {

  data$pred <- predict(lm(data[,y] ~ data[,x]), data)
  ggplot(data, mapping = aes(data[,x], data[,y])) + geom_point(colour = "blue") +
    geom_line(aes(y = pred), colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}
