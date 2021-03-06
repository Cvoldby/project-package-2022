#' @title Polya-Eggenberger distribution of pin-point hits for a single species.
#'
#' @description The purpose is the be a distribution of pin-point hits for a single species.
#'
#' @usage polya(x, delta, q, n = 16)
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
#' delta <- 0.3
#' q <- 0.3
#' polya(x, delta, q)
#'
#' @export

# This is a polya function
polya <- function(x, delta, q, n = 16){
  # assertions
  assert(class(x) == "numeric" & x > 0 & x <= 16, "x must be a positive integer.")
  assert(delta >= 0 & delta <= 1, "delta must be between 0 and 1.")
  assert(q >= 0 & q <= 1, "q must be between 0 and 1.")
  assert(class(n) == "numeric", "n must be a positive integer. The pin-point frame has 16 pins.")

  pochhammer <- function(x, n){  # This is pochhammer function used in the polya-distribution.
    return(gamma(x + n) / gamma(x))}

  return(choose(n, x)
  * pochhammer(q * (1 / delta - 1), x)
  * pochhammer(((1 - delta) * (1 - q))/q, n - x)
  * 1 / pochhammer(1 / q - 1, n))
}

