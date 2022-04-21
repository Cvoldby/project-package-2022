#' @title The distribution of pin-point hits for two species
#'
#' @description  The purpose of the function is to act as a distribution of pin-point hits for two species.
#'
#' @usage
#'
#' @param r the number of pins that only touch plant species A.
#' @param s the number of pins that only touch plant species B.
#' @param t the number of pins that touch both plant species A and B.
#' @param u the number of pint that touch neither species A or B.
#' @param N the number of pins in a plots.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University.
#'
#' @examples
#'
#' @export


# Spatial aggregation

twopinpoint <- function(r, s, t, u, N = 16){
  pa <- p_beta(delta = 0.1, q = 0.1)
  pb <- p_beta(delta = 0.1, q = 0.1)
  pab <-

  return(dmultinom(x = c(r, s, u),
                   prob = c(pa, pb, 1 - pa - pb))
        * dbinom(x = t,
                 size = N,
                 prob = pab))
}
