ezplot_scattergram <- function(data, x, y){
  #prints summary statistics of independent and dependent variables
  print(paste(x, "summary", sep = " "))
  print(summary(data[, x]))
  print(paste(y, "summary", sep = " "))
  print(summary(data[, y]))

  #plots a scattergram using ggplot2. data[, x/y] detects a column whose column title
  #matches the string value stored in x/y.
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_point(colour = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))

}
