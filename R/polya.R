#' @title Polya-Eggenberger distribution of pin-point hits for a single species.
#'
#' @description The purpose is the be a distribution of pin-point hits for a single species.
#'
#' @usage
#'
#' @param x vector of quantiles
#' @param delta parameter for the intra-plot correlation (\code{0 < delta < 1})
#' @param q parameter for the mean cover (\code{0 < delta < 1})
#' @param n number of pins in a plot. The default is 16 pins.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#' x <- 5
#' delta <- 3
#' q <- 0.5
#' polya(x, delta, q)
#'
#' @export

# This is a polya function
polya <- function(x, delta, q, n = 16){
  # This is pochhammer function used in the polya-distribution.
  pochhammer <- function(x, n){
    return(gamma(x + n) / gamma(x))}

  return(choose(n, x)
  * pochhammer(q * (1 / delta - 1), x)
  * pochhammer(((1 - delta) * (1 - q))/q, n - x)
  * 1 / pochhammer(1 / q - 1, n))
}


# These function may not be necessary
#polya_mean <- function(n, q){
#  return(n * q)
#}

#polya_var <- function(n, delta, q){
#  return(n * (1 - q) * q * (1 - delta(1 - n)))
#}
