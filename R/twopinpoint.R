#' @title The distribution of pin-point hits for two species
#' @importFrom stats dbeta dbinom dmultinom
#'
#' @description  The purpose of the function is to act as a distribution of pin-point hits for two species.
#'
#' @usage twopinpoint(r, s, t, u, n = 16)
#'
#' @param r the number of pins that only touch plant species A.
#' @param s the number of pins that only touch plant species B.
#' @param t the number of pins that touch both plant species A and B.
#' @param u the number of pint that touch neither species A or B.
#' @param n the number of pins in a plot.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University.
#'
#'
#' @export


# Spatial aggregation

twopinpoint <- function(r, s, t, u, n = 16){
  # Choose mean cover and intra-plot correlation.
  pa <- p_beta(r, delta = 0.1, q = 0.1)
  pb <- p_beta(s, delta = 0.1, q = 0.1)
  pab <- mean(t) / n


  mltnom <- dmultinom(x = c(r, s, u), prob = c(pa, pb, 1 - pa - pb))
  bnom <- dbinom(x = t, size = n, prob = pab)
  return(mltnom * bnom)
}
