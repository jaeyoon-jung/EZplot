ezplot_area <- function (data, x, y) {
  #prints summary statistics of independent and dependent variables.
  print(paste(x, "summary", sep = " "))
  print(summary(data[, x]))
  print(paste(y, "summary", sep = " "))
  print(summary(data[, y]))

  #plots an area graph
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_area(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}
