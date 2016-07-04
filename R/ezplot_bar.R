ezplot_bar <- function(data, x) {
  #prints summary statistics
  print(paste(x, "summary", sep = " "))
  print(summary(data[, x]))

  #plots a bar graph using ggplot2. data[, x] detects a column whose title
  #matches the string value stored in x.
  ggplot(data, mapping = aes(data[, x])) + geom_bar(color = "white", fill = "blue") +
    xlab(as.character(x))
}
