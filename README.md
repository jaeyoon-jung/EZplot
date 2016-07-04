Introduction

In order to make ggplot2 more accessible to beginners in R, we created an interactive tool that simplifies the command lines for setting up
variables and creating graphs. It allows users to access quick overview of their data and produce relevant graphs, without having to write
multiple lines of complicated code. 


How to Use

Install and clone this Github Repository to your project or global directory.
Make sure ggplot2 is installed.
call library(ezplot) to load the library.


Code

ezplot(iris)
or
ezplot(iris, "Sepal.Length", "Petal.Width", "line")
