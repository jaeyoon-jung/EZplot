ezplot_line <- function(data, x, y) {
  #fit is the linear regression line.
  #prints summary of the fit line
  fit <- lm(data[,y] ~ data[,x])
  print("Linear regression line summary")
  print(summary(fit))

  #pred stores the predicted value on the regression line
  data$pred <- predict(fit, data)
  #plots the regression line on a scattergram. data[, x/y] detects a column whose column title
  #matches the string value stored in x/y.
  ggplot(data, mapping = aes(data[,x], data[,y])) + geom_point(colour = "blue") +
    geom_line(aes(y = pred), colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}
