install.packages("ggplot2")
library(ggplot2)

ezplot <- function(data, x= NULL, y = NULL, type = NULL, outlier = TRUE) {
 if (x == NULL & y == NULL & type = NULL) {
   pairs(data)

   x <- readline("Please set the independent variable.")
   y <- readline("Please set the dependent variable.")
   type <- readline("What type of graph do you want? \nOptions: bar, line, histogram, boxplot, area")
 }

   #continuous vs discrete
    if (type = "bar" | y = NULL) {
      #if continuous, histogram
      #if discrete:
      ggplot(data, mapping = aes(x)) + geom_bar(color = "white", fill = "blue")
    }

}
#make it interactive
