ezplot_frequency <- function (data, x) {
  #prints summary statistics of the chosen variable.
  print(paste(x, "summary", sep = " "))
  print(summary(data[, x]))

  #plots a frequency grpah. data[, x] detects a column whose column title
  #matches the string value stored in x.
  ggplot(data, mapping = aes(data[, x])) + geom_freqpoly(color = "blue", bins= 45) +
    xlab(as.character(x))
}
