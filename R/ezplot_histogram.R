ezplot_histogram <- function (data, x) {
  #prints summary statistics
  print(paste(x, "summary", sep = " "))
  print(summary(data[, x]))

  #plots histogram using ggplot2.  data[, x] detects a column whose column title
  #matches the string value stored in x.
  ggplot(data, mapping = aes(data[, x])) +
    geom_histogram(color = "white", fill = "blue", bins = 45) +
    xlab(as.character(x))
}
