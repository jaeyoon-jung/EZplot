ezplot_boxplot <- function (data, x, y) {

  #prints summary statistics of the chosen variable.
  print(paste(x, "summary", sep = " "))
  print(summary(data[, y]))

  #plots boxplots for each discrete variable stored in x. data[, x/y] detects a column whose
  #column title matches the string value stored in x/y.
  ggplot(data, mapping = aes(data[, x], data[, y])) + geom_boxplot(color = "blue") +
    xlab(as.character(x)) + ylab(as.character(y))
}
