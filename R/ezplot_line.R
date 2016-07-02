ezplot_line <- function(data, x, y, outlier = TRUE){
  xcol <- match(x, colnames(data))
  ycol <- match(y, colnames(data))
  data$pred <- predict(lm(data[ycol] ~ data[xcol], data))
  ggplot(data, mapping = aes(data[xcol], data[ycol])) + geom_line(aes(y = pred), colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}

