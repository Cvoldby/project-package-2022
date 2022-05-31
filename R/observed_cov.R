#' @title The Observed Covariance
#'
#' @description The purpose of this function is to calculate the observed covariance.
#' The function for this observed covariance is corrected by the number of plots at a site.
#'
#' @usage observed_cov(r, s, t, u, N)
#'
#' @param r vector with the number of pins that only touch plant species A in each plot at a site.
#' @param s vector with the number of pins that only touch plant species B in each plot at a site.
#' @param t vector with the number of pins that touch both plant species A and B in each plot at a site.
#' @param u vector with the number of pins that touch neither plant species A or B in each plot at a site.
#' @param N number of plots at a site.
#'
#' @return single numeric value
#'
#' @author Christian Voldby, Data Science student at Aarhus University
#'
#' @examples
#' r <- c(1,2,3,4,5)
#' s <- c(5,4,3,2,1)
#' t <- c(2,3,2,3,2)
#' u <- c(8,7,8,7,8)
#' N <- 5
#' observed_cov(r, s, t, u, N)
#'
#' @export


observed_cov <- function(r, s, t, u, N){
  # assertions
  assert(r[1] + s[1] + t[1] + u[1] == 16, "The sum of the pin-data input must equal to the total number of pins.")
  assert(N == length(r), "The number of plots at a site must be equal to the length of inputs.")

  a = 1 / N
  return(a * (a * sum((r + t) * (s + t)) - a * sum(r + t) * a * sum(s + t)))
}
