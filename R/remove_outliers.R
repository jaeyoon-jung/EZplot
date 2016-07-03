remove_outliers <- function(x) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = TRUE)
  H <- 1.5 * IQR(x, na.rm = TRUE)

  x[x < (qnt[1] - H)] <- NA
  x[x > (qnt[2] + H)] <- NA
  na.omit(x)
}
