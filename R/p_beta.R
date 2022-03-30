#' @title p_beta
#'
#' @description The purpose of this function is adjust the beta distribution to the parameters delta and q.
#'
#' @usage
#'
#' @param delta The intra-plot corelation parameter
#' @param q the mean cover parameter
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#'
#' @export
#'

p_beta <- function(delta, q) {
  b_gamma <- function(a, b) {
    return(gamma(a + b) / (gamma(a) * gamma(b)))
  }
  alpha <- q / delta - q
  beta <- (1 - q) * (1 - delta) / delta
  return()
}
