#' @title p_beta
#'
#' @description The purpose of this function is adjust the beta distribution to the parameters delta and q.
#'
#' @usage p_beta(x, delta, q)
#'
#' @param x ...
#' @param delta The intra-plot corelation parameter
#' @param q the mean cover parameter
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @export
#'

p_beta <- function(x, delta, q) {
  B <- function(a, b) { # The normalizating constant to make the function integrate to 1.
    return((gamma(a) * gamma(b)) / gamma(a + b))
  }
  alpha <- q / delta - q
  beta <- (1 - q) * (1 - delta) / delta
  return(dbeta(x, shape1 = alpha, shape2 = beta))
}
